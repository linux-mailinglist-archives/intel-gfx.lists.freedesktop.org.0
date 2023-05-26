Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA56712619
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 13:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C40110E1C8;
	Fri, 26 May 2023 11:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8E110E1C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 11:59:02 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-3f6d01d390bso7154325e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 04:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685102341; x=1687694341;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Vg8DctbV5uK1KhGivQvE0NfyvjQmw5BPMewifuFxvrw=;
 b=f/HHRh/VUeTLk3iV8m8P8S+719r0kZU7rfdUyPK5jF0d3hcBpAN/JnbolBAa7MAkWo
 FLbaZSuZjiuYml7FJqo0nFo86NO1ixeiyn7hgHPYh7vKYNN1lDkvJzjNLav4bH4icHB0
 TSxv1WIdu+Pw6VDvzt096EH0yYh8/aunjVxTpNtnbTcVWoFSr1CxL7CkP51YBoOpRddL
 aXn82lmSNXCCepPTcvd24O694OMtMtEQFHF+APcByeYHtBTu4ZD+fkyPQDghj2kPEWNA
 ozLpQq9nUfsbiMKehBF6kjaSrxRqSku5FNRaZHjVoR377mBva2ADfe6vs8DWFObMgLo/
 zdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685102341; x=1687694341;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Vg8DctbV5uK1KhGivQvE0NfyvjQmw5BPMewifuFxvrw=;
 b=je7sovNK1oWKKKvwlzN9OUQc3pYvh2/Q6iiKGgt4WKmVe38JdkwNk2pstA2yR9hNTC
 +gh4cFmyrv8ZEpw2pDLjOuOFPUQzb5EO7Too3DDHLU2l5HNay+oYBsOUAXIWujbuE6le
 jX41+6O9tYoFOm+rtyr/H9N6O69B0oHZekmMDeTCXCnXHqUVW7SVZM/+ElWtPfPoB4a0
 pcEUAE4cXEVSjQu0HS8DA0b4aJRfD0+uM+GipHA+rFIXmN0IYuaztz3o8Uvp1n0VIr0A
 qh15Nv752PfvmB6STgOXBatSYrwZb6WC35YLX01cuZksrHwM9btUPKrU/Cn6cs+q0Py3
 fQng==
X-Gm-Message-State: AC+VfDxaDbHDAYXoGgrmBf8OnIVi2toAwKeruT4zQmx4xmz8hnFNlSlM
 ZhQ+74t+mba1gMdjHOyFcqAvLVQ58pGzLR2yvbc=
X-Google-Smtp-Source: ACHHUZ6SJ8KHF/VXdSNRtNdvbD0kfO7mCreoVXdUus0gmzViGi4pGhjoovYw/VWHt9oZEzfm06+RtQ==
X-Received: by 2002:a1c:6a0e:0:b0:3f6:984:4e43 with SMTP id
 f14-20020a1c6a0e000000b003f609844e43mr1361989wmc.21.1685102341012; 
 Fri, 26 May 2023 04:59:01 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 t14-20020a5d6a4e000000b0030add836194sm373422wrw.65.2023.05.26.04.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 04:58:59 -0700 (PDT)
Date: Fri, 26 May 2023 14:58:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: chris@chris-wilson.co.uk
Message-ID: <6257f743-4bac-4211-a758-f0ade16d3edf@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915: Remove I915_USER_PRIORITY_SHIFT
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

Hello Chris Wilson,

The patch eb5c10cbbc2f: "drm/i915: Remove I915_USER_PRIORITY_SHIFT"
from Jan 20, 2021, leads to the following Smatch static checker
warning:

drivers/gpu/drm/i915/gt/selftest_execlists.c:1544 live_busywait_preempt() error: 'ctx_hi' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:1549 live_busywait_preempt() error: 'ctx_lo' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:1740 live_preempt() error: 'ctx_hi' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:1745 live_preempt() error: 'ctx_lo' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:1844 live_late_preempt() error: 'ctx_lo' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:1871 live_late_preempt() error: 'ctx_hi' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:3382 live_preempt_timeout() error: 'ctx_hi' dereferencing possible ERR_PTR()
drivers/gpu/drm/i915/gt/selftest_execlists.c:3387 live_preempt_timeout() error: 'ctx_lo' dereferencing possible ERR_PTR()

drivers/gpu/drm/i915/gt/selftest_execlists.c
    1525 static int live_busywait_preempt(void *arg)
    1526 {
    1527         struct intel_gt *gt = arg;
    1528         struct i915_gem_context *ctx_hi, *ctx_lo;
    1529         struct intel_engine_cs *engine;
    1530         struct drm_i915_gem_object *obj;
    1531         struct i915_vma *vma;
    1532         enum intel_engine_id id;
    1533         int err = -ENOMEM;
    1534         u32 *map;
    1535 
    1536         /*
    1537          * Verify that even without HAS_LOGICAL_RING_PREEMPTION, we can
    1538          * preempt the busywaits used to synchronise between rings.
    1539          */
    1540 
    1541         ctx_hi = kernel_context(gt->i915, NULL);
    1542         if (!ctx_hi)
                     ^^^^^^^
kernel_context() returns error pointers.

    1543                 return -ENOMEM;
--> 1544         ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
    1545 
    1546         ctx_lo = kernel_context(gt->i915, NULL);
    1547         if (!ctx_lo)
                     ^^^^^^^
Same.

It's so weird that I'm getting this warning and today I can't compile
this file...  Plus I'm supposed to be on an ARM config...  Something is
wrong with my setup.  But the warnings looks correct.

    1548                 goto err_ctx_hi;
    1549         ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
    1550 
    1551         obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
    1552         if (IS_ERR(obj)) {
    1553                 err = PTR_ERR(obj);
    1554                 goto err_ctx_lo;
    1555         }
    1556 

regards,
dan carpenter
