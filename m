Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E84C5FBB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 00:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4499610E143;
	Sun, 27 Feb 2022 23:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0772210E143
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Feb 2022 23:12:02 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id b11so18400058lfb.12
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Feb 2022 15:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AJKFWkaNILgrND2ajpv99ahQRaE4hGQV9IUMvW6X5jc=;
 b=COC/4g+XK0ncFFdjTFjbGI8kwJnazvpy+Y8Z5kBv2abHG/7OdfJl8XVUO/gQJQXrgU
 7syJ6Bl4EH1rhevEXJDyJCzV6vXIrdiBYUsB99agtvA7QQFqI7pET+wt/bULnxpe/llB
 DoHBp+DrTOur4By7IXXtsNs4+hSllcxUFM+zA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AJKFWkaNILgrND2ajpv99ahQRaE4hGQV9IUMvW6X5jc=;
 b=HGH3ErxGZCmzH8zs3Zwi8D9wTJH77mXNgpoT9BJX0jCigjZdNYHla9L8MzbJ+3TNPZ
 s+a8gQeJ0HbC7AF2G83u1OSuTfcvNdBTMXZifSyA8BRtmof+SUyGhbjO2R+FvbEZ+Kib
 s9SfrFgPXdMXl/GdfqgXstTPRSU8Vd9/LvdVAqw5akrDEBAuS4yfiL0o0wkbhXa3AZHF
 GOl9+Y/JIMfIUqaKQ8Kz2+e7NH7diSZ1Rdlpa30Qp2SoFfwxlBqeXDKXwqLcqZ9BKTrw
 FLiVX8YPGV4EFjxMBUfYGG4qbX7mkAQPfTIr7gpdABlg8oUMfnmJej1IS/iYHBdJ8rMq
 bAWQ==
X-Gm-Message-State: AOAM531ty0itl9Y07YjiXhO3zj34db4XmOFLhcHuhcFfW0SQpraBLeIc
 5ykeGnxrjwO7DScWYXFrLgcAbr+oZbrSt53lXvU=
X-Google-Smtp-Source: ABdhPJyVSJrRi93K4A7xEGUpELKOXzB/S4meIF8tQWw5kJiTx3wx8+LAf+cazvvrhkMGqknZAc1N6Q==
X-Received: by 2002:a05:6512:3054:b0:443:95b2:d795 with SMTP id
 b20-20020a056512305400b0044395b2d795mr11181232lfb.605.1646003521058; 
 Sun, 27 Feb 2022 15:12:01 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180]) by smtp.gmail.com with ESMTPSA id
 u11-20020a056512128b00b00442ea96344esm749316lfs.118.2022.02.27.15.11.58
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Feb 2022 15:11:58 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id bn33so15052886ljb.6
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Feb 2022 15:11:58 -0800 (PST)
X-Received: by 2002:a2e:b8cc:0:b0:246:4767:7a29 with SMTP id
 s12-20020a2eb8cc000000b0024647677a29mr12717079ljp.152.1646003517979; Sun, 27
 Feb 2022 15:11:57 -0800 (PST)
MIME-Version: 1.0
References: <20220227215408.3180023-1-arnd@kernel.org>
 <dd41c574-05b0-23bc-646c-0bd341e6e50b@linaro.org>
In-Reply-To: <dd41c574-05b0-23bc-646c-0bd341e6e50b@linaro.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 27 Feb 2022 15:11:41 -0800
X-Gmail-Original-Message-ID: <CAHk-=wg_r01OASRuSFfbEk_YHjve2BsBbkDYiEiKTaX2jm=53g@mail.gmail.com>
Message-ID: <CAHk-=wg_r01OASRuSFfbEk_YHjve2BsBbkDYiEiKTaX2jm=53g@mail.gmail.com>
To: Alex Elder <elder@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [greybus-dev] [PATCH] Kbuild: remove -std=gnu89
 from compiler arguments
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
 linux-staging@lists.linux.dev, Masahiro Yamada <masahiroy@kernel.org>,
 llvm@lists.linux.dev, Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, greybus-dev@lists.linaro.org,
 Alex Shi <alexs@kernel.org>, Federico Vaga <federico.vaga@vaga.pv.it>,
 Hu Haowen <src.res@email.cn>, linux-btrfs <linux-btrfs@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 linux-doc-tw-discuss@lists.sourceforge.net,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Feb 27, 2022 at 3:04 PM Alex Elder <elder@linaro.org> wrote:
>
> Glancing at the Greybus code, I don't believe there's any
> reason it needs to shift a negative value.  Such warnings
> could be fixed by making certain variables unsigned, for
> example.

As mentioned in the original thread, making things unsigned actually
is likely to introduce bugs and make things worse.

The warning is simply bogus, and the fact that it was enabled by
-Wextra in gcc for std=gnu99 and up was a mistake that looks likely to
be fixed in gcc.

So don't try to "fix" the code to make any possible warnings go away.
You may just make things worse.

(That is often true in general for the more esoteric warnings, but in
this case it's just painfully more obvious).

              Linus
