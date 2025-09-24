Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEC9B9C2BF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 22:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E28C10E7CC;
	Wed, 24 Sep 2025 20:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8aQx/Hz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764D510E7CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Sep 2025 20:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758746511; x=1790282511;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l53V6PuhR6bPisdxe2p9B1uyoD1C8/LaZBQGuRZmOrw=;
 b=f8aQx/HzfXDNWBDbVzSPGMXnNjRrW+8WwWZfoffg9Kw1ySYjjx7F3pVh
 +J5EJpN2pRIhZrNGUZkKYX5Pc5f7Zna3KhJvV25aJ6kEcXQJerIRYdpA+
 TwdyKd2mMWfE6FMraDxLqM0WSqssvZx7BYUhnz0OOfO+qZyUrwjwjn322
 6FiaNOFs8VW6vk8QDNwJUYhP/q7LSZZ+AJ8M1tpaiMZ8mLsRPZYclXpuJ
 rBSlATkYHj7ZsFANz5DL7C85UypQsf45CV54AZZ+X4yiMZToIMloKpFlB
 AzZnkjC3cUF72d49/KB0+kxktQImVquVgGIZoLHRsCJnTP49ptOyON7s0 g==;
X-CSE-ConnectionGUID: xEdaXMBdSgmLuIh7X3bVZQ==
X-CSE-MsgGUID: s/DwAEGzQRCK9ozTqc36Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60998550"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60998550"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 13:41:51 -0700
X-CSE-ConnectionGUID: 2v7QokNGRRGWKlo2twsaRQ==
X-CSE-MsgGUID: xMsPjtpSTBW8UMSqrzktTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,291,1751266800"; d="scan'208";a="181406722"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.29])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 13:41:50 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Madhur Kumar <madhurkumar004@gmail.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [CI] drm/i915: i915_pmu: Use sysfs_emit() instead of sprintf()
Date: Wed, 24 Sep 2025 22:41:41 +0200
Message-ID: <20250924204141.1199857-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Madhur Kumar <madhurkumar004@gmail.com>

Follow the advice in Documentation/filesystems/sysfs.rst:
show() should only use sysfs_emit() or sysfs_emit_at() when formatting
the value to be returned to user space.

Signed-off-by: Madhur Kumar <madhurkumar004@gmail.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Link: https://lore.kernel.org/r/20250923195051.1277855-1-madhurkumar004@gmail.com
---
Hi,

I'm resending this patch because unfortunately CI doesn't test
patches from non allowed users. Although trivial, we need all the
patches to be tested.

Thanks Madhur,
Andi

 drivers/gpu/drm/i915/i915_pmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5bc696bfbb0f..d8f69bba79a9 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -895,7 +895,7 @@ static ssize_t i915_pmu_format_show(struct device *dev,
 	struct i915_str_attribute *eattr;
 
 	eattr = container_of(attr, struct i915_str_attribute, attr);
-	return sprintf(buf, "%s\n", eattr->str);
+	return sysfs_emit(buf, "%s\n", eattr->str);
 }
 
 #define I915_PMU_FORMAT_ATTR(_name, _config) \
@@ -925,7 +925,7 @@ static ssize_t i915_pmu_event_show(struct device *dev,
 	struct i915_ext_attribute *eattr;
 
 	eattr = container_of(attr, struct i915_ext_attribute, attr);
-	return sprintf(buf, "config=0x%lx\n", eattr->val);
+	return sysfs_emit(buf, "config=0x%lx\n", eattr->val);
 }
 
 #define __event(__counter, __name, __unit) \
-- 
2.51.0

