Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A45758A777A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD9D112EB0;
	Tue, 16 Apr 2024 22:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANPmlfuc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA46112EAD
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305384; x=1744841384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IrfVEPtkHSDQSSc8uuLqnOpGTo+js9qgSLEWD1WgQSU=;
 b=ANPmlfucTuMSoKbd7HfSWAMxKEhFqIkQ5rwM0ojXhFJ4CikKkwQe605W
 jP56njF2H3MkjHR2VNRxQY6DvCCSictCPSI/UUAlN22X3rokIq16AUcHn
 DX8DHhI5HQK1b7kTevWhXLiNF0D8TMp3aGDrwaIW+kd2vRIJ3FjsRcN5x
 tAm8tMBZCmvW8oVCsrzIAzqtIL12NAA3HYtyo+rvDmfEL9O9F1V3hH6z0
 P9D3nhffqou5Pu4WdvD/7GYxrju365JSA0sdOU4po8Aup2Hzbx3aM0T7n
 BH4x9Tak6yvK8PseXBRiwLalrnKd9iVPTdn/1RA/Vbhn+BF7y6kNF8jmh Q==;
X-CSE-ConnectionGUID: /ziBnCDHSs6o1WsJ1Kpjlw==
X-CSE-MsgGUID: xiaeDpXmRNSpt3hctepgNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165160"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165160"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:44 -0700
X-CSE-ConnectionGUID: IvqQgLSAQ32i9jFbcE5Dyg==
X-CSE-MsgGUID: QhZ4u+TnToK/s20xbLZWQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965486"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp limit
 on MTL
Date: Wed, 17 Apr 2024 01:10:04 +0300
Message-ID: <20240416221010.376865-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240416221010.376865-1-imre.deak@intel.com>
References: <20240416221010.376865-1-imre.deak@intel.com>
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0448cc343a33f..847e264e5bb8b 100644
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
 		/*
-- 
2.43.3

