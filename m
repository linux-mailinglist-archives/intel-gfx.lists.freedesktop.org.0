Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAB041F2ED
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 19:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA5A6E52D;
	Fri,  1 Oct 2021 17:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DE26E52D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 17:18:34 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id u18so41680292lfd.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 10:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eaKHWjFuwyKvxPTNwNYn3BuRwzDh6/0sQ7VogCTPG8s=;
 b=j2KIPK1abEQDmLX+us5yk2H9k7jh1igya3VQ/oN9xVeP/qTGNtdxRNyctZTVU85ui4
 xJIne31y6CyFJpieB6eP/2bh3PDy2m50SAmRYu/ijUYYq/iLj/yL5d/M3vedeb2FDDBi
 4M4zEQTrzvyjXCojCxFwNvT+AIyJQ+AbJKDcjVtL4fyBBIxqFtpMz+OuKpDXtE/4WDyj
 aj81I2Q052BvWtna4cBQGC+BcoNJcbiQKs+8whfG71t9o3RN64MYTrBs6Wf3/x1Cdjem
 fpYF8ocFQNb/dSQ/fnx2U8zZijmANqJ+ivamgVGDnPWtYQWXmPz/QMBvaFB44GKew4qr
 1ykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eaKHWjFuwyKvxPTNwNYn3BuRwzDh6/0sQ7VogCTPG8s=;
 b=zzsT8w6GH7TmbGmCZ3zw8LvyfnaBn8xKca5lJHMRhG3AU8PB4oAyhSLRDrFCj0MuUm
 c/2WEG3PCeVVVbbEogLDhikE3U9+1Q6gM9mgkqyNRdx5faS/gpN1arZ+EbHipDsvJDtf
 qQoqsWGbUc3EMjDhzZnskRK1equL3ykz0hITkLnNpuU9geTJC5QIGiAJA9Fjx2aSGdnA
 ONdC62rtUTi1KvmGhJEZtRye1tAua5fFFT0T5EcliX5aaNxOMNjFwljtGcr6h9R1T6KH
 73K87YbfEN2jHJ6mvITISuMhGCLBvnOykLBJ69z72Hy6YXoB7jrjcklkXVI+4TduMgcb
 a67A==
X-Gm-Message-State: AOAM530cwmtyW3saMPkvlX89rQPeSsGRwpGZkp/+a5Gsbp692t1CWOux
 vXw5G1xLoeX14l1gVTyA+KIfNi7wGyBjqlfNFQQLOw==
X-Google-Smtp-Source: ABdhPJziBYyBg1MdhYdRfe+e6ZE01VBv+2vQ9vu2x8Ts5SH8U70CKxzXlOdmOq32hDBm3FqbdLKCLOzfyMCGxpPbV9g=
X-Received: by 2002:a05:6512:110a:: with SMTP id
 l10mr6525108lfg.550.1633108712320; 
 Fri, 01 Oct 2021 10:18:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210827153409.GV1721383@nvidia.com> <878rzdt3a3.fsf@intel.com>
In-Reply-To: <878rzdt3a3.fsf@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 1 Oct 2021 10:18:20 -0700
Message-ID: <CAKwvOdkVAKOCH1hfSqNphKco8rLOmyAg0PVGzmpMRu6Svs1hSQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, kernel test robot <lkp@intel.com>,
 Max Gurtovoy <mgurtovoy@nvidia.com>, 
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, 
 Yishai Hadas <yishaih@nvidia.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [vfio:next 33/38]
 drivers/gpu/drm/i915/i915_pci.c:975:2: warning: missing field
 'override_only' initializer
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

On Fri, Oct 1, 2021 at 4:04 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> Anyway, we've got
>
> subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
> subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
>
> in drivers/gpu/drm/i915/Makefile, so I wonder why they're not respected.

You do have to be super careful with `:=` assignment in Make;
generally folks mean to use `+=` and end up overwriting the existing
KBUILD_CFLAGS.  I'm not sure if that's the issue here, but it's worth
an audit of your Makefiles.
-- 
Thanks,
~Nick Desaulniers
