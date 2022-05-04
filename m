Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD38E51AD86
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033D810E857;
	Wed,  4 May 2022 19:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117C810E7E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691243; x=1683227243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/eljOOPGCRRZ3onJDyO9cVIOrWkE9OEvKtZqcmT7ffg=;
 b=NZ3SNDKn4MiUhdH7zkgq5WcZXeF1tukAY0SQOVr7nYUJauflInkLHuHA
 HkgII7aGvQAFfcee0rfEB4mQZ1vQWruWmLJ/+vOuVQ/ytmM3nzEPj2LMc
 JrCXVw/jGck4Wrmff17G0YW+PZSXjJaw0h60It9eOnzHNt940nuBWkp3S
 WsNl+9xhP1QiuLla1l8H/qwlY9h+iHN7QEVHeKAbLsGxNovjCvpmsWwbX
 pj3f1fiAHyU9Xl/xjZXLrL53FmIkHoVa4NT7oFoRt15gmN1tqNe+MBCWg
 qu/A5dqMFW7NZSZeBpmR/tOn+bFmMZgbJZImtPabS2f33fyZrUKu/0OX7 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854491"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854491"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162845"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:51 -0700
Message-Id: <20220504190756.466270-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Drop has_logical_ring_elsq from
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
as all platforms with graphics version 11 or newer has this feature.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 +--
 drivers/gpu/drm/i915/i915_pci.c          | 4 +---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 602e056edd314..f23e5c5cbf82b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1247,8 +1247,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
 		(INTEL_INFO(dev_priv)->has_logical_ring_contexts)
-#define HAS_LOGICAL_RING_ELSQ(dev_priv) \
-		(INTEL_INFO(dev_priv)->has_logical_ring_elsq)
+#define HAS_LOGICAL_RING_ELSQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11)
 
 #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b47f8b1ab9c6c..25aa8f5957f1e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -804,8 +804,7 @@ static const struct intel_device_info cml_gt2_info = {
 	.dbuf.size = 2048, \
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
 	.display.has_dsc = 1, \
-	.has_coherent_ggtt = false, \
-	.has_logical_ring_elsq = 1
+	.has_coherent_ggtt = false
 
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
@@ -989,7 +988,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_global_mocs = 1, \
 	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
-	.has_logical_ring_elsq = 1, \
 	.has_mslices = 1, \
 	.has_rps = 1, \
 	.has_runtime_pm = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 62c9616ea6a9c..7cf16b0315b54 100644
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

