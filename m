Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0BE8F5F3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 22:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3957E89C18;
	Thu, 15 Aug 2019 20:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D51389C18
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 20:49:44 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id g7so3228139oia.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 13:49:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lgnLIsY3NAF2I8cARaxRotDmNV7GudD+acm8febioSE=;
 b=TOLI6ug7mKIPeQcHF9I0b6hJfJuDYyjVnz1ORMj+9Mmjb7ayzBNgKOXr9CQ2zeLg5v
 wpK9kcicKKeycdR7teaMf/gCcsA4edQjVGesvE/E0vJpjfVFYKk72kaaMfuid04lMUK9
 ELDOchhhQI/czzC2sTQlZl8kdmxJYQuKdXEvvVKAxfy4ZqbGKqL2eDFQW5pGjN1h9FtY
 +F034lfTlB6hzgg7AtxqNKMiuGaZpmnmun94vyYNa/gt6KnHYI6k9PcnDXnQmrlHdZWw
 OMC6jluDGtQd7NuvKvrL5IoGMaUNfw8TqsrHAA4M/lQ3oYs/yFBBZU6WtJ3NVsP7ZcgW
 W0/w==
X-Gm-Message-State: APjAAAWugK122WOFYv+nwH83sdnRdFm8eWR2o1Kjl1ehNnB/sd7BOs2u
 nJUglwFSANUHCDOma9oJX4bewJep1ohO+CvZgWBG3w==
X-Google-Smtp-Source: APXvYqwzZ/kApGN6PiSs4Jakj+3xLiJKsdwsUzoZ79QigfmdRjFBzCS/DYJGNsj8cG6QhlWGKnUS/ZCe5UFKl5trWe8=
X-Received: by 2002:aca:4994:: with SMTP id w142mr2705861oia.132.1565902183316; 
 Thu, 15 Aug 2019 13:49:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190815132127.GI9477@dhcp22.suse.cz>
 <20190815141219.GF21596@ziepe.ca>
 <20190815155950.GN9477@dhcp22.suse.cz> <20190815165631.GK21596@ziepe.ca>
 <20190815174207.GR9477@dhcp22.suse.cz> <20190815182448.GP21596@ziepe.ca>
 <20190815190525.GS9477@dhcp22.suse.cz> <20190815191810.GR21596@ziepe.ca>
 <20190815193526.GT9477@dhcp22.suse.cz>
 <CAKMK7uH42EgdxL18yce-7yay=x=Gb21nBs3nY7RA92Nsd-HCNA@mail.gmail.com>
 <20190815202721.GV21596@ziepe.ca>
In-Reply-To: <20190815202721.GV21596@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 15 Aug 2019 22:49:31 +0200
Message-ID: <CAKMK7uER0u1TqeJBXarKakphnyZTHOmedOfXXqLGVDE2mE-mAQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=lgnLIsY3NAF2I8cARaxRotDmNV7GudD+acm8febioSE=;
 b=YIJ7YIpMxznBPHgTdpSwquDHILTgLsnpo12EU8rkd+AHKFJZ5ZwqKoIwrRqaFSFR8y
 OSm/+kJt94YLyv2W7RB5Syzoulous/GPdyhQE4c6S/acM0xv4AIF2T1fqDaLkhBzGFIm
 8xguUk+swY546hiuNvL1kRCs6fhSMGv4cUMt8=
Subject: Re: [Intel-gfx] [PATCH 2/5] kernel.h: Add non_block_start/end()
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
Cc: Feng Tang <feng.tang@intel.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Michal Hocko <mhocko@kernel.org>, Linux MM <linux-mm@kvack.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David Rientjes <rientjes@google.com>, Wei Wang <wvw@google.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMTA6MjcgUE0gSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+IHdyb3RlOgo+IE9uIFRodSwgQXVnIDE1LCAyMDE5IGF0IDEwOjE2OjQzUE0gKzAyMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBTbyBpZiBzb21lb25lIGNhbiBleHBsYWluIHRvIG1l
IGhvdyB0aGF0IHdvcmtzIHdpdGggbG9ja2RlcCBJIGNhbiBvZgo+ID4gY291cnNlIGltcGxlbWVu
dCBpdC4gQnV0IGFmYWljcyB0aGF0IGRvZXNuJ3QgZXhpc3QgKEkgdHJpZWQgdG8gZXhwbGFpbgo+
ID4gdGhhdCBzb21ld2hlcmUgZWxzZSBhbHJlYWR5KSwgYW5kIEknbSBubyByZWFsbHkgbG9va2lu
ZyBmb3J3YXJkIHRvCj4gPiBoYWNraW5nIGFsc28gb24gbG9ja2RlcCBmb3IgdGhpcyBsaXR0bGUg
c2VyaWVzLgo+Cj4gSG1tLCBraW5kIG9mIGxvb2tzIGxpa2UgaXQgaXMgZG9uZSBieSBjYWxsaW5n
IHByZWVtcHRfZGlzYWJsZSgpCgpZdXAuIFRoYXQgd2FzIHYxLCB0aGVuIGNhbWUgdGhlIHN1Z2dl
c3Rpb24gdGhhdCBkaXNhYmxpbmcgcHJlZW1wdGlvbgppcyBtYXliZSBub3QgdGhlIGJlc3QgdGhp
bmcgKHRoZSBvb20gcmVhcGVyIGNvdWxkIHN0aWxsIHJ1biBmb3IgYSBsb25nCnRpbWUgY29tcGFy
YXRpdmVseSwgaWYgaXQncyBjbGVhbmluZyBvdXQgZ2lnYWJ5dGVzIG9mIHByb2Nlc3MgbWVtb3J5
Cm9yIHdoYXQgbm90LCBoZW5jZSB0aGlzIGRlZGljYXRlZCBkZWJ1ZyBpbmZyYXN0cnVjdHVyZSku
Cgo+IFByb2JhYmx5IHRoZSBkZWJ1ZyBvcHRpb24gaXMgQ09ORklHX0RFQlVHX1BSRUVNUFQsIG5v
dCBsb2NrZGVwPwoKQ09ORklHX0RFQlVHX0FUT01JQ19TTEVFUC4gTGlrZSBpbiBteSBwYXRjaC4K
LURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
