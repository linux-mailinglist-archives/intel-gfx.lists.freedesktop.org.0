Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534DC41DD26
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 17:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1256E42E;
	Thu, 30 Sep 2021 15:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from condef-04.nifty.com (condef-04.nifty.com [202.248.20.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396BD6EB9A;
 Thu, 30 Sep 2021 14:06:01 +0000 (UTC)
Received: from conssluserg-06.nifty.com ([10.126.8.85])by condef-04.nifty.com
 with ESMTP id 18UE2lmh023653; Thu, 30 Sep 2021 23:02:47 +0900
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 18UE2Kwr012996;
 Thu, 30 Sep 2021 23:02:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 18UE2Kwr012996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1633010541;
 bh=VuabDIbpmxk72sKuiRHg+TdNhDteCOPteADF+KS7huU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=t6y7GWekiT6EYK/wELCbLqlpFNX/rLMNRW8jXDkp0ziOcuAvSfvxJaGjdr4ad1XLw
 fMUdf5+EP05OzPJiS+FTNh4lt3UGUTx+bU2bNjxNGzzr9mFxylYXcqLvxVDwCgLW9e
 UgMvmUj+fUNA3Lezh2By10KJ/eNsxD+ULIFsgJSzDoehq3GNXW1T5J4naEDWP2pTRv
 SIoSmhLi9YaIG/ny4/ZlPOwDkVkgzteId7iROpp6ygdq1ctBZzc9y7SkBW1AZeXKqe
 GufTKNIJ6ACaqcB8R7V3/H2uf1cmM59xuTvCeFH/3cSNFoUyJc+r3EHniBoZaMetI0
 JJx7sf86VQRJg==
X-Nifty-SrcIP: [209.85.167.45]
Received: by mail-lf1-f45.google.com with SMTP id b20so25998163lfv.3;
 Thu, 30 Sep 2021 07:02:20 -0700 (PDT)
X-Gm-Message-State: AOAM533Axpo8dQvH15e1edPyXDOBoddobGKoxE2rvIEpOWSQH7Yhn47g
 HQ4pUHk0RkdbMyow+qIX+uizbIcS2ZDCq18XRls=
X-Google-Smtp-Source: ABdhPJw+mGEsdDSY8gXRmEoAlTAeLprEfe0NdJWhOeaN21T4sF+dG+g3cSQdq97CjBYXTI3CvNR84NzGFaMk5Dl16ps=
X-Received: by 2002:ac2:4d57:: with SMTP id 23mr6154739lfp.493.1633010533423; 
 Thu, 30 Sep 2021 07:02:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210929183357.1490204-1-lucas.demarchi@intel.com>
 <20210929183357.1490204-4-lucas.demarchi@intel.com>
In-Reply-To: <20210929183357.1490204-4-lucas.demarchi@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Sep 2021 23:01:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ765CBjg83Kpt8XdOjqPw8Xuv--_bcTvd3udZ=tsgMdA@mail.gmail.com>
Message-ID: <CAK7LNAQ765CBjg83Kpt8XdOjqPw8Xuv--_bcTvd3udZ=tsgMdA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 30 Sep 2021 15:16:33 +0000
Subject: Re: [Intel-gfx] [PATCH v2 3/3] Move IS_CONFIG_NONZERO() to kconfig.h
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

On Thu, Sep 30, 2021 at 3:34 AM Lucas De Marchi
<lucas.demarchi@intel.com> wrote:
>
> The check for config value doesn't really belong to i915_utils.h - we
> are trying to eliminate that utils helper and share them when possible
> with other drivers and subsystems.
>
> Rationale for having such macro is in commit
> babaab2f4738 ("drm/i915: Encapsulate kconfig constant values inside boolean predicates")
> whereas later it is improved to not break the build if used with
> undefined configs. The caveat is detailed in the documentation: unlike
> IS_ENABLED(): it's not preprocessor-only logic so can't be used for
> things like `#if IS_CONFIG_NONZERO(...)`
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>


Hypothetical "it would be nice to have ..." is really unneeded.

       if (context && CONFIG_DRM_I915_FENCE_TIMEOUT > 0)
                     return
msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);


is enough, and much cleaner.



This warning is shown only when a constant is used
together with '&&'.

Most of IS_ACTIVE can go away.

Given that, there are not many places where the IS_ACTIVE macro
is useful, even in the i915 driver.

For a few sources of the warnings,
replacing it with  != 0 or > 0 is just fine.

Of course, such an ugly macro is not worth being moved to <linux/kconfig.h>




-- 
Best Regards
Masahiro Yamada
