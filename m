Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6720E6A4C2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 11:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBF36E0E9;
	Tue, 16 Jul 2019 09:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFCA6E0EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 09:21:58 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id d4so18891661edr.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 02:21:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=7kcxkE7b2qRiLgZ4OILWSKZ4Ie6ZeH2B7E3GySpoAk0=;
 b=uByvloSn1/crr52CqtP71JY2YR1Y/uAf2F4Ofv3+zBseFhB6GtonI6o8/DpQ2Kl3TO
 Yg//ZpR6gbZByXzCSQQW3IxwBxYYKot3XEnKf2CzmwWDYpNrWyticWIaT2RRh8BDL5+V
 goQf2Mwn4kfupgmnliAynt57tEBL3dQLw+NQbSzzw+H4kfkjR6Vg77Oau1jMeDCnYows
 q8asHH6THjyEqwOTmHml4+qq2leEeB0ihpmXWru/Rj+QERjGgVQgF+ATnvHtYA0Sfhnp
 DQGyQP+cP9GHgPJRgdfCvHDfSX7DkjoMnTdY3uZr1WGcYgscasOMju+Hix2QkdN8GPw4
 1hkw==
X-Gm-Message-State: APjAAAU7Mytaern8oLNRH+0SJBMVxB8Dyclvfy84MjGXxXqccOlaIVuL
 QjX2SJkR4Gz7BP8wNX/KL6g=
X-Google-Smtp-Source: APXvYqyxGM5IiEz0C53dP+I+u3IaYRdq0KhJ6UCNw7IBeK+6txLUdJUFoMeoMmVPIv0xP96+jplW7w==
X-Received: by 2002:a50:8934:: with SMTP id e49mr28198583ede.156.1563268916879; 
 Tue, 16 Jul 2019 02:21:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id e29sm5458028eda.51.2019.07.16.02.21.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 02:21:56 -0700 (PDT)
Date: Tue, 16 Jul 2019 11:21:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190716092154.GZ15868@phenom.ffwll.local>
References: <20190712080314.21018-1-chris@chris-wilson.co.uk>
 <20190712080314.21018-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712080314.21018-2-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=7kcxkE7b2qRiLgZ4OILWSKZ4Ie6ZeH2B7E3GySpoAk0=;
 b=gjsJPejq5+7XtWkI90nISeZr8z1PFw4VKKfIjWJehIu4n9KHwgiEwt8jTdovWcIURo
 h717aTnbShxWCrAmlSnLPyVjPDbCdpTiq0Aak81o3GPxnNXjG/drsfdkXvjRnw/TuQnx
 zOojMTsHl91jrcBSKXS7lZn60aef0eMqJn148=
Subject: Re: [Intel-gfx] [PATCH 2/2] dma-buf: Relax the write-seqlock for
 reallocating the shared fence list
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDk6MDM6MTRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEFzIHRoZSBzZXQgb2Ygc2hhcmVkIGZlbmNlcyBpcyBub3QgYmVpbmcgY2hhbmdlZCBk
dXJpbmcgcmVhbGxvY2F0aW9uIG9mCj4gdGhlIHJlc2VydmF0aW9uIGxpc3QsIHdlIGNhbiBza2lw
IHVwZGF0aW5nIHRoZSB3cml0ZV9zZXFsb2NrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cgpzb3VuZHMgbGVnaXQuCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCk1vcmUgc2VyaW91c2x5LCBJIHRoaW5rIEkgY29udmlu
Y2VkIG15c2VsZiB0aGF0IHdlIGNhbnQgc2VlIGEgbWVzcyBvZiBvbGQKYW5kIG5ldyBmZW5jZSBh
cnJheXMgYW55d2hlcmUsIGV2ZW4gd2l0aG91dCB0aGUgc2VxbG9jayByZXRyeSwgc28gSSB0aGlu
awp3ZSBzaG91bGQgYmUgYWxsIGdvb2QuCi1EYW5pZWwKCj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1
Zi9yZXNlcnZhdGlvbi5jIHwgMTQgKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL3Jlc2VydmF0aW9uLmMgYi9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYwo+IGlu
ZGV4IDgwZWNjMTI4M2QxNS4uYzcxYjg1YzhjMTU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9yZXNlcnZhdGlvbi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMK
PiBAQCAtMTU3LDE1ICsxNTcsMTUgQEAgaW50IHJlc2VydmF0aW9uX29iamVjdF9yZXNlcnZlX3No
YXJlZChzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpvYmosCj4gIAkJKGtzaXplKG5ldykgLSBv
ZmZzZXRvZih0eXBlb2YoKm5ldyksIHNoYXJlZCkpIC8KPiAgCQlzaXplb2YoKm5ldy0+c2hhcmVk
KTsKPiAgCj4gLQlwcmVlbXB0X2Rpc2FibGUoKTsKPiAtCXdyaXRlX3NlcWNvdW50X2JlZ2luKCZv
YmotPnNlcSk7Cj4gIAkvKgo+IC0JICogUkNVX0lOSVRfUE9JTlRFUiBjYW4gYmUgdXNlZCBoZXJl
LAo+IC0JICogc2VxY291bnQgcHJvdmlkZXMgdGhlIG5lY2Vzc2FyeSBiYXJyaWVycwo+ICsJICog
V2UgYXJlIG5vdCBjaGFuZ2luZyB0aGUgZWZmZWN0aXZlIHNldCBvZiBmZW5jZXMgaGVyZSBzbyBj
YW4KPiArCSAqIG1lcmVseSB1cGRhdGUgdGhlIHBvaW50ZXIgdG8gdGhlIG5ldyBhcnJheTsgYm90
aCBleGlzdGluZwo+ICsJICogcmVhZGVycyBhbmQgbmV3IHJlYWRlcnMgd2lsbCBzZWUgZXhhY3Rs
eSB0aGUgc2FtZSBzZXQgb2YKPiArCSAqIGFjdGl2ZSAodW5zaWduYWxlZCkgc2hhcmVkIGZlbmNl
cy4gSW5kaXZpZHVhbCBmZW5jZXMgYW5kIHRoZQo+ICsJICogb2xkIGFycmF5IGFyZSBwcm90ZWN0
ZWQgYnkgUkNVIGFuZCBzbyB3aWxsIG5vdCB2YW5pc2ggdW5kZXIKPiArCSAqIHRoZSBnYXplIG9m
IHRoZSByY3VfcmVhZF9sb2NrKCkgcmVhZGVycy4KPiAgCSAqLwo+IC0JUkNVX0lOSVRfUE9JTlRF
UihvYmotPmZlbmNlLCBuZXcpOwo+IC0Jd3JpdGVfc2VxY291bnRfZW5kKCZvYmotPnNlcSk7Cj4g
LQlwcmVlbXB0X2VuYWJsZSgpOwo+ICsJcmN1X2Fzc2lnbl9wb2ludGVyKG9iai0+ZmVuY2UsIG5l
dyk7Cj4gIAo+ICAJaWYgKCFvbGQpCj4gIAkJcmV0dXJuIDA7Cj4gLS0gCj4gMi4yMi4wCj4gCgot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
