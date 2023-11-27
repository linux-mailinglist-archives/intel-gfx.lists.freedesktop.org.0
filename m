Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA647FA7B7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 18:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F296C10E3B3;
	Mon, 27 Nov 2023 17:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68D010E3B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 17:11:14 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-9fa2714e828so614419166b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 09:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1701105073; x=1701709873;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=X8veV/N8u0KLOX8kp8+RpeOybN7ghMV50gJ3VwXOlp8=;
 b=CsMTAVP8fgB7jAo16hsrAd0OHNzDLH0STppcgZ5YyvRLzC7S6UErxCkgjyV5jU1+HF
 xRMLFYTKuxZZhToRd9Q4JR4+H/oemAbJCNHcSbOUDubMmirOc9gOzc0u5IchSesvO8nG
 qnh2ZHhXIvceACGtBGkI568R/E6M1w2aRYdJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701105073; x=1701709873;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=X8veV/N8u0KLOX8kp8+RpeOybN7ghMV50gJ3VwXOlp8=;
 b=PrBi1S5awriHRxoUgwg8qjNvzV+Qd438uHAYHFuilEr+iepo8Bag8bifmhaUCTq/kH
 g/w6bEPl4nGa4l5NI5EnLKH5sfbjcteLoJV6jmilUhCc7fh34UKt4eBRwZnokmMlTfH1
 9zoA0UG2XSS2EU9ldSd+QkpPHuKbCydDI72pzv3skG1I+3EjDyhcpbgPmDg2e/rbFxSP
 kXBRaGgWsn8Az4YLJ+ORulFJrrPm2B7BPEERTVQ8uKXdu0ZLWV/iVJdjASsZ9FUIgckG
 McqPwsDstMRf4+6XQRHpbdjVd37cTqJ8XnmqVHC37PDngH//blvC/AIuBTR02ieJv3yi
 QHzg==
X-Gm-Message-State: AOJu0YyLKppPfz00SYxK5q6gofsSefnyu/b3TmSj3lxsxQLdiWyeKO0n
 vjMZtGnu6u03Y7kRR5cmxB1no9U4ru/P2eoehk/+yg==
X-Google-Smtp-Source: AGHT+IHQ9dQI2GYW6WyY8cdB2UYW06EQQ3foj9xcBTQECywBAcZ7lxoaFfbx8gd/W1kNfxcOEtf5TQ==
X-Received: by 2002:a17:906:5ad8:b0:a01:e916:714c with SMTP id
 x24-20020a1709065ad800b00a01e916714cmr9389780ejs.61.1701105072989; 
 Mon, 27 Nov 2023 09:11:12 -0800 (PST)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43]) by smtp.gmail.com with ESMTPSA id
 a18-20020a170906191200b009e6cedc8bf5sm5858795eje.29.2023.11.27.09.11.11
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Nov 2023 09:11:11 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-54b0c7987easo3638900a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 09:11:11 -0800 (PST)
X-Received: by 2002:a50:d4c5:0:b0:53e:1b:15f5 with SMTP id
 e5-20020a50d4c5000000b0053e001b15f5mr7964361edj.39.1701105070828; 
 Mon, 27 Nov 2023 09:11:10 -0800 (PST)
MIME-Version: 1.0
References: <202311201406.2022ca3f-oliver.sang@intel.com>
 <CAHk-=wjMKONPsXAJ=yJuPBEAx6HdYRkYE8TdYVBvpm3=x_EnCw@mail.gmail.com>
 <CAHk-=wiCJtLbFWNURB34b9a_R_unaH3CiMRXfkR0-iihB_z68A@mail.gmail.com>
 <20231127-kirschen-dissens-b511900fa85a@brauner>
In-Reply-To: <20231127-kirschen-dissens-b511900fa85a@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Nov 2023 09:10:54 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgwpzgoSYU9Ob+MRyFuHRow4s5J099=DsCo1hGT=bkCtw@mail.gmail.com>
Message-ID: <CAHk-=wgwpzgoSYU9Ob+MRyFuHRow4s5J099=DsCo1hGT=bkCtw@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [linus:master] [file] 0ede61d858:
 will-it-scale.per_thread_ops -2.9% regression
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
Cc: feng.tang@intel.com, Jann Horn <jannh@google.com>,
 intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, fengwei.yin@intel.com, gfs2@lists.linux.dev,
 linux-fsdevel@vger.kernel.org, kernel test robot <oliver.sang@intel.com>,
 ying.huang@intel.com, oe-lkp@lists.linux.dev, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Nov 2023 at 02:27, Christian Brauner <brauner@kernel.org> wrote:
>
> So I've picked up your patch (vfs.misc). It's clever alright so thanks
> for the comments in there otherwise I would've stared at this for far
> too long.

Note that I should probably have commented on one other thing: that
whole "just load from fd[0] is always safe, because the fd[] array
always exists".

IOW, that whole "load and mask" thing only works when you know the
array exists at all.

Doing that "just mask the index" wouldn't be valid if "size = 0" is an
option and might mean that we don't have an array at all (ie if "->fd"
itself could be NULL.

But we never have a completely empty file descriptor array, and
fdp->fd is never NULL.  At a minimum 'max_fds' is NR_OPEN_DEFAULT.

(The whole 'tsk->files' could be NULL, but only for kernel threads or
when exiting, so fget_task() will check for *that*, but it's a
separate thing)

So that's why it's safe to *entirely* remove the whole

                if (unlikely(fd >= fdt->max_fds))

test, and do it *all* with just "mask the index, and mask the resulting load".

Because we can *always* do that load at "fdt->fd[0]", and we want to
check the result for NULL anyway, so the "mask at the end and check
for NULL" is both natural and generates very good code.

Anyway, not a big deal, bit it might be worth noting before somebody
tries the same trick on some other array that *could* be zero-sized
and with a NULL base pointer, and where that 'array[0]' access isn't
necessarily guaranteed to be ok.

> It's a little unpleasant because of the cast-orama going on before we
> check the file pointer but I don't see that it's in any way wrong.

In my cleanup phase - which was a bit messy - I did wonder if I should
have some helper for it, since it shows up in both __fget_files_rcu()
and in files_lookup_fd_raw().

So I *could* have tried to add something like a
"masked_rcu_dereference()" that took the base pointer, the index, and
the mask, and did that whole dance.

Or I could have had just a "mask_pointer()" function, which we do
occasionally do in other places too (ie we hide data in low bits, and
then we mask them away when the pointer is used as a pointer).

But with only two users, it seemed to add more conceptual complexity
than it's worth, and I was not convinced that we'd want to expose that
pattern and have others use it.

So having a helper might clarify things, but it might also encourage
wrong users. I dunno.

I suspect the only real use for this ends up being this very special
"access the fdt->fd[] array using a file descriptor".

Anyway, that's why I largely just did it with comments, and commented
both places - and just kept the cast there in the open.

             Linus
