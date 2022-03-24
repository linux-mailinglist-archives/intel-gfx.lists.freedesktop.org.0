Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 533B24E67AD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 18:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CB910E307;
	Thu, 24 Mar 2022 17:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8121510E307;
 Thu, 24 Mar 2022 17:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648142528; x=1679678528;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B1842B3IZQpBwkqKZE0GM5g3374TdUMMQBak/6A9pEA=;
 b=XJ1jjcXE5dtVOcdlGxELr2+h3zYK2yyMaODqbtRWTcRlPeFVdHmyplcN
 QX9wSm/6L8rQJvBdgFQV5xWufMOai2Nm4MSc4FgbsF85drUoQPYoqtJy2
 mWDQKN8VzD+5oJ2eyG8yIarZN5QmctGHYr4qinCMUYeR8vG8ae66WhEne
 NVBD7pqBlPnW/ROdkBMcYV81v2FjyxiFbf98nvwaY9+/xq+kZBdfLd58V
 AHUvL9Sr+UVXwmvo/g4uiJgAWDbfO3n+IMeJfrbNVRAIhnvmSm1EExy8+
 jl1m5/j/3Xfg27c3eLuinwbKdQiQ9LY0Xordvyrqpja7sE2voDIqCw/ZP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="239043282"
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="239043282"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 10:22:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="637924710"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 10:22:06 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 17:21:42 +0000
Message-Id: <20220324172143.377104-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ttm: limit where we apply
 TTM_PL_FLAG_CONTIGUOUS
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
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We only need this when allocating device local-memory, where this
influences the drm_buddy. Currently there is some funny behaviour where
an "in limbo" system memory object is lacking the relevant placement
flags etc. before we first allocate the ttm_tt, leading to ttm
performing a move when not needed, since the current placement is seen
as not compatible.

Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Fixes: 2ed38cec5606 ("drm/i915: opportunistically apply ALLOC_CONTIGIOUS")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index e4a06fcf741a..97e648fa76bd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -133,6 +133,9 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 	memset(place, 0, sizeof(*place));
 	place->mem_type = intel_region_to_ttm_type(mr);
 
+	if (mr->type == INTEL_MEMORY_SYSTEM)
+		return;
+
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place->flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
-- 
2.34.1

