Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5629578A5AB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53AB10E213;
	Mon, 28 Aug 2023 06:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FCB10E211;
 Mon, 28 Aug 2023 06:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693203660; x=1724739660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0pCuh84Khjc+8hZm/3MarvpyywcAxeCTihBohNaD/Ks=;
 b=aBgNhQ1MYMEg1hZDiURARKa5XRMyjJ0/IqTI4bnBD8EOAdy4CZzjJDzr
 8d2c/NplPxpLsSz3I+4XBt0ywX293sWawRBLPegLOksyDlpHgO/NNPGnk
 7/eXlk5UuRWwysYs7l2xGfHpwwkamyKr/yJ5eKGZkBuIVhwk287I3q03t
 rOMNDRjYKFtviT1yYc4rWlLPhol/4R7bO69NQeBWFaVvEiKA9xiavxP+3
 FsF7j2SiPJrUP3FiUdPPlpbnzdzmnZmE693tZSL4pmL7yvrPiy4dUgHA9
 ozD+04Qu1kWmQjFV2H3rTGE9I0ZyYAnD8K4dovAFucjoTd3EPCEzO7Gp4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="438973558"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="438973558"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:20:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="861709815"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="861709815"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:20:57 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 28 Aug 2023 09:20:33 +0300
Message-Id: <20230828062035.6906-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828062035.6906-1-vinod.govindapillai@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/lnl: update FBC debugfs to include
 plane information
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In future platforms, FBC can be supported on planes other than
the primary plane. So update the debugfs entry for FBC status
to have the plane ID included.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d36499d7e0be..45e205a0f740 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1837,7 +1837,9 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 	mutex_lock(&fbc->lock);
 
 	if (fbc->active) {
-		seq_puts(m, "FBC enabled\n");
+		seq_printf(m, "FBC enabled: [PLANE:%d:%s]\n",
+			   fbc->state.plane->base.base.id,
+			   fbc->state.plane->base.name);
 		seq_printf(m, "Compressing: %s\n",
 			   str_yes_no(intel_fbc_is_compressing(fbc)));
 	} else {
@@ -1910,10 +1912,16 @@ static void intel_fbc_debugfs_add(struct intel_fbc *fbc,
 
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
 {
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_plane *plane;
+
+	for_each_intel_plane(&i915->drm, plane) {
+		if (!plane->fbc || plane->pipe != crtc->pipe)
+			continue;
 
-	if (plane->fbc)
 		intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
+		break;
+	}
 }
 
 /* FIXME: remove this once igt is on board with per-crtc stuff */
-- 
2.34.1

