Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B981818E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 07:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CE810E18E;
	Tue, 19 Dec 2023 06:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFDB10E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 06:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702967563; x=1734503563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wnByAdCwd30K/FaMxPUZaoJpPPEqF9K/9ebDwn/TnbM=;
 b=ehnS/G2PX/PHX9oMqM0zkwEJBcViS2UqAaRDjVIkw6VANvZy9BsCWQTx
 7QvEEIQzs+BCUpptidOq9UsPLugbtZMuWgwjb7ENf8JdM+wePwnjPlrZn
 V9rzyS5p3n1kZMUVQJGoES03dE3uc/IkJDZMMcSazOcvLcqD5rlq+JHld
 qmTgPTAlG1k9HqrrRG0E3hi2BhVqKh2dlWI2Xj53mLbP/FsuSfO1nix2x
 wQ6HATGRjhIgSNd/7wwnvJg1YsrfWOrnTsE7l534AepcRE1OJNTPwcQxs
 Ds3CkMZ/9wAUHUIwDxGDRswNCUF3BNFZjvxofm0LJQviTzJhVWQkV63BG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2466448"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2466448"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="17836841"
Received: from amoested-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:41 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Date: Tue, 19 Dec 2023 08:32:21 +0200
Message-Id: <20231219063221.505982-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231219063221.505982-1-jouni.hogander@intel.com>
References: <20231219063221.505982-1-jouni.hogander@intel.com>
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
index df60b4fb0d65..47dcfc164319 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1534,6 +1534,18 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
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
@@ -1589,6 +1601,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
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

