Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A0C51C945
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6936F10EF62;
	Thu,  5 May 2022 19:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E983B10EEFA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779284; x=1683315284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lJEycotpGMotN8PxfHyeDW00dG8xFzScYfsyLWqhR1A=;
 b=VP7o1ZkECUEIJA870XadRrRB2alngo+rRyAw7ryEO/ZS+0taFpJe4l8X
 I63lAxNPnGYzQQkISgXub32hdalwcqWtfcj7XoaEJ+Fb18zx6EqsH3Kkg
 PqVvHYcUs/R6d9l6T6wvC7GzrsXeX17AmxNKGWIwquzKmQzPigaKiCfo6
 POP9W+14bOqRvrnQumpi4BMArjaKw1S8PSpt2N+v3VYEiJ0+BDv62jUrY
 Q31xHIseQys0WCKRwev2X3J0wR7ITZfLUzKZ1ArQfU/FrlNwTThLMxuI6
 rfnpgM9ArBsFFroAtqnXGMPV5WW+6cEBliR+WfDVLTqxmuS5yFsSkbg8v g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823128"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823128"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116679"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:21 -0700
Message-Id: <20220505193524.276400-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 4/7] drm/i915: Drop has_logical_ring_elsq
 from device info
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
as all platforms with graphics version 11 or newer has this feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 +--
 drivers/gpu/drm/i915/i915_pci.c          | 4 +---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 806bd6328383b..5538564bc1d25 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1246,8 +1246,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
 		(INTEL_INFO(dev_priv)->has_logical_ring_contexts)
-#define HAS_LOGICAL_RING_ELSQ(dev_priv) \
-		(INTEL_INFO(dev_priv)->has_logical_ring_elsq)
+#define HAS_LOGICAL_RING_ELSQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11)
 
 #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6f8bc9008fe02..2dc0284629d30 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -809,8 +809,7 @@ static const struct intel_device_info cml_gt2_info = {
 	.dbuf.size = 2048, \
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
 	.display.has_dsc = 1, \
-	.has_coherent_ggtt = false, \
-	.has_logical_ring_elsq = 1
+	.has_coherent_ggtt = false
 
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
@@ -997,7 +996,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_global_mocs = 1, \
 	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
-	.has_logical_ring_elsq = 1, \
 	.has_mslices = 1, \
 	.has_rps = 1, \
 	.has_runtime_pm = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 52460093c76e6..bef65e3f02c55 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -151,7 +151,6 @@ enum intel_ppgtt_type {
 	func(has_l3_dpf); \
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
-	func(has_logical_ring_elsq); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-- 
2.36.0

