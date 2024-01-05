Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235A6825504
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1EB10E63F;
	Fri,  5 Jan 2024 14:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01C710E63F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704464123; x=1736000123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KwRH7Cy3iLxTCZa7L+WE0Hra33KhTxeHvJBO1rwA3S4=;
 b=WrgNrXysrwmNQCqxM6lyaEZ+owp3bs21V8wI4vtfdXA39P58KGsT0EAm
 5TT3NZRNwgXBpiARs+RwiNBqcsbWDhBdlngpq2ZJMAUB5siqVvHFrK0tA
 YTwJcR5lYgZT4Gy4Cy0UiQs1QD953QB1RzUyggzyLkH/PzuPegxBsOwKP
 HNpLa9Rp2PaEtMIFcJeA8b0Q5OOFFOQC2rCx+YUxC/zJlXknQ4+OXcPOl
 khcxlQs+f2dWS6l0wP+KnwesWQW6nsvVzHmpO2ns5KGaxil+g5Lty10Ra
 sj09Fkx30+L7giXDPswFqeNihUqg/5Hyjrn2Z/ErMPJfCIpKb3UyzDBL0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4880535"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4880535"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="22504296"
Received: from oreshotx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.52.142])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:22 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Date: Fri,  5 Jan 2024 16:15:04 +0200
Message-Id: <20240105141504.2808991-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240105141504.2808991-1-jouni.hogander@intel.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
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

Lunarlake has some configurations in ALPM_CTL register for legacy ALPM as
well. Write these.

Bspec: 71477

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7fbd18f21c3b..09d496d7dcee 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1527,6 +1527,18 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 			     wa_16013835468_bit_get(intel_dp), 0);
 }
 
+static void lnl_alpm_configure(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	struct alpm_parameters *alpm_params = &intel_dp->psr.alpm_params;
+
+	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder),
+		       ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
+		       ALPM_CTL_ALPM_ENTRY_CHECK(alpm_params->check_entry_lines) |
+		       ALPM_CTL_EXTENDED_FAST_WAKE_TIME(alpm_params->fast_wake_lines));
+}
+
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
@@ -1582,6 +1594,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		lnl_alpm_configure(intel_dp);
+
 	/*
 	 * Wa_16013835468
 	 * Wa_14015648006
-- 
2.34.1

