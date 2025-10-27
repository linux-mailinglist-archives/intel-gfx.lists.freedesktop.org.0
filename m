Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293D7C0F4C7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877C810E519;
	Mon, 27 Oct 2025 16:30:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FlI08xZE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B393310E515;
 Mon, 27 Oct 2025 16:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582614; x=1793118614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8AYbZUuN6V8ZecRSMnoChOjqJFj5aMnTHfxcx1zdXoI=;
 b=FlI08xZE1sjWgsvEy4B2Y7g1PIBBXdbMHLhdZwXAOidacoYeDT7VYIF7
 HmJn5TTQnoPSMsUG3hlI/lCk1kra7Z+0162Ta3Rp/3MX45wHGyaaZ3DHm
 7gRCjhfcRc1yhYBOvbX+C/V40Mj2v9n3VPEIxfvZaq7DiBOfm8NahsiCd
 xvQT+G5ropQZIgBZaRq05gASD34rQjmXfW8W/H/rmHQR+5hYyiVEAcskP
 y8f7TOtQCQUHsAJaf5J7ahgZKhQThHCtFGrWySNG+EL7JREL/a0dkRMVA
 b2eoToWjX06l4IhWNOK3W0ubX9cGw1FkxbZubAqXtSZ4jwLU/DUO7UGlC A==;
X-CSE-ConnectionGUID: xzI/GrXfTkm+l9H9wrLd5w==
X-CSE-MsgGUID: mkkYQy8JQzOM3+pYPKUn7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299379"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299379"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:30:14 -0700
X-CSE-ConnectionGUID: Ex4Edl4nRUC7vUrETh5oAw==
X-CSE-MsgGUID: wWndoa4jQgik60c+p4L4/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785797"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:30:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 20/22] drm/i915/vrr: Enable Adaptive sync counter bit
Date: Mon, 27 Oct 2025 21:59:25 +0530
Message-ID: <20251027162927.2655581-21-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add enable/disable frame counters for DC Balance odd and even
frame count calculation.

--v2:
Update commit message

--v3:
- Driver should not control adjustment enable bit, as that
is already being controlled by firmware. Release bit from
driver computation.
- Commit message update.

--v4:
- Configure PIPEDMC_EVT_CTL enable/disable call.

--v5:
- Add Adaptive sync counter enable.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4d56a4e8c7ca..4c4dc065d3ad 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -816,6 +816,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 
 	if (crtc_state->vrr.dc_balance.enable) {
 		intel_dmc_configure_dc_balance_event(display, pipe, true);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
 
@@ -842,6 +844,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_dmc_configure_dc_balance_event(display, pipe, false);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
-- 
2.48.1

