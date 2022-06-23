Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F03557C83
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0E310E426;
	Thu, 23 Jun 2022 13:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698E210E426
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989753; x=1687525753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=popOiaEYp/GKobNSbzlycS+3gu9UZG8VdlKeFsFdcR4=;
 b=lBDxctMxXkSZ3O2pYUF7/5YPCIRuXLNjlzliDypYZUp4663Zi80Ep+0M
 un42v0Az4IFrPzeEz20l66FucEoph8pBUsbZumi7lJTdRp6Rrth3GGcnc
 PgU3BTNGdrL1u5EhvgPxlNThhLhlorcrjd7CxlTZGRGYIuTSkUfM1WYqk
 Im6O84QQAZB28mb/SelWqQsl+WXQH0nm8FqX1Y5ItYT/nb4vn37deCDnw
 Sc60ARl5TW5B8SC3LLrAQJ1LNV2+GZIINkg8FX+zj95pBY4IMvO8lR06Y
 WLDS5ULXqulRRnB+KBhYjGZ+HpXwD3yRwXLdvAS+Q09JzkcTX/vLl+EH5 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="263747515"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="263747515"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="563445320"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga006.jf.intel.com with SMTP; 23 Jun 2022 06:09:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:54 +0300
Message-Id: <20220623130900.26078-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Move display_mmio_offset under
 INTEL_INFO->display
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The display register offsets are display stuff so stick
into the display portion of the device info.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h | 5 +++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 50dd46981e86..b8219733f3b4 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -536,7 +536,7 @@ static const struct intel_device_info vlv_info = {
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
-	.display_mmio_offset = VLV_DISPLAY_BASE,
+	.display.mmio_offset = VLV_DISPLAY_BASE,
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
 	I965_COLORS,
@@ -634,7 +634,7 @@ static const struct intel_device_info chv_info = {
 	.has_reset_engine = 1,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
-	.display_mmio_offset = VLV_DISPLAY_BASE,
+	.display.mmio_offset = VLV_DISPLAY_BASE,
 	CHV_PIPE_OFFSETS,
 	CHV_CURSOR_OFFSETS,
 	CHV_COLORS,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2ef3bd20e3b9..c64cf302ccb7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -115,7 +115,7 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
-#define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display_mmio_offset)
+#define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display.mmio_offset)
 
 /*
  * Given the first two numbers __a and __b of arbitrarily many evenly spaced
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 4ca8c83dca59..e3b40f5782a4 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -214,8 +214,6 @@ struct intel_device_info {
 
 	u32 memory_regions; /* regions supported by the HW */
 
-	u32 display_mmio_offset;
-
 	u8 gt; /* GT number, 0 if undefined */
 
 #define DEFINE_FLAG(name) u8 name:1
@@ -240,6 +238,9 @@ struct intel_device_info {
 		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
 
+		/* Global register offset for the display engine */
+		u32 mmio_offset;
+
 		/* Register offsets for the various display pipes and transcoders */
 		int pipe_offsets[I915_MAX_TRANSCODERS];
 		int trans_offsets[I915_MAX_TRANSCODERS];
-- 
2.35.1

