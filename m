Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40BB51E76E
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8771112769;
	Sat,  7 May 2022 13:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1355B112769
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930148; x=1683466148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=52BAz4VYu9yNKEWDF/pBxP4Rsv7ZZKWZEQso1Fj+Ycc=;
 b=I8vPqLSc+XyVwZEgAZoJP7aBvGpGk38fgdniQFwAXSM71gZOVSRM1Pco
 RVLut4AHhnFGv6SG8FWzkgrx8ZB7FjD5qA6MtHoSQnlCyoMxG5KRRKVAd
 bqSDqD1olx0cG6T2+U2cK/8U9d3xGIMG/HeS3/wuIUHN9TVFwCsbhEOZF
 AezUu2siDt8/6Tf4rs9Q3RX1wUZoxA2oPf9tIIm1XheVLZC7CzbijEq4b
 9rYKThVYnD5nq+D/A38fzvQVIaj0uSTP3QxIVmyueu1gv4NQfwXZmaBVs
 PatA70MVTtAr+Jbs6sTxG5ZQrq5Lo/OJWo4b9eTj5uXxtvGIWvcVZYGdu Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334261"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334261"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292963"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:06 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:40 -0700
Message-Id: <20220507132850.10272-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/16] drm/i915: Drop supports_tv from device
 info
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

Only four platforms ever support this feature so we can elimitate
this from device info and use platform checks instead.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
 drivers/gpu/drm/i915/i915_pci.c          | 4 ----
 drivers/gpu/drm/i915/intel_device_info.h | 3 +--
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 98160fe2bc074..c107ff03c1fbc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1290,7 +1290,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
 					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))
-#define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
+#define SUPPORTS_TV(dev_priv)		(IS_I915GM(dev_priv) || IS_I945GM(dev_priv) || \
+					 IS_I965GM(dev_priv) || IS_GM45(dev_priv))
 #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
 
 #define HAS_FW_BLC(dev_priv)	(DISPLAY_VER(dev_priv) > 2)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 00c61e3b49c97..f4d484ea4c712 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -259,7 +259,6 @@ static const struct intel_device_info i915gm_info = {
 	.display.cursor_needs_physical = 1,
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
-	.display.supports_tv = 1,
 	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
@@ -284,7 +283,6 @@ static const struct intel_device_info i945gm_info = {
 	.display.cursor_needs_physical = 1,
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
-	.display.supports_tv = 1,
 	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
@@ -346,7 +344,6 @@ static const struct intel_device_info i965gm_info = {
 	.is_mobile = 1,
 	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.display.has_overlay = 1,
-	.display.supports_tv = 1,
 	.hws_needs_physical = 1,
 	.has_snoop = false,
 };
@@ -363,7 +360,6 @@ static const struct intel_device_info gm45_info = {
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
 	.display.fbc_mask = BIT(INTEL_FBC_A),
-	.display.supports_tv = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 5a39e42029877..0974e3ff24cf8 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -173,8 +173,7 @@ enum intel_ppgtt_type {
 	func(has_hti); \
 	func(has_modular_fia); \
 	func(has_overlay); \
-	func(overlay_needs_physical); \
-	func(supports_tv);
+	func(overlay_needs_physical);
 
 struct ip_version {
 	u8 ver;
-- 
2.36.0

