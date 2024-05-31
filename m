Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E838D5ECB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F39110E162;
	Fri, 31 May 2024 09:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CNbZq/5c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9AE10E2A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149022; x=1748685022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1xXgv/Hs9OghNJmnWOkKMybnzwFvv3JZcXTSzYEKKwo=;
 b=CNbZq/5cwdPKYUS6GCY74BZLAVEazBaJcDx3Si/PjsqKn+6XbfuxTBr0
 I0A4IQEimmp8v/7orF6OcP0gGNv8ay0NXFwfdTwAVQxTswDe1ukszXTPw
 8bSIeRSHjSwCTNGkKe2c7QC9IMdhnOHs6Bv9dG/Y16ixyirBGVFUfKX9C
 ZXWTNSDg4BIZs83qH1CPGSoGFVtmDsGFvTyFkabpSpgTI902IYMv4OoKp
 eyynHfEx1sH5VUfZvKzk41tO6ysqPnsD1bNhpq+iztndjqv7aU1M+SS6y
 pm/9R9DIpbvjK1TFJ42RkND5bXNrHzbqkPUn3tyn6MK1KiOfQ/9i52tr2 Q==;
X-CSE-ConnectionGUID: brM1WWgtTyKtZ93eJ7sDpw==
X-CSE-MsgGUID: gZ97DgI7TsuDtcOfYl8+Ag==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446557"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446557"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:18 -0700
X-CSE-ConnectionGUID: aeLYC7jMSRGsSoFWG97BOQ==
X-CSE-MsgGUID: Kt3kgTjDR/aF224WTIm2Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189206"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 02/19] drm/i915/alpm: Write also AUX Less Wake lines into
 ALPM_CTL
Date: Fri, 31 May 2024 12:49:36 +0300
Message-Id: <20240531094953.1797508-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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

Currently AUX Less Wake lines are not written into ALPM_CTL. Fix this.

Fixes: 1ccbf135862b ("drm/i915/psr: Enable ALPM on source side for eDP Panel replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index aa15f57cec66..fd35056237e5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -323,7 +323,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
+			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
+			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(dev_priv,
 			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
-- 
2.34.1

