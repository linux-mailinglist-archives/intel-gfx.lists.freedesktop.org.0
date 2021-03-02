Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3480232AC92
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 00:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A2189D81;
	Tue,  2 Mar 2021 23:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3714189F9F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 23:28:17 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id k9so14143066lfo.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 15:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=b2WR5NAAe8qYxDh84ELeJx7Te7KQpI7P4lNA9RdmHp0=;
 b=ANyDIOA979debgLl+e5FQXvLOMVLw+1Ystwz2Gl3c0o7LAWhnemYEjInc56EneVjLB
 YEJsg2K1OOQAOCY+3hOgd7sfUEYyiFzHOdU0CdvUJ7CU1DXNlzRJTciTT9fGJFooKit4
 Y/ek/2RZ38pcP/zUhjPTgWiDUk5Zs3f3pdFpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=b2WR5NAAe8qYxDh84ELeJx7Te7KQpI7P4lNA9RdmHp0=;
 b=PqQgNfQJVjJEyQocOFT2SjoefkpeCF6fmEVyoEjLKBeJ0bOmX+Zt3CUyuOUMUpH5W+
 IVw/kd0Esi+WehevjioiUnM2YV3xzd4YS8Z48roSRxtMbvbCiy9rAMhb+Rr06VPbm3fL
 b8jNv5pKyBl+sYrF8Sv2EFoMaOGhfo42O5P3OOQK0fgiH9XOYjzr+Vqe5Yz0ghlpE9Pu
 YeKpitIKS1P1HTVMBnNOr0PfChMzrwMyVGJtN7czfrMH2lqSSZPfXaSEWIpgY7Ud1TUb
 zACmZKmpijj4X1fUlF3ookE9jSnnkcy7kcgyVPrLJ7qKaRyMdTlZaCmyttMwyB6t+U86
 jAAA==
X-Gm-Message-State: AOAM531QSzf5WaaLNuav8QWYo7BUzpgJuGUXvMJE8tEArUK0njiHssQs
 rhNp0ILjED1cU8yQkg0L86+uNDHZ9FWYzQ==
X-Google-Smtp-Source: ABdhPJzwXnbKxT1eB/fF3gqOBXMmk/YyBnqV/11ZrWT+kmBnhs82/sy3pBF7qQTQ7im3zjdMGOqqig==
X-Received: by 2002:a05:6512:39d5:: with SMTP id
 k21mr13131834lfu.142.1614727695226; 
 Tue, 02 Mar 2021 15:28:15 -0800 (PST)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id a30sm2998635ljq.96.2021.03.02.15.28.14
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 15:28:14 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id r23so26229028ljh.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 15:28:14 -0800 (PST)
X-Received: by 2002:a2e:864d:: with SMTP id i13mr10453166ljj.48.1614727693719; 
 Tue, 02 Mar 2021 15:28:13 -0800 (PST)
MIME-Version: 1.0
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
 <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
In-Reply-To: <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 2 Mar 2021 15:27:57 -0800
X-Gmail-Original-Message-ID: <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
Message-ID: <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 Christoph Hellwig <hch@lst.de>, Damien Le Moal <damien.lemoal@wdc.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, 
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [Intel-gfx] Public i915 CI shardruns are disabled
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIHRoZSByaWdodCBwZW9wbGUuCgpJdCBzZWVtcyB0aGF0IHRoZSB0aHJlZSBjb21taXRz
IHRoYXQgbmVlZGVkIHJldmVydGluZyBhcmUKCiAgZjg4NTA1NmE0OGNjICgibW06IHNpbXBsaWZ5
IHN3YXBkZXZfYmxvY2siKQogIDNlMzEyNmNmMmE2ZCAoIm1tOiBvbmx5IG1ha2UgbWFwX3N3YXBf
ZW50cnkgYXZhaWxhYmxlIGZvciBDT05GSUdfSElCRVJOQVRJT04iKQogIDQ4ZDE1NDM2ZmRlNiAo
Im1tOiByZW1vdmUgZ2V0X3N3YXBfYmlvIikKCmFuZCB3aGlsZSB0aGV5IGxvb2sgdmVyeSBoYXJt
bGVzcyB0byBtZSwgbGV0J3MgYnJpbmcgaW4gQ2hyaXN0b3BoIGFuZApKZW5zIHdobyB3ZXJlIGFj
dHVhbGx5IGludm9sdmVkIHdpdGggdGhlbS4KCkknbSBhc3N1bWluZyB0aGF0IGl0J3MgdGhhdCB0
aGlyZCBvbmUgdGhhdCBpcyB0aGUgcmVhbCBpc3N1ZSAoYW5kIHRoZQp0d28gb3RoZXIgb25lcyB3
ZXJlIHRvIGdldCB0byBpdCksIGJ1dCBpdCB3b3VsZCBhbHNvIGJlIGdvb2QgdG8ga25vdwp3aGF0
IHRoZSBhY3R1YWwgZGV0YWlscyBvZiB0aGUgcmVncmVzc2lvbiBhY3R1YWxseSB3ZXJlLgoKTWF5
YmUgdGhhdCdzIG9idmlvdXMgdG8gc29tZWJvZHkgd2hvIGhhcyBtb3JlIGNvbnRleHQgYWJvdXQg
dGhlIDk4MTUKQ0kgcnVucyBhbmQgaXRzIHdlYiBpbnRlcmZhY2UsIGJ1dCBpdCBzdXJlIGlzbid0
IGNsZWFyIHRvIG1lLgoKSmVucywgQ2hyaXN0b3BoPwoKICAgICAgICAgICAgICAgICAgTGludXMK
Ck9uIFR1ZSwgTWFyIDIsIDIwMjEgYXQgMTE6MzEgQU0gRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgMyBNYXIgMjAyMSBhdCAwMzoyNywgU2FydmVsYSwg
VG9taSBQIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+IHdyb3RlOgo+ID4KPiA+IFRoZSByZWdy
ZXNzaW9uIGhhcyBiZWVuIGlkZW50aWZpZWQ7IENocmlzIFdpbHNvbiBmb3VuZCBjb21taXRzIHRv
dWNoaW5nCj4gPgo+ID4gc3dhcGZpbGUuYywgYW5kIHJldmVydGluZyB0aGVtIHRoZSBpc3N1ZSBj
b3VsZG7igJl0IGJlIHJlcHJvZHVjZWQgYW55IG1vcmUuCj4gPgo+ID4KPiA+Cj4gPiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzg3NTQ5Lwo+ID4KPiA+Cj4gPgo+ID4g
VGhpcyByZXZlcnQgd2lsbCBiZSBhcHBsaWVkIHRvIGNvcmUtZm9yLUNJIGJyYW5jaC4gV2hlbiBu
ZXcgQ0lfRFJNIGhhcwo+ID4KPiA+IGJlZW4gYnVpbHQsIHNoYXJkLXRlc3Rpbmcgd2lsbCBiZSBl
bmFibGVkIGFnYWluLgo+Cj4gSnVzdCBtYWtpbmcgc3VyZSB0aGlzIGlzIG9uIHRoZSByYWRhciB1
cHN0cmVhbS4KPgo+IERhdmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
