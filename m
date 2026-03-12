Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Gv4NUR0sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF69326EA3E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D72610E9C8;
	Thu, 12 Mar 2026 08:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gI7vKe9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE4610E9BE;
 Thu, 12 Mar 2026 08:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302841; x=1804838841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SPwgdb/b9QXQFBWiiumTFmYMynRm2NCKLpBMPsOwf1U=;
 b=gI7vKe9fdjZr+fUJmRoGKyEBwXmBok0CnUS14XjB2Q+Zmp65TRLEmt/u
 6aOaLKHTIAwDJpTxUTHQvNVZrT62V1asF9+ZwVn253er2vNZpCFYxz8rv
 DqefMBP8pxysuFWzX+ezmVekxuZ7u3S9v8y6tD7Ybk3XA2quGu0p47E7L
 faFRDxCI5rCHmte3g746aqD3MPtoaoAWvV1dR1EDR2t5QSAUQa8LJT/vS
 3xjWWJs+emma3wCcBMCAAOq5AymtVXHmneXwJluzp4ecIfvvdeHosf1cl
 aUwPwyEso2RPUPpMDIY+WEBGpBmlIURFfya/DN+O9z3Gy20pyFGn9cSgh g==;
X-CSE-ConnectionGUID: rCbLuHQWTQWHLpWUJphmjw==
X-CSE-MsgGUID: 9AQRKxeYQg6/n34TykLUWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85013739"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85013739"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:07:21 -0700
X-CSE-ConnectionGUID: TwUAvY//RqCnEUOdkUtBnQ==
X-CSE-MsgGUID: 752fK1iAQ3OwK9RSwNFcoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223206881"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa004.fm.intel.com with ESMTP; 12 Mar 2026 01:07:20 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 17/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Date: Thu, 12 Mar 2026 08:06:50 +0000
Message-ID: <20260312080657.2648265-18-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312080657.2648265-1-mika.kahola@intel.com>
References: <20260312080657.2648265-1-mika.kahola@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: AF69326EA3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new pll_disable_clock functions so that they can be
hooked up to dpll->disable. This is just a wrapper over
the exitisting intel_xe3plpd_pll_disable to make it
compatible With dpll->disable function

v2: Revise commit message (Suraj)
    Drop wrapper for TBT clock disabling and reuse
    intel_mtl_pll_disable_clock() for DDI clock
    disabling hook (Suraj)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 93f62d995e96..3cc8c681c352 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5299,7 +5299,7 @@ void intel_ddi_init(struct intel_display *display,
 
 	if (HAS_LT_PHY(display)) {
 		encoder->enable_clock = intel_mtl_pll_enable_clock;
-		encoder->disable_clock = intel_xe3plpd_pll_disable;
+		encoder->disable_clock = intel_mtl_pll_disable_clock;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = xe3plpd_ddi_get_config;
 	} else if (DISPLAY_VER(display) >= 14) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 54c7a255b3a5..28c560417409 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4607,8 +4607,20 @@ static void xe3plpd_pll_enable(struct intel_display *display,
 	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state);
 }
 
+static void xe3plpd_pll_disable(struct intel_display *display,
+				struct intel_dpll *pll)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_xe3plpd_pll_disable(encoder);
+}
+
 static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
 	.enable = xe3plpd_pll_enable,
+	.disable = xe3plpd_pll_disable,
 	.get_hw_state = xe3plpd_pll_get_hw_state,
 	.get_freq = xe3plpd_pll_get_freq,
 };
-- 
2.43.0

