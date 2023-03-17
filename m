Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292CC6BF619
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 00:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7499110E439;
	Fri, 17 Mar 2023 23:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7925F10E2A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 23:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679095007; x=1710631007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aFtA0MXVAYnXOyX1W/69cXiBdft+SYwnw3QwG2NaqOs=;
 b=k7R1//Ve1/aYAzT8zaiCxA+CesDyv5JVJSeP4CsROjCRNXTsTfmeP8hG
 CkY961NoDx7m8JJ7HCO2I+TSm4Lb+4v+ZWcRXP5PceRpJdwYTZ3a5+lQM
 MmTJxLu/cVkLOeL+YQdRN0+WUNL4isNqFw6Ml1veOoPRvbnpcnRxITELy
 jAyKD9TQQh+82t7KSapcgWqhHPnQDCnbYHitNu/Kel/Iy7kN2HkWA65sI
 +mx48esU7JOg61ML3EQjucsDsaEEiI/3zT8vK+LhUbHSQJQuTQsRg34SI
 cs8jQJ9sfDj7P7lyT7Sj7PjKhOg9abwzfVK0ZSUU3oI0qg6caKpC1A1f0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="335877108"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="335877108"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="712914901"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="712914901"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:16:46 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 16:16:40 -0700
Message-Id: <20230317231641.2815418-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 10/11] drm/i915/perf: Pass i915 object to
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

