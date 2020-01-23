Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB4A146A95
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8EC6FCDD;
	Thu, 23 Jan 2020 14:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610EE6FCDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:00:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="228005359"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 16:00:04 +0200
Message-Id: <20200123140004.14136-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200123140004.14136-1-jani.nikula@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 6/6] drm/i915/pm: use intel de functions
 for forcewake register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move away from I915_READ_FW() and I915_WRITE_FW() in display code, and
switch to using intel_de_read_fw() and intel_de_write_fw(),
respectively.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 36d158d6c5b2..1cf909d8347b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5061,9 +5061,10 @@ static void skl_ddb_entry_write(struct drm_i915_private *dev_priv,
 				const struct skl_ddb_entry *entry)
 {
 	if (entry->end)
-		I915_WRITE_FW(reg, (entry->end - 1) << 16 | entry->start);
+		intel_de_write_fw(dev_priv, reg,
+				  (entry->end - 1) << 16 | entry->start);
 	else
-		I915_WRITE_FW(reg, 0);
+		intel_de_write_fw(dev_priv, reg, 0);
 }
 
 static void skl_write_wm_level(struct drm_i915_private *dev_priv,
@@ -5079,7 +5080,7 @@ static void skl_write_wm_level(struct drm_i915_private *dev_priv,
 	val |= level->plane_res_b;
 	val |= level->plane_res_l << PLANE_WM_LINES_SHIFT;
 
-	I915_WRITE_FW(reg, val);
+	intel_de_write_fw(dev_priv, reg, val);
 }
 
 void skl_write_plane_wm(struct intel_plane *plane,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
