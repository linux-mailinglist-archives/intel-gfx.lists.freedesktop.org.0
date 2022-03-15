Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3954DA224
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:15:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E324610E453;
	Tue, 15 Mar 2022 18:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D7E10E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368106; x=1678904106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+cjAF4bueyOu4R1M2lo6cn74L0Bmvv9HFHLxeTQtKKo=;
 b=BGF7xX0j3B9G+wuyLxmmHdBFOReBhQv7aRNFX2TncoMtYgz+w+3gYjr+
 FUeWI/eWq12TtkhtRnCh3ov/vDCjIttmiaP1ZVP9Ivi3eRqMuMjnoq5IK
 ETTVpyDFrm4u3hMFpwUHOtTkf7qgrKHQ6aHtofQfYCTv9Zbc2iqyzA9OQ
 DMbW798D6IANJB3GO/S34YacLP71GTJPbx9xyAcskJDX2biBME2X4+Eme
 J3dhAo//sh6XEdXwb5/iHY4TNf/4XzOATUbqDZnG6por8aUKQk+AYO+EK
 O7Xo6O5U/xgRU+xGZ2EJ3fTrw28sNSvF+P2kDIMZJBXHc45dyn6t464t7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255221144"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255221144"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="498133158"
Received: from sobyrne-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:05 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:14:21 +0000
Message-Id: <20220315181425.576828-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315181425.576828-1-matthew.auld@intel.com>
References: <20220315181425.576828-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/7] drm/i915/stolen: consider
 I915_BO_ALLOC_GPU_ONLY
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

Keep the behaviour consistent with normal lmem, where we assume CPU
access if by default required.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b860ec954104..17f35892ab7e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -695,6 +695,14 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	if (size == 0)
 		return -EINVAL;
 
+	/*
+	 * With discrete devices, where we lack a mappable aperture there is no
+	 * possible way to ever access this memory on the CPU side.
+	 */
+	if (mem->type == INTEL_MEMORY_STOLEN_LOCAL && !mem->io_size &&
+	    !(flags & I915_BO_ALLOC_GPU_ONLY))
+		return -ENOSPC;
+
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
 	if (!stolen)
 		return -ENOMEM;
-- 
2.34.1

