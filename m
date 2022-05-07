Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4CF51E76B
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030BB10EBDA;
	Sat,  7 May 2022 13:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708AA10EBDA
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930143; x=1683466143;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QSl5aiDT4JThvIdSn+HiYSJax8+K/f/J2cnfA2IYCTw=;
 b=E7BKzz5wrz2hmk96CcKcBa7ifJAhhTdC67Ulo9zyEv4sBpaRWW6nzwCD
 D6xDgxv/PCaoXf/W3bIQ98ow5d6FOMjer7HhQEp1H4C6k3LD1OE4YyT1C
 +Mwq8QT3ZFkcRFPRCn9/eRM44b6iuoULobF/YKkHAytJts7cUI2Bq2pg8
 AUUUionHLidjr1Yuxd5W/vXYwdr2oaeLtUGbGZnzfEfRRm7XqWC2t+Zkg
 wP04WUGhI8UAj7s2IZJsk26LqynudbzqhE/8C0pukbkUr4Oblro9dCXdN
 l+eLNGFOgPF3SnHl6Dpt78/otCs2FX578KODTuaw0GCBpofOVeDv5M5p5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334256"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334256"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292949"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:01 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:37 -0700
Message-Id: <20220507132850.10272-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/16] drm/i915/display: Disable DSB for DG2 and
 Alderlake-P
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

Commit 99510e1afb48 ("drm/i915: Disable DSB usage for now") disabled
DSB for all display 12 platforms because it is not properly
programming gamma LUT but left display 13 platforms with it enabled
what I believe is not intentional.

kms_color@pipe-a-gamma test is still passing on TGL with DSB enabled
like reported in https://gitlab.freedesktop.org/drm/intel/-/issues/3916
and got the same behavior on Alderlake-P.

So here disabling DSB for all platforms and to avoid this mistake in
future platforms dropping the it from intel_device_info struct.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Fixes: 99510e1afb48 ("drm/i915: Disable DSB usage for now")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
 drivers/gpu/drm/i915/i915_pci.c          | 4 +---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8d00d24e16dc5..4a93ea3bf4949 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -938,7 +938,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
-#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
+/* FIXME: LUT load is broken with DSB */
+#define HAS_DSB(dev_priv)	(DISPLAY_VER(i915) >= 12 && 0)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8a7f7aad1a5d2..58653e5c24d35 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -848,8 +848,7 @@ static const struct intel_device_info jsl_info = {
 	}, \
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
-	.has_pxp = 1, \
-	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
+	.has_pxp = 1
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
@@ -922,7 +921,6 @@ static const struct intel_device_info adl_s_info = {
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
 	.display.has_dmc = 1,							\
-	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
 	.display.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f614f29267273..d4fb2af3b8be8 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -166,7 +166,6 @@ enum intel_ppgtt_type {
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
 	func(has_dmc); \
-	func(has_dsb); \
 	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
-- 
2.36.0

