Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E29712620
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756E810E7F0;
	Fri, 26 May 2023 12:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E40910E7F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:00:37 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-3f606a80d34so4956195e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 05:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685102435; x=1687694435;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iTIYnCjRif4ospriynSptOjoBD1Klg59Q9vBoYHRwmQ=;
 b=jg282b1mvLIiJOrDGDDV3ZO6zywASxeESmTfx1/ZB4/bDNw3wyiNfoPAF7bOPUcjcl
 Im7GJOvbo6oPgDRrPal6980OVaE+s86IBaMWvMEXvD4XEr96h21sG7/VX3+EQMtb5GvQ
 GMdjfRX09DUoRvE2CLA+Pf+zKCWCtLgOYQYtyn/c0hCDKXyMCLaR1L42puouhwT3e0Hl
 C7sRelNDPbqZMXzcoinCGkQOwKBDJFRNYMp4g70lyB3q1kLFrRlPDBfxIwi4ppf7aWoN
 vSeyBC2wUKGmRdqUuMpoNemTiCVcWuVfVJErHj6zQa4D8DgMAZGZLNt7koRnMu7Cqhqe
 Gbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685102435; x=1687694435;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iTIYnCjRif4ospriynSptOjoBD1Klg59Q9vBoYHRwmQ=;
 b=VgCyemRhMHjdn1AN7Wm+tzln9251vgNtt8hlnbXZ0P1H01CaamAv42a0gvdB2ZmyZp
 qd2HwIjzp4jybsuHceSVzjDvXAvN6Ys7RCAGSGfsgcF1+KF35PQFe08759FD8ZzMYBB4
 bVJBGB3ezrjekRsvZaX3qIZp9a5RxFVrejJyOVeZ9gsdBobSJhr7ruQrNJyLvQPsbDKV
 DZ/RMtkea7ZW+Cl3P/54KFcELshCg0fw8RncVX+OZ7Yi2GF5ZyCWQMAEb8DYKzyWNKFt
 kFS5d95+HGrver15W49LeuxA5edYTDfhlvL9jv7ukZUllZjS6BWuE+YpDRnkyhywvdP6
 YYlw==
X-Gm-Message-State: AC+VfDw7NO+LfQUHnwcVprboK8SVcWg7Y+CSOtxNeSlvWBs9vSB03HvD
 0SBbLRJSesPJZer+vcTPsEVnMYGDwY5N8PDRaiU=
X-Google-Smtp-Source: ACHHUZ71bVO+kC1h/b+Nfb4uqUgpHrMFhFKaGuD5hfYxY/nFljgDQcmW9p/rcBTdcsRK+Uolrl9z2w==
X-Received: by 2002:a05:600c:3784:b0:3f5:ff24:27de with SMTP id
 o4-20020a05600c378400b003f5ff2427demr1527031wmr.32.1685102435476; 
 Fri, 26 May 2023 05:00:35 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 y5-20020a7bcd85000000b003f09d7b6e20sm5055601wmj.2.2023.05.26.05.00.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 05:00:34 -0700 (PDT)
Date: Fri, 26 May 2023 15:00:31 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: matthew.brost@intel.com
Message-ID: <db0b7e8e-e379-4d95-9e91-321b1a074384@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/selftests: Add a cancel request
 selftest that triggers a reset
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

Hello Matthew Brost,

The patch 4e6835466771: "drm/i915/selftests: Add a cancel request
selftest that triggers a reset" from Jan 13, 2022, leads to the
following Smatch static checker warning:

	drivers/gpu/drm/i915/selftests/i915_request.c:863 __cancel_reset()
	warn: NEW missing error code 'err'

drivers/gpu/drm/i915/selftests/i915_request.c
    817 static int __cancel_reset(struct drm_i915_private *i915,
    818                           struct intel_engine_cs *engine)
    819 {
    820         struct intel_context *ce;
    821         struct igt_spinner spin;
    822         struct i915_request *rq, *nop;
    823         unsigned long preempt_timeout_ms;
    824         int err = 0;
    825 
    826         if (!CONFIG_DRM_I915_PREEMPT_TIMEOUT ||
    827             !intel_has_reset_engine(engine->gt))
    828                 return 0;
    829 
    830         preempt_timeout_ms = engine->props.preempt_timeout_ms;
    831         engine->props.preempt_timeout_ms = 100;
    832 
    833         if (igt_spinner_init(&spin, engine->gt))
    834                 goto out_restore;

Propagate error code from igt_spinner_init()?

    835 
    836         ce = intel_context_create(engine);
    837         if (IS_ERR(ce)) {
    838                 err = PTR_ERR(ce);
    839                 goto out_spin;
    840         }
    841 
    842         rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
    843         if (IS_ERR(rq)) {
    844                 err = PTR_ERR(rq);
    845                 goto out_ce;
    846         }
    847 
    848         pr_debug("%s: Cancelling active non-preemptable request\n",
    849                  engine->name);
    850         i915_request_get(rq);
    851         i915_request_add(rq);
    852         if (!igt_wait_for_spinner(&spin, rq)) {
    853                 struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
    854 
    855                 pr_err("Failed to start spinner on %s\n", engine->name);
    856                 intel_engine_dump(engine, &p, "%s\n", engine->name);
    857                 err = -ETIME;
    858                 goto out_rq;
    859         }
    860 
    861         nop = intel_context_create_request(ce);
    862         if (IS_ERR(nop))
--> 863                 goto out_rq;

err = PTR_ERR(nop);?

    864         i915_request_get(nop);
    865         i915_request_add(nop);
    866 
    867         i915_request_cancel(rq, -EINTR);
    868 
    869         if (i915_request_wait(rq, 0, HZ) < 0) {
    870                 struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
    871 
    872                 pr_err("%s: Failed to cancel hung request\n", engine->name);
    873                 intel_engine_dump(engine, &p, "%s\n", engine->name);
    874                 err = -ETIME;
    875                 goto out_nop;
    876         }
    877 
    878         if (rq->fence.error != -EINTR) {
    879                 pr_err("%s: fence not cancelled (%u)\n",
    880                        engine->name, rq->fence.error);
    881                 err = -EINVAL;
    882                 goto out_nop;
    883         }
    884 
    885         if (i915_request_wait(nop, 0, HZ) < 0) {
    886                 struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
    887 
    888                 pr_err("%s: Failed to complete nop request\n", engine->name);
    889                 intel_engine_dump(engine, &p, "%s\n", engine->name);
    890                 err = -ETIME;
    891                 goto out_nop;
    892         }
    893 
    894         if (nop->fence.error != 0) {
    895                 pr_err("%s: Nop request errored (%u)\n",
    896                        engine->name, nop->fence.error);
    897                 err = -EINVAL;
    898         }
    899 
    900 out_nop:
    901         i915_request_put(nop);
    902 out_rq:
    903         i915_request_put(rq);
    904 out_ce:
    905         intel_context_put(ce);
    906 out_spin:
    907         igt_spinner_fini(&spin);
    908 out_restore:
    909         engine->props.preempt_timeout_ms = preempt_timeout_ms;
    910         if (err)
    911                 pr_err("%s: %s error %d\n", __func__, engine->name, err);
    912         return err;
    913 }

regards,
dan carpenter
