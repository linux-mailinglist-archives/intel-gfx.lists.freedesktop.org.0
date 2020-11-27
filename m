Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19B2C6445
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BB66EBA5;
	Fri, 27 Nov 2020 12:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7336EB9E;
 Fri, 27 Nov 2020 12:07:48 +0000 (UTC)
IronPort-SDR: VN4SmHKpO/JUQPSNXL8+LU9osWVNu5qDhL1+bkFsVoDUfASLmK8ur3lFoX7L0jX+SJ4F0DEn9F
 xApPZgBghuKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168883343"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168883343"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:07:31 -0800
IronPort-SDR: cuur2f7QkBHGzh6T5dIvVF4u/bnV0Oz6zA5toJB/mzEF71F+pHLxv6z4O2nuj+g5ihtWQlVLcB
 GQlcQ4Kv31wQ==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548028495"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:07:29 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:04:39 +0000
Message-Id: <20201127120718.454037-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 003/162] drm/i915/selftest: handle
 local-memory in perf_memcpy
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We currently only support WC when mapping device local-memory, which is
returned as a generic -ENOMEM when mapping the object with an
unsupported type. Try to handle that case also, although it's starting
to get pretty ugly in there.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/selftests/intel_memory_region.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 0aeba8e3af28..27389fb19951 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -681,6 +681,8 @@ create_region_for_mapping(struct intel_memory_region *mr, u64 size, u32 type,
 		i915_gem_object_put(obj);
 		if (PTR_ERR(addr) == -ENXIO)
 			return ERR_PTR(-ENODEV);
+		if (PTR_ERR(addr) == -ENOMEM) /* WB local-memory */
+			return ERR_PTR(-ENODEV);
 		return addr;
 	}
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
