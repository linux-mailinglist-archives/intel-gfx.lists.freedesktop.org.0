Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AABF8560A0E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89CC10ED1D;
	Wed, 29 Jun 2022 19:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD59E10ED1D;
 Wed, 29 Jun 2022 19:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529895; x=1688065895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P4p7kT4E2DzKpBkYFtT5VpssCUaK08Eici9+v+31RQs=;
 b=KJ6V6qmPd/2oQzTFkDcHmYx6P0btKudQcb2RqU66hO1pY1clkmSP2/T+
 CLSsydUdI5Pnf48xkzYWab7edTwAgYY+fmLNErwPK7wRlNsURxLcbVvd/
 yFc4C7A50l2RnNTKvmfYz1UIl9UmZe+eoytWxIP2igc3WZmEnXyvrdnWA
 Uut/udZB32Mlqd4wo+OMAojRsl1ajTuCXs80xHmhBHJp+GKXoskQH4F/G
 0NzH9QWrUOsVaqW5UYfFoGKorBNFAQBGZ4ZtkWFSOpRewi/oauXv6fpl7
 1GoyzkgLQorpq7PuVyPV5D8YKDG7vq/RiC5xfBtLLhMct1LKqGeS0VbQ6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439201"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439201"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:18 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297154"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:56 +0100
Message-Id: <20220629190658.395463-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629190658.395463-1-matthew.auld@intel.com>
References: <20220629190658.395463-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 7/9] lib/i915/intel_memory_region: plumb
 through the cpu_size
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
Cc: intel-gfx@lists.freedesktop.org
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

