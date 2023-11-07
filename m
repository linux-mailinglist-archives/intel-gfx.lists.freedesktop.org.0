Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A490B7E5303
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 11:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD50710E496;
	Wed,  8 Nov 2023 10:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB3D110E496
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 10:06:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="2758979"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; 
   d="scan'208";a="2758979"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 02:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="712881531"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="712881531"
Received: from rwyszeck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.217])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 02:06:06 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 08 Nov 2023 12:06:03 +0200
Resent-Message-ID: <87cywky2yc.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orsmga007.jf.intel.com (orsmga007.jf.intel.com [10.7.209.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 571DD580D9B;
 Tue,  7 Nov 2023 13:55:52 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="756336806"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="756336806"
Received: from orsmga103.jf.intel.com ([10.7.208.35])
 by orsmga007-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07
 Nov 2023 13:55:52 -0800
Authentication-Results: mtab.intel.com; dkim=none (message not signed)
 header.i=none; spf=None smtp.pra=sam@gentoo.org; spf=Pass
 smtp.mailfrom=sam@gentoo.org; spf=Pass
 smtp.helo=postmaster@smtp.gentoo.org; dmarc=pass (p=none dis=none)
 d=gentoo.org
IronPort-SDR: 654ab267_+WK3mAEsFq7WuV6RTgTsKhHpY7loNgIwk+VhChyhCqCOH+h
 MDlN/PYeaXUXnkNFdGH8cCDuA0bX2m2au5u6hiA==
X-IPAS-Result: =?us-ascii?q?A0HIAQCksUplkLem04xaHgEBCxIMQIFEC4I5gU8xBwhIh?=
 =?us-ascii?q?FOIfKhhDwEBAQEBAQEBAQlEBAEBhQaHKiAGAQQzBg4BAgMBAQEBAQMCAQIBA?=
 =?us-ascii?q?QEBAQEDAQEBAgIBAQECAQECBAIBAQEBAhABAQEBAQEgHh4nhXWCNysBhBgEC?=
 =?us-ascii?q?wFGGRwCJgJfARKCfoJfAwWQXZwyfzOBAYIVBQGxDIFogRouiAoBhDWGFIINg?=
 =?us-ascii?q?lCCLYQKhBSCaASDboU5BzKCIoNTjSaBAEdaFhsDBwNWKhArBwQwIgYJFC0jB?=
 =?us-ascii?q?lEEFxEkCRMSPgSDNgqBAj8PDhGCPyICPTYZSIJVCRUMNARGdhAqBBQXggAdF?=
 =?us-ascii?q?R43ERIFEg0DCHYdAhEjPAMFAwQzChINCyEFVwNCBkkLAwIaBQMDBIE2BQ0eA?=
 =?us-ascii?q?hAtJwMDE00CEBQDOwMDBgMLMQMwVUQMUANsHxYEHAk8DwwfAhseDScoAjVDA?=
 =?us-ascii?q?xEFEgIWAysiAwkDBwUsHUADCxgNSBEsNQYOGwY+AXMHoTt7E4ExxlKEFoFfn?=
 =?us-ascii?q?yoaM6l/AZg+IKgxgXkkgVxNMAiDIk8DGQ+OOZMbATxEMjsCBwEKAQEDCYhuN?=
 =?us-ascii?q?IIpAQE?=
IronPort-PHdr: A9a23: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
 oIQ6cNHGYOjghiwEA==
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:KMs/HK4mIjjJBP0sHwPXwNfXdLJyesId70hD6qm+c3Fom6uj5q
 KTdZUgpHzJYVkqN03I9erqBEDiexPhHPxOj7X5VI3KNDUO01HFEGgN1+HfKkXbehHDyg==
X-Talos-CUID: =?us-ascii?q?9a23=3AoumdXWkIRGTb9g4YyB6+wkCwtunXOUzb83D3ZAy?=
 =?us-ascii?q?lMzZ4abaaU1vP6J9ujtU7zg=3D=3D?=
X-Talos-MUID: 9a23:BIOjbQRPJxIjkeshRXTAui5FGPsrvpieLx0ywLkDoMumCQ9ZbmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="393553776"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="393553776"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from woodpecker.gentoo.org (HELO smtp.gentoo.org) ([140.211.166.183])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Nov 2023
 13:55:50 -0800
From: Sam James <sam@gentoo.org>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue,  7 Nov 2023 21:55:33 +0000
Message-ID: <20231107215538.1891359-1-sam@gentoo.org>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-TUID: E81uJa0itLxl
Subject: [Intel-gfx] [PATCH] drm: i915: Adapt to -Walloc-size
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
Cc: Sam James <sam@gentoo.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GCC 14 introduces a new -Walloc-size included in -Wextra which errors out
like:
```
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c: In function ‘eb_copy_relocations’:
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1681:24: error: allocation of insufficient size ‘1’ for type ‘struct drm_i915_gem_relocation_entry’ with size ‘32’ [-Werror=alloc-size]
 1681 |                 relocs = kvmalloc_array(size, 1, GFP_KERNEL);
      |                        ^

```

So, just swap the number of members and size arguments to match the prototype, as
we're initialising 1 element of size `size`. GCC then sees we're not
doing anything wrong.

Signed-off-by: Sam James <sam@gentoo.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 683fd8d3151c..45b9d9e34b8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1678,7 +1678,7 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
 		urelocs = u64_to_user_ptr(eb->exec[i].relocs_ptr);
 		size = nreloc * sizeof(*relocs);
 
-		relocs = kvmalloc_array(size, 1, GFP_KERNEL);
+		relocs = kvmalloc_array(1, size, GFP_KERNEL);
 		if (!relocs) {
 			err = -ENOMEM;
 			goto err;
-- 
2.42.1

