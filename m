Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E853E51E777
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1660D113357;
	Sat,  7 May 2022 13:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9A311305F
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930156; x=1683466156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JXzcXy/N2zVQLdW21KEJtawtdfM5fOKPyw43HsgQoKc=;
 b=j//5N1sJIaddvOoJjV+NM4Zbjaeq4OMC2D1Hr9BOV61w4VVX6ozl0dq9
 ofpNVXdZDclQ4m2d97QhgK8Beten98HRHWV0mFN1DdVJUiVYpJZH2/dmb
 3pcbpP7FkR+T2tPYDTqVbX1i86SopqMkSXCqtGdeE8AAcBoK8puo7YiIi
 nbefRjUC5EjESlqD3Yuf6GSQ90jFrECqMj2PZJ+wcI0NPFS1h7iB8rogN
 CkJ8/kXQVDm/bgtIhGo1bMs3t/cL2L8qgcyoPrMqjI2Oz45s99tCn7Dd9
 KyrNqLwT4syWqA9yYniG5krmW4OjCvFt/R5EMO7Ru/BZLGw8aJE8454tm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334310"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334310"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292997"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:47 -0700
Message-Id: <20220507132850.10272-13-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/16] drm/i915: Drop has_heci_gscfi from device
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

No need to have this parameter in intel_device_info struct
as this feature was only supported in Ivybridge and Haswell.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 12 ++++--------
 drivers/gpu/drm/i915/intel_device_info.h |  1 -
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1431416b7fd60..fad2bb34b47f0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1375,7 +1375,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
 
 /* DPF == dynamic parity feature */
-#define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
+#define HAS_L3_DPF(dev_priv) (IS_HASWELL(dev_priv) || IS_IVYBRIDGE(dev_priv))
 #define NUM_L3_SLICES(dev_priv) (IS_HSW_GT3(dev_priv) ? \
 				 2 : HAS_L3_DPF(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e4864b0a59234..109f90b40da9b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -460,8 +460,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 
 #define IVB_D_PLATFORM \
 	GEN7_FEATURES, \
-	PLATFORM(INTEL_IVYBRIDGE), \
-	.has_l3_dpf = 1
+	PLATFORM(INTEL_IVYBRIDGE)
 
 static const struct intel_device_info ivb_d_gt1_info = {
 	IVB_D_PLATFORM,
@@ -476,8 +475,7 @@ static const struct intel_device_info ivb_d_gt2_info = {
 #define IVB_M_PLATFORM \
 	GEN7_FEATURES, \
 	PLATFORM(INTEL_IVYBRIDGE), \
-	.is_mobile = 1, \
-	.has_l3_dpf = 1
+	.is_mobile = 1
 
 static const struct intel_device_info ivb_m_gt1_info = {
 	IVB_M_PLATFORM,
@@ -494,8 +492,7 @@ static const struct intel_device_info ivb_q_info = {
 	PLATFORM(INTEL_IVYBRIDGE),
 	.gt = 2,
 	.display.pipe_mask = 0, /* legal, last one wins */
-	.display.cpu_transcoder_mask = 0,
-	.has_l3_dpf = 1,
+	.display.cpu_transcoder_mask = 0
 };
 
 static const struct intel_device_info vlv_info = {
@@ -533,8 +530,7 @@ static const struct intel_device_info vlv_info = {
 
 #define HSW_PLATFORM \
 	G75_FEATURES, \
-	PLATFORM(INTEL_HASWELL), \
-	.has_l3_dpf = 1
+	PLATFORM(INTEL_HASWELL)
 
 static const struct intel_device_info hsw_gt1_info = {
 	HSW_PLATFORM,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e40ae78c4c7c9..952ececab8dba 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -143,7 +143,6 @@ enum intel_ppgtt_type {
 	func(gpu_reset_clobbers_display); \
 	func(has_flat_ccs); \
 	func(has_heci_pxp); \
-	func(has_l3_dpf); \
 	func(has_logical_ring_contexts); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
-- 
2.36.0

