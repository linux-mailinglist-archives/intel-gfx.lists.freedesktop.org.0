Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F8382983D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 12:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F16310E762;
	Wed, 10 Jan 2024 11:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468DD10E5CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 11:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704884503; x=1736420503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UcfAIN6JotHUtWidjTnep3DlfX4a915G78Tgwqf7EPw=;
 b=fBCI//TWd+6HJW++rbgtbAoQ6ki0qzIf2kPAIzWnyYrD0Dr0iyqRVagu
 V6ejIZNvI3NHcDENLwE7VqhTMIvnvJjEA4e77luF4Zqi2MASUKVp0lsC0
 xX3XiHe7meNsLdIobhCWtG9vMl1R27XbUSSa95Jwo37beDthneToA7ac8
 Ml4B7GyYa43AerAip6WWMtzsEcy2GBU/4m1vMx0THBc5eE/methM/EnW4
 eDfLbpIb3z6O+gKgSYVZ1Lx1EzuomGmGFYo3N1pZEWbQTr6ChvWawAc1j
 huQhIAxrnXxDr6z6YYRxZqT1z1b+K8yJHnW1ljFC/FN2KdCRt3KLpJewX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11965076"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="11965076"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:01:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="23908720"
Received: from plebeaut-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.36.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:01:26 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 2/2] drm/xe: Modify the cfb size to be page size aligned
 for FBC
Date: Wed, 10 Jan 2024 13:00:09 +0200
Message-Id: <20240110110009.28799-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110110009.28799-1-vinod.govindapillai@intel.com>
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_gem_private_object_init expect the object size be page size
aligned. The xe_bo create functions do not update the size for
any alignment requirements. So align cfb size to be page size
aligned in xe stolen memory handling.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
index 888e7a87a925..bd233007c1b7 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
@@ -19,6 +19,9 @@ static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 	int err;
 	u32 flags = XE_BO_CREATE_PINNED_BIT | XE_BO_CREATE_STOLEN_BIT;
 
+	if (align)
+		size = ALIGN(size, align);
+
 	bo = xe_bo_create_locked_range(xe, xe_device_get_root_tile(xe),
 				       NULL, size, start, end,
 				       ttm_bo_type_kernel, flags);
-- 
2.34.1

