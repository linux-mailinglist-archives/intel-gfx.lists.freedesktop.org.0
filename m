Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D053321A96E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 22:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143546EB37;
	Thu,  9 Jul 2020 20:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A77346EB37
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 20:56:37 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id j4so3754488wrp.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 13:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eJPRuDnfC3bcfNnGbqQPc7YPlxqpXOmKzDRCTZi3214=;
 b=JIIKo8A/9U0Aikq4e5Kkgi1AW1vIgt+bHp6dGu2cvTjB/RMHy5TWX61eroTsCvrdsT
 iUNMgnNq9q1C0WMuOSg6md0jitS8BboKZN9l+MO+Sv65BcX3sRu163iWpu7C5wdhx+4n
 dq5IAPOb+JVuMHom4cK63mzq/G8bOlSg4K/cQcbI8NtHcBFJ7uDkGPwY1h4aV6UgwbUt
 kxbUko1HJIC9cC20h6fuGyZauA3F1L67QEdry/IzG4bdYlkrYnQKBCOjCxx6bA+4Ign6
 sV/dBm2OeaLFvKgJhZ1ycPz8pztX0lIiHCBNWTH7RiWqQWdp/okcNO95l6GD3mOrXv9J
 OTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eJPRuDnfC3bcfNnGbqQPc7YPlxqpXOmKzDRCTZi3214=;
 b=jGW9wS6lHhDxQ4bWDLLLq6E5uLCs5QlpjqDo8f6UmnxdwayMP2Gb4WbqgGc06oYUZ2
 y87c8FQvdRW3OEmIX9urDPTOskCnv23C46s09RZoLXVTSW+4PMKZmZffWuIOZ6uDdim4
 JZ3m1v8t0QDWJcI4U83tYSI1/7lrCV4aSHb3psCf/6ceauePRz5pd/rW1Gi2Ox+9WYAL
 AOsl5AiB9l0F8DPn1g09YYk1Ld4h41S2awuXA6dA7sunMKLJGF4FVpFasggiuu2JOKyY
 050kvQ+1nC1JdjlW1FxaFaOhjUDp7SBPXE+//FDEoTXlclwQqKTvAFCYJuarh6tCQioJ
 514g==
X-Gm-Message-State: AOAM531tnvgbi01k1Mdts7LTHyJ8UZiq2H4OOlwjhw6REXFr5jAMnVfI
 3He5frRPSB82jmj6gbtiXPSzE3PPO/dEOaScoGw1MA==
X-Google-Smtp-Source: ABdhPJwCcpKpC12cyYWb4tTuTOAazaKE7Hj40ixvwC/UNMGPbwaiPjB2mHxKb8yQShzClL1T1Ez1k061hy0Kl6AjJsI=
X-Received: by 2002:adf:f751:: with SMTP id z17mr67948080wrp.114.1594328196331; 
 Thu, 09 Jul 2020 13:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200701235339.32608-4-lucas.demarchi@intel.com>
 <202007021357.nFzJVY4b%lkp@intel.com>
 <CAKi4VAJOoR5otTrBkCeGRaMsnhDdjmvP0fwpNzRWb==QzSXa+w@mail.gmail.com>
In-Reply-To: <CAKi4VAJOoR5otTrBkCeGRaMsnhDdjmvP0fwpNzRWb==QzSXa+w@mail.gmail.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 9 Jul 2020 13:56:23 -0700
Message-ID: <CAKi4VAL__gcvSBwTs-7v34qPNttTL1N_P3ZePQb+f2=eEqe9dQ@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 03/28] drm/i915/dg1: Add DG1 PCI IDs
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
Cc: kbuild-all@lists.01.org, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 9, 2020 at 1:01 PM Lucas De Marchi
<lucas.de.marchi@gmail.com> wrote:
>
> On Wed, Jul 1, 2020 at 11:01 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Lucas,
> >
> > Thank you for the patch! Yet something to improve:
> >
> > [auto build test ERROR on drm-intel/for-linux-next]
> > [also build test ERROR on drm-tip/drm-tip next-20200701]
> > [cannot apply to v5.8-rc3]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use  as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Lucas-De-Marchi/Introduce-DG1/20200702-075819
> > base:   git://anongit.freedesktop.org/drm-intel for-linux-next
> > config: i386-randconfig-m021-20200701 (attached as .config)
> > compiler: gcc-9 (Debian 9.3.0-14) 9.3.0
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/gpu/drm/i915/i915_pci.c:903:39: error: 'dg1_info' defined but not used [-Werror=unused-const-variable=]
> >      903 | static const struct intel_device_info dg1_info = {
> >          |                                       ^~~~~~~~
>
> This is intentionally left unused. Wonder what the fix would be...
> __attribute__(__unused__) or force the warning
> to be ignored here
>
> with or without this change I don't get a warning in  gcc 10 (using
> the same config attached).

Adding W=1 to the command line and this is sufficient to shut up the warning.

Lucas De Marchi

>
> Lucas De Marchi
>
> >    cc1: all warnings being treated as errors
> >
> > vim +/dg1_info +903 drivers/gpu/drm/i915/i915_pci.c
> >
> >    896
> >    897  #define GEN12_DGFX_FEATURES \
> >    898          GEN12_FEATURES, \
> >    899          .memory_regions = REGION_SMEM | REGION_LMEM, \
> >    900          .has_master_unit_irq = 1, \
> >    901          .is_dgfx = 1
> >    902
> >  > 903  static const struct intel_device_info dg1_info = {
> >    904          GEN12_DGFX_FEATURES,
> >    905          PLATFORM(INTEL_DG1),
> >    906          .pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> >    907          .require_force_probe = 1,
> >    908          .engine_mask =
> >    909                  BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
> >    910                  BIT(VCS0) | BIT(VCS2),
> >    911  };
> >    912
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>
>
> --
> Lucas De Marchi



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
