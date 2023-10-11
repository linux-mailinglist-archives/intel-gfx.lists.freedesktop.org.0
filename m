Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 451AF7C570F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 983C510E209;
	Wed, 11 Oct 2023 14:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9217D10E209
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:37:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C1772CE23A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:37:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2121CC433C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697035065;
 bh=7qhDIjEahUBJY8grbBjPeffhQFkjcEwyxJwNzbhDKXs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qB8vJvODhWp9Q34p8cTwoygz0AzOEtNJLSoD28yET3iNOGC4NAz5ZbVIro/PXKyY6
 heWZum11DgXOXo3NZ0pF+LM3iATBr4ZIm2wN2TNxg3m43pp+CdAmTjNFGj7rP4FmJq
 N1oPAtNMMjGw9mBnD+8VyE8RowmPiDsQgM284eby5JQGd6oYT1umbMSCWOIsD9qje5
 u5wx+0gmUc5JhfqQ+UdsZhwGAssOqQTXlH2bvQLwlAb+46IkLLG/O3sKORy1yQUqyC
 ntXwYhBjrCtwJzjB6o6jE/HJ1hM4/bntnveWMkwYajzXEBuD5WKro9AAsHAo+xrI/J
 ypaSOsgJpOiuQ==
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-1dcdfeb7e44so4647558fac.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 07:37:45 -0700 (PDT)
X-Gm-Message-State: AOJu0YxNpQVtIIwOqj0lzSPAraIA4pOxRQ2MlXqRO83okCWkntaIrT5S
 kMO7VqdCqTtZvpUx4kRdzalvp6hsO1RAAc+GLZ8=
X-Google-Smtp-Source: AGHT+IFfoKSfxco6bpMTRC12qYucoC1r/Nc5njdsdncYOsJPff8MzHHBKVsLM6xCm+1bigy+21Tndyy6qA6YN/dySMQ=
X-Received: by 2002:a05:6870:588c:b0:1d0:f5bd:6d2 with SMTP id
 be12-20020a056870588c00b001d0f5bd06d2mr25274423oab.38.1697035064584; Wed, 11
 Oct 2023 07:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1697009258.git.jani.nikula@intel.com>
 <69a812273091b6535ddc7f9346289d71bb30f43d.1697009258.git.jani.nikula@intel.com>
In-Reply-To: <69a812273091b6535ddc7f9346289d71bb30f43d.1697009258.git.jani.nikula@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 11 Oct 2023 23:37:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ1K4X6=jW1b8cyS9vs_hpn+YGzF2qw7YTFawo-bs_9gQ@mail.gmail.com>
Message-ID: <CAK7LNAQ1K4X6=jW1b8cyS9vs_hpn+YGzF2qw7YTFawo-bs_9gQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: enable W=1 warnings by
 default
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
> We enable a bunch more compiler warnings than the kernel
> defaults. However, they've drifted to become a unique set of warnings,
> and have increasingly fallen behind from the W=3D1 set.
>
> Align with the W=3D1 warnings from scripts/Makefile.extrawarn for clarity=
,
> by copy-pasting them with s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it
> easier to compare in the future.
>
> Some of the -Wextra warnings do need to be disabled, just like in
> Makefile.extrawarn, but take care to not disable them for W=3D2 or W=3D3
> builds, depending on the warning.
>
> v2: Add back some -Wextra warning disables (Nathan)
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>


--=20
Best Regards
Masahiro Yamada
