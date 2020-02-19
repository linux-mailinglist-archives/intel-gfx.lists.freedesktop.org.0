Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81C2164992
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 17:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736746E82D;
	Wed, 19 Feb 2020 16:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900946E3EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 16:12:22 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id x7so988543ljc.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 08:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2SO0d+kJDPLx0bmH6ygcKGysX2UmEbvjCjCNiII+2tM=;
 b=DIk2Rrh/n852Ww2RFUiafMhEombwe5HzSh2G9FZYFac+zdbcyWTJFe6oJq9lTVoaUM
 rZQVDEBNhXFIo2iibc5yqdmNGYXONGSCnJS9yR0FSO5sCa0LBg8PDx9DNUDOUw79z4rV
 FcoRoRLV7HwzX6GUH+eB9RKNQHNTQha6Lt+elOBjAirae5W24EPra9JmMk30hFjvABM9
 yNS3f3idAhlHKcK/1Xnu+Ebmgon2uF0836VwjHMp0U+Fav6OsbtLlruEaIL9OcImq2k8
 NC0K/hWI8TD/6Ws599ussZ6dtBAbvNsBa6aT7afS7Mblkv5XOruYOw120snjIhrwa8GC
 CGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2SO0d+kJDPLx0bmH6ygcKGysX2UmEbvjCjCNiII+2tM=;
 b=V7VvthmCocHqccP8XwaM9iR6auMymFjqdnOnH7SexTElsZvcw2xkkoVHgzIHdl92yh
 buYN3Fq1gmxP4SFAkKxokz/y/Hvm2lHkqB5GgrmhuN1itQlLaWzghtB9zlZDUVy3WhWW
 degLpF08iiFbflJ1iRCNQtaPamdIfuNTwRt62j9agPc+s+sK5sgwoStJgSVscsL+HfXo
 Fao4v94jakwbtJ25pMSdK/FmLOdPKxPxrg/2nsjpQCONFTeluWY7fE0oMiRREJRKyXQf
 uoL06TL7QwCrIsBlabokjJd7RcteWhe2lPjke5FD7EHEOzKYPpMWgn0ibxF4rAMYfKbo
 Pa8g==
X-Gm-Message-State: APjAAAWmgiDXKtZIrEDtPLik/n7y4oc2VPzbt2S5n24YN9mZUVEGjIlA
 fa8jcTmOTseitTVYofTUDOYx9ECsrjt0FHWrEyC9Xg==
X-Google-Smtp-Source: APXvYqzPR4nMtjdWAS65f0wagI3EkJS5HZzeTooAJyqaL1AqLMjUbKRDUwxLEio9xoAUwxum/TWjbeIyvZedIAFKqJg=
X-Received: by 2002:a05:651c:1bb:: with SMTP id
 c27mr16953518ljn.277.1582128740948; 
 Wed, 19 Feb 2020 08:12:20 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-14-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-14-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Feb 2020 17:12:09 +0100
Message-ID: <CACRpkdYcz+hBVPBByE7LcAAwjqYHo6dgoQRh2xmBJqkXu5nDzg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 13/52] drm/mcde: Use drmm_add_final_kfree
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 11:21 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> With this we can drop the final kfree from the release function.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
