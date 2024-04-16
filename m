Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7B38A7777
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3958F112EA9;
	Tue, 16 Apr 2024 22:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RteDjbTe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E54710F3D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305380; x=1744841380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wRCVqrGmiMdOVn5x5SuyYtOdwC+JubeBA4htvUFYAlM=;
 b=RteDjbTeT3nLdtlDAcHh/N01zB1k4Nh8Ot787GmHilCFXFMw7ut0qQ3h
 f0F9U+GSQ6d2qbNwUo0xq77FsKQJ83XSfw0FHGKjgHHuSPpChwyNBKM85
 tqcYr8Wymiw3wV9Ke+myO2XxxWd4MoaRnuUDvvrYMioDy2xQmT03Ff82G
 CKNiRcbDWV9bFlwLtImq4brM/a9HlTicu3/G7LMVwVptehWOekFEW4fDk
 MvioQI0CBKZUNQsgkkPpFm4HNYXlBfokXxeZJ4eC+qP+knL8yVrDgRvGe
 lSwOUKJ/6rTqE509oxSpO4redMkZ21AjsIZbMyn16TwMo1MD0Fnm6fkmt w==;
X-CSE-ConnectionGUID: EuuWUGVhSl63zQ6BQNAcCw==
X-CSE-MsgGUID: v5uNUC93Rn+BI4uylJLq4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165148"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165148"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:40 -0700
X-CSE-ConnectionGUID: 6j/6gW5CSk2vE6sRP0iorg==
X-CSE-MsgGUID: KEaqX8kYRE2znEUPHgcoig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965473"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 02/11] drm/i915/dp_mst: Fix symbol clock when calculating
 the DSC DPT bpp limit
Date: Wed, 17 Apr 2024 01:10:01 +0300
Message-ID: <20240416221010.376865-3-imre.deak@intel.com>
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

The expected link symbol clock unit when calculating the DSC DPT bpp
limit is kSymbols/sec, aligning with the dotclock's kPixels/sec unit
based on the crtc clock. As opposed to this port_clock is used - which
has a 10 kbits/sec unit - with the resulting symbol clock in 10
kSymbols/sec units (disregarding the rounding error for the 13.5Gbps
rate). Fix the calculation using the expected 10x factor.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d43617734009c..196eeead8cf02 100644
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

