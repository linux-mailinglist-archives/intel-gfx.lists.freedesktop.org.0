Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1974B23598F
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 19:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB9F89C8F;
	Sun,  2 Aug 2020 17:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D1D89C8F
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 17:56:57 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id d6so22493524ejr.5
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Aug 2020 10:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fjO5Z/awq5OwVYAW8J793weghGKF6Dcf3RqAnSVh91c=;
 b=CPbywPXpyVowY0H1csLTRYEu5RiYCdy0BRciiIzAcvxU99oxh2C1zfAw5Jprgtm8lG
 5A8zyOxyq/D/15fYzbhOJSX84Jxk229aR0/k9HvbxySLKKkFmB3MihDmEGVuGpUE5EmB
 74QxCV2Pda0AT1/x35LK1Vs9R9fG+1eAdkiULjE5bZnUFxgL9brxJV+2/cRfkf2JhmUt
 TapfWAk9LfpH3QD8BiiRKxasVJSKrNv4S5rKE8NbmK+oVDSbSCmgPsKNL+O3NDnSNkmo
 CZIsT9ggYkiRP0i1V97qitFqqXcqUdt5JD/VVhpVyQGyKb0EBHAOyiMGw5zopbCMyT+O
 pF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fjO5Z/awq5OwVYAW8J793weghGKF6Dcf3RqAnSVh91c=;
 b=nxpB9liEgrgZgiva9AVmQyKD8h/zoaxwADbJSdT01IJogCgMZ8W6Df8KOaD1wsL06J
 XLhD2bDm5t663LzgBPZYd3GDoyC5/loFfJYPliPn1/sU8BUUXLjBdGaGj50ULdG98dDo
 GWDXTyrnol9l40Ra60mZa16oDRrZbJXUslGSW2mUF2lFpkKEAHL4rjulvSSAGzRYH7+u
 xotIHF4YQ14aO+tw0SN7UyF+0kvGWz9vFN6UKwksJF/Y/RLrjZdA5r+Z/2nCBSaw6voO
 hiKDhbKkvzHzkKtyPvY83z3r/aA1imApDzGsLLzgX9iyBYodC12Rj4i46Xsjdye4do3M
 Ruzg==
X-Gm-Message-State: AOAM531pq8ST/7Fh40vqfvADjyvx02SY75pb5EjZsC0en7DIrOuoqJM4
 RUrYket8j4WwovWBey+Z0xbQuClfjSK+1GlIb8MnAA==
X-Google-Smtp-Source: ABdhPJxVH/o7Lvt48L80wD6vaoqe16TgPe2rAbxBDXwbrAR8hUdMCKD8h+Y1Zgrf2WfWjYZ2vwla7owSAnsuGLhvoek=
X-Received: by 2002:a17:906:13d8:: with SMTP id
 g24mr12847809ejc.317.1596391015692; 
 Sun, 02 Aug 2020 10:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 3 Aug 2020 03:56:44 +1000
Message-ID: <CAPM=9twmsrNehJjFZrehwORg-Nyzo_cEq8CiY5=bzsOv8G7pPA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] Time, where did it go?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 3 Aug 2020 at 02:44, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Lots of small incremental improvements to reduce execution latency
> which basically offsets the small regressions incurred when compared to
> 5.7. And then there are some major fixes found while staring agape at
> lockstat.

What introduced the 5.7 regressions? are they documented somewhere.

What is the goal here, is there a benchmark or application that this
benefits that you can quantify the benefits?

Is the lack of userspace command submission a problem vs other vendors here?

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
