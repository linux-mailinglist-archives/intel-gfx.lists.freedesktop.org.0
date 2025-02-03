Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95361A259E4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B54F10E4C6;
	Mon,  3 Feb 2025 12:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JqnNgsU7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A62C10E4C6;
 Mon,  3 Feb 2025 12:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587031; x=1770123031;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xvkVaIGQSoCqKWznSJMzyk8JJFQKvKAZWYjrBwf7ens=;
 b=JqnNgsU7TNiF8n8x19ytkVO7XUUj/fVb9LjzF/B8CjYubdZoubrOUil4
 2NoKvqyz8c3EPXoq5XlBn2U8rGzWsJyfyglFU2ntBpWLKcj9nO7CMbpw8
 DYm4NIG+zALEjFXdcDPk4J6aMpXchsrwyKtXIOYiqYGkebwQTtGhBTc8k
 fnusPY4IUs5ucZ4LBZq8nQjaACjO38nG7tnWA3GDI1q4eqsgo3JSrXryM
 BXsMNvBbt9hfxO1zszWkmViJQzckZHENFS6tvZrOFlTb/YcN35OXSSmVG
 wsoIpGNqpfd9ZhnBjY4oGLJdh7BOcWIAPa/Is3ujaxXgIRDVMcMQSKv55 w==;
X-CSE-ConnectionGUID: NVjcMkiwQzu2k2PmkjVrHA==
X-CSE-MsgGUID: uHpq0sibQuSxdt6nrEJEFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548105"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548105"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:30 -0800
X-CSE-ConnectionGUID: 0JlZEd4dSZWIUBWsWlbidw==
X-CSE-MsgGUID: KNMhFe2bQx6zXV6VGwFwNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529028"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 19/28] drm/i915/psr: Allow PSR for fixed refrsh rate with VRR
 TG
Date: Mon,  3 Feb 2025 18:08:31 +0530
Message-ID: <20250203123840.3855874-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

At the moment PSR/PSR2 are not supported with variable refresh rate.
However it can be supported with fixed refresh rate while running with
VRR timing generator.
Enable PSR for fixed refresh rate when using the VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6fcb8d4a1c39..9a029d322fdd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1688,9 +1688,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/*
-	 * Currently PSR/PR doesn't work reliably with VRR enabled.
+	 * Avoid PSR/PR when not in fixed refresh rate mode.
 	 */
-	if (intel_vrr_is_enabled(crtc_state))
+	if (intel_vrr_is_enabled(crtc_state) && crtc_state->vrr.mode != INTEL_VRRTG_MODE_FIXED_RR)
 		return;
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-- 
2.45.2

