Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFD0B5975A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 15:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75F010E08B;
	Tue, 16 Sep 2025 13:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 556 seconds by postgrey-1.36 at gabe;
 Tue, 16 Sep 2025 13:19:48 UTC
Received: from 13.mo561.mail-out.ovh.net (13.mo561.mail-out.ovh.net
 [188.165.33.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D6F10E08B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 13:19:48 +0000 (UTC)
Received: from director6.ghost.mail-out.ovh.net (unknown [10.109.249.107])
 by mo561.mail-out.ovh.net (Postfix) with ESMTP id 4cR2MB2tcWz6TbL
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 13:10:30 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-t8q8x (unknown [10.108.42.124])
 by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id BF887812EE;
 Tue, 16 Sep 2025 13:10:28 +0000 (UTC)
Received: from etezian.org ([37.59.142.105])
 by ghost-submission-5b5ff79f4f-t8q8x with ESMTPSA
 id NoBdB8RhyWhGFQAANDFDZw
 (envelope-from <andi@etezian.org>); Tue, 16 Sep 2025 13:10:28 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-105G00630f26057-5988-43ac-a5ce-a2f17a65ee7d,
 15C4845B0CE7FC90BB5A3BE606FC2E1917F11B68) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Taotao Chen <chentaotao@didiglobal.com>
Subject: [CI 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Date: Tue, 16 Sep 2025 15:09:55 +0200
Message-ID: <20250916130956.3913547-2-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250916130956.3913547-1-andi.shyti@kernel.org>
References: <20250916130956.3913547-1-andi.shyti@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7045037194932193869
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegtdeihecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeejleekkedugfeuuddvhffhgeekgeeivddtieefveejvedtgfdvhfeukedtgfeufeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupddujeekrdefledrledtrdelvddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghdpoffvtefjohhsthepmhhoheeiudgmpdhmohguvgepshhmthhpohhuth
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
Link: https://lore.kernel.org/r/20250822030651.28099-1-chentaotao@didiglobal.com
Signed-off-by: Andi Shyti <andi.shyti@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index e3d188455f67..b9dae15c1d16 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -514,6 +514,13 @@ static int __create_shmem(struct drm_i915_private *i915,
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

