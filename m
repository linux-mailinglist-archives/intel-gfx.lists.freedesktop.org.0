Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EB12C8671
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 15:18:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57C76E4CA;
	Mon, 30 Nov 2020 14:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883E76E4C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 14:18:35 +0000 (UTC)
IronPort-SDR: PO1rKKsPwMyUorRcpqBauKaYwycs91z3Oi2kFmxSuy7Vt2o5o/EBnpwYnhojKdsSVT71nP4zFa
 Kecw3KkBPq2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="160413547"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="160413547"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 06:18:20 -0800
IronPort-SDR: AxXKTm8PxspPInUozVrEyNW6CshFSt+0tsVCJKQ7dY9qXhGIV0bQlzUbmk8k0dEBaxhYCGZia3
 u4EvVKeNXalQ==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="549116069"
Received: from ekiperwa-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.22.113])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 06:18:19 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 14:18:08 +0000
Message-Id: <20201130141809.65330-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: also consider
 non-contiguous objects
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In igt_ppgtt_sanity_check we should also exercise the non-contiguous
option for LMEM, since this will give us slightly different sg layouts
and alignment.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 1f35e71429b4..0bf93947d89d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1333,6 +1333,7 @@ static int igt_ppgtt_sanity_check(void *arg)
 		unsigned int flags;
 	} backends[] = {
 		{ igt_create_system, 0,                        },
+		{ igt_create_local,  0,                        },
 		{ igt_create_local,  I915_BO_ALLOC_CONTIGUOUS, },
 	};
 	struct {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
