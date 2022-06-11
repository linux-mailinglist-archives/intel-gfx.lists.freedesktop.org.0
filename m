Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5A35476AE
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 18:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A22810EAE6;
	Sat, 11 Jun 2022 16:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F0110EAE6
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jun 2022 16:57:16 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id kq6so3476182ejb.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jun 2022 09:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W83l/pLxbVmfdY4Bh3kAV9FBhPiwp545eDF2N1BjQ/0=;
 b=QZFxcEKrwiT/RpVaiTi05b84+BOEJXjGP0UMn3IqGzce/BDk93ukoGPtqbDYlqaeML
 WwwEbRGvqg0gN2HFDwZCwSPNECNvzPHHpYwbsRW/PpLrRQpmpYITmQ292c5X/16X6nAB
 XC3OXxSNmfDTBC0Q369g5kF7e+6gGX27oEtkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W83l/pLxbVmfdY4Bh3kAV9FBhPiwp545eDF2N1BjQ/0=;
 b=bkvxlmr2gjgNEH1mIhyrQn6A4OqStRkNob/1c41y6BMbBLKXSS6EDNmvlUIRtsP1hT
 FmGJXR3JHFLSybKdaGLw2CJLDUV1sxQtr/Y+L+WzN87EPa6pgiEBS8UwsZaKhyu0NpSV
 KXQ5PjUAETwCLxDwroVL8OiBsyHejkC6a3uju2KNM1DIYBjoWe0TiHXPtW27DlRxWJkM
 eaO6iuLg4fK1oK29T0vnVhlwTFgYMWqc51M5jcwvEtw97ZWgwh3vuRPeaW+9JcWNu96M
 CSO+h9P4OuGzwiqCzXCeGxFQPUa69UtwXZ/IHcjHo5+cCUONNA5+vJFFIpzOwN994FX/
 PsvQ==
X-Gm-Message-State: AOAM53013xiOrarU4Xjy0fQHuXbBzHrejSdh1jT++O0tbunkUsf7IDzO
 tUkfn7hCRvU8sFmHtEIDqozRqtzL4Kk8U2KnioA=
X-Google-Smtp-Source: ABdhPJwbDOlqTHYLKJn1TMN74abiIYVDvYQZ+KlvshSL/firmk9B8biyRHao7d7MRk/1FM2sEyM1ew==
X-Received: by 2002:a17:907:1c87:b0:6f0:29ea:cc01 with SMTP id
 nb7-20020a1709071c8700b006f029eacc01mr45859275ejc.671.1654966634425; 
 Sat, 11 Jun 2022 09:57:14 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46]) by smtp.gmail.com with ESMTPSA id
 h8-20020aa7c5c8000000b0042e21f8c412sm1705313eds.42.2022.06.11.09.57.13
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jun 2022 09:57:13 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id n185so909727wmn.4
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jun 2022 09:57:13 -0700 (PDT)
X-Received: by 2002:a05:600c:591:b0:39c:4544:b814 with SMTP id
 o17-20020a05600c059100b0039c4544b814mr5603093wmd.118.1654966633270; Sat, 11
 Jun 2022 09:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220611182119.4e115fba@canb.auug.org.au>
In-Reply-To: <20220611182119.4e115fba@canb.auug.org.au>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 11 Jun 2022 09:57:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X2cwr_s3bQJk0hOb88-zPrZR-2fKxP8yKSAy9vuKFtzQ@mail.gmail.com>
Message-ID: <CAD=FV=X2cwr_s3bQJk0hOb88-zPrZR-2fKxP8yKSAy9vuKFtzQ@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] linux-next: build warnings after merge of the
 drm-misc tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Sat, Jun 11, 2022 at 1:21 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> After merging the drm-misc tree, today's linux-next build (htmldocs)
> produced these warnings:
>
> Documentation/gpu/drm-kms-helpers:241: include/drm/display/drm_dp_helper.h:377: WARNING: Unexpected indentation.
> Documentation/gpu/drm-kms-helpers:241: include/drm/display/drm_dp_helper.h:378: WARNING: Block quote ends without a blank line; unexpected unindent.
>
> Introduced by commit
>
>   69ef4a192bba ("drm: Document the power requirements for DP AUX transfers")

Thanks for the report. Fixed by:

https://lore.kernel.org/r/20220611095445.1.I534072d346b1ebbf0db565b714de9b65cbb24651@changeid

I'll plan to land it as soon as I see a Reviewed-by.

-Doug
