Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E366B952A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5649810E7D8;
	Tue, 14 Mar 2023 13:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF8D10E7D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678798991; x=1710334991;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QFsTh9IDPLe//kTuqUYtrJwqihSHVV2vl25h4wZXNhg=;
 b=RrqAe/tH4q2hFn5Pk4U7U4gkOC0nybDnkB4GsdGf9Mj97rSjPe9Ag8YK
 YV/KTibjwC9HCY4R10jOTWrM2I0ZxB994C5dOhVGMiMfFMnLDzSM+hAsv
 /kYwYZv6EeAEBeedaGAFvsaniY8hfHA3VwgpWMhpsuAqDHLbcWbGlAOsL
 XrJiiHicRan1cmTLt28bWnBzawOIB6uYLvrkamq3pQZ7IIjGBLoEJ7WC8
 cmupq+P8nW942Q6tS+0auKyihO5qczteWdIJX2TMbNrGH/5+R4dcWYdSZ
 y8opiIAxIAg0DtRnwTw1wekJRv9mdsOArxkUYbRSUThljzZK5bm5qC1Yn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079944"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079944"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323758"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323758"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:50 +0200
Message-Id: <20230314130255.23273-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Program VLV/CHV PIPE_MSA_MISC
 register
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

VLV/CHV have an extra register to configure some stereo3d
signalling details via DP MSA. Make sure we reset that
register to zero (since we don't do any stereo3d stuff).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 drivers/gpu/drm/i915/i915_reg.h              | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d95817288966..7b371d2746b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2139,6 +2139,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 
 	intel_set_pipe_src_size(new_crtc_state);
 
+	intel_de_write(dev_priv, VLV_PIPE_MSA_MISC(pipe), 0);
+
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
 		intel_de_write(dev_priv, CHV_BLEND(pipe), CHV_BLEND_LEGACY);
 		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 66b6f451b80a..8f301bf4e2b6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7565,6 +7565,12 @@ enum skl_power_gate {
 #define PIPE_FLIPDONETIMSTMP(pipe)	\
 	_MMIO_PIPE(pipe, _PIPE_FLIPDONETMSTMP_A, _PIPE_FLIPDONETMSTMP_B)
 
+#define _VLV_PIPE_MSA_MISC_A			0x70048
+#define VLV_PIPE_MSA_MISC(pipe)		\
+			_MMIO_PIPE2(pipe, _VLV_PIPE_MSA_MISC_A)
+#define   VLV_MSA_MISC1_HW_ENABLE			REG_BIT(31)
+#define   VLV_MSA_MISC1_SW_S3D_MASK			REG_GENMASK(2, 0) /* MSA MISC1 3:1 */
+
 #define GGC				_MMIO(0x108040)
 #define   GMS_MASK			REG_GENMASK(15, 8)
 #define   GGMS_MASK			REG_GENMASK(7, 6)
-- 
2.39.2

