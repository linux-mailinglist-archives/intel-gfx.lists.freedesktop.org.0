Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F91382B3F2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C4210E95A;
	Thu, 11 Jan 2024 17:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A71D710E95A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993713; x=1736529713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k6CO2QOkWalahB/Eb6x2w6rwQOeVNXTtj9rYBwBvyyQ=;
 b=AHkM6ZVB1Wr3JQiTK1cVFw73kHwWHpupMug+zud6lr7KOndA4sStrp/s
 t/d1QAvVp5YAfjKDp4wyULm3NKXazsvLPzmyOpMNinXep2FaGIvmGkFqR
 QPLpU01BEtRnmi0bns0Xxd6h3tnmh4H+mEh1PjBDsb4yUXoLuuc5MGiMw
 0us3AmJsI2QAZv/SnIWRruNEa8aKK3f91jOcPEv5bcnbwD43PM3UPckun
 dfRWR0ySO1hvIO315xrr1uo/QpbTV4LW/Qv9Du1G5wZqH8Rx0pWAS0Zq0
 MrBr8zjQt4Rbp0gRYfV7RZqWNYm5Ri6Zue5krxPooRvfNklXHLHOQDwgW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="17531458"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="17531458"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="758840853"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="758840853"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/gvt: use local INTEL_GVT_OPREGION_SIZE
Date: Thu, 11 Jan 2024 19:21:18 +0200
Message-Id: <8ae6e10fc0929934a14547a973312e82a4d7f7d1.1704992868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704992868.git.jani.nikula@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com, Zhi Wang <zhi.a.wang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All of gvt uses INTEL_GVT_OPREGION_SIZE for opregion size. Follow suit
here.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index faf21be724c3..4f74d867fe1a 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -574,7 +574,7 @@ int intel_gvt_set_opregion(struct intel_vgpu *vgpu)
 	ret = intel_vgpu_register_reg(vgpu,
 			PCI_VENDOR_ID_INTEL | VFIO_REGION_TYPE_PCI_VENDOR_TYPE,
 			VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION,
-			&intel_vgpu_regops_opregion, OPREGION_SIZE,
+			&intel_vgpu_regops_opregion, INTEL_GVT_OPREGION_SIZE,
 			VFIO_REGION_INFO_FLAG_READ, base);
 
 	return ret;
-- 
2.39.2

