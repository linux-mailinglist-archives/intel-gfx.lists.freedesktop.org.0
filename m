Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53B200B7D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 16:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96BE66E0EC;
	Fri, 19 Jun 2020 14:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B076E0EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 14:31:12 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id g18so831981wrm.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 07:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=votjP+3jiL2/WAzd03AJcl4wX2QWYarLzgTodM1DZEY=;
 b=icQtsH8z+gU4XCO/OrZzyvdfH5xN4MLo7//zoMIQQajKlbITmFI57cZZlg+5idyCTD
 SINa84sr12JyZt3d4h4G3uGqTY/1tObnonVxy0V9DQZoMbaFzc+9Rm5o3dIWEGNPUi5b
 8CDiWm8fTVdI+UYKW7zeTLBI2cP5W9yEB19TUsOOCD0ijFBRb/wAnaNwsfHhISvS4mfF
 O+GdRNZCDN6tXVzw13MeuRL8VxPxTVN1OaPkVfOlra5hpZH+R8rVhG++OgFdxbKayJTU
 KpcbiQKm7oCDQrtmvZZrKSW1dcZmLdSUjSRbrwQEMRooapweUJ48t5Kf6kfCKo1BmMeO
 I63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=votjP+3jiL2/WAzd03AJcl4wX2QWYarLzgTodM1DZEY=;
 b=GhQ0DPVhA8q8JB6+eBUNe/LTda3vJv0OVNqp2E+dNlGZ4+4AoIQKHV1K2anbPs1Bqp
 Bf4GL94tfpyoDcXsLJVdCDe64DpQnB0bvVxt1bDFFxVdjhAShJVxFxarhb0KZI2mtbs7
 5eYXLITC+C3LA96xMI2USZ9YvIg8+xdbcDXlvBb5YIPXXwsSzEKiiP9BYktKgGN1uBBa
 Dy+JGDN0RmhuSdGBVXh+963pa3F0Y4UOG6LECu48HRd9bAp3HavxZRfrTJQknntuCmAB
 4+g8e8bX5VmAoWk51wFDe9RIZzgGHHCU2jwmlE5f0emULXijPVn/aU3XHgwW0CFAHDsp
 umTw==
X-Gm-Message-State: AOAM5337bnTTPaU9GgR8eOKie+KIQdJzb85ppmsckTQZ/fn8bXZtBsAw
 /jp66VBNvWLxpLSL321WiVEWlz00
X-Google-Smtp-Source: ABdhPJw6e9MYYQsDmvawZBjopWfEo13rpnprE6sHwu39MDAEzDGXLOJuZqotMEzPoBMMD/INLwPOCA==
X-Received: by 2002:a5d:4910:: with SMTP id x16mr1571182wrq.401.1592577070964; 
 Fri, 19 Jun 2020 07:31:10 -0700 (PDT)
Received: from build.alporthouse.com ([78.156.65.138])
 by smtp.gmail.com with ESMTPSA id x186sm7185746wmg.8.2020.06.19.07.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 07:31:10 -0700 (PDT)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jun 2020 15:31:06 +0100
Message-Id: <20200619143106.10356-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619143106.10356-1-chris@chris-wilson.co.uk>
References: <20200619143106.10356-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Replace manual kmap_atomic()
 with pin_map for renderstate
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

We only emit the renderstate once now during module load, it is no
longer a concern that we are delaying context creation and so do not
need to so eagerly optimise. Since the last time we have looked at the
renderstate, we have a pin_map / flush_map facility that supports simple
single mappings, replacing the open-coded kmap_atomic() and
prepare_write. As it should be a single page, of which we only write a
small portion, we stick to a simple WB [kmap] and use clflush on !llc
platforms, rather than creating a temporary WC vmapping for the single
page.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_renderstate.c | 29 +++++++--------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index f59e7875cc5e..6db23389e427 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -61,7 +61,7 @@ render_state_get_rodata(const struct intel_engine_cs *engine)
 #define OUT_BATCH(batch, i, val)				\
 	do {							\
 		if ((i) >= PAGE_SIZE / sizeof(u32))		\
-			goto err;				\
+			goto out;				\
 		(batch)[(i)++] = (val);				\
 	} while(0)
 
@@ -70,15 +70,12 @@ static int render_state_setup(struct intel_renderstate *so,
 {
 	const struct intel_renderstate_rodata *rodata = so->rodata;
 	unsigned int i = 0, reloc_index = 0;
-	unsigned int needs_clflush;
+	int ret = -EINVAL;
 	u32 *d;
-	int ret;
 
-	ret = i915_gem_object_prepare_write(so->vma->obj, &needs_clflush);
-	if (ret)
-		return ret;
-
-	d = kmap_atomic(i915_gem_object_get_dirty_page(so->vma->obj, 0));
+	d = i915_gem_object_pin_map(so->vma->obj, I915_MAP_WB);
+	if (IS_ERR(d))
+		return PTR_ERR(d);
 
 	while (i < rodata->batch_items) {
 		u32 s = rodata->batch[i];
@@ -89,7 +86,7 @@ static int render_state_setup(struct intel_renderstate *so,
 			if (HAS_64BIT_RELOC(i915)) {
 				if (i + 1 >= rodata->batch_items ||
 				    rodata->batch[i + 1] != 0)
-					goto err;
+					goto out;
 
 				d[i++] = s;
 				s = upper_32_bits(r);
@@ -103,7 +100,7 @@ static int render_state_setup(struct intel_renderstate *so,
 
 	if (rodata->reloc[reloc_index] != -1) {
 		drm_err(&i915->drm, "only %d relocs resolved\n", reloc_index);
-		goto err;
+		goto out;
 	}
 
 	so->batch_offset = i915_ggtt_offset(so->vma);
@@ -150,19 +147,11 @@ static int render_state_setup(struct intel_renderstate *so,
 	 */
 	so->aux_size = ALIGN(so->aux_size, 8);
 
-	if (needs_clflush)
-		drm_clflush_virt_range(d, i * sizeof(u32));
-	kunmap_atomic(d);
-
 	ret = 0;
 out:
-	i915_gem_object_finish_access(so->vma->obj);
+	__i915_gem_object_flush_map(so->vma->obj, 0, i * sizeof(u32));
+	i915_gem_object_unpin_map(so->vma->obj);
 	return ret;
-
-err:
-	kunmap_atomic(d);
-	ret = -EINVAL;
-	goto out;
 }
 
 #undef OUT_BATCH
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
