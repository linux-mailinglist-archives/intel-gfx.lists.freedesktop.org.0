Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A3B16AE62
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 19:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18816E834;
	Mon, 24 Feb 2020 18:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B026E513;
 Sat, 22 Feb 2020 09:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QtOz5Yqndfg4b3crCuadwzvowf+vDC2E5h6k4EWHytI=; b=DpH4PMwIppLr6/X5/tooSLY7BT
 vxbKby3+VAM0XUPcsmazZqb7SY83m8ex3rjxnFhCcs/YFiUv+BVkVfe5BQvtmZKr9BpYUQt6Gz9FD
 WztETKG0mq+h2t9VlU1aO3ivFnTENOAa23jTwpxPUKQBUKF4c6OMlCmGeF4Le5uRcoj6BXY9M7E7K
 mklR4r7fBXphre/H7RlKsk+x24wnkOB2uaZvz2FtWcJhG7IFWbrIFwHR/Lwgp3LOXcAE6N3wo4dWA
 nMQ52CJN0npwrXw+Tet31VHIIhvCdCkbZ9utTcpHchmXCPPbmVv5jC86fkEKoncwxx5Ri6txt5Lim
 Uj+nwA/A==;
Received: from [80.156.29.194] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Qdz-0007Ht-DL; Sat, 22 Feb 2020 09:00:15 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.3)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1j5Qdx-001N4f-NW; Sat, 22 Feb 2020 10:00:13 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Sat, 22 Feb 2020 10:00:07 +0100
Message-Id: <ab08b73be87b66700f244a4e41db8a5e7e768916.1582361738.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1582361737.git.mchehab+huawei@kernel.org>
References: <cover.1582361737.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 24 Feb 2020 18:13:30 +0000
Subject: [Intel-gfx] [PATCH 7/7] docs: gpu: i915.rst: fix warnings due to
 file renames
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
Cc: dri-devel@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix two warnings due to file rename:

	WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -function csr support for dmc ./drivers/gpu/drm/i915/intel_csr.c' failed with return code 1
	WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -internal ./drivers/gpu/drm/i915/intel_csr.c' failed with return code 2

Fixes: 06d3ff6e7451 ("drm/i915: move intel_csr.[ch] under display/")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/gpu/i915.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index e539c42a3e78..cc74e24ca3b5 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -207,10 +207,10 @@ DPIO
 CSR firmware support for DMC
 ----------------------------
 
-.. kernel-doc:: drivers/gpu/drm/i915/intel_csr.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_csr.c
    :doc: csr support for dmc
 
-.. kernel-doc:: drivers/gpu/drm/i915/intel_csr.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_csr.c
    :internal:
 
 Video BIOS Table (VBT)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
