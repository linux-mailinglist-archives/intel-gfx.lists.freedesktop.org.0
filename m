Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03A468EFB6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 14:28:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B4A10E221;
	Wed,  8 Feb 2023 13:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA6010E221
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 13:28:22 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id m14so16719895wrg.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Feb 2023 05:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PGWl5LXqJk4ee71dzKQQZZYdahGaDREpNvGvjFxptzM=;
 b=blH0jQFoq+vsmHmlhXhdL2P19oLiKnwjJdTXHgdcs2B54Mf+hurvlwcp2j9rmnZn1S
 Q0zgep7PH2aeft6isSdO1k9fsvVIHiVadvVgPT8iEqDl7vbw6yoafhZm0/uZYf4pOCsq
 NbQvYlHqc4yGYoS7FQRmZV2YaKEdQ3Xz3/3Q4Vkct/xK8uK8gPCiEyMSGnANkiGf66UZ
 fuWHwkYSBWfuk11D51QSpX7ZElYHZbUC9CRuwut7u0HEAARD1RIEFryWE1lfwfbKi+rz
 QYKHeRZw2Dso5tKQlTWH98/8LDax+4eDUryQapYh5IfEC8yHI/dXSQbJJXgkI9s6Tr1v
 LKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PGWl5LXqJk4ee71dzKQQZZYdahGaDREpNvGvjFxptzM=;
 b=IndYGxzPHM7DRBjdzFdoRF1NSptzY00+mfDdozLjTwm+zukmA6XFEqV5Jn8DTK3SCh
 h8khp5jLlYxxwJ+NnI08caT9Ajc2+/3WgbsJVpCd/Gy8Q8YMY9M+7InSPdX42w+A/Nnx
 NbvSbroW6JUDEny94fr98eySGAnNu+oquFr3tU5Uudv2oUPsRBDl6UvmrsnVV6X9Wdmr
 AINiWyJ43r6yM5hqsczIaqY8pGZsDgFwPQyTY9krsTgN29F6IfmVqwNhDnvd1anK8MJd
 S9gTh/AflM0tW8WlTjcB1uiUL/fAdJLZKSY1djHQY2wYVKv9zsCaikALOU+1CZGzc8uc
 1qVw==
X-Gm-Message-State: AO0yUKUu6DSChMK4DZQAs0XyARXcQ4xgJ8NaVBx/v3fkjYvhT+9SXBxq
 XX6Qh22aix2AcIlKvONQHng=
X-Google-Smtp-Source: AK7set8s11SgpRmTqkdGzs6fZwJJsKzhiMmYLlmfmffWtpHgUjfcq/YeChXXXG7ddg38IPJs6sZatA==
X-Received: by 2002:a05:6000:1144:b0:242:1809:7e17 with SMTP id
 d4-20020a056000114400b0024218097e17mr6361253wrx.6.1675862900414; 
 Wed, 08 Feb 2023 05:28:20 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 o5-20020a5d62c5000000b002c3e1e1dcd7sm10200127wrv.104.2023.02.08.05.28.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Feb 2023 05:28:19 -0800 (PST)
Date: Wed, 8 Feb 2023 16:27:58 +0300
From: Dan Carpenter <error27@gmail.com>
To: matthew.brost@intel.com
Message-ID: <Y+OjXhLWgllw5nVS@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/guc: Suspend/resume
 implementation for new interface
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

The patch cad46a332f3d: "drm/i915/guc: Suspend/resume implementation
for new interface" from Jul 26, 2021, leads to the following Smatch
static checker warning:

	drivers/gpu/drm/i915/gt/uc/intel_guc.c:655 intel_guc_suspend()
	error: passing non negative 268435455 to ERR_PTR

drivers/gpu/drm/i915/gt/uc/intel_guc.c
    631 int intel_guc_suspend(struct intel_guc *guc)
    632 {
    633         int ret;
    634         u32 action[] = {
    635                 INTEL_GUC_ACTION_CLIENT_SOFT_RESET,
    636         };
    637 
    638         if (!intel_guc_is_ready(guc))
    639                 return 0;
    640 
    641         if (intel_guc_submission_is_used(guc)) {
    642                 /*
    643                  * This H2G MMIO command tears down the GuC in two steps. First it will
    644                  * generate a G2H CTB for every active context indicating a reset. In
    645                  * practice the i915 shouldn't ever get a G2H as suspend should only be
    646                  * called when the GPU is idle. Next, it tears down the CTBs and this
    647                  * H2G MMIO command completes.
    648                  *
    649                  * Don't abort on a failure code from the GuC. Keep going and do the
    650                  * clean up in santize() and re-initialisation on resume and hopefully
    651                  * the error here won't be problematic.
    652                  */
    653                 ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
    654                 if (ret)
--> 655                         guc_err(guc, "suspend: RESET_CLIENT action failed with %pe\n",
    656                                 ERR_PTR(ret));

A positive value of ret doesn't necessarily indicate an error.  The
success path does this:

	ret = FIELD_GET(GUC_HXG_RESPONSE_MSG_0_DATA0, header);

Also I was really hoping someone would make %e print the error string.
Using ERR_PTR() in the printk is an ugly hack around.  (Mind you, I'm
too lazy to lift a finger to help so who am I to talk...)

    657         }
    658 
    659         /* Signal that the GuC isn't running. */
    660         intel_guc_sanitize(guc);
    661 
    662         return 0;
    663 }

regards,
dan carpenter
