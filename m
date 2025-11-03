Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E1DC2A139
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B9310E362;
	Mon,  3 Nov 2025 05:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gwjjrgWK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E7D610E362;
 Mon,  3 Nov 2025 05:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147829; x=1793683829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2qEFHxQWZLdwRsmoONmG1LRySRvh20aWgYa3den0yRU=;
 b=gwjjrgWKpuapX2XNXP2EIDsc++D+urLvC6DDBUHDt437IuPB5PoeD1XA
 bv/US3+StQu7l38OzrzObCOnCLhFqi3Ggki5cJZbnFnlv68fQy93+kQzf
 GhrpN0u2FHYpvJ4RZRk5uBlk3rV70iVi7SBExXynhkQFkZQc6aYrA1zoR
 wUijiSgjSZ76Fu7pxjyiDDpHhpK9SeA5+LI7EjgqLUmheHD9fVT2XT0wL
 1nLj0XSlUQC1uswp7P5hEh81jZMk/CwjzdE2PD7TVV+LpqktN5BNiiReC
 QLlTbd4m+AaWXP6kHh1yuMHbco83d+ljvo4C7u9DS3VRzQxyh+lArToIt A==;
X-CSE-ConnectionGUID: wwH25iVGQReAHuTzQc8K0Q==
X-CSE-MsgGUID: Se12ZF2uSju5xm3kNyre1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143865"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143865"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:29 -0800
X-CSE-ConnectionGUID: wajI0b6YSeuT0End8lSYaA==
X-CSE-MsgGUID: w8SCNcd0TZC44vuAFnNsWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925341"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:27 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 13/22] drm/i915/vrr: Configure DC balance flipline adjustment
Date: Mon,  3 Nov 2025 10:59:53 +0530
Message-ID: <20251103053002.3002695-14-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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

Configure DC Balance Flipline adjustment once after other
DC balance adjustment registers are written.

Bspec: 68935

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2d418f45569f..97949ff782aa 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -785,6 +785,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
 		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
 			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
+			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
 			       crtc_state->vrr.dc_balance.vmin - 1);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
-- 
2.48.1

