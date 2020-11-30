Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 021292C8670
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 15:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394456E4BA;
	Mon, 30 Nov 2020 14:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5766E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 14:18:35 +0000 (UTC)
IronPort-SDR: rf3oB8XOd/BMxMUggdeTZBJEyr1bsFO/ADhGT81MGQyzOrWEyD0Wl2itzZD+l73JwtWlDiDK35
 2nhztKNTWQag==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="160413548"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="160413548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 06:18:21 -0800
IronPort-SDR: EH5RY9Ktrqz5xO6bivWij24x8PWJo+nOk2Ovy6O8tla29cp0DHgPe3n752lTTlvcxrdAoNmleZ
 is14SVf//94Q==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="549116085"
Received: from ekiperwa-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.22.113])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 06:18:20 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 14:18:09 +0000
Message-Id: <20201130141809.65330-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130141809.65330-1-matthew.auld@intel.com>
References: <20201130141809.65330-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: assert we get 2M GTT
 pages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the LMEM case if we have suitable alignment and 2M physical pages we
should always get 2M GTT pages within the constraints of the hugepages
selftest. If we don't then something might be wrong in our construction
of the backing pages.

References: 330b7d33056b ("drm/i915/region: fix order when adding blocks")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0bf93947d89d..cecbd2012e9d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -368,6 +368,25 @@ static int igt_check_page_sizes(struct i915_vma *vma)
 		err = -EINVAL;
 	}
 
+	/*
+	 * The dma-api is like a box of chocolates when it comes to the
+	 * alignment of dma addresses, however for LMEM we have total control
+	 * and so can guarantee alignment, likewise when we allocate our blocks
+	 * they should appear in descending order, and if we know that we align
+	 * to the largest page size for the GTT address, we should be able to
+	 * assert that if we see 2M physical pages then we should also get 2M
+	 * GTT pages. If we don't then something might be wrong in our
+	 * construction of the backing pages.
+	 */
+	if (i915_gem_object_is_lmem(obj) &&
+	    IS_ALIGNED(vma->node.start, SZ_2M) &&
+	    vma->page_sizes.sg & SZ_2M &&
+	    vma->page_sizes.gtt < SZ_2M) {
+		pr_err("gtt pages mismatch for LMEM, expected 2M GTT pages, sg(%u), gtt(%u)\n",
+		       vma->page_sizes.sg, vma->page_sizes.gtt);
+		err = -EINVAL;
+	}
+
 	if (obj->mm.page_sizes.gtt) {
 		pr_err("obj->page_sizes.gtt(%u) should never be set\n",
 		       obj->mm.page_sizes.gtt);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
