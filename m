Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFDA6C1E2A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 18:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9810C10E5FE;
	Mon, 20 Mar 2023 17:36:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3DA10E5FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 17:36:26 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id u5so13259924plq.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 10:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1679333785;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:subject:cc:to:from:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=hpUGiYeox1kWl4OfAxGx9LTy4s9lwzAPEC2LintUMTc=;
 b=BtCwXN29zeO1Y2JubkxnqAj2y9r5ppxzyhIYMyUQ+7kjvqpqF6WoKT4KRHH7v86VmB
 cmGLns+Rn5mdrrdVa8FbMLj4dwKKemEB/I3XQ3Dg2L5CNV/jfELfU6YlYE1BR0yw8z0K
 lVe9NTGAOFCpmqwTdASeFMuSLzz2DXBQENOss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679333785;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:subject:cc:to:from:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hpUGiYeox1kWl4OfAxGx9LTy4s9lwzAPEC2LintUMTc=;
 b=2QZpo0Kyknk3aBfrQpMW9RgvNucnZzW8qqJY1/IlDK3lMFAp6W0LGOAV/BB0zy4ffa
 H3eUpHzkmrNq1MmK/4BaPFyBgIZML2sKAn+RF0vZMKHpZCaWGvg8xkHZovJfEcYkI2yJ
 Lv9YP39ijViwbbfBD4kE0Gn9SI0XM5Jk2Cta71mSw81J/ECq10/OMswEY4jvDdBlMchI
 +tScwV/d85pS3Sf8NSji45XsJVed3feDKRSILQ9dPs90OPwXYTa6kq++3bxIvKO3toDi
 b0tOC2YCoomV1mOxy/IALvsMeJ2C60J665e1g03NsfnnLnIdJ2ETXyRM1x2OhIdGPE9N
 D6dQ==
X-Gm-Message-State: AO0yUKVlqbKGfOJ/10TZmQWc0rIo9FMYs+MYdx7eInwztrcidNdDVFB1
 g4ZSkI7T+zUTzF9oPY3+cmp29g==
X-Google-Smtp-Source: AK7set9t390bG2K3Xo5adX8F8Bk16FfVLogcMGAN0o6Fz61VzJapYPhoEvZSKsa75t3/lr7IoM3W2g==
X-Received: by 2002:a17:903:120f:b0:1a0:549d:39a1 with SMTP id
 l15-20020a170903120f00b001a0549d39a1mr20418380plh.32.1679333785667; 
 Mon, 20 Mar 2023 10:36:25 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 k23-20020a170902ba9700b0019a95baaaa6sm6979664pls.222.2023.03.20.10.36.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Mar 2023 10:36:25 -0700 (PDT)
Message-ID: <64189999.170a0220.fa1d9.c3f5@mx.google.com>
X-Google-Original-Message-ID: <202303201036.@keescook>
Date: Mon, 20 Mar 2023 10:36:24 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <ZBSu2QsUJy31kjSE@work>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBSu2QsUJy31kjSE@work>
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915/uapi: Replace fake
 flex-array with flexible-array member
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 linux-hardening@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 12:18:01PM -0600, Gustavo A. R. Silva wrote:
> Zero-length arrays as fake flexible arrays are deprecated and we are
> moving towards adopting C99 flexible-array members instead.
> 
> Address the following warning found with GCC-13 and
> -fstrict-flex-arrays=3 enabled:
> drivers/gpu/drm/i915/gem/i915_gem_context.c: In function ‘set_proto_ctx_engines.isra’:
> drivers/gpu/drm/i915/gem/i915_gem_context.c:769:41: warning: array subscript n is outside array bounds of ‘struct i915_engine_class_instance[0]’ [-Warray-bounds=]
>   769 |                 if (copy_from_user(&ci, &user->engines[n], sizeof(ci))) {
>       |                                         ^~~~~~~~~~~~~~~~~
> ./include/uapi/drm/i915_drm.h:2494:43: note: while referencing ‘engines’
>  2494 |         struct i915_engine_class_instance engines[0];
> 
> This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
> routines on memcpy() and help us make progress towards globally
> enabling -fstrict-flex-arrays=3 [1].
> 
> Link: https://github.com/KSPP/linux/issues/21
> Link: https://github.com/KSPP/linux/issues/271
> Link: https://gcc.gnu.org/pipermail/gcc-patches/2022-October/602902.html [1]
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
