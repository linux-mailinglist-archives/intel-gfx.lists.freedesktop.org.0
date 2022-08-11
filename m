Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D858FD31
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 15:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625302BF0C;
	Thu, 11 Aug 2022 13:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CC02B0D21
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 13:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223732; x=1691759732;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lc8JJvAaUjOrtCCe9Ez8woAwufKneDQUgQbeVyP5tA4=;
 b=KtSPOVLE3rFpj2fUGNntFD0eellIxuR2VDa7SWPM15XChnp0tJnwyEmK
 N6Ca4MEAlYPhlHbecoP+tuT/QdaNzRAyjsVUpRAugjz9RLnvwwelws1Hy
 oYNNgi6t+nPTHsvI6oXtMv+nq+oCbz/u9EAYfpE8b1MFdEn171Ma62OGe
 Wpjc52EG9G83GZ85r5L+xZKtX7kjhhzQHb7T2pNTs5rafgMjkalzjX4qx
 UYQpUpvIV2xtBNj+mrcqUFA9AqXIDe+D+ovLpN1bIKUNLJX+8+fFuKHFS
 Dp6I7bLxLjJ3aQ1CbU+HJPf5h+cKCX7zBKgi/4sJKki6n/rrQU26Fq6NY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355344656"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="355344656"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="665369330"
Received: from tapas-nuc7i7bnh.iind.intel.com ([10.145.162.50])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2022 06:15:30 -0700
From: Tapas Rana <tapas.rana@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:41:01 +0530
Message-Id: <20220811131101.4169258-1-tapas.rana@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Fixes KW issue for NULL pointer dereference
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
Cc: Tapas Rana <tapas.rana@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

- adds a NULL pointer check for the input parameter

Signed-off-by: Tapas Rana <tapas.rana@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 9a7e50534b84..de7c892aabc5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -435,6 +435,9 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
 static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
 				    struct ttm_resource *dst_mem)
 {
+	if (!bo)
+		return false;
+	
 	if (i915_gem_object_needs_ccs_pages(i915_ttm_to_gem(bo)))
 		return false;
 
-- 
2.25.1

