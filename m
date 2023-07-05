Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0CA748EC3
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6BA10E3CB;
	Wed,  5 Jul 2023 20:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AAF310E3DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588495; x=1720124495;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aSo4IYkLPCRckupR6qtKq8hM3PY9Lbj6kfghcd23VUs=;
 b=iN4uQ9uorf0QQEsCS4v6fnhtKhGSqCqXNY5CH1PZ2Wx47cBGEmGAcqPR
 QApz2VUnxFNIayQTZAjEfiUTgnJRXYU2cJbIHKsO2vcLt5ELhV5Jr47Fd
 E/1YM8pcqBS3+h7YyTaQ0gcBvNITJihTI5BWquomiyPFb3+B+KHSh1OW7
 XiCQ91ug7VqdcFwfwetmDwEutB9xBjr83ZirhR2m1pogdEDUU0eaA026Q
 f8J4XcvZ58ija93A2EVtSCzghwE9PmK6MBZ2FgGiKzW2FeE8cLBPpezUI
 X0g9S82c+wlC1a35NPWwI1xcQpbI2FyXVCp/moSbSfBUhkk+0EPvMkmOp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269035"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269035"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491095"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491095"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:12 +0300
Message-Id: <20230705202122.17915-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/sdvo:
 s/sdvo_inputs_mask/sdvo_num_inputs/
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

The SDVO inputs are reportes a simple number, not a bitmask.
Adjust the code to match reality.

Note that we don't actually support dual input SDVO devices,
and we just always use the first input.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c      | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_sdvo_regs.h | 2 +-
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index ec94da6cb7bb..76eed11e9fed 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1955,7 +1955,7 @@ static bool intel_sdvo_get_capabilities(struct intel_sdvo *intel_sdvo, struct in
 		      "  device_rev_id: %d\n"
 		      "  sdvo_version_major: %d\n"
 		      "  sdvo_version_minor: %d\n"
-		      "  sdvo_inputs_mask: %d\n"
+		      "  sdvo_num_inputs: %d\n"
 		      "  smooth_scaling: %d\n"
 		      "  sharp_scaling: %d\n"
 		      "  up_scaling: %d\n"
@@ -1967,7 +1967,7 @@ static bool intel_sdvo_get_capabilities(struct intel_sdvo *intel_sdvo, struct in
 		      caps->device_rev_id,
 		      caps->sdvo_version_major,
 		      caps->sdvo_version_minor,
-		      caps->sdvo_inputs_mask,
+		      caps->sdvo_num_inputs,
 		      caps->smooth_scaling,
 		      caps->sharp_scaling,
 		      caps->up_scaling,
@@ -3436,15 +3436,14 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 
 	drm_dbg_kms(&dev_priv->drm, "%s device VID/DID: %02X:%02X.%02X, "
 			"clock range %dMHz - %dMHz, "
-			"input 1: %c, input 2: %c, "
+			"num inputs: %d, "
 			"output 1: %c, output 2: %c\n",
 			SDVO_NAME(intel_sdvo),
 			intel_sdvo->caps.vendor_id, intel_sdvo->caps.device_id,
 			intel_sdvo->caps.device_rev_id,
 			intel_sdvo->pixel_clock_min / 1000,
 			intel_sdvo->pixel_clock_max / 1000,
-			(intel_sdvo->caps.sdvo_inputs_mask & 0x1) ? 'Y' : 'N',
-			(intel_sdvo->caps.sdvo_inputs_mask & 0x2) ? 'Y' : 'N',
+			intel_sdvo->caps.sdvo_num_inputs,
 			/* check currently supported outputs */
 			intel_sdvo->caps.output_flags &
 			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0 |
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h b/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
index 74dc6c042b6e..54f099abefeb 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
@@ -57,7 +57,7 @@ struct intel_sdvo_caps {
 	u8 device_rev_id;
 	u8 sdvo_version_major;
 	u8 sdvo_version_minor;
-	unsigned int sdvo_inputs_mask:2;
+	unsigned int sdvo_num_inputs:2;
 	unsigned int smooth_scaling:1;
 	unsigned int sharp_scaling:1;
 	unsigned int up_scaling:1;
-- 
2.39.3

