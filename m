Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CBB51E771
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FF411293E;
	Sat,  7 May 2022 13:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E95F11276E
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930153; x=1683466153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3FZOARnCpFaiUcs39Wm+9d8d7aYaEYhHsLOyKjMLjFM=;
 b=DxkFSM7qyLVyCEZ25POu3pc4pZciDWbr1iooHnN9fea6pb52wn35eLEV
 VqleIqb7OrUNNeXj/kxshsNmenbx0bgwaBehAGYwiGP+30PT/fwJ10Ugb
 y7So2pUP1QHQAaPNqK3zSK/mOd/hujr2B9x+y9l0aIQdXGFE+5B7NXeHv
 rVQIBt4Xa3glTwBDSgWhlb4VkoXWUFvAdpQpbTc67KDFVJqw71qnDTbUF
 NHRPHTC0hYmxY7yHrExKe5x/BVSp77zyQmDXcek8nBXtGMZepFwaqQeX2
 NqT8c5+c0kCIBwnDj8Wg+ZtcYyxYWTiV6dXPbrRSkKDN108B2O0g2InNl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334290"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334290"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292983"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:11 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:44 -0700
Message-Id: <20220507132850.10272-10-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/16] drm/i915: Drop has_guc_deprivilege from
 device info
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

No need to have this parameter in intel_device_info struct
as all platforms with graphics version 12.55 or newer has this
feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 +--
 drivers/gpu/drm/i915/i915_pci.c          | 1 -
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cf896cbf107e5..6daf4b82c131f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1395,8 +1395,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
 
-#define HAS_GUC_DEPRIVILEGE(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
+#define HAS_GUC_DEPRIVILEGE(dev_priv) (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 55))
 
 #define HAS_PERCTX_PREEMPT_CTRL(i915) \
 	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e03c640ff05d5..48cfb0ee56bf3 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -996,7 +996,6 @@ static const struct intel_device_info xehpsdv_info = {
 	.media.rel = 55, \
 	PLATFORM(INTEL_DG2), \
 	.has_64k_pages = 1, \
-	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
 	.platform_engine_mask = \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bf192b9498d4b..a199031b5a6ec 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -144,7 +144,6 @@ enum intel_ppgtt_type {
 	func(has_flat_ccs); \
 	func(has_heci_pxp); \
 	func(has_heci_gscfi); \
-	func(has_guc_deprivilege); \
 	func(has_l3_dpf); \
 	func(has_logical_ring_contexts); \
 	func(has_mslices); \
-- 
2.36.0

