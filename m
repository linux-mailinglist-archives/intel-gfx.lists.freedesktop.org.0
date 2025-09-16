Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96246B5970D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 15:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3368C10E315;
	Tue, 16 Sep 2025 13:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 82073 seconds by postgrey-1.36 at gabe;
 Tue, 16 Sep 2025 13:10:34 UTC
Received: from 3.mo581.mail-out.ovh.net (3.mo581.mail-out.ovh.net
 [46.105.34.113])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C3B10E315
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 13:10:34 +0000 (UTC)
Received: from director11.ghost.mail-out.ovh.net (unknown [10.110.0.87])
 by mo581.mail-out.ovh.net (Postfix) with ESMTP id 4cR2MF35P3z6W3D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 13:10:33 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-kqzgt (unknown [10.110.188.95])
 by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 304C7C33CA;
 Tue, 16 Sep 2025 13:10:31 +0000 (UTC)
Received: from etezian.org ([37.59.142.98])
 by ghost-submission-5b5ff79f4f-kqzgt with ESMTPSA
 id 48lxL8dhyWhnpwAAna9SXg
 (envelope-from <andi@etezian.org>); Tue, 16 Sep 2025 13:10:31 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R0028a97aa24-8b3f-4f2a-a0f5-901bbf9e8522,
 15C4845B0CE7FC90BB5A3BE606FC2E1917F11B68) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Taotao Chen <chentaotao@didiglobal.com>
Subject: [CI 2/2] drm/i915: Fix incorrect error handling in shmem_pwrite()
Date: Tue, 16 Sep 2025 15:09:56 +0200
Message-ID: <20250916130956.3913547-3-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250916130956.3913547-1-andi.shyti@kernel.org>
References: <20250916130956.3913547-1-andi.shyti@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7046163093246118477
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegtdeihecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeejleekkedugfeuuddvhffhgeekgeeivddtieefveejvedtgfdvhfeukedtgfeufeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupddujeekrdefledrledtrdelvddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdfovfetjfhoshhtpehmohehkedumgdpmhhouggvpehsmhhtphhouhht
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

shmem_pwrite() currently checks for short writes before negative error
codes, which can overwrite real errors (e.g., -EFBIG) with -EIO.
Reorder the checks to return negative errors first, then handle short
writes.

Signed-off-by: Taotao Chen <chentaotao@didiglobal.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Link: https://lore.kernel.org/r/20250822030651.28099-2-chentaotao@didiglobal.com
Signed-off-by: Andi Shyti <andi.shyti@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index b9dae15c1d16..26dda55a07ff 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -441,11 +441,20 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
 	written = file->f_op->write_iter(&kiocb, &iter);
 	BUG_ON(written == -EIOCBQUEUED);
 
-	if (written != size)
-		return -EIO;
-
+	/*
+	 * First, check if write_iter returned a negative error.
+	 * If the write failed, return the real error code immediately.
+	 * This prevents it from being overwritten by the short write check below.
+	 */
 	if (written < 0)
 		return written;
+	/*
+	 * Check for a short write (written bytes != requested size).
+	 * Even if some data was written, return -EIO to indicate that the
+	 * write was not fully completed.
+	 */
+	if (written != size)
+		return -EIO;
 
 	return 0;
 }
-- 
2.50.1

