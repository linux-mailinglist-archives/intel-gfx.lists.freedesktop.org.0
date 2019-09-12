Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C729B0E67
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 13:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD866ECF2;
	Thu, 12 Sep 2019 11:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3456ECF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 11:59:44 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id j16so23339303ljg.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 04:59:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FYtDp2gQu85OzThc5ikz2A0+zoE1rUIOtPZpolymb7k=;
 b=Nke5TUm7BcMCuKlvUz/bkciCrdPMIVXya8DGnbxpCcXQrhNEWvFOLsZ6Yz08voDb7K
 ZUV7cVZpUKjzQ2NuPC1r+yQjlKMCw8LOAgPzRzkSdVEsEGzWRFhUmeHImo2mtvxoTPyA
 lhCsKphE28AEaWKraX38EhEH89A9Cq07A9qHVKHKop3clz39Kc/YphKF/3neKODJn7WD
 XccfTnyDOG1vk5NeRySQLBx1RIpd5OQC1AVdijNbArEmB21uDfsxw5XYhpkgohn2ljEQ
 eO7T0EZ2qzSrSCiq6y5kEX6joZqh+7a/WmE0dt05AgZ6U4EsnxCAXcdCzOur4Rr19WPH
 iEXg==
X-Gm-Message-State: APjAAAWaLpLy6vrx60UhO7e+mh/3H/K8x5WAlP5oxFT/YACyRESgciP0
 oOqwoaFYE3UupzD1uAIfk9ijd2lGkK3+/g==
X-Google-Smtp-Source: APXvYqxK22Xd/UuDpAgQdZWlpeTpSdSI4PC+XJpCePnduKb9O6WfHf1FtziJ62BkExhGNhGXeYQlOg==
X-Received: by 2002:a2e:9713:: with SMTP id r19mr26586869lji.121.1568289582753; 
 Thu, 12 Sep 2019 04:59:42 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id 6sm6438964ljr.63.2019.09.12.04.59.41
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 04:59:41 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id r22so7815977lfm.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 04:59:41 -0700 (PDT)
X-Received: by 2002:a19:741a:: with SMTP id v26mr27747225lfe.79.1568289581382; 
 Thu, 12 Sep 2019 04:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
 <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
 <20190910142047.GB3029@papaya>
 <3dcff41048621ff440687dd6691aae31a8647a1e.camel@suse.com>
In-Reply-To: <3dcff41048621ff440687dd6691aae31a8647a1e.camel@suse.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 12 Sep 2019 12:59:25 +0100
X-Gmail-Original-Message-ID: <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
Message-ID: <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
To: Martin Wilck <Martin.Wilck@suse.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=FYtDp2gQu85OzThc5ikz2A0+zoE1rUIOtPZpolymb7k=;
 b=LLpYNGLWO+FOw9m0V2uY2cWrgwX2O+ZH+hY2GxqW7nLiXxw6ee3Ik7+QES/hMd+qb8
 2x3Frma/RnZ2/wtXERUJiZagrYagqPoKxFlYUzMKqK3e8vRhNqLRhufV+rTV7H4gg9gy
 D9Cua/F/D39AXmf2DrMb8Hit7DqqxEheHEYOM=
Subject: Re: [Intel-gfx] 5.3-rc3: Frozen graphics with kcompactd migrating
 i915 pages
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "tiwai@suse.de" <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "leho@kraav.com" <leho@kraav.com>, Michal Koutny <MKoutny@suse.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTI6NTEgUE0gTWFydGluIFdpbGNrIDxNYXJ0aW4uV2ls
Y2tAc3VzZS5jb20+IHdyb3RlOgo+Cj4gSXMgdGhlcmUgYW4gYWx0ZXJuYXRpdmUgdG8gcmV2ZXJ0
aW5nIGFhNTZhMjkyY2U2MiAoImRybS9pOTE1L3VzZXJwdHI6Cj4gQWNxdWlyZSB0aGUgcGFnZSBs
b2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpIik/IEFuZCBpZiB3ZSBkbywgd2hhdAo+IHdvdWxk
IGJlIHRoZSBjb25zZXF1ZW5jZXM/IFdvdWxkIG90aGVyIHBhdGNoZXMgbmVlZCB0byBiZSByZXZl
cnRlZCwKPiB0b28/CgpMb29raW5nIGF0IHRoYXQgY29tbWl0LCBhbmQgdGhlIGJhY2t0cmFjZSBv
ZiB0aGUgbG9ja3VwLCBJIHRoaW5rIHRoYXQKcmV2ZXJ0aW5nIGl0IGlzIHRoZSBjb3JyZWN0IHRo
aW5nIHRvIGRvLgoKWW91IGNhbid0IHRha2UgdGhlIHBhZ2UgbG9jayBpbiBpbnZhbGlkYXRlX3Jh
bmdlKCksIHNpbmNlIGl0J3MgY2FsbGVkCmZyb20gdHJ5X3RvX3VubWFwKCksIHdoaWNoIGlzIGNh
bGxlZCB3aXRoIHRoZSBwYWdlIGxvY2sgYWxyZWFkeSBoZWxkLgoKU28gY29tbWl0IGFhNTZhMjky
Y2U2MiBpcyBqdXN0IGZ1bmRhbWVudGFsbHkgY29tcGxldGVseSB3cm9uZyBhbmQKc2hvdWxkIGJl
IHJldmVydGVkLgoKICAgICAgICAgICAgICAgTGludXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
