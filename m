Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4797D8FC8F8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465EB10E3D1;
	Wed,  5 Jun 2024 10:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="er3cIjWr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359B610E3D1
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583184; x=1749119184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2tDykYOUOMtxqLrJTaaxB9hWTpZ5mNkx942tRtajrhg=;
 b=er3cIjWrALd9FfLyuGLmi3hZ7AVxSYoJ9xBI8iMqW/vppf9m/MJYy/Cp
 xYnxZA6PYyr0oDRH+knkk7Brvt4x9ARdtcDnberBwEP+tcONYnMkZeNDE
 sNvbA922AIlwnOBwcq1oUd/fwxhxFGAhYuz+ZQbvjY2ECTHUCoaP6gQZ8
 e2w80vpmThdoh82OTNydXdt/Yasd4H81Ja2RLjucsFAbWDc/7ztaUWNX7
 S+GOoGr1hW4o7/FzyVUirgS8fhUSwpAJkrn0alD+H7AtdsqFTgu03U7DI
 pknW44/JVwYnPztQlK8d8tLRwLwWBqbuq/fAxOUMG1F2iNNaq9U+Cr3wl w==;
X-CSE-ConnectionGUID: 6Hjc0sxHTRShVKHisx9DUA==
X-CSE-MsgGUID: GtGA7f11QGalzfe9QWkmkg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136072"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136072"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:24 -0700
X-CSE-ConnectionGUID: FleUHjDrSRe0ByxBII/lRQ==
X-CSE-MsgGUID: uT5ZSqhQTT6McE7qzEAwjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686055"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 02/26] drm/i915/alpm: Write also AUX Less Wake lines into
 ALPM_CTL
Date: Wed,  5 Jun 2024 13:25:29 +0300
Message-Id: <20240605102553.187309-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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
index 52a573367976..18c1c5803670 100644
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

