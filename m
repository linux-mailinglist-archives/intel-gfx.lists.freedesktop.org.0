Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C98E65B598F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95EB310E3D9;
	Mon, 12 Sep 2022 11:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16FB10E3D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983139; x=1694519139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FneB0dSjYm2IOF/GQ9ee3SwHnM/TH/lCMnupFVi2L6I=;
 b=lsf3aQqkmoLUXuJgRIpqXZYVMToAzknC3qEr+nrl9WUD3Sqzs+abfkth
 OfwwFjJVOpitzu08XuLCzx/GOfpTp/hiEPf4hUkjnO8gPPeI5ZA2bw4g1
 tHXBot+FMyh1zt/qrXohGKiFCOEQ1ODheENJwfj+lWlRXVVSulTomUGjd
 epJhKqEW1OnZ9eXMh/7qtWMEko5VjEXJ8haQp+GARyVcknMrXDBpUxQa9
 u2Yc4NKkPA38y6rpNKlY2sqoOfRlfevj80IAxZnGM/mapfIueVLVy6obs
 D71t5hAEHysytm608Njk5O/xQNaw+okytVx4/Sqre4dDHGtZ/ymRF4BFX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="299184212"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="299184212"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="944600356"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:45:15 +0300
Message-Id: <04ccaaceee9293e5a6c75761ba9d36792c36f095.1662983005.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662983005.git.jani.nikula@intel.com>
References: <cover.1662983005.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display: move IPC under display wm
 sub-struct
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display IPC related member under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c      | 6 +++---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9086a612365e..96cf994b0ad1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -239,6 +239,8 @@ struct intel_wm {
 	 * crtc_state->wm.need_postvbl_update.
 	 */
 	struct mutex wm_mutex;
+
+	bool ipc_enabled;
 };
 
 struct intel_display {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index fd9552f08422..ab7fc41d325a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3116,7 +3116,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
 {
-	return i915->ipc_enabled;
+	return i915->display.wm.ipc_enabled;
 }
 
 void skl_watermark_ipc_update(struct drm_i915_private *i915)
@@ -3156,7 +3156,7 @@ void skl_watermark_ipc_init(struct drm_i915_private *i915)
 	if (!HAS_IPC(i915))
 		return;
 
-	i915->ipc_enabled = skl_watermark_ipc_can_enable(i915);
+	i915->display.wm.ipc_enabled = skl_watermark_ipc_can_enable(i915);
 
 	skl_watermark_ipc_update(i915);
 }
@@ -3500,7 +3500,7 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
 		if (!skl_watermark_ipc_enabled(i915) && enable)
 			drm_info(&i915->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
-		i915->ipc_enabled = enable;
+		i915->display.wm.ipc_enabled = enable;
 		skl_watermark_ipc_update(i915);
 	}
 
-- 
2.34.1

