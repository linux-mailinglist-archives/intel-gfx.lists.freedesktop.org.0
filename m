Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE875B582B7
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 19:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC7289496;
	Mon, 15 Sep 2025 17:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 13355 seconds by postgrey-1.36 at gabe;
 Mon, 15 Sep 2025 17:05:03 UTC
Received: from 16.mo561.mail-out.ovh.net (16.mo561.mail-out.ovh.net
 [188.165.56.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFFC89496
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 17:05:03 +0000 (UTC)
Received: from director11.ghost.mail-out.ovh.net (unknown [10.110.58.15])
 by mo561.mail-out.ovh.net (Postfix) with ESMTP id 4cQWcF4KpWz5y3D
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 17:05:01 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-gpgdm (unknown [10.108.42.70])
 by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id C7BB4C2659;
 Mon, 15 Sep 2025 17:05:00 +0000 (UTC)
Received: from etezian.org ([37.59.142.105])
 by ghost-submission-5b5ff79f4f-gpgdm with ESMTPSA
 id UCSTGDxHyGiRwwEAeR1Aow
 (envelope-from <andi@etezian.org>); Mon, 15 Sep 2025 17:05:00 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-105G006440e71e2-6fbf-438d-9bb5-aad483ec778f,
 D8E4078CF7CAAD40124CC93D2A3E7C57F5A12821) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Taotao Chen <chentaotao@didiglobal.com>
Subject: [PATCH] drm/i915: set O_LARGEFILE in __create_shmem()
Date: Mon, 15 Sep 2025 19:04:55 +0200
Message-ID: <20250915170455.2878581-1-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5133259151711734349
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefkedvgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfevudejhffgleekffekvedukeehveeijefhleektdeiheelueffvdeufeejffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupddujeekrdefledrledtrdelvddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghdpoffvtefjohhsthepmhhoheeiudgmpdhmohguvgepshhmthhpohhuth
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Taotao Chen <chentaotao@didiglobal.com>

Without O_LARGEFILE, file->f_op->write_iter calls
generic_write_check_limits(), which enforces a 2GB (MAX_NON_LFS) limit,
causing -EFBIG on large writes.

In shmem_pwrite(), this error is later masked as -EIO due to the error
handling order, leading to igt failures like gen9_exec_parse(bb-large).

Set O_LARGEFILE in __create_shmem() to prevent -EFBIG on large writes.

Reported-by: kernel test robot <oliver.sang@intel.com>
Closes: https://lore.kernel.org/oe-lkp/202508081029.343192ec-lkp@intel.com
Fixes: 048832a3f400 ("drm/i915: Refactor shmem_pwrite() to use kiocb and write_iter")
Signed-off-by: Taotao Chen <chentaotao@didiglobal.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Link: https://lore.kernel.org/r/20250822030651.28099-1-chentaotao@didiglobal.com
---
Hi,

I'm resending it so that CI picks it up for tests.

Andi

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 3b81cc3ad5be..21ea498c59eb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -569,6 +569,13 @@ static int __create_shmem(struct drm_i915_private *i915,
 	if (IS_ERR(filp))
 		return PTR_ERR(filp);
 
+	/*
+	 * Prevent -EFBIG by allowing large writes beyond MAX_NON_LFS on shmem
+	 * objects by setting O_LARGEFILE.
+	 */
+	if (force_o_largefile())
+		filp->f_flags |= O_LARGEFILE;
+
 	obj->filp = filp;
 	return 0;
 }
-- 
2.50.1

