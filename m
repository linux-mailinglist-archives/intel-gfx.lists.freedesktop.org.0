Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D88D5BB1A8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 19:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63F010E501;
	Fri, 16 Sep 2022 17:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2596410E4F2;
 Fri, 16 Sep 2022 17:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663349791; x=1694885791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RTH/YOaT43iSi5bbPnGm6/O1Y3X6bnY/7aN+FdTDH2M=;
 b=NQIu9AYlAcY2huKNbUcefDjyp0m8NtZ4aYCVp+sn0t0I8vft3KpJV/z1
 NPJXed6m+AMtxfJkYx3ldjm3AySE9zu3j0gXgzORg90Tz7NWf2fbEeWz/
 TON3D3hxxbOw62itLzt35/xe+CxT3MguUJHFWnEU2W4XrJTh+AC83oThW
 J8NYk7GPtEtV7XuglmMS1PObX09tpC0QqpVaYKVWlEjePw7/oyKn8G/bc
 RakifQICk+c0Gnh/AJe+IyurPaaiq56lXZVyqkYPpHuQZkdDVd2MQ3nUj
 bvAM43py92YrW9G1udWAR/IfLqWryOAZ/XKywg5TkNvRaHEOKIJDWg5op g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278769857"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="278769857"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 10:36:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="721499663"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 10:36:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, Caz Yokoyama <caz@caztech.com>,
 Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Date: Fri, 16 Sep 2022 10:36:06 -0700
Message-Id: <20220915-stolen-v2-1-20ff797de047@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220915-stolen-v2-0-20ff797de047@intel.com>
References: <20220915-stolen-v2-0-20ff797de047@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-bbe61
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Add missing mask when reading
 GEN12_DSMBASE
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
Cc: tejas.upadhyay@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DSMBASE register is defined so BDSM bitfield contains the bits 63 to 20
of the base address of stolen. For the supported platforms bits 0-19 are
zero but that may not be true in future. Add the missing mask.

v2: Use REG_GENMASK64()

Acked-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Reviewed-by: Caz Yokoyama <caz@caztech.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index acc561c0f0aa..3665f9b035bb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -814,7 +814,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		return ERR_PTR(-ENXIO);
 
 	/* Use DSM base address instead for stolen memory */
-	dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
+	dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
 	if (IS_DG1(uncore->i915)) {
 		lmem_size = pci_resource_len(pdev, GEN12_LMEM_BAR);
 		if (WARN_ON(lmem_size < dsm_base))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1a9bd829fc7e..9584a50ed612 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7953,6 +7953,7 @@ enum skl_power_gate {
 
 #define GEN12_GSMBASE			_MMIO(0x108100)
 #define GEN12_DSMBASE			_MMIO(0x1080C0)
+#define   GEN12_BDSM_MASK		REG_GENMASK64(63, 20)
 
 #define XEHP_CLOCK_GATE_DIS		_MMIO(0x101014)
 #define   SGSI_SIDECLK_DIS		REG_BIT(17)

-- 
b4 0.10.0-dev-bbe61
