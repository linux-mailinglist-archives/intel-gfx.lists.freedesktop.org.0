Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1ED4184ED
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Sep 2021 00:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC726E489;
	Sat, 25 Sep 2021 22:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 459 seconds by postgrey-1.36 at gabe;
 Sat, 25 Sep 2021 22:20:03 UTC
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A3D6E489
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Sep 2021 22:20:03 +0000 (UTC)
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 2E89C40CE2; 
 Sat, 25 Sep 2021 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1632607942;
 bh=5GJGeMUE1rwvKSTEVK8obPvzmMX2uPbl+sLWvpxmi/Y=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=o4XySPeeDyWl8UU398FbX6sZORi8Iwe8Z326AxuuHOnrT5Y+Y60FQxN9UjaUo5REF
 PQB+RALfQQwlBSs9LrS/H816hXRMgqvezkOn7p2JJY7FToR1nPKzukbCvvGXEscnWb
 37+yBQTol2XTHhpUooVwce+IMzaBU5oetc6tt+7iEC5rYea39xzBcJwF9otwBeeg7d
 l/bxY6ggW8dA4m9ax3F9hIhXLFHeQoc0z1K0iIxwzr36ENrsTt/IZXLj/OmwrJdyMp
 t2TAo0Yf03dsAv/X9fn4RCvde3KAS7Wv8z9EdVy/vXsZXzccMe05nLcuLqtUUA66jQ
 5dolgvk2MnX3w==
From: Colin King <colin.king@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Sat, 25 Sep 2021 23:12:21 +0100
Message-Id: <20210925221221.181630-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: return NULL rather than a plain 0
 integer
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

From: Colin Ian King <colin.king@canonical.com>

Function gen7_ctx_vma returns a pointer to struct i915_vma, so
returning a plain 0 integer isn't good practice. Fix this by
returning a NULL instead.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 2958e2fae380..3c65efcb7bed 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1265,7 +1265,7 @@ static struct i915_vma *gen7_ctx_vma(struct intel_engine_cs *engine)
 	int size, err;
 
 	if (GRAPHICS_VER(engine->i915) != 7 || engine->class != RENDER_CLASS)
-		return 0;
+		return NULL;
 
 	err = gen7_ctx_switch_bb_setup(engine, NULL /* probe size */);
 	if (err < 0)
-- 
2.32.0

