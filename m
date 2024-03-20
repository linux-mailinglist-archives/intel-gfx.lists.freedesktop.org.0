Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C479A881855
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 21:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CCB10E5D9;
	Wed, 20 Mar 2024 20:11:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpT53Sxf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8C510E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710965486; x=1742501486;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V8kXErv+oabySYkT28yPTiVHP5UpHa//XuUVt2a3rEU=;
 b=OpT53SxfLdlunhM/JUTPSTVWcpKJun7aV9VbL+nmgujwH90RjpBXXm8G
 jtNmVrxia4UjGKMT4EOKz6kk1OEFzxNDAp0KZ21zhFFucaPhQAbS9iN7Q
 BXSWqW17VhMGvvIWXbUpjyf3OfLuSOr3opT3VWUJ/QIt5QEZwB2KKR7QJ
 YHCK1jKI5Hoatrh5ntGRfP3AvHeZRuVK2g4b+UYFqVr5lYcDkOQI05bbO
 eRu0ZBQwUWa/2eF9nUcffKEvy7PWRL5kvyzM9vkhvD4x1F+lZmHdUL8yF
 P5e/NYvNYTGiV/rH/8Xo1uQazV2uR+6sO82sts+cmXOtVWCdA6wNIYhZJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31352329"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="31352329"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14246466"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/11] drm/i915/dp_mst: Fix symbol clock when calculating the
 DSC DPT bpp limit
Date: Wed, 20 Mar 2024 22:11:42 +0200
Message-ID: <20240320201152.3487892-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240320201152.3487892-1-imre.deak@intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
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

The expected link symbol clock unit when calculating the DSC DPT bpp
limit is kSymbols/sec, aligning with the dotclock's kPixels/sec unit
based on the crtc clock. As opposed to this port_clock is used - which
has a 10 kbits/sec unit - with the resulting symbol clock in 10
kSymbols/sec units (disregarding the rounding error for the 13.5Gbps
rate). Fix the calculation using the expected 10x factor.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 53aec023ce92f..b2bcf66071b05 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -58,8 +58,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 {
 	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
 		int output_bpp = bpp;
-		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
-		int symbol_clock = crtc_state->port_clock / 32;
+		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
 
 		if (output_bpp * adjusted_mode->crtc_clock >=
 		    symbol_clock * 72) {
-- 
2.43.3

