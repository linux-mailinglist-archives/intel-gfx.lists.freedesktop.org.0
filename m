Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E516C3EF1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 01:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07E910E265;
	Wed, 22 Mar 2023 00:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 576FF10E21F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 00:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679443737; x=1710979737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aFtA0MXVAYnXOyX1W/69cXiBdft+SYwnw3QwG2NaqOs=;
 b=U7c9ogKAmgwfZS5rtjoDoYEpVxIQ9qbBIWLCtYmmcdTOp/HH8iSLeT84
 VWAgYNtKTLMLpFH66EFfPxNKLT3fZQVOVUdHA2jZbxBGiPArNNF3IQVKd
 I2A6YYE3BrRrghm10CEeFGoaNoqXxFwA1S8Cw2+MYUezCDymByjp5PAJv
 UMe7cRl0AiuihFT1eXL8brCN9f6GRNfZlP1NNo0RI8R9kCjKlo4omQkmI
 g9TogoyHItPQwMFXMBrcRqsEhwijUDYcuGgOs54t5NVEnSQrhcMV+vv3A
 2EwomhFS7gYFFVuhZwN41xKR969xYkVANUgt/Sv17KZhU4eDHsKZzb/LZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="319476662"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="319476662"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 17:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="825180350"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="825180350"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 17:08:56 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Mar 2023 17:08:53 -0700
Message-Id: <20230322000854.3310481-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
References: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 10/11] drm/i915/perf: Pass i915 object to
 perf revision helper
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

In some cases, perf revision may rely on specific steppings of a
platform. To determine the platform, pass i915 object to the perf
revision helper.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c | 2 +-
 drivers/gpu/drm/i915/i915_perf.c     | 2 +-
 drivers/gpu/drm/i915/i915_perf.h     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 61ef2d9cfa62..2238e096c957 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -173,7 +173,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		value = INTEL_INFO(i915)->has_coherent_ggtt;
 		break;
 	case I915_PARAM_PERF_REVISION:
-		value = i915_perf_ioctl_version();
+		value = i915_perf_ioctl_version(i915);
 		break;
 	case I915_PARAM_OA_TIMESTAMP_FREQUENCY:
 		value = i915_perf_oa_timestamp_frequency(i915);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 247dad57ab89..18afa76653b7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -5289,7 +5289,7 @@ void i915_perf_fini(struct drm_i915_private *i915)
  *
  * This version number is used by userspace to detect available features.
  */
-int i915_perf_ioctl_version(void)
+int i915_perf_ioctl_version(struct drm_i915_private *i915)
 {
 	/*
 	 * 1: Initial version
diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
index 253637651d5e..accf626f2b13 100644
--- a/drivers/gpu/drm/i915/i915_perf.h
+++ b/drivers/gpu/drm/i915/i915_perf.h
@@ -22,7 +22,7 @@ int i915_perf_init(struct drm_i915_private *i915);
 void i915_perf_fini(struct drm_i915_private *i915);
 void i915_perf_register(struct drm_i915_private *i915);
 void i915_perf_unregister(struct drm_i915_private *i915);
-int i915_perf_ioctl_version(void);
+int i915_perf_ioctl_version(struct drm_i915_private *i915);
 int i915_perf_sysctl_register(void);
 void i915_perf_sysctl_unregister(void);
 
-- 
2.36.1

