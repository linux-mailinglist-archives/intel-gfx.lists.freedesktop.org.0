Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E00C9A7A1
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BCF10E576;
	Tue,  2 Dec 2025 07:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dIMtjp4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53BDC10E576;
 Tue,  2 Dec 2025 07:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661033; x=1796197033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dOTB60avIpNy/CeLiNKdJ0GjoDTWMvt5DhUao/8KK5M=;
 b=dIMtjp4wLAwWfquGBNYf0aaVXDL9wr+K59sC6/Rim5mOcjjEdS/7Ugym
 99M9j/EIUCVy+wAXPmpYOVF2Yo3Yc+4kMs4RH0bSSb7aOaRr2UWggRbW2
 NOEldpdike/jzHA8Q3ufwGDlicwkGMpdDn9Hw9jSglDVaLjLdtgkpeKIe
 phkwxolb9UbIUIkox1O8WN5TLpzZgrT5le4cVPu4QVXMieu3iIzkaOCMk
 OtNkPnwHbvYG+uxQnVHHX7Wavw36nerEDzfMPOYsnG28GMNhzBl8F5+n8
 i6QkiuBV2OcizZaddzkxGme97AcaTCmH1PSnSeeGvMyOB61aFzrsp7g3m g==;
X-CSE-ConnectionGUID: tAlLM3+9ROWs1ueDr4NuOg==
X-CSE-MsgGUID: +oY1iNkvTjCEDKJFfKJB/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219268"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219268"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:37:13 -0800
X-CSE-ConnectionGUID: vcc7rDzDSE2QycqfYvaVSQ==
X-CSE-MsgGUID: Ks8w5vJyRlW3hkfcEHr6BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504882"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:37:11 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 14/17] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Tue,  2 Dec 2025 13:06:49 +0530
Message-ID: <20251202073659.926838-15-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add function to control DC balance enable/disable bit via DSB.

--v2:
Remove redundant forward declaration.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  3 +++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2fb6fec6dc99..e076ba7e0f28 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1755,3 +1755,20 @@ u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc)
 
 	return dmc ? dmc->dmc_info[dmc_id].start_mmioaddr : 0;
 }
+
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe),
+			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
+}
+
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 40e9dcb033cc..9c6a42fc820e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -15,6 +15,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dmc_snapshot;
+struct intel_dsb;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
@@ -39,6 +40,8 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
 void assert_main_dmc_loaded(struct intel_display *display);
 
 void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
 u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc);
 void intel_pipedmc_enable_event(struct intel_crtc *crtc,
-- 
2.48.1

