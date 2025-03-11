Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D922A5BF64
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 12:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F3110E567;
	Tue, 11 Mar 2025 11:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="HeovKkzb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8268710E567
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 11:41:21 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id
 ffacd0b85a97d-38f2f391864so2774162f8f.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 04:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1741693280; x=1742298080; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bv23Q2O0ASuC0ViIjOOR66OXYMmMNTK3taxfYdsvPXk=;
 b=HeovKkzbHps0dpQcIh/aF9ywy6rQOcLUKgmpLEY7nu+WHwNt/OAsGVAx07g2BjvtAl
 5FqIspHzYFzLnlLYvXYUtV5hTxNBKbMLva/8dW4SGENNf4mTewK/JqZ9Ec2oAnXkBW9E
 ZCo3f0pNeY3KOhArcwz4gfn9WYTjpuTMAqq9FdFZT22RXAk1KUiVMFqfhWRTOiysrKGs
 rBeDZ9bmNd8UM/v3LvmUjOdR3Pg0zgCiK2ZMuYpHxf8MNmcI0wYnbsWSxAwarxlo20VV
 Y4Cckr/dUCdhqDsOgPCXiqyc4xmfGbkPC4hs60J1gJyuyUTQmDkA1D99IVhCp/UdQz0d
 Ov/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741693280; x=1742298080;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bv23Q2O0ASuC0ViIjOOR66OXYMmMNTK3taxfYdsvPXk=;
 b=rClzaLIKkm2KXuDENDihJAs8JF95UGWQkrZQ6ZQ/EXYYMu0e/iRcf465j+kZgms+N2
 WX/x35NQLSYZZVJV3g1/xGIY49t4Out2f1beCB0IjmG39w+VpwtXKYRhFvGaqxFGwdU2
 wjfKfQYKstTiBY6TEKINPFdoDjTU9l7r9nSzSU5IXvpkItsQGtTMSV821yKPorw2GSi+
 3lZN7hOf6e8dKPOp5Z2I7Xq/mpcVioW2/ZD1ap5D5Ai74eBwLbkZEEfcG8JGkrd1OseF
 gNrC3N6GJf/mG8UxaBCJ0ne6KkeRmnHkiOMH3rwBewj/sLUinHVwvIIqPqGxOIizSB0+
 y0jA==
X-Gm-Message-State: AOJu0YzvpvFT8pyEY4cTc1MkIxmEnGyIfbwQXAIrIPByFSZYlqvxqiTx
 cUYPDohDrP8FagNXcULgy6zqToqAfdJ1QJ1k5VjLF2e5lF1oJO/Mve+yAMoUsllnCs3mSvJzRFB
 c
X-Gm-Gg: ASbGnctc4QpHCPUop/CK7XOAnJTuzrsP51d57ECpH+Cjf7zJyEEO1KcLvUsFRJMOVZ+
 txXtgHVk8THGUUbjnxrmDG7YtkciA+aUkCvM1vsGGxthMaxT0xpGmOiH8zIz8+kKhFaZnQCzoG1
 p06FDOD+879ypgzTMTvqhfGgLxfsZtfXN1Jnyzqyj5fGvKc0JsAXo+/1KyFW+7JI7S6TB0RHrLY
 fIggMPxyOvul9DHXifTcRjfzQyS/SJMbVfxJXiCEyqbWN5bz5/1EaV12B25bzausoPdKt6KtquU
 MEOFPZHaBbSScevg2BaKWU1XXm1Toa4Xy2mTB77nKcUgpAGPJg==
X-Google-Smtp-Source: AGHT+IHz/Y+Jjon5MinIse8J0ihNspG46f53Sowe5ofzI7578SWw/C6YG2Sa0O1vhmaiL7n/UQlyBA==
X-Received: by 2002:adf:cb83:0:b0:391:23de:b19a with SMTP id
 ffacd0b85a97d-39132d57a26mr11102080f8f.31.1741693280065; 
 Tue, 11 Mar 2025 04:41:20 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3912c0e2eecsm17691061f8f.79.2025.03.11.04.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Mar 2025 04:41:19 -0700 (PDT)
