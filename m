Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C59246C737D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EC110EB80;
	Thu, 23 Mar 2023 22:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C22110E4C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679612343; x=1711148343;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aFtA0MXVAYnXOyX1W/69cXiBdft+SYwnw3QwG2NaqOs=;
 b=NVWLH7M5kbN8UTYfMu3w5/Se6vIlzIw7LvkNV4wBsM5vWd/Hf0CLgz/k
 6O/ZB8neKA9MxAtV7VuELEtR1Na1QH8qq2B8kwjbm5DSNwr84CXBaW8ne
 KvTOhO3KNo2SLsz2gL9//8R9HKO2lNrulAA3Hx6WUTGV3OzTcHFd2nIuV
 w9JmoBtmedd4ohFS0y43IY93Unf5uMI40NqiYRTlA5fbK8BD9F5mO2Hax
 FolwqRj6HCdeuYOZtoG0BTw5IUwF4YfXQ5ZbPN/IjPT+TVTvHVNUfd9eg
 FK5Pdg98Y+tpG0DypXVvfbVG2rJELm86HGY8kE/6LUkAk/ggT9nVRdAHT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320033258"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="320033258"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771639224"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="771639224"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:59:00 -0700
Message-Id: <20230323225901.3743681-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
References: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/perf: Pass i915 object to perf
 revision helper
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

