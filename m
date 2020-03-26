Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36508195271
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 08:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797F86E9C6;
	Fri, 27 Mar 2020 07:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0FC6E922;
 Thu, 26 Mar 2020 20:46:18 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id b8e2e3c4;
 Thu, 26 Mar 2020 20:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=CGWgvRHoerDqIX2HYCZh8ogjklM=; b=GBtBK3
 BM2+T4Ws/EMMmKx8xvhiALt29uM1uW06kXm0UO5HEOi/oX/4uMSMuhmHx3CDbfUm
 pOKstqAfjRFNInrLfIdLa/VU+DUH++J3XBnMA6ZuRat0YL9IrIaB3IOVuN61o9JN
 SUJu1V8K12yus5RxdGfSo5lP9YUw13A2NzySstKJQKkJrh/yFRfTfhP59J87jlNj
 txM2LCLNLVxYcwcPgkAdBuJvINRW8AdY1B3EEADHC/6TjfEOjXe6k3HL3itbwiiN
 N34waeT/X6NafeE+6DjKW+K7vb5rssHXmmoZlmDF1rLumFai7ZPbHjVfSnC+oLP2
 SdpMndirMIef9UkQ==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 18131497
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Thu, 26 Mar 2020 20:38:51 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id v3so7504806iot.11;
 Thu, 26 Mar 2020 13:46:16 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3E8NsFo51Rop+AgcHmWnR9ZXyvvUhAwhbtdpOmwUSalpCRY+Dx
 dvk/WgpsZ1ag5hx0VolKLkDI0UoWBZ+t+UiUk+Q=
X-Google-Smtp-Source: ADFU+vsT1lxBNZU6tEYaINxARGEDLm5sHLmSYnbnU2+V88Os9Y74T/ah4HXpvKNpS1pgTAFg8rIzXNts4PyzMfoHxm4=
X-Received: by 2002:a02:2714:: with SMTP id g20mr9513089jaa.95.1585255574785; 
 Thu, 26 Mar 2020 13:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org>
 <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
 <20200326092213.GA100918@gmail.com>
 <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Mar 2020 14:46:03 -0600
X-Gmail-Original-Message-ID: <CAHmME9qnWWYV+eWVmx2yoADB9oecZKj=UgLkdSHe_=MnxedtSQ@mail.gmail.com>
Message-ID: <CAHmME9qnWWYV+eWVmx2yoADB9oecZKj=UgLkdSHe_=MnxedtSQ@mail.gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
X-Mailman-Approved-At: Fri, 27 Mar 2020 07:57:55 +0000
Subject: Re: [Intel-gfx] [PATCH v2 00/16] x86,
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
 "H . Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 X86 ML <x86@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Yuanhan Liu <yuanhan.liu@linux.intel.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 2:44 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> I collected more Reviewed-by and Acked-by,
> then pushed this series to
>
> git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> kbuild-asinstr

But not the version of the penultimate patch that Nick ack'd....
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
