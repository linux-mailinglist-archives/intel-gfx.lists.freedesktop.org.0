Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B2219DD57
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 20:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DFD89D99;
	Fri,  3 Apr 2020 18:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DA489D99
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 18:01:30 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id n20so6498888lfl.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 11:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GJVFgRSGYKBnNbBPTVD/IukQXQa7rwPwND5Kh+NTBuo=;
 b=Ys0nLdOPaMPZHWrNpQG57PugKN6mkPGdJSUx/TQDpwY2GQmZdYkhxJaiTGDykgi3DV
 b9peyP0pK7wyoIA4rX92GpUwZxOJ1gL4WdkK8qsym8w0OHPBQz5LC8Pgsely+7R6EED/
 Y1qrLKu/XLubSi3S/jM7cWoFX4dK0Vuw/7IEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GJVFgRSGYKBnNbBPTVD/IukQXQa7rwPwND5Kh+NTBuo=;
 b=dd+MC5MHIkbnpOyWJFp4ZqC7pMYEqp4VQXAhmtiYcUoyYIMpfkQarBmK5jBjzuwpyf
 r0ZdDl9CnySrW3lFC81n2r8KIgfByi7HUmaAQpAaJVzxR+mDjW38hbZNDkzmlKn2F1JA
 xgiCfy0ATTU8uxo0nG+bapp+PlcmZow2/OitkkTzCt2H7n0yTdFEVXEU/K/KajWT+F5K
 u4xFyrFtkSGtZN8veyWEJK2+/Xzr02u0rH6YxDcRrb4qVygbwObaHAGANN1peIFOxxRf
 2txGiQ8PLYCM9rUvl5oxOdv8swZyOKt71YJshc6z+AGoAuk7KlxXw0eYqZLINHKwcNo4
 LgLg==
X-Gm-Message-State: AGi0PubTrW7yEhiVQA9MCM5XOcTuDH6NoH2khODYMb2I8sK1+3yXLQ2w
 Hj3Zf1cxbs+OayLxtKIZrA3x+NLQxp8=
X-Google-Smtp-Source: APiQypKaWqmnvNgXUju95f5po2esy7DcGOHpaN38EAPK55WeiX57fHfrf8Bkemq0+F/QnIbOfEkaAw==
X-Received: by 2002:ac2:51c3:: with SMTP id u3mr5768209lfm.25.1585936888623;
 Fri, 03 Apr 2020 11:01:28 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id b21sm5259300ljj.46.2020.04.03.11.01.27
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 11:01:27 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id i20so7863898ljn.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 11:01:27 -0700 (PDT)
X-Received: by 2002:a2e:8652:: with SMTP id i18mr5777613ljj.265.1585936886747; 
 Fri, 03 Apr 2020 11:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <36e43241c7f043a24b5069e78c6a7edd11043be5.1585898438.git.christophe.leroy@c-s.fr>
 <42da416106d5c1cf92bda1e058434fe240b35f44.1585898438.git.christophe.leroy@c-s.fr>
In-Reply-To: <42da416106d5c1cf92bda1e058434fe240b35f44.1585898438.git.christophe.leroy@c-s.fr>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 Apr 2020 11:01:10 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh_DY_dysMX0NuvJmMFr3+QDKOZPZqWKwLkkjgZTuyQ+A@mail.gmail.com>
Message-ID: <CAHk-=wh_DY_dysMX0NuvJmMFr3+QDKOZPZqWKwLkkjgZTuyQ+A@mail.gmail.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [Intel-gfx] [PATCH v2 5/5] uaccess: Rename
 user_access_begin/end() to user_full_access_begin/end()
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Dave Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 intel-gfx@lists.freedesktop.org, Peter Anvin <hpa@zytor.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 12:21 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> Now we have user_read_access_begin() and user_write_access_begin()
> in addition to user_access_begin().

I realize Al asked for this, but I don't think it really adds anything
to the series.

The "full" makes the names longer, but not really any more legible.

So I like 1-4, but am unconvinced about 5 and would prefer that to be
dropped. Sorry for the bikeshedding.

And I like this series much better without the cookie that was
discussed, and just making the hard rule be that they can't nest.

Some architecture may obviously use a cookie internally if they have
some nesting behavior of their own, but it doesn't look like we have
any major reason to expose that as the actual interface.

The only other question is how to synchronize this? I'm ok with it
going through the ppc tree, for example, and just let others build on
that.  Maybe using a shared immutable branch with 5.6 as a base?

                   Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
