Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ADF4C4609
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 14:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B7510E3D5;
	Fri, 25 Feb 2022 13:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA6110E46A;
 Fri, 25 Feb 2022 13:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645795338; x=1677331338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4k7j5fhhPmGrPAmwJexrBZ2tKydPYpDup5TOyEjqVOk=;
 b=kfI2yeFvf8O42hE3SPBo9FqZlF44AZTToP7l8sxnuiPHjb8aGjKCPQED
 tGcfkKmjYYTucmetXnHXmy+R31myu6pXAA+qm1BBQTZ3zaO3TGK5N5cZQ
 Z6OffYyfI5CfPf9zrxnYZ9jE9WB4kbryNcqUijdxbYv8BtFEHzlUM+YLI
 47NOIlRSBfSykDFbOBU5/+DTxe1DqPbbKEe02pJXVfK2FVDdYXlK9GWZR
 HFaNoJblTUdYRgNqvv+N+ZOGvaJVNIjKHDFeK6VAMSnPEVi+pX7tzRD7f
 Bd2O6f/7tyuEvnbgOnnKs1yjriUruGwQ93zukyz1zZoW6JfcioaWsfYqS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="236000581"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="236000581"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:22:18 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="544050484"
Received: from asaechnx-mobl2.ccr.corp.intel.com (HELO
 hades.ger.corp.intel.com) ([10.252.49.63])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:22:17 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 15:22:12 +0200
Message-Id: <20220225132213.1435026-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225132213.1435026-1-gwan-gyeong.mun@intel.com>
References: <20220225132213.1435026-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Update mismatched structure name
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It updates i915_gem_ctx to i915_gem_ww_ctx and adds missing indefinite
article to doc.

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 Documentation/gpu/i915.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index bcaefc952764..806454296b52 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -275,7 +275,7 @@ An Intel GPU has multiple engines. There are several engine types.
   space.
 - VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
   in user space
-- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
+- VECS is a video enhancement engine, this is named `I915_EXEC_VEBOX` in user
   space.
 - The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
   instead it is to be used by user space to specify a default rendering
@@ -346,7 +346,7 @@ Locking Guidelines
 #. No struct_mutex anywhere in the code
 
 #. dma_resv will be the outermost lock (when needed) and ww_acquire_ctx
-   is to be hoisted at highest level and passed down within i915_gem_ctx
+   is to be hoisted at highest level and passed down within i915_gem_ww_ctx
    in the call chain
 
 #. While holding lru/memory manager (buddy, drm_mm, whatever) locks
-- 
2.34.1

