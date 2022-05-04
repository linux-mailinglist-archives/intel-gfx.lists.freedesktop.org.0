Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC0D51A34B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC9610E27C;
	Wed,  4 May 2022 15:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959DB10E29A;
 Wed,  4 May 2022 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676949; x=1683212949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lpYMvr4C21lR/kUNUZXFtzTcjPY/FaG6NYWsOqdueMc=;
 b=AVAs9LxFdK7a9LjEN2HZ9N67ZKlgnG3WG0qmPPXX9Tm3hyJy8SJ/zd75
 pdky4erGMvdsJxvpXN4ISAJF1y8+t7LefTR4aAK5zHUzzKlgy75fTvox0
 Zicl8ccrNtx2ZTlpXI5fd2U5EMz9y9XHa6M4kLB9+Pb+bPybpPk+j3Ru6
 mBOwZj80el8QSHFcNXE5feWXLTqV0bPKXbaw+u4Anq0LBZzb/wvsqpPDA
 eel65aeMfZzgOMTTUHPAjmmGntmnwA5HzfH86RdGu7cKBvIgsv3JacT7s
 QsoXFT9ygGwTWS37lDShnXfzJhvaDmsuigIQp/j/O3Ea/Nd8sEMFH0tRn g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="255259445"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="255259445"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:09:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="562763394"
Received: from ffagan-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.26.131])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:09:07 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  4 May 2022 16:08:45 +0100
Message-Id: <20220504150845.158789-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220504150845.158789-1-matthew.auld@intel.com>
References: <20220504150845.158789-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915/gem_workarounds: handle
 discrete
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

On discrete the object should already be using I915_CACHING_CACHED, by
default, for system memory objects, although we can no longer explicitly
control the PTE caching bits.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4873
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_workarounds.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_workarounds.c b/tests/i915/gem_workarounds.c
index 3d185127..70967b3f 100644
--- a/tests/i915/gem_workarounds.c
+++ b/tests/i915/gem_workarounds.c
@@ -107,7 +107,8 @@ static int workaround_fail_count(int i915, const intel_ctx_t *ctx)
 
 	memset(obj, 0, sizeof(obj));
 	obj[0].handle = gem_create(i915, result_sz);
-	gem_set_caching(i915, obj[0].handle, I915_CACHING_CACHED);
+	if (!gem_has_lmem(i915))
+		gem_set_caching(i915, obj[0].handle, I915_CACHING_CACHED);
 	obj[1].handle = gem_create(i915, batch_sz);
 	obj[1].relocs_ptr = to_user_pointer(reloc);
 	obj[1].relocation_count = !ahnd ? num_wa_regs : 0;
-- 
2.34.1

