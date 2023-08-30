Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AC678D660
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 16:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6025A10E524;
	Wed, 30 Aug 2023 14:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE3910E475
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693404260; x=1724940260;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vu8t/W0UhzEMxECyOnvvGrQC2uRpRsHHcfDCa2AUk7s=;
 b=XGX+7+8rwZK0KnwpZTOLYTBivElX8U/HgIfTFJY0IeMIuY08PaaEGUud
 +WDV1TnqLqU9N2tHwM67H238+q+PD59wjVRAT2ouq5YjOh1gv2P62Pi3g
 oOLvg1KSkMzX1oWVyraoNSj7G8/+s3PopQ36mxUOIzIHTulBjjf+imU56
 jIN/SPVQU5n3v5mniKGTC4aI9de27T3npamY+QUuKQEuUqXoU10ae/olj
 0BWxysKutt1nuhV8Vteag4567a4yTetB8PvzKUtcLtBGXPdYcKPjdt3GX
 z2m65UYWvMgzBRTJJCdFg+folUC15cfBWhhV+VD/99hVHRmA+xoQxyu1L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="355962832"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="355962832"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 07:04:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="768415866"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="768415866"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 07:04:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 17:04:21 +0300
Message-Id: <20230830140421.2031111-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230830140421.2031111-1-imre.deak@intel.com>
References: <20230830140421.2031111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add TC port lockdep assert to
 AUX power well enabling
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

Similarly to earlier platforms, assert in the MTL AUX power well
enabling handler for TC AUX CH power wells that the TC port using the
AUX CH is locked.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 916009894d89c..820b7d41a0a8f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1794,6 +1794,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
 					 struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
+
+	if (intel_phy_is_tc(dev_priv, phy))
+		icl_tc_port_assert_ref_held(dev_priv, power_well,
+					    aux_ch_to_digital_port(dev_priv, aux_ch));
 
 	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
-- 
2.37.2

