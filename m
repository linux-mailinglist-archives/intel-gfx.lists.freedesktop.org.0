Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497A61B2F4D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 20:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7FB6E2DE;
	Tue, 21 Apr 2020 18:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182276E31E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 18:42:26 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id r16so4335032edw.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 11:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h2Sxsn5oS4nqpkBX5BqB24mfzH+Rga+VCB+qgnhYUWk=;
 b=EN4eMrfRCQ2BTajrHemVrZRGdfNv+VjF0Hxxcl6iPzUIc4bkpVZwbpHp6Y8qjqbOly
 NQiQcxT3IZhkG8k/a9SX63SzMRhr6smIcOvnSUCBWIYLh5jNRcmyHxwhZdGgJqJWyNtZ
 yrajiBGrLqcdHIip5S59MA6DWpMQ2o4gnwtCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h2Sxsn5oS4nqpkBX5BqB24mfzH+Rga+VCB+qgnhYUWk=;
 b=BevKwUg9+32Ya6pUfw+figfq7Cgt5LVBFhbwIOve8DNyXfNiXU4NokZzdOEGH7u5gP
 pjG07AkJfg3hAVvG8T08oBrt6oijHe/vh0mJQSO4sLdXx+NDcz20Jh4Ehy767SQpND/L
 +LTDfAAK/Kx+1HG2VLSgoeT0bjSeOfOPBddUdTBlDXrRzFQtJrvhuzWKEH6Z6S6HDFXW
 dVfgwEdhpWW2KyMroKS45yXBp2QxaVuUnwnzvvqa3ZBAVIDaLGMQQhw96q3mA15MP7/A
 dXftA/9yWJqCg8iwkHDt30gIc+qEShdfXTCPqrizmP9HXfgpjH+spS87sp96OY7L+WM4
 MmYg==
X-Gm-Message-State: AGi0PuagPJz9UQwNbB8tVOrKWrN29pxuFpQHzUJYoghn9zU5KYYLhKqR
 ogPHS11x/uGopFBBXGBOH/0PLJv5PFs=
X-Google-Smtp-Source: APiQypIMEoFYWWPVTADgmVp6sf5Yn4DpQTzynM0bMCTKs7DsGk8Qo+VoF+OTeeT5SRG69bUdw0NHXw==
X-Received: by 2002:aa7:c453:: with SMTP id n19mr20048365edr.218.1587494544268; 
 Tue, 21 Apr 2020 11:42:24 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id f21sm549328ejw.55.2020.04.21.11.42.23
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 11:42:24 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id d17so17707719wrg.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 11:42:23 -0700 (PDT)
X-Received: by 2002:a2e:8512:: with SMTP id j18mr9624239lji.201.1587494060836; 
 Tue, 21 Apr 2020 11:34:20 -0700 (PDT)
MIME-Version: 1.0
References: <36e43241c7f043a24b5069e78c6a7edd11043be5.1585898438.git.christophe.leroy@c-s.fr>
 <42da416106d5c1cf92bda1e058434fe240b35f44.1585898438.git.christophe.leroy@c-s.fr>
 <CAHk-=wh_DY_dysMX0NuvJmMFr3+QDKOZPZqWKwLkkjgZTuyQ+A@mail.gmail.com>
 <20200403205205.GK23230@ZenIV.linux.org.uk>
 <20200421024919.GA23230@ZenIV.linux.org.uk>
In-Reply-To: <20200421024919.GA23230@ZenIV.linux.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 21 Apr 2020 11:34:04 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiuHxXwuPynLFh-fYjuUE3_HNPh79e_P6MFMbq4Ki+QCw@mail.gmail.com>
Message-ID: <CAHk-=wiuHxXwuPynLFh-fYjuUE3_HNPh79e_P6MFMbq4Ki+QCw@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 linux-arch <linux-arch@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Dave Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 intel-gfx@lists.freedesktop.org, Peter Anvin <hpa@zytor.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Linux-MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 20, 2020 at 7:49 PM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
>         The only source I'd been able to find speaks of >= 60 cycles
> (and possibly much more) for non-pipelined coprocessor instructions;
> the list of such does contain loads and stores to a bunch of registers.
> However, the register in question (p15/c3) has only store mentioned there,
> so loads might be cheap; no obvious reasons for those to be slow.
> That's a question to arm folks, I'm afraid...  rmk?

_If_ it turns out to be expensive, is there any reason we couldn't
just cache the value in general?

That's what x86 tends to do with expensive system registers. One
example would be "msr_misc_features_shadow".

But maybe that's something to worry about when/if it turns out to
actually be a problem?

                 Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
