Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDFC334B4B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664A889E08;
	Wed, 10 Mar 2021 22:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37F889E08
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:42 +0000 (UTC)
IronPort-SDR: BBRagGd9sLPB9OyqYG7KWeHJsKYGjWmPAzL52J0BNxPjh2KHjuMI4XyE801Gpe+Gje+hxZNUKX
 crp3ZKzmMVTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592054"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592054"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:42 -0800
IronPort-SDR: DRaJV3ZyLEPudPyXfORxvjjHhYZGhp8wwuudUwYWgr4sdGAf5VxSB3Z/nkpQqO1ApUqdAjaPkE
 cTOXm1Mw8Maw==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852179"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:41 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:16 +0200
Message-Id: <20210310221736.2963264-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/23] drm/i915/selftest: Fix debug message in
 igt_vma_remapped_gtt()
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

The expected/found values were swapped in a debug message, fix this up.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_vma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 2c067343d65f..ffea2602a781 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -953,7 +953,7 @@ static int igt_vma_remapped_gtt(void *arg)
 					if (val != exp) {
 						pr_err("%s VMA write test failed, expected 0x%x, found 0x%x\n",
 						       *t == I915_GGTT_VIEW_ROTATED ? "Rotated" : "Remapped",
-						       val, exp);
+						       exp, val);
 						i915_vma_unpin_iomap(vma);
 						err = -EINVAL;
 						goto out;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
