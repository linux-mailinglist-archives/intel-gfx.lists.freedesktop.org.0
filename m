Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F40D1191714
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5991F6E174;
	Tue, 24 Mar 2020 16:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DA16E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:58:38 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id de14so3204734edb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 09:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WsR634IM9mmhNsoHiRslx4q1ur3OKG9sqLOfW3mTlvE=;
 b=Z4pJJsNRptNjfG3P3MoBuNrYlnzenPIYlkT2d80DcIZW7UeaJ7NzLHI1ja4yIjcDoc
 /iKfJJvm1iYP31UYLTqjCrBqL5Uar8necO8dCIgcOuI51Nj7AidT3P8YaYaCV6jUFzMJ
 fsKqZJnyfGhT7+0lEb4rByJaviH4S/tML+mT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WsR634IM9mmhNsoHiRslx4q1ur3OKG9sqLOfW3mTlvE=;
 b=HYB3neTHpCAeUv1lQsZvDJtdMIj5Wyq9XkhatsyKz3JrOFsqbg2dORcL7BOue5cy6C
 hgQXAYDPeKMz1QEu6+poHDHBGOBhzPxhqN3zEHWqlRlbYwQwEqIkbSHqI6j2t5zzFIHO
 noTK4y8e3NS6UfjGApJYk1F8AVBqThyRBWAXiNjgp7/UuI56Y3TfcgmwCoX0TKiqksdb
 cky3RRquuhY2FQRxpOTtDgdiEINFkAP5HpP5FQx1lbSrCf3zi/5AOnbooRkRnfxCAlMv
 ws9ObNqnoLifKFKnclJJ2n3AZWSZpaZhSYgGZaCWRRNfCU2DH+5M7vVyXxU1U8Q6R0jj
 3NVg==
X-Gm-Message-State: ANhLgQ2VQYjS1pccSGay1ckjK/1/evsb7ySTMCIyF42COP6+XPYYB/NM
 jQLgx7uZ60HIH3cuMGsCOudqqcRzgtg=
X-Google-Smtp-Source: ADFU+vs+HKE3IWh4apkjwf+4+Mvkx7Q+WOOiji85VsbcR0OCsXuNq0ZuQwsSjxjCzrS0CDMCwxwX1w==
X-Received: by 2002:a17:906:ad92:: with SMTP id
 la18mr25531885ejb.326.1585069117038; 
 Tue, 24 Mar 2020 09:58:37 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id v12sm401847edw.51.2020.03.24.09.58.36
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 09:58:36 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id m17so13436749wrw.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 09:58:36 -0700 (PDT)
X-Received: by 2002:a05:6512:10cf:: with SMTP id
 k15mr17550349lfg.142.1585068727556; 
 Tue, 24 Mar 2020 09:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 24 Mar 2020 09:51:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjEi4VoT8qkBhrBtdZ27shyrPwo0ETpuOdxk5anHtQqhQ@mail.gmail.com>
Message-ID: <CAHk-=wjEi4VoT8qkBhrBtdZ27shyrPwo0ETpuOdxk5anHtQqhQ@mail.gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 00/16] x86,
 crypto: remove always-defined CONFIG_AS_* and cosolidate
 Kconfig/Makefiles
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 NeilBrown <neilb@suse.de>, dri-devel <dri-devel@lists.freedesktop.org>,
 "H . Peter Anvin" <hpa@zytor.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Jonathan Corbet <corbet@lwn.net>, the arch/x86 maintainers <x86@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 intel-gfx@lists.freedesktop.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Yuanhan Liu <yuanhan.liu@linux.intel.com>, Kees Cook <keescook@chromium.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> If it is OK to queue this up to Kbuild tree,
> I will send a pull request to Linus.

Looks fine to me, assuming we didn't now get some confusion due to
duplicate patches (I think Jason got his tree added to -next already).

And yeah, that end result looks much better.

             Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
