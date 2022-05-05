Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F5851C944
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398B310EF3E;
	Thu,  5 May 2022 19:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E45510E897
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779283; x=1683315283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m3kEs6h8cNzXVLPtQmPGnx2xl/MBRli954a2q2Mh4A0=;
 b=HJZ1pOWl2CE7YNL5bVNoxFMkqXzaLqZyC+K4aRSGfuGX3cI0ry/VmAZ6
 jFsXgJ+x8qBAiaa/AUeY5lmk/CpQS/+AXa0fiQ4eqedFo4kFieplrzBAA
 eWpcuYvqaSSDX7eJVAMKfmBnRbzijfCagPVy56XLnX9FJmBwljOB3Jntp
 aWj5yvnrimHQ6+n7/klFotBZ5EXZ7iuo/iC6KQCyavCld8Y7W4HQBmegr
 QMaLEMmFr3nh1hQhds5sZ+R/ToV95vZf0p+iHfnr5vLdoPUilOzM/+yvi
 ixsGNX7xfiF/55Jvkq4JKLtzRhSzayVY1DYFbF++4v8zqYJhXABc8VWL2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823124"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823124"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116670"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:20 -0700
Message-Id: <20220505193524.276400-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 3/7] drm/i915: Drop has_reset_engine from
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
as all platforms with graphics version 7 or newer can reset engines.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c    | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 5 -----
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 5422a3b84bd44..894f17f8b4cea 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -699,7 +699,7 @@ bool intel_has_reset_engine(const struct intel_gt *gt)
 	if (gt->i915->params.reset < 2)
 		return false;
 
-	return INTEL_INFO(gt->i915)->has_reset_engine;
+	return GRAPHICS_VER(gt->i915) >= 7;
 }
 
 int intel_reset_guc(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e21d08375b25d..6f8bc9008fe02 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -456,7 +456,6 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
 	.has_rc6p = 1, \
-	.has_reset_engine = true, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
@@ -514,7 +513,6 @@ static const struct intel_device_info vlv_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.has_runtime_pm = 1,
-	.has_reset_engine = true,
 	.has_rps = true,
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
@@ -618,7 +616,6 @@ static const struct intel_device_info chv_info = {
 	.dma_mask_size = 39,
 	.ppgtt_type = INTEL_PPGTT_FULL,
 	.ppgtt_size = 32,
-	.has_reset_engine = 1,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
 	.display_mmio_offset = VLV_DISPLAY_BASE,
@@ -700,7 +697,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48, \
-	.has_reset_engine = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.display.has_ipc = 1, \
@@ -1003,7 +999,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
 	.has_mslices = 1, \
-	.has_reset_engine = 1, \
 	.has_rps = 1, \
 	.has_runtime_pm = 1, \
 	.ppgtt_size = 48, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index ab283d88461e0..52460093c76e6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -142,7 +142,6 @@ enum intel_ppgtt_type {
 	func(has_64k_pages); \
 	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
-	func(has_reset_engine); \
 	func(has_4tile); \
 	func(has_flat_ccs); \
 	func(has_global_mocs); \
-- 
2.36.0

