Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 581C34CDA45
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 18:24:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23FF10FEAA;
	Fri,  4 Mar 2022 17:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A871110FE7B;
 Fri,  4 Mar 2022 17:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646414659; x=1677950659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7hv58xU1wcHWgcE/5XC7+o8riKA+DhsOkOjpo6B78kg=;
 b=gh1Q++mxJLvZIymFDnNvY4YC8DFNxUzSGXOZu0KcdHY6rio4CI5wZFIZ
 8QzosAO9AZTn2cO7TgzC58MUmdJc4QEgA+GZcGXfTAjSh2asMBjq8/Y8S
 KQgza1A7Wrip43mfLZ90C5XzFaho+4v6zboV+KseGjaijg3BAYJHrizA6
 BEwgCnCW5K57o5Z0B4VMRWl5f4jSe3wyjCksebV3E7IMAMYujIbQcVHuu
 xdvpPnSHlpwJYsTvmjP2y6E8VzXHSYQlo91C/A410jKULGfAkequynpeS
 lO2pbAgoX3MPytzYrELqixsxhLLMRMRJsxA2LqySvJs27+CkLJghI3EPL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="252848975"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="252848975"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 09:24:19 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="631216622"
Received: from vkats-mobl1.ccr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.8])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 09:24:18 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 17:23:29 +0000
Message-Id: <20220304172333.991778-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304172333.991778-1-matthew.auld@intel.com>
References: <20220304172333.991778-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/buddy: tweak CONTIGUOUS rounding
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

If this is an actual range allocation, and not some bias thing then the
resultant allocation will already be naturally contiguous without
needing any power-of-two rounding.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 129f668f21ff..8e4e3f72c1ef 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -71,7 +71,8 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 
 	GEM_BUG_ON(min_page_size < mm->chunk_size);
 
-	if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
+	if (place->fpfn + bman_res->base.num_pages != place->lpfn &&
+	    place->flags & TTM_PL_FLAG_CONTIGUOUS) {
 		unsigned long pages;
 
 		size = roundup_pow_of_two(size);
-- 
2.34.1

