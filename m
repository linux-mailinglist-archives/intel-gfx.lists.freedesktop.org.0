Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F1A2323C1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 19:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACED6E0C1;
	Wed, 29 Jul 2020 17:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B8B6E0C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 17:51:43 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id g6so13380183ljn.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 10:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=M8EEzQgedASRzziAlVDiAKTIfPr1kKdI9aJL7xZj35I=;
 b=Avfq4sQKVEg2XPwPbiU8kQbX0afWtDg8GvOGJu3topccu/yIq0pEIwM3DYccHYnHQD
 zz2PpmdVhy3VPbgBuLXyv4eVyZ+O3SEEwjm7dJLAPEv2bYc/ITzzys9gCaaRZM5w1S9y
 O8oQ/aZAjl4SzMP46wY/xkHoH3L+BzhCNNL90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=M8EEzQgedASRzziAlVDiAKTIfPr1kKdI9aJL7xZj35I=;
 b=ifZRYhqW8jJZIcEqvTzbEnn5prGYyOuFbEgBCeENq8PdfxsyVWv04awTmx+Voazvpc
 3OjDaaFlMLo84YTZiWS30qzyxMeNh/zUNtprQsg9rV0TFFnxn9CSgp3RZ3oyoIzOZ3Xj
 aDhpVMAgifjObXMvG3A1YP59LWmNvUo/SIorF5NJSP1CeQWAbwIxQABPhYT8O2Xo0HVb
 ms5N9jf/TcOBn3hwdOjanoa+83QPssrBctdAeRebalgdiEl/XKcpWjlQ5C/E/ZlsiAOf
 G/1xyd451mDbQlpppC0/HTBzgqf0hEcjnduft8qu1K51toirnCfkZm/AbkzI60upo992
 J6Mg==
X-Gm-Message-State: AOAM533rN0MdrqUKzg0WLpxRo2vvXshoTx4wlzWbqzcAbLiqU8XHyWo0
 jwN6fFlvPBIxTshrWhLLtuxkEI14dy4=
X-Google-Smtp-Source: ABdhPJyXn/WOAVks4uAkYfhHQTs8AaQc4qJr28BuMrxZnL8N4uXCgmkJZ7IfZYGpVSqlFt4thLTqDA==
X-Received: by 2002:a05:651c:307:: with SMTP id
 a7mr14458202ljp.297.1596045101262; 
 Wed, 29 Jul 2020 10:51:41 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com.
 [209.85.208.173])
 by smtp.gmail.com with ESMTPSA id l12sm516886ljj.43.2020.07.29.10.51.40
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jul 2020 10:51:40 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id t23so2481683ljc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 10:51:40 -0700 (PDT)
X-Received: by 2002:a2e:991:: with SMTP id 139mr14828926ljj.314.1596045099867; 
 Wed, 29 Jul 2020 10:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
 <20200708131751.334457-3-lionel.g.landwerlin@intel.com>
 <CAKMK7uFkMKiwyTFMRASk5L=1NdFqeuKfCh_FHRLg4FxzHpXpfw@mail.gmail.com>
In-Reply-To: <CAKMK7uFkMKiwyTFMRASk5L=1NdFqeuKfCh_FHRLg4FxzHpXpfw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 29 Jul 2020 10:51:23 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjD-6phO85fvLMt7rvk5ZwaJ1Q5Zor4urYps6C8vG_Txg@mail.gmail.com>
Message-ID: <CAHk-=wjD-6phO85fvLMt7rvk5ZwaJ1Q5Zor4urYps6C8vG_Txg@mail.gmail.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Kees Cook <keescook@chromium.org>, 
 Linus Torvalds <torvalds@linux-foundation.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH v12 2/3] drm/i915: add syncobj timeline
 support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 29, 2020 at 5:24 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> Do we have a access_ok_array or so? Instead of duplicating overflow checks
> everywhere and getting it all wrong ...

I really really think you should get away from access_ok() entirely.

Please just get rid of it, and use "copy_from_user()" instead.

Seriously.

access_ok() is completely wrong, because

 (a) it doesn't actually protect from any fault returns, it only doe
sthe high-level check of "is the pointer even ok".

So you can't say "ok, I did access_ok(), so I don't have to check the
return value", and you're actually making the source code more
complicated, and only introducing the possibility of bugs.

Overflow is just _one_ such bug. Missing the access_ok() entirely
because it was in some caller but not another is another common bug.

 (b) it no longer even makes the code faster.

It never really did for the the copy_to/from_user() case _anyway_, it
was always for the "I will now do several get/put_user() accesses and
I only want to do the range check once".

And that has simply not been true for the last few CPU generations -
because the cost isn't in the range check any more. Now allk the real
costs are about CLAC/STAC. The range check takes two cycles and
schedules well (so it's generally not even visible). The CLAC/STAC
takes 30+ cycles, and stalls the pipeline.

>Similar I guess for copy_from/to_user_array.

No. I refuse to add complexity onto the garbage that is access_ok().

Just remove it. It's not helping. People who think it's helping
haven't actually looked at profiles, or are working with hardware that
is no longer relevant.

                Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
