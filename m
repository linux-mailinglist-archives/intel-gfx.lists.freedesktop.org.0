Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE945C63ABF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3FD10E391;
	Mon, 17 Nov 2025 10:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVld9DP2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F125C10E37F;
 Mon, 17 Nov 2025 10:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377171; x=1794913171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xbrstm7Hublsf5sEEybVkVvJv4iiM6p3gtEwE0+I2Lg=;
 b=VVld9DP2ad0z7FkHHMrXVCJrHdQ2maNPhrgTM/wDuam40aBhBNyvmxch
 QJvZnIEVzhieCKffeLzVt7Yas3JwqoRytnrwxbJSMiylB0SZLCv4L9mrv
 eNvMzzu3igLysBBtFG1kVqZqix8rpeKcL8yDapPsyiITvu1mY8Csh6o8q
 BL+tfdbjr9NKmhfNAosIgQNV/eLu6MEXLWijt8cqzrPdMKt2H1GBJlH2S
 v2Lss3bdR1KSUn6sMC0A/K59UJU764vW1hqt9RZBR+b0ZpBVNFoVfshNm
 oaaxU1SpgArtZKj8cg1HPAc1Ug41XEfRDrfzkXgJSfAtPf48IKXFHXAsR g==;
X-CSE-ConnectionGUID: ZGsmPUpZS6eVsqFKKoAjpw==
X-CSE-MsgGUID: VSPFe9A6T8WC1VrbSxceSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475410"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475410"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:31 -0800
X-CSE-ConnectionGUID: MqcRDiImSVy7/c1kje2+Lw==
X-CSE-MsgGUID: PggM5SfMRRWe7RFJQGTtfQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:29 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 22/32] drm/i915/cx0: Add MTL+ .update_dpll_ref_clks hook
Date: Mon, 17 Nov 2025 12:45:52 +0200
Message-Id: <20251117104602.2363671-23-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

Add .update_dpll_ref_clks function pointer to MTL+
platforms to support dpll framework. Reuse ICL
function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e6dd6f1123d6..32e52babf265 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4450,6 +4450,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.get_dplls = mtl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
+	.update_ref_clks = icl_update_dpll_ref_clks,
 };
 
 /**
-- 
2.34.1

