Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF4461DE89
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 22:18:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8901B10E129;
	Sat,  5 Nov 2022 21:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B86710E129
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 21:18:47 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id k2so5269972qkk.7
 for <intel-gfx@lists.freedesktop.org>; Sat, 05 Nov 2022 14:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=;
 b=ZuJIeLB+J2B+Wi1b1yHoLdNdJG615BQeh3CPU6LD93y3msmDVTjWdZW9SDWuwWG0Ca
 YhJ+P7666j6kD5Xt3qGOHQOk6MqT4dr6x8NEoIAvnzfrmsju0oEob+uN+nSjB06pGmVE
 9YOPL0fQ+TfTab0XaBhkdWiy9kYH1H39RsusA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=;
 b=aBBsQn2VCjCqX/78ZzAMffn4MPHs0mjbZ+WuDG354aAK/okR2/Dia8/eaoalrcXZgg
 rdWidYUMClj+xZ9ChEH6gTFG1lOMWr0WSl3o6alJwfgieXpSN3D9kTMnPKZrn7agsUTU
 297f8PovIxrP6GNuBng9QNFfLAXES9LLTDH2rX7Vpa4JhYKVLh1fv+F/lbo8dtUnjOL5
 mXQW14Zn17412bK4lGrjzbJe1ay3ipvam3Azwrz5QHGc1FLmQpoDWPsskAE9uxaH8hS8
 ylK22qpulfQP+/u7LKs4V4BvPM8z+rAzKS5EJe/ss8m2p4j2mJBPQwq5iUk0ZhuyJppJ
 6N4Q==
X-Gm-Message-State: ACrzQf20gcMvcrTr2f9psG8QraTA7yS/9BbJpNvZ55fGQ3c0AyQS+j5x
 EF/vEVAXwxI56OPW8kFI8RR31iaArVw1Bw==
X-Google-Smtp-Source: AMsMyM7TbsSFfrLUWv4N3Ya7i8Lbz4PrPo5CN82HSaKCh8P/CWSxJLlb9XTTNjHDx5zn6DqrBd5yew==
X-Received: by 2002:a05:620a:e87:b0:6f4:9c2c:c04b with SMTP id
 w7-20020a05620a0e8700b006f49c2cc04bmr31593875qkm.60.1667683125976; 
 Sat, 05 Nov 2022 14:18:45 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com.
 [209.85.219.181]) by smtp.gmail.com with ESMTPSA id
 fz27-20020a05622a5a9b00b0038b684a1642sm2514356qtb.32.2022.11.05.14.18.45
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Nov 2022 14:18:45 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id j130so9536100ybj.9
 for <intel-gfx@lists.freedesktop.org>; Sat, 05 Nov 2022 14:18:45 -0700 (PDT)
X-Received: by 2002:a05:6902:1352:b0:6bb:3f4b:9666 with SMTP id
 g18-20020a056902135200b006bb3f4b9666mr38314227ybu.101.1667682810745; Sat, 05
 Nov 2022 14:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home> <Y2bPlllkHo5DUmLY@zx2c4.com>
In-Reply-To: <Y2bPlllkHo5DUmLY@zx2c4.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 14:13:14 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
Message-ID: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v4a 00/38] timers: Use timer_shutdown*()
 before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-s390@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linaro-mm-sig@lists.linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Nov 5, 2022 at 2:03 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Something that might help here is changing the `...` into
> `... when exists` or into `... when != ptr` or similar.

I actually tried that.

You don't want "when exists", you'd want "when forall", but that seems
to be the default.

And trying "when != ptr->timer" actually does the right thing in that
it gets rid of the case where the timer is modified outside of the
del_timer() case, *but* it also causes odd other changes to the
output.

Look at what it generates for that

   drivers/media/usb/pvrusb2/pvrusb2-hdw.c

file, which finds a lot of triggers with the "when !=  ptr->timer",
but only does one without it.

So I gave up, just because I clearly don't understand the rules.

(Comparing output is also fun because the ordering of the patches is
random, so consecutive runs with the same rule will give different
patches. I assume that it's just because it's done in parallel, but it
doesn't help the "try to see what changes when you change the script"
;)

                 Linus
