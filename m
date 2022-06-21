Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6369552FC5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1808B10FAD4;
	Tue, 21 Jun 2022 10:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF17410F7F6;
 Tue, 21 Jun 2022 10:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655807440; x=1687343440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P4p7kT4E2DzKpBkYFtT5VpssCUaK08Eici9+v+31RQs=;
 b=dfuJscFkHJK9JHLdDeFt0zjQnaOIOyP93JnZ0wD6ZbtgbJMW+91lhA/U
 uLsZxUmcy76x+8qtcBcbnGUg2BWUXIB5ModFZKTgpskmt84AXDzg9ctb3
 aTS90fVvo4WKCjQkhc6rB03HUloMqJbikog2O7lik6bdRLSW32Zisst4c
 OtoOlzjAp8eIefQX9X0nsxLmmNqsZLEz/LNSY1axeEMGxGbFTXAUAYd0t
 TdElIpFt6fJhPREOwdy52xEdhGyZFChaOP0T0dtCX+YVTt1PXNxCr3t8u
 YEzgWVCJ/YnnPX7QTYo21hXT1cDTH0o11ymh0z2F6I9ZXVFwjcGKJnaHu Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280816961"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280816961"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:22 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591596267"
Received: from jasonmor-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.200.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 21 Jun 2022 11:29:59 +0100
Message-Id: <20220621103001.184373-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621103001.184373-1-matthew.auld@intel.com>
References: <20220621103001.184373-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 7/9] lib/i915/intel_memory_region:
 plumb through the cpu_size
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Will be useful later.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 lib/i915/intel_memory_region.c | 2 ++
 lib/i915/intel_memory_region.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index 3173507f..93a18982 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -956,6 +956,8 @@ struct gem_memory_region *__gem_get_memory_regions(int i915)
 
 		r->ci = info->regions[i].region;
 		r->size = info->regions[i].probed_size;
+		/* XXX: replace with probed_cpu_visible_size */
+		r->cpu_size = info->regions[i].rsvd1[0];
 		if (r->size == -1ull)
 			r->size = igt_get_avail_ram_mb() << 20;
 
diff --git a/lib/i915/intel_memory_region.h b/lib/i915/intel_memory_region.h
index 40ff832d..e1bfe0ca 100644
--- a/lib/i915/intel_memory_region.h
+++ b/lib/i915/intel_memory_region.h
@@ -176,6 +176,7 @@ struct gem_memory_region {
 
 	struct drm_i915_gem_memory_class_instance ci;
 	uint64_t size;
+	uint64_t cpu_size;
 };
 
 struct igt_collection *
-- 
2.36.1

