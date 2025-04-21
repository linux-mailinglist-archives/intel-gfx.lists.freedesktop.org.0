Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B818A953C2
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC7B10E492;
	Mon, 21 Apr 2025 15:51:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6ViA69I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84CAC10E48B;
 Mon, 21 Apr 2025 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250688; x=1776786688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YVIfn5aDx8X1Fyyjv/Xl0faXukeYiBvuhVnzy2wVi0g=;
 b=b6ViA69IgHZBRtiOZfi104SjuSv6afWfSCHHJJa1P+GsGh6wH9NNzXlv
 Hq7AqsoQb2LUw+ZK4s+zWym6/LydddodfijaKEF7f4OEN1QXYSKTBbTxr
 xiU1jGbbfn4jIPUZK1syqbaDGZbkLu7L+O8aOezyxjbMb1h3j4buO00gE
 7nuy1qsD80pfmOomIy5Q/VS4u+/8DCa4QJGq+zf2NwgQV0+9NwGW3gMJk
 +7xU+13BZ+Rj6fMABiznbPaFZ4rVdTWFr/AGc9lrYzy4g2j+EkdSPNZBJ
 q5XI382wXJe6LDGVGonXJ6TzXmfl9mF588nvvf0a2Oo7G9DywdktOoEHF A==;
X-CSE-ConnectionGUID: L/Omgbu0QgKSDp1gwqaHuA==
X-CSE-MsgGUID: p64ulCuATUy69SPINTPFbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434084"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434084"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:28 -0700
X-CSE-ConnectionGUID: HPBYUxZ4S5KhW0CXPLkHTQ==
X-CSE-MsgGUID: BKd19EEJS8mG0ksfgttJuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725673"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:27 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 12/13] drm/i915/display: Prepare state checker for dc
 balance enable
Date: Mon, 21 Apr 2025 21:18:59 +0530
Message-ID: <20250421154900.2095202-13-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

Prepare state check param for enabling dc balance enable bit.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4a21acb88aa7..0bb39134f52d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5402,6 +5402,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.dc_balance.enable);
 		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
 		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
 		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e8802348e5fa..7c09f384a684 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -804,6 +804,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	if (HAS_DC_BALANCE(display)) {
 		dcb_ctl = intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder));
+		crtc_state->vrr.dc_balance.enable = dcb_ctl & PIPEDMC_ADAPTIVE_DCB_ENABLE;
 		crtc_state->vrr.dc_balance.vmin =
 			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.dc_balance.vmax =
-- 
2.48.1

