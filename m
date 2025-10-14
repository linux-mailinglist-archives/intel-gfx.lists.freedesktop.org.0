Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662A9BDB093
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8B6B10E689;
	Tue, 14 Oct 2025 19:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/KllgdL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FE410E691;
 Tue, 14 Oct 2025 19:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469515; x=1792005515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ym4sLrATaGm/YDW2aQwuCQ6lM7HyhuKW9zKu8R9f/o4=;
 b=I/KllgdLu6JaszjcGEhfSYo7MPnvD3nN+8V5pfXk3JUv+qJoPK2tr1JJ
 kYqMYlQOdkRomBu3MdDdhFgLDN46sjBChf9qpBOznchHHHD6Dm8bLO2I3
 wisvOKSqJkHQT5wgT2acUru+YN111GJJwU+cqSR7tNhDKYde77s7Caxcu
 qaNFGER1EgC/NB7Ruo5J/KrEjY8FXXb1e8NHiheo2Me70LYkkIFetzo78
 TXIIbzp532pIj7keN/wbedgPe5TuhRao5m3iuwDFVcFQpJiNIMHUuKHPl
 cD6PNW2ZvKwacl4GOM7WAnExf39T5zh2w34r234ZmZkoOdh0eEpaZWL3d Q==;
X-CSE-ConnectionGUID: 7Bjfj/uQTVCdw1qTVN1EZA==
X-CSE-MsgGUID: MPPbYENKRcCXWoYvP4MOKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50200845"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="50200845"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:34 -0700
X-CSE-ConnectionGUID: 5dELl2XNSCyQ94wtDL4s2w==
X-CSE-MsgGUID: cW4Dcs8PQSutleI4iwXuQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="205669330"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 5/9] drm/i915/dsc: Add prefill helper for DSC
Date: Tue, 14 Oct 2025 22:18:04 +0300
Message-ID: <20251014191808.12326-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add intel_vdsc_prefill_lines() which tells us how many extra lines
of latency the DSC adds to the pipe prefill.

We shouldn't need a "worst case" vs, "current case" split here
as the DSC state should only change during full modesets.

The returned numbers are in .16 binary fixed point.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af1..bca747e24a7f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1077,3 +1077,11 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	return min_cdclk;
 }
+
+unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+
+	return 0x18000; /* 1.5 */
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd7..2139391ff881 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -32,5 +32,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
+unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.49.1

