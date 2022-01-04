Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13255483E82
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 09:54:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1843010E4FF;
	Tue,  4 Jan 2022 08:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F7110E4F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 08:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641286471; x=1672822471;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mltJvdXsQBeLW7NxXZ2goCi5TsT0qZDIGVnjvhEZRhI=;
 b=S0SrCrsysgbmwM0eCqruPDhWWApyGTQGvm2mAU1/sqeU3zZNWnqNXN4u
 1qwgz7PwGYCrEd48zNnvDyLVMJbJ/BmTSHe+TUXGQDKtZb5bKLu2dHxUX
 cdipLZIC4XHvEfwXhaozPEgUicYiTjgMGG52fjB0RLCvCNFnMilnWR7ld
 mR/zxTrEuuU4mqP7yM2nbgrSgucBxD4o5Xh9vTnSI0Oms6KcCRo/X/+Kw
 fLC+xJvYmTpONW6izX/rbrNmv1eZoIR8hG57QJVywYCZajiUJSLRhCQxl
 e/9/TA1OE2/qv5Hl0OwNc7JYeoV0kH8Recd2gaVF8nF0RFklA0Qi3la7z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="222177799"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="222177799"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 00:54:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="688499286"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 00:54:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 10:54:21 +0200
Message-Id: <20220104085421.213793-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: remove useless enum
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VBT has a lot of mappings to save bits. Prefer translating them to the
actual values while parsing the VBT, keeping the mappings internal to
intel_bios.c. Use an int with the correct number of lines to wait
instead of keeping the VBT mapping around.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Actually lines_to_wait isn't used at all. Should we nuke it altogether
or start using it for something?
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++----
 drivers/gpu/drm/i915/i915_drv.h           | 9 +--------
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c7a8d517ce81..8d105f44892e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -907,16 +907,16 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 
 	switch (psr_table->lines_to_wait) {
 	case 0:
-		i915->vbt.psr.lines_to_wait = PSR_0_LINES_TO_WAIT;
+		i915->vbt.psr.lines_to_wait = 0;
 		break;
 	case 1:
-		i915->vbt.psr.lines_to_wait = PSR_1_LINE_TO_WAIT;
+		i915->vbt.psr.lines_to_wait = 1;
 		break;
 	case 2:
-		i915->vbt.psr.lines_to_wait = PSR_4_LINES_TO_WAIT;
+		i915->vbt.psr.lines_to_wait = 4;
 		break;
 	case 3:
-		i915->vbt.psr.lines_to_wait = PSR_8_LINES_TO_WAIT;
+		i915->vbt.psr.lines_to_wait = 8;
 		break;
 	default:
 		drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index beeb42a14aae..4d5b239049bb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -515,13 +515,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 /* Amount of PSF GV points, BSpec precisely defines this */
 #define I915_NUM_PSF_GV_POINTS 3
 
-enum psr_lines_to_wait {
-	PSR_0_LINES_TO_WAIT = 0,
-	PSR_1_LINE_TO_WAIT,
-	PSR_4_LINES_TO_WAIT,
-	PSR_8_LINES_TO_WAIT
-};
-
 struct intel_vbt_data {
 	/* bdb version */
 	u16 version;
@@ -561,7 +554,7 @@ struct intel_vbt_data {
 		bool full_link;
 		bool require_aux_wakeup;
 		int idle_frames;
-		enum psr_lines_to_wait lines_to_wait;
+		int lines_to_wait;
 		int tp1_wakeup_time_us;
 		int tp2_tp3_wakeup_time_us;
 		int psr2_tp2_tp3_wakeup_time_us;
-- 
2.30.2

