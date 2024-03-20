Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E22881858
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 21:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 725E210E649;
	Wed, 20 Mar 2024 20:11:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WwV0RXHi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE48110E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 20:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710965489; x=1742501489;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=822XmPAwP7vDSrslk5hkTBRQU5jM2sB6S9l4aD1ZWWY=;
 b=WwV0RXHiYG4I6SCy/K5U9w3Gf36XOTOhwwii73r1HSnedJV4cwbWlzTl
 /G8jz/W7OrpxkI9sRCTaIiVsygJX4/Q5C24wIk029K9AMQgjIbkT9oxKI
 9QMeK0KrwFh4LmhNIElnMVZXZwSOT1LFnlozYJBNqiC8DVmlxZyCYTM73
 izLfZYeuIsNy19aBvFuEimFKJpyV2DizrwepyaRuHzpF2hWKfcD4oxMHa
 xrT/gQD9gBDO6wEjfrA/nqb+8uiGdQCDSxBbTd4wF1iunfI/cNLIuekIB
 /Zbk0u+i/veU3lx/rLiE6LW7+mSpaESUElwJq3R24IBKLRJ1+8eD8IlQr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31352335"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="31352335"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14246498"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp limit on
 MTL
Date: Wed, 20 Mar 2024 22:11:45 +0200
Message-ID: <20240320201152.3487892-6-imre.deak@intel.com>
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

The DPT/DSC bpp limit should be accounted for on MTL platforms as well,
do so.

Bspec: 49259

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 79f34be5c89da..40660dc5edb45 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 					  struct intel_crtc_state *crtc_state,
 					  bool dsc)
 {
-	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
+	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
 		int output_bpp = bpp;
 		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
 		int available_bw = mul_u32_u32(symbol_clock * 72,
-- 
2.43.3

