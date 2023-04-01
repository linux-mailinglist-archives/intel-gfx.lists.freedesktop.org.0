Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3EA6D3EC4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 10:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C3810E371;
	Mon,  3 Apr 2023 08:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579E810F38A
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Apr 2023 05:00:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BAC356090C
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Apr 2023 05:00:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BE4EC433D2
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Apr 2023 05:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680325222;
 bh=Qqa+qdeRX2675cpL9NukYFzqHr9vtWyZ+7rgq1ihyp0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ucGWN4G9KDkm+a5RjX6OX1F39ceMuy5HLDhV2l5STSfR1w96hC6rYUTw7IJwnlYyR
 VjWlwgdY3S8+B5xJn3jssttv6lCxUa6O6C5dNshO6djMXKTKGqnMlLAxSIDSzWfKVy
 w3Id7pfw8YFIDIk6KxRqtDvrsQfozKa6p51inDXOT6hnFt2s3ZFXBGOX8tKyaoM600
 SSICrVGKXfP75NXPqPtblStp58L8byAb/Nb7VwgYzp3tEPGWHh9EEvsOrwPYfj26KT
 dnWsr+BxJEsnq/yQ6pO5NL1mTZMbDSAq6abmTjV14K582SlNJTZFnZyYmbAoAIcBmB
 Fvydwg6NFgr3w==
Received: by mail-oo1-f46.google.com with SMTP id
 l7-20020a4abe07000000b0053e1205c84bso3474744oop.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 22:00:22 -0700 (PDT)
X-Gm-Message-State: AAQBX9dTvmcQVqZ7hlaXA2J1sO4dM0WsbByynw44qRDRAitUUrkw+z93
 0nu46tENqQDBpyIZ6QnJbvQJpeSQzHsSqJg/EB4=
X-Google-Smtp-Source: AKy350b7t2SoJ14CAS6Jq7RdkfvaJjNAtbnnGsiPJO/lHa11WSC6g2WDK+pQBHWZivHfvGwutNqspuoQW6kYpGlSGnE=
X-Received: by 2002:a4a:d10c:0:b0:538:d154:cbc2 with SMTP id
 k12-20020a4ad10c000000b00538d154cbc2mr3986030oor.1.1680325221474; Fri, 31 Mar
 2023 22:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230331101539.2893797-1-jani.nikula@intel.com>
In-Reply-To: <20230331101539.2893797-1-jani.nikula@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 1 Apr 2023 13:59:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNARQvR02QQBsbKxWt=CGQzacwJy=tz73ManvQ8fjAMWy+A@mail.gmail.com>
Message-ID: <CAK7LNARQvR02QQBsbKxWt=CGQzacwJy=tz73ManvQ8fjAMWy+A@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 03 Apr 2023 08:16:51 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: enable kernel-doc warnings for
 CONFIG_DRM_I915_WERROR=y
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

On Fri, Mar 31, 2023 at 7:15=E2=80=AFPM Jani Nikula <jani.nikula@intel.com>=
 wrote:
>
> Increase awareness of kernel-doc issues by enabling doc check locally
> when W=3D is *not* specified on the make command-line, but
> CONFIG_DRM_I915_WERROR=3Dy is enabled.
>
> Once the warnings have been fixed, we can pass -Werror to kernel-doc
> locally, and fail the build when there are kernel-doc warnings in i915.
>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> Masahiro, is this an awful hack to do in our local Makefile?
>
> Note that we do try to avoid anyone outside of i915 developers enabling
> CONFIG_DRM_I915_WERROR=3Dy.
>
> Any other and cleaner ways of achieving this, without using W=3D on the
> entire kernel?
>
> On that note, it would be nice to be able to enable W=3D on a subdir
> alone.
> ---
>  drivers/gpu/drm/i915/Makefile | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 057ef22fa9c6..13d7040801bf 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -369,6 +369,14 @@ include $(src)/gvt/Makefile
>  obj-$(CONFIG_DRM_I915) +=3D i915.o
>  obj-$(CONFIG_DRM_I915_GVT_KVMGT) +=3D kvmgt.o
>
> +# kernel-doc test
> +#
> +# Enable locally for CONFIG_DRM_I915_WERROR=3Dy if not already enabled.
> +# See scripts/Makefile.build
> +ifeq ($(KBUILD_EXTRA_WARN)$(CONFIG_DRM_I915_WERROR),y)
> +    cmd_checkdoc =3D $(srctree)/scripts/kernel-doc -none $<
> +endif
>


I do not mind this, but I do not think you need to
check $(KBUILD_EXTRA_WARN).



ifdef CONFIG_DRM_I915_WERROR
    cmd_checkdoc =3D $(srctree)/scripts/kernel-doc -none $<
endif




--=20
Best Regards
Masahiro Yamada
