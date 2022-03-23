Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AD44E58DA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 20:04:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E96A10E0E9;
	Wed, 23 Mar 2022 19:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C2D10E066
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 19:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648062271; x=1679598271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FRdzc34QVvHT5U3sNJ/xnJY8GPw5BwJPrievIYuxOz0=;
 b=hKdYe9g3BdAfWmQNg0gB8d3IkMi1qIELMD3R+RP7qfS7FRNw9rNbN21F
 hqAJGN8qpXSNPbiEeU+WannfRA+bD1Tmfyqk3ldrmnd/mlYZdD8c2MART
 FPnDncKBqb89nTAKSNNZtOs0kmRf9gR4TlEbznMTTIdswxJeUsUNuzxux
 US1fCqbGzolR/BdRLqSgO76LyZqvBjbdIow97qtC8uu1f49FZ7b9whlAR
 5kmp6iveV480DC8qIeVhO4/pUFT7B+/TJreylGTxBeikcw7/j23AMEqHe
 Wk5LDV4bCa+GRNLUDxkjUdncePpZ1CGv31XpB/epV3uQX1Gt9h8lpG7gX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="245678454"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="245678454"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:04:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="647596582"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:04:30 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 12:01:24 -0700
Message-Id: <20220323190124.2343794-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220323190124.2343794-1-anusha.srivatsa@intel.com>
References: <20220323190124.2343794-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: DC states for DG2
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

DG2 has same DC states as DG1 - upto DC5.

Bspec: 49193

Cc: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3dc859032bac..349cc4bcea8a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4782,7 +4782,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	if (!HAS_DISPLAY(dev_priv))
 		return 0;
 
-	if (IS_DG1(dev_priv))
+	if (IS_DG1(dev_priv) || IS_DG2(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		max_dc = 4;
-- 
2.25.1

