Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC177C5707
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EF510E00D;
	Wed, 11 Oct 2023 14:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BA510E00D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:37:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id C795FB820E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A801C433AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697035045;
 bh=qlrlgNR9c9NwljPSRVXGSLE+ERLcAnEuYmF0m0xExQg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tyWbLFfgvJsYS7FBpoeUg3qx+Oiz+orJSVZnUEK0hnBhLKmL3oqaj4riq7gqGX5FR
 ehdNPENRvSnAbpRKnMHZgR4S7C72DLWD+3tD3JpztEB+Evgblsm3dJizcRSUcHDlLA
 pPEK0E0pwHBGBM1pUrUqTlqpTSXYFgvc0qEYEIFn6wROIVflCM50eWKtAEuCqO8RUn
 l4uWo3b1JQzehYMZPqYtk2tZrZAuiF5LGYkyBTRrx6RcwGBFU/MHa60EM8Qv2/A2Yy
 al3yir9PTfhdBI3lg4DVvUZcGqejMpslRfX1SbhIMldQTsqbukLOfoBvUFvtR7c4fd
 BqR8zj/QF9Cew==
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-1dcead29b3eso4298022fac.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 07:37:25 -0700 (PDT)
X-Gm-Message-State: AOJu0YxB4/WfUvOiZNl+Wvrpi/0qffRUDyWtI47K3950QMru09sRGd47
 rUPkeJ/pWgM153z4sZx/p3Jz9v8SA1Pk6s0PAKE=
X-Google-Smtp-Source: AGHT+IHcTYhZ/p2JE4i4+l0tyVjg/hM60s6lkQ6UYCGbU6W0dZvTopmVtUwm+U4kNbdfq54Fog2gUm4sLAFGbuJsBQQ=
X-Received: by 2002:a05:6871:6a2:b0:1bb:6792:4787 with SMTP id
 l34-20020a05687106a200b001bb67924787mr24260850oao.40.1697035044767; Wed, 11
 Oct 2023 07:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1697009258.git.jani.nikula@intel.com>
 <5ab754ddc2e342c75deb8476275984918e573beb.1697009258.git.jani.nikula@intel.com>
In-Reply-To: <5ab754ddc2e342c75deb8476275984918e573beb.1697009258.git.jani.nikula@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 11 Oct 2023 23:36:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQxmCMfLrfi9wW5M434Dw+CF_Ld_soq8Q996=Es=knO1g@mail.gmail.com>
Message-ID: <CAK7LNAQxmCMfLrfi9wW5M434Dw+CF_Ld_soq8Q996=Es=knO1g@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: drop -Wall and related
 disables from cflags as redundant
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
Cc: Nathan Chancellor <nathan@kernel.org>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 11, 2023 at 4:29=E2=80=AFPM Jani Nikula <jani.nikula@intel.com>=
 wrote:
>
> The kernel top level Makefile, and recently scripts/Makefile.extrawarn,
> have included -Wall, and the disables -Wno-format-security and
> $(call cc-disable-warning,frame-address,) for a very long time. They're
> redundant in our local subdir-ccflags-y and can be dropped.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>



--=20
Best Regards
Masahiro Yamada
