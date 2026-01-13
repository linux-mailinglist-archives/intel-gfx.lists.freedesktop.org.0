Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4C1D19302
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 14:54:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D60D10E352;
	Tue, 13 Jan 2026 13:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7SOYZKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5ADB10E350;
 Tue, 13 Jan 2026 13:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768312485; x=1799848485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0MgdbZgh4bY3SIFUbxHAPwjOgOSH27ZFKkyGyF3luAE=;
 b=F7SOYZKwL6RzeuAe0g8h5fgvPz+wbIFavUm9bCtAEkPQl3kYw3CAPyqH
 f5fvVtfSkyPIT1jMbWAT0Bk2ef7Wja09ayPoueeR57G16cqkIl48ZbJhn
 2wrO6mtybuNDqqAiUkbvtc9R/koD+qyQtCCna9eqHxPd1aV6WyxKNd03O
 WgiGiL5TiOSQIfH/rFeyyyc7QntGwN32EKJEs1swCyliNAZBqC4i/2vMm
 eMzpbsL4LRTk7LYQMNKW88aXUcGO5StXg1xq7P7c074uqjx7oqiRkXcho
 yY6ZAlBjZ7KgYpWoXuxHwGmFftx4LOCZVgHUrn+X+PEi6PwSiv0y5W3VA g==;
X-CSE-ConnectionGUID: kudfE+e2QJyERQ1N/Nsc5A==
X-CSE-MsgGUID: cyuojrMaRn265vY9w9CRdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69518508"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69518508"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 05:54:45 -0800
X-CSE-ConnectionGUID: 1KTgWGurT8iIcNVkZFZdWA==
X-CSE-MsgGUID: IMgw8Mf6R2iQKL0k2GMNyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204403787"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 05:54:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 Jerome Tollet <jerome.tollet@gmail.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND] drm/i915/hdmi: Poll for 200 msec for TMDS_Scrambler_Status
Date: Tue, 13 Jan 2026 19:08:45 +0530
Message-ID: <20260113133845.1636774-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

From: Jerome Tollet <jerome.tollet@gmail.com>

As per HDMI 2.0 specification, after scrambled video transmission begins,
the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
until a timeout of 200 ms.

Add a polling step after enabling the HDMI port to verify scrambling
status, following the spec requirement.

Without the wait for the scrambling bit to set, some HDMI 2.0 monitors fail
to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
fully configured by the sink.

v2:
 - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
   as per the HDMI spec. (Ankit)

Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---

Rebased and resend to intel-gfx and intel-xe so that the patch is picked
up by intel gfx CI.

---
 drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
 3 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..c708b713f0e8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	}
 
 	intel_ddi_buf_enable(encoder, buf_ctl);
+
+	intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
 }
 
 static void intel_ddi_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 055e68810d0d..6f7dcd7365a4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3363,3 +3363,28 @@ intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width, int num_slices,
 
 	return 0;
 }
+
+/*
+ * As Per HDMI 2.0 spec: after scrambled video transmission begins,
+ * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
+ */
+void
+intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
+				      struct drm_connector *_connector)
+{
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(crtc_state);
+	bool scrambling_enabled = false;
+	int ret;
+
+	if (!crtc_state->hdmi_scrambling)
+		return;
+
+	/* Poll for a max of 200 msec as per HDMI spec */
+	ret = poll_timeout_us(scrambling_enabled = drm_scdc_get_scrambling_status(&connector->base),
+			      scrambling_enabled, 1000, 200 * 1000, false);
+	if (ret)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
+			    connector->base.base.id, connector->base.name);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index be2fad57e4ad..0fa3661568e8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			unsigned int type,
 			void *frame, ssize_t len);
+void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
+					   struct drm_connector *_connector);
 
 #endif /* __INTEL_HDMI_H__ */
-- 
2.45.2

