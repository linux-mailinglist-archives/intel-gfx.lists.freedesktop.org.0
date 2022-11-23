Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F63D63638D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB5110E585;
	Wed, 23 Nov 2022 15:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AFB10E576
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217216; x=1700753216;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jKmygraJn1dJOqJJb1xJpBh7a7TY2lkGo3b0/g62HN8=;
 b=mPXv7Rdz7B1oXAEkjS/s8dF1xFUElaLS9yc/5+VS/sDXVGtLDIV6tZax
 K8X2cR8ivb0Zo0xrpKOZxCH2zMub+Obj3kEWGoKQynsmAGb42v8nrkX9q
 7s/naTPx2+nq0JrygbJZbgEAv8GBuD4Xpd9B8eS0gYGu4DRl76TN/Ydab
 71i/0X/VguEM1HcO6fBcRjr9o0QikesvVPFj3Ft7VqnGnmnB6+7GdSecS
 qtdIUTKi6j/Zml/no6oVC1+ykRVsGm9DjfzITtUYM6GZ72n/RINTmD89i
 MrQhcvDXBj6UlreRpC06jbQyWSZWOsaTQGNVAkZ+5xDiSSVVsaSslnWcy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789859"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789859"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650921"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650921"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:26 +0200
Message-Id: <20221123152638.20622-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Shorten
 GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED a bit
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

s/GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED/GAMMA_MODE_MODE_12BIT_MULTI_SEG/
to make this thing slightly shorter.

Also fix up the platform comment while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 10 +++++-----
 drivers/gpu/drm/i915/i915_reg.h            |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 842d58da3128..956b221860e6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1212,7 +1212,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 	case GAMMA_MODE_MODE_8BIT:
 		ilk_load_lut_8(crtc, post_csc_lut);
 		break;
-	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
+	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
 		icl_program_gamma_superfine_segment(crtc_state);
 		icl_program_gamma_multi_segment(crtc_state);
 		ivb_load_lut_ext_max(crtc_state);
@@ -2091,7 +2091,7 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 	else if (DISPLAY_VER(i915) >= 13)
 		gamma_mode |= GAMMA_MODE_MODE_10BIT;
 	else
-		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
+		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEG;
 
 	return gamma_mode;
 }
@@ -2283,7 +2283,7 @@ static int icl_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 		return 8;
 	case GAMMA_MODE_MODE_10BIT:
 		return 10;
-	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
+	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
 		return 16;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
@@ -2455,7 +2455,7 @@ static bool icl_lut_equal(const struct intel_crtc_state *crtc_state,
 
 	/* hw readout broken except for the super fine segment :( */
 	if ((crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) ==
-	    GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED)
+	    GAMMA_MODE_MODE_12BIT_MULTI_SEG)
 		check_size = 9;
 
 	return intel_lut_equal(blob1, blob2, check_size,
@@ -2971,7 +2971,7 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
 	case GAMMA_MODE_MODE_10BIT:
 		crtc_state->post_csc_lut = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
 		break;
-	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
+	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
 		crtc_state->post_csc_lut = icl_read_lut_multi_segment(crtc);
 		break;
 	default:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b90fe6a28f7..b1c314093737 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5316,7 +5316,7 @@
 #define  GAMMA_MODE_MODE_10BIT	(1 << 0)
 #define  GAMMA_MODE_MODE_12BIT	(2 << 0)
 #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
-#define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	(3 << 0) /* icl-tgl */
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
-- 
2.37.4