Date: Tue, 11 Mar 2025 14:41:16 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915: Replace global breadcrumbs with per-context
 interrupt tracking
Message-ID: <3650de61-01e2-4bb8-b245-64a18bd66b5d@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hello Chris Wilson,

Commit 52c0fdb25c7c ("drm/i915: Replace global breadcrumbs with
per-context interrupt tracking") from Jan 29, 2019 (linux-next),
leads to the following Smatch static checker warning:

	drivers/gpu/drm/i915/selftests/i915_request.c:385 __igt_breadcrumbs_smoketest()
	warn: 'rq' can also be NULL

drivers/gpu/drm/i915/selftests/i915_request.c
    310 static void __igt_breadcrumbs_smoketest(struct kthread_work *work)
    311 {
    312         struct smoke_thread *thread = container_of(work, typeof(*thread), work);
    313         struct smoketest *t = thread->t;
    314         const unsigned int max_batch = min(t->ncontexts, t->max_batch) - 1;
    315         const unsigned int total = 4 * t->ncontexts + 1;
    316         unsigned int num_waits = 0, num_fences = 0;
    317         struct i915_request **requests;
    318         I915_RND_STATE(prng);
    319         unsigned int *order;
    320         int err = 0;
    321 
    322         /*
    323          * A very simple test to catch the most egregious of list handling bugs.
    324          *
    325          * At its heart, we simply create oodles of requests running across
    326          * multiple kthreads and enable signaling on them, for the sole purpose
    327          * of stressing our breadcrumb handling. The only inspection we do is
    328          * that the fences were marked as signaled.
    329          */
    330 
    331         requests = kcalloc(total, sizeof(*requests), GFP_KERNEL);
    332         if (!requests) {
    333                 thread->result = -ENOMEM;
    334                 return;
    335         }
    336 
    337         order = i915_random_order(total, &prng);
    338         if (!order) {
    339                 err = -ENOMEM;
    340                 goto out_requests;
    341         }
    342 
    343         while (!READ_ONCE(thread->stop)) {
    344                 struct i915_sw_fence *submit, *wait;
    345                 unsigned int n, count;
    346 
    347                 submit = heap_fence_create(GFP_KERNEL);
    348                 if (!submit) {
    349                         err = -ENOMEM;
    350                         break;
    351                 }
    352 
    353                 wait = heap_fence_create(GFP_KERNEL);
    354                 if (!wait) {
    355                         i915_sw_fence_commit(submit);
    356                         heap_fence_put(submit);
    357                         err = -ENOMEM;
    358                         break;
    359                 }
    360 
    361                 i915_random_reorder(order, total, &prng);
    362                 count = 1 + i915_prandom_u32_max_state(max_batch, &prng);
    363 
    364                 for (n = 0; n < count; n++) {
    365                         struct i915_gem_context *ctx =
    366                                 t->contexts[order[n] % t->ncontexts];
    367                         struct i915_request *rq;
    368                         struct intel_context *ce;
    369 
    370                         ce = i915_gem_context_get_engine(ctx, t->engine->legacy_idx);
    371                         GEM_BUG_ON(IS_ERR(ce));
    372                         rq = t->request_alloc(ce);
    373                         intel_context_put(ce);
    374                         if (IS_ERR(rq)) {

The __mock_request_alloc() function returns NULL on error.

    375                                 err = PTR_ERR(rq);
    376                                 count = n;
    377                                 break;
    378                         }
    379 
    380                         err = i915_sw_fence_await_sw_fence_gfp(&rq->submit,
    381                                                                submit,
    382                                                                GFP_KERNEL);
    383 
    384                         requests[n] = i915_request_get(rq);
--> 385                         i915_request_add(rq);
                                                 ^^
Leading to a NULL dereference.

    386 
    387                         if (err >= 0)
    388                                 err = i915_sw_fence_await_dma_fence(wait,
    389                                                                     &rq->fence,
    390                                                                     0,

regards,
dan carpenter
