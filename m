Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7609AA0B3F4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D91E10E623;
	Mon, 13 Jan 2025 10:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGnLEFAT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA2110E623
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736762612; x=1768298612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Txbztbma7JwBwqIx66zSrXolwpm4/Y5+nhy5WsF9ddI=;
 b=HGnLEFAT9QZYsPKFW3MZDCXfb+zggKp0Kyuf5pHnp2RIB37KaJkETpvP
 XgpL5t5knn99Zhnl1Cb0KVBRkqe7d4mQy1yichFv//GghXAasVVqGoWPj
 9JJNllppJGyaixqSZuD08acMWHdwwoaRcVMoVv0tfLiToyIpvWNYNcHiv
 z8x+1M+4Uc51+nQICqASsSNxdcTwW+PXLFfkH2/8OChwub8k7Jl79t7Sf
 8u3E91568HXLHxD8pDpXTjZ9/KU+2o640zzUR3LTrAniZhFjr932r5x0F
 YL5Jasrueszu1/0qaAPqs4Tc4/KttCZggn0Yf2wvvhCvz7w44Vh27F43x A==;
X-CSE-ConnectionGUID: ZBzZEfHBTG6c63g3tQEDpg==
X-CSE-MsgGUID: u4Vtx0cmTDiAJ4Hk4kHkng==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36227105"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36227105"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:03:32 -0800
X-CSE-ConnectionGUID: CszZ9Q5oTeGk3Ycm3Ysvyw==
X-CSE-MsgGUID: Pn+iRZssT1GRyffPSyIT1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104242963"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa006.fm.intel.com with ESMTP; 13 Jan 2025 02:03:30 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v2 6/8] drm/i915/soc: fix typos in i915/soc files
Date: Mon, 13 Jan 2025 15:54:19 +0530
Message-Id: <20250113102421.2431727-7-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113102421.2431727-1-nitin.r.gote@intel.com>
References: <20250113102421.2431727-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/soc reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 842db43e46c0..9f7c9dbc178e 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -243,7 +243,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * underneath. This is a requirement from virtualization team.
 	 *
 	 * In some virtualized environments (e.g. XEN), there is irrelevant
-	 * ISA bridge in the system. To work reliably, we should scan trhough
+	 * ISA bridge in the system. To work reliably, we should scan through
 	 * all the ISA bridge devices and check for the first match, instead
 	 * of only checking the first one.
 	 */
-- 
2.25.1

