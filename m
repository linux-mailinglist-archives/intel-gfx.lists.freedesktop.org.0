Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB4D193F3C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 13:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D9D6E36F;
	Thu, 26 Mar 2020 12:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 399 seconds by postgrey-1.36 at gabe;
 Thu, 26 Mar 2020 08:19:48 UTC
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0804F6E2C8;
 Thu, 26 Mar 2020 08:19:47 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 6ffde851;
 Thu, 26 Mar 2020 08:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=z54i3Rpd8bQwLDnVNFV/yezuxLU=; b=boOyqs
 mCdG+80LeYcjASWpkQ1zMThj2uZPRyQj63aULJ1eho1PEeJxY053blYBVEDv/+X7
 OBQ/dBvu36pqu+6GHtzv5FnIDYJ8+m+UpNZddescE9+TJew8ZdyolfWdn7qCgNwm
 hCDQQZZIBJP70J+3MGGaus93N2IUKDn1UavfBtBSFRk4AtjJCPc/vVInIjmHn4rp
 9nXPZ9Perj3Rk83uKKf3OPmeCafWNMnHZ2UW709Lpc/xjEXipaADr7IcjmiVm9Er
 qA90IZHHNfiJD+f6KrFTRwRM8Vhig7u1XfQF2UZX5KM4Hl2qhbUe96EyxkSi5RwR
 yE1MyvOm+wrsj6Vw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b3d3b47d
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Thu, 26 Mar 2020 08:05:44 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id q7so1683274iot.10;
 Thu, 26 Mar 2020 01:13:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1oMwGPdqCvBqKLhrMmJfguDIL/1PrZuoB5xTWn4ohrQWOSUcdX
 XEVX8WelTiHY3fveQADrM//ePpXvgH4EuBodYwU=
X-Google-Smtp-Source: ADFU+vsTJTCXcFJHQUwui8dbQzcKfWOUCgQIPLG0bwuItksw1ry6Mg259oUoldQgsVo9bcGoroXnNzuIzCxg8dcm+jA=
X-Received: by 2002:a02:2a4a:: with SMTP id w71mr6759564jaw.75.1585210385536; 
 Thu, 26 Mar 2020 01:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org>
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Mar 2020 02:12:54 -0600
X-Gmail-Original-Message-ID: <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
Message-ID: <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
X-Mailman-Approved-At: Thu, 26 Mar 2020 12:50:17 +0000
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
Cc: linux-doc@vger.kernel.org, NeilBrown <neilb@suse.de>,
 dri-devel@lists.freedesktop.org, "H . Peter Anvin" <hpa@zytor.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 X86 ML <x86@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Yuanhan Liu <yuanhan.liu@linux.intel.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, David Airlie <airlied@linux.ie>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Very little has changed from last time, and this whole series still
looks good to me. I think I already ack'd most packages, but in case
it helps:

Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>

Since this touches a lot of stuff, it might be best to get it in as
early as possible during the merge window, as I imagine new code being
added is going to want to be touching those makefiles too.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
