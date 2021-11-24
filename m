Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE945B941
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:38:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F0C6E0FD;
	Wed, 24 Nov 2021 11:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D130896E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235079390"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235079390"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="538598861"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 24 Nov 2021 03:37:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:52 +0200
Message-Id: <20211124113652.22090-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/20] drm/i915/fbc: Pimp the FBC debugfs output
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that each plane tracks its own no_fbc_reason we can print that
out in debugfs, and we can also show which plane is currently
selected for FBC duty.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 072509b04de5..8f8512f685eb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1688,8 +1688,11 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_fbc *fbc = m->private;
 	struct drm_i915_private *i915 = fbc->i915;
+	struct intel_plane *plane;
 	intel_wakeref_t wakeref;
 
+	drm_modeset_lock_all(&i915->drm);
+
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	mutex_lock(&fbc->lock);
 
@@ -1701,9 +1704,24 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
 	}
 
+	for_each_intel_plane(&i915->drm, plane) {
+		const struct intel_plane_state *plane_state =
+			to_intel_plane_state(plane->base.state);
+
+		if (plane->fbc != fbc)
+			continue;
+
+		seq_printf(m, "%c [PLANE:%d:%s]: %s\n",
+			   fbc->state.plane == plane ? '*' : ' ',
+			   plane->base.base.id, plane->base.name,
+			   plane_state->no_fbc_reason ?: "FBC possible");
+	}
+
 	mutex_unlock(&fbc->lock);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
+	drm_modeset_unlock_all(&i915->drm);
+
 	return 0;
 }
 
-- 
2.32.0

