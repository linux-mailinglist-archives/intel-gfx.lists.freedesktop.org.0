Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4087D7124A8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 12:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FCF10E1BE;
	Fri, 26 May 2023 10:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5179510E1BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 10:30:04 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-3f68fc6b479so6549985e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 03:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685097002; x=1687689002;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FXJhappykCQ83qXROBn3Qv8dYt0OLncXazlfxPJvksg=;
 b=XvVYAYVzghXpMh21/ZquBBuNg4c+T5Ew9CUC/eu+x5CPKdM7SKL5LQnjM9zUtUNd7A
 AcJI8cc4C58PZbCXRf+ajEsoXIjx66iUyFCaiGBHRaIVhg73Av9xq7MWuAlTJQr5AM6h
 AbC+6Iq1lKBr8gGMk8IqKABmGXSSao/ArJz2pPCUIQDjoQQKoVGAvmLpXQq7HbjggjzI
 1CzdJmr0FYDeIPfTNCCIX9cFVUHf2BP85t0KcYCIN3ySWv2LkM1wg3LtId1CLERWYstg
 xhMG2010uFoeT3JPEu0uKUNSkoelRWIFHwM4JD1ryYCVEHIBKolJ9OA98BlyOOVB9W24
 x9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685097002; x=1687689002;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FXJhappykCQ83qXROBn3Qv8dYt0OLncXazlfxPJvksg=;
 b=U9ThFNj8zcz2sJtv90NVmlSkn6eal5QoIuZEo/SBFvRd5ojcREt6uFor21ns/3r/6e
 QxHYj7btbieM413JErlBzReUOGhzAyO3cyAuaNKcKRL0+jrQsqkGhFrAejmGnkIw3VeR
 qKR48tw874B86qcBA0DkufkVGerNoM8fyONujvPEocUH9aPNEn1bRN7eOZX0lE89XGJS
 vQrhOIJwS0FFIEvtGwznIYgt2iY2PXJOJNxFMAnXlaL28VY6h7XxySIIrGMTX6AIcsvU
 uXzDq92qVpjkB8O8fUu/jTKi/JhGhAuhmf4OQOAq6FACZU7OHvSLJ5d9VpZhirtoXSAI
 XJqw==
X-Gm-Message-State: AC+VfDxAyvGL8aOVDzG0ILSvQfSvTdMYdh5E6j2qcz5bN9gIbt3TL9av
 efBkH2GInzgknLQcXUbvUfhZ8HPfIWIH6+c0P08=
X-Google-Smtp-Source: ACHHUZ7qZfjkAjLwfCqe0TF/Ka4h3Nrr60WHhCHMXy9VvYUppmjh7bMCoV/m517oIdhARv9oZlGjPQ==
X-Received: by 2002:a1c:7716:0:b0:3f6:1317:ca71 with SMTP id
 t22-20020a1c7716000000b003f61317ca71mr1427253wmi.14.1685097002406; 
 Fri, 26 May 2023 03:30:02 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 c21-20020a7bc855000000b003f1958eeadcsm8348218wml.17.2023.05.26.03.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 03:30:00 -0700 (PDT)
Date: Fri, 26 May 2023 13:29:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: tvrtko.ursulin@intel.com
Message-ID: <db3d49ac-fe80-4a77-980b-01a5249ee961@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/selftests: Stop using
 kthread_stop()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[ I don't know why I'm getting weird new warnings today...  Did
  something change in the Kconfig?  -dan ]

Hello Tvrtko Ursulin,

The patch 6407cf533217: "drm/i915/selftests: Stop using
kthread_stop()" from Oct 20, 2022, leads to the following Smatch
static checker warning:

	drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:350 live_parallel_switch()
	warn: missing error code 'err'

drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
    280 static int live_parallel_switch(void *arg)
    281 {
    282         struct drm_i915_private *i915 = arg;
    283         static void (* const func[])(struct kthread_work *) = {
    284                 __live_parallel_switch1,
    285                 __live_parallel_switchN,
    286                 NULL,
    287         };
    288         struct parallel_switch *data = NULL;
    289         struct i915_gem_engines *engines;
    290         struct i915_gem_engines_iter it;
    291         void (* const *fn)(struct kthread_work *);
    292         struct i915_gem_context *ctx;
    293         struct intel_context *ce;
    294         struct file *file;
    295         int n, m, count;
    296         int err = 0;
    297 
    298         /*
    299          * Check we can process switches on all engines simultaneously.
    300          */
    301 
    302         if (!DRIVER_CAPS(i915)->has_logical_contexts)
    303                 return 0;
    304 
    305         file = mock_file(i915);
    306         if (IS_ERR(file))
    307                 return PTR_ERR(file);
    308 
    309         ctx = live_context(i915, file);
    310         if (IS_ERR(ctx)) {
    311                 err = PTR_ERR(ctx);
    312                 goto out_file;
    313         }
    314 
    315         engines = i915_gem_context_lock_engines(ctx);
    316         count = engines->num_engines;
    317 
    318         data = kcalloc(count, sizeof(*data), GFP_KERNEL);
    319         if (!data) {
    320                 i915_gem_context_unlock_engines(ctx);
    321                 err = -ENOMEM;
    322                 goto out_file;
    323         }
    324 
    325         m = 0; /* Use the first context as our template for the engines */
    326         for_each_gem_engine(ce, engines, it) {
    327                 err = intel_context_pin(ce);
    328                 if (err) {
    329                         i915_gem_context_unlock_engines(ctx);
    330                         goto out;
    331                 }
    332                 data[m++].ce[0] = intel_context_get(ce);
    333         }
    334         i915_gem_context_unlock_engines(ctx);
    335 
    336         /* Clone the same set of engines into the other contexts */
    337         for (n = 1; n < ARRAY_SIZE(data->ce); n++) {
    338                 ctx = live_context(i915, file);
    339                 if (IS_ERR(ctx)) {
    340                         err = PTR_ERR(ctx);
    341                         goto out;
    342                 }
    343 
    344                 for (m = 0; m < count; m++) {
    345                         if (!data[m].ce[0])
    346                                 continue;
    347 
    348                         ce = intel_context_create(data[m].ce[0]->engine);
    349                         if (IS_ERR(ce))
--> 350                                 goto out;

err = PTR_ERR(ce);

    351 
    352                         err = intel_context_pin(ce);
    353                         if (err) {
    354                                 intel_context_put(ce);
    355                                 goto out;
    356                         }
    357 
    358                         data[m].ce[n] = ce;
    359                 }
    360         }
    361 
    362         for (n = 0; n < count; n++) {
    363                 struct kthread_worker *worker;
    364 
    365                 if (!data[n].ce[0])
    366                         continue;
    367 
    368                 worker = kthread_create_worker(0, "igt/parallel:%s",
    369                                                data[n].ce[0]->engine->name);
    370                 if (IS_ERR(worker))
    371                         goto out;

err = PTR_ERR(worker);

    372 
    373                 data[n].worker = worker;
    374         }
    375 
    376         for (fn = func; !err && *fn; fn++) {
                                ^^^^
Sneaky

    377                 struct igt_live_test t;
    378 
    379                 err = igt_live_test_begin(&t, i915, __func__, "");
    380                 if (err)
    381                         break;
    382 
    383                 for (n = 0; n < count; n++) {
    384                         if (!data[n].ce[0])
    385                                 continue;
    386 
    387                         data[n].result = 0;
    388                         kthread_init_work(&data[n].work, *fn);
    389                         kthread_queue_work(data[n].worker, &data[n].work);
    390                 }
    391 
    392                 for (n = 0; n < count; n++) {
    393                         if (data[n].ce[0]) {
    394                                 kthread_flush_work(&data[n].work);
    395                                 if (data[n].result && !err)
    396                                         err = data[n].result;

Probably either goto out here

    397                         }
    398                 }
    399 
    400                 if (igt_live_test_end(&t))
    401                         err = -EIO;

or make this and "err = err ?: -EIO;".  Also this would be better as
a goto out.

    402         }
    403 
    404 out:
    405         for (n = 0; n < count; n++) {
    406                 for (m = 0; m < ARRAY_SIZE(data->ce); m++) {
    407                         if (!data[n].ce[m])
    408                                 continue;
    409 
    410                         intel_context_unpin(data[n].ce[m]);
    411                         intel_context_put(data[n].ce[m]);
    412                 }
    413 
    414                 if (data[n].worker)
    415                         kthread_destroy_worker(data[n].worker);
    416         }
    417         kfree(data);
    418 out_file:
    419         fput(file);
    420         return err;
    421 }

regards,
dan carpenter
