Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBA36BC22F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419A910EBDF;
	Thu, 16 Mar 2023 00:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CAE110EA59
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 00:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678925375; x=1710461375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/rhoIQHuyh2E3BT636EmwDrT8BoZe2b7GOqqiJPBbR8=;
 b=hwCYJjWPxBBvmUjzrWDLoBP8/2fUoj8mkWWEhiGDA8I83t1/BfTUEjT6
 56xHz1bzMK24zeXtN7USBZP992zosM+vbTRImBh3ZU8c04EnIr9+D0HEM
 8+c4VRVEtnq87UcSaCEjB0AC8A2Mc7Qj5QeELCvpinkqwi9WNeZHXRmM2
 vvIPqjFyobNhSTwskUk2OUbzo3aHl/xvB2oUd9PhbPFpUlf/Tuqxto9+e
 C24hO3tblD4kQxIapxjd6mwRidmD2jYR9lnaU076vg6+IfoPtbIHqmsuG
 /2UzN/9yOdwNnGYH85mp+Ohez/R7DtHHemjP8rrXsWAM9p9/B+xvgyQ3P g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402718823"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="402718823"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709863724"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="709863724"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 17:09:31 -0700
Message-Id: <20230316000932.2525744-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
References: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/12] drm/i915/perf: Pass i915 object to
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
index f68a66cc387b..77fae3d80128 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -5290,7 +5290,7 @@ void i915_perf_fini(struct drm_i915_private *i915)
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

