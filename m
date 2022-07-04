Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8660E565B50
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E30910EBB0;
	Mon,  4 Jul 2022 16:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAC310E02E;
 Mon,  4 Jul 2022 08:09:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A71B66119B;
 Mon,  4 Jul 2022 08:09:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 041AEC341CA;
 Mon,  4 Jul 2022 08:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656922176;
 bh=EKMqy9UhUzeu4UGTyaN4MYlGMawg+pU7MdD+1PduzY8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VD/Rd53g+AE+5hpIjHtbA2lano+d/+OI1zRAA+hnmuHp3KEXdFDVSyLbNZI28qSGU
 2gd+hZr1xQQOx2EdJtfwUSvi7YwLup3mGO22bRgxhQlh/iuj9mDXun/zHCIb6c5kSm
 iFsRrVB2tSFGneEWXBN8F/I1ytcdk5ik8DsZrXh6LueXX749ZA5A129JY2+pcEG3Zx
 NfWA/SAB+wKWf+IJFveaLpuPwVUx/2VipxEuzH4Qq+cyCzhn/5yWl85xZzSyWn78ns
 wSzsagqFdE+Tyj8fd5HABft/EVxrcBAJNjLwPAkj/BXhwJW2JuSgCb40AALTggHj5i
 hujdcxDZ1KtfA==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1o8H9A-009OaY-Rp;
 Mon, 04 Jul 2022 09:09:32 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Mon,  4 Jul 2022 09:09:28 +0100
Message-Id: <ccc54757d89d38af35e5c5885edfb980c7b227f6.1656921701.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1656921701.git.mchehab@kernel.org>
References: <cover.1656921701.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Serialize GRDOM access
 between multiple engine resets
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Chris Wilson <chris.p.wilson@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

Don't allow two engines to be reset in parallel, as they would both
try to select a reset bit (and send requests to common registers)
and wait on that register, at the same time. Serialize control of
the reset requests/acks using the uncore->lock, which will also ensure
that no other GT state changes at the same time as the actual reset.

Cc: stable@vger.kernel.org # Up to 4.4
Reported-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
Acked-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v3 0/2] at: https://lore.kernel.org/all/cover.1656921701.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/gt/intel_reset.c | 37 ++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index a5338c3fde7a..c68d36fb5bbd 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -300,9 +300,9 @@ static int gen6_hw_domain_reset(struct intel_gt *gt, u32 hw_domain_mask)
 	return err;
 }
 
-static int gen6_reset_engines(struct intel_gt *gt,
-			      intel_engine_mask_t engine_mask,
-			      unsigned int retry)
+static int __gen6_reset_engines(struct intel_gt *gt,
+				intel_engine_mask_t engine_mask,
+				unsigned int retry)
 {
 	struct intel_engine_cs *engine;
 	u32 hw_mask;
@@ -321,6 +321,20 @@ static int gen6_reset_engines(struct intel_gt *gt,
 	return gen6_hw_domain_reset(gt, hw_mask);
 }
 
+static int gen6_reset_engines(struct intel_gt *gt,
+			      intel_engine_mask_t engine_mask,
+			      unsigned int retry)
+{
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&gt->uncore->lock, flags);
+	ret = __gen6_reset_engines(gt, engine_mask, retry);
+	spin_unlock_irqrestore(&gt->uncore->lock, flags);
+
+	return ret;
+}
+
 static struct intel_engine_cs *find_sfc_paired_vecs_engine(struct intel_engine_cs *engine)
 {
 	int vecs_id;
@@ -487,9 +501,9 @@ static void gen11_unlock_sfc(struct intel_engine_cs *engine)
 	rmw_clear_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
 }
 
-static int gen11_reset_engines(struct intel_gt *gt,
-			       intel_engine_mask_t engine_mask,
-			       unsigned int retry)
+static int __gen11_reset_engines(struct intel_gt *gt,
+				 intel_engine_mask_t engine_mask,
+				 unsigned int retry)
 {
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t tmp;
@@ -583,8 +597,11 @@ static int gen8_reset_engines(struct intel_gt *gt,
 	struct intel_engine_cs *engine;
 	const bool reset_non_ready = retry >= 1;
 	intel_engine_mask_t tmp;
+	unsigned long flags;
 	int ret;
 
+	spin_lock_irqsave(&gt->uncore->lock, flags);
+
 	for_each_engine_masked(engine, gt, engine_mask, tmp) {
 		ret = gen8_engine_reset_prepare(engine);
 		if (ret && !reset_non_ready)
@@ -612,17 +629,19 @@ static int gen8_reset_engines(struct intel_gt *gt,
 	 * This is best effort, so ignore any error from the initial reset.
 	 */
 	if (IS_DG2(gt->i915) && engine_mask == ALL_ENGINES)
-		gen11_reset_engines(gt, gt->info.engine_mask, 0);
+		__gen11_reset_engines(gt, gt->info.engine_mask, 0);
 
 	if (GRAPHICS_VER(gt->i915) >= 11)
-		ret = gen11_reset_engines(gt, engine_mask, retry);
+		ret = __gen11_reset_engines(gt, engine_mask, retry);
 	else
-		ret = gen6_reset_engines(gt, engine_mask, retry);
+		ret = __gen6_reset_engines(gt, engine_mask, retry);
 
 skip_reset:
 	for_each_engine_masked(engine, gt, engine_mask, tmp)
 		gen8_engine_reset_cancel(engine);
 
+	spin_unlock_irqrestore(&gt->uncore->lock, flags);
+
 	return ret;
 }
 
-- 
2.36.1

