Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD28F39FD47
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 19:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4461C6E237;
	Tue,  8 Jun 2021 17:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243CD6E237;
 Tue,  8 Jun 2021 17:11:16 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id p21so4098889qtw.6;
 Tue, 08 Jun 2021 10:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nBrruEgnz12ZC6jqDcLkPXxRhqlEWuwnn47cR6q73To=;
 b=esiHr1w1nbqv1SgrOWlb+Xsx3v8QLTfLfmIeuJLlb22Rx4RR62wOIWTMtqWQ2ntrEi
 zTslo7JZK6qdR+uSaHc7q0tC4751K6DoW4XxDElFvfccnrsiMc67rQqXZii9rpWsPHAY
 vzyULJwK7t1Sii3j66D3EOoPdaufMRyt9/IPkiK0x249taja7MNO5z0tkwnuIJT6S011
 HmQILfkXkn4IpI2fPg/TolDCaibTNCZYx4dDrdCYn+JQJEYyew89Bhq3rdJID9LXorHH
 OKSDkPlN6HtxGnLXPgMmyVlB1lPYHVjdBAwq2TzPxcwt+8P3sBsLp+RoEsQNsZLdPTt5
 Dsew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nBrruEgnz12ZC6jqDcLkPXxRhqlEWuwnn47cR6q73To=;
 b=UGWi59Zbo9mDMSNLe5S9RGESgA0ydBGtcEC3MCFR+kI1Lzr6L1ckeIR4llZZT33+Ik
 tCtOZZfXpANhcI1/hXn5UinVDFKMe8VPcP9joZy7ioNkiNFm42HRT70DXjBnDPSu+HvA
 a0yEHGE4QU/OZ0aYA0IZ9vfEs6OI+1afLS12eaX9G1cpHXZCTkXiHX1/mMy0fXC4EgnW
 KU3giH6mHmp/NTk5UrALfWlsqJnUOKxg5RD4gpB1uk5yGOX1QGkfkPGqDGI/JyFBKQIM
 LADQA0RbFK9ugLJNss/m8Jsn6g9s2uaiCNVpiU1gSbbeb3kBvV63ton7mXO0lW9vw3k7
 99Ow==
X-Gm-Message-State: AOAM532dFK3kghsoiKJVTJ2U+DR7lV1KPu7uRwAvEtgcOzCQpiAVDq+j
 BkGoazkYtBT2IgCpRta7CuMU46DUdCV+KKoQqOo=
X-Google-Smtp-Source: ABdhPJzr0Q9DtlZHoEgFgkUAOM1QDQ4PIRFe0i1VQZq0JuTIvLaS6b2krGW4eTJTJ0UCdTe7VcXkwexYkZnNw/jDH5M=
X-Received: by 2002:ac8:60d:: with SMTP id d13mr22402742qth.223.1623172275282; 
 Tue, 08 Jun 2021 10:11:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
 <20210608092846.64198-3-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210608092846.64198-3-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 8 Jun 2021 18:10:48 +0100
Message-ID: <CAM0jSHOc6A8oJ384=owQiqPXfeX-NgpRsKtujpn9fQ=JfUYj2A@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Break out dma_resv ww locking
 utilities to separate files
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCA4IEp1biAyMDIxIGF0IDEwOjI5LCBUaG9tYXMgSGVsbHN0csO2bQo8dGhvbWFzLmhl
bGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gQXMgd2UncmUgYWJvdXQgdG8gYWRk
IG1vcmUgd3ctcmVsYXRlZCBmdW5jdGlvbmFsaXR5LAo+IGJyZWFrIG91dCB0aGUgZG1hX3Jlc3Yg
d3cgbG9ja2luZyB1dGlsaXRpZXMgdG8gdGhlaXIgb3duIGZpbGVzCj4KPiBTaWduZWQtb2ZmLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgfCAgMSAr
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgfCAgMSArCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlbmRlcnN0YXRlLmggfCAgMSArCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgfCA1NiAtLS0tLS0tLS0t
LS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaCAgICAgICAgICAgICB8
IDEyIC0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYyAgICAgICAgICB8
IDYzICsrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV93dy5oICAgICAgICAgIHwgMjEgKysrKysrKwo+ICA3IGZpbGVzIGNoYW5nZWQsIDg3IGluc2Vy
dGlvbnMoKyksIDY4IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaAo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBpbmRleCA0
ZjIyY2FjMWM0OWIuLmVhOGVlNGIzZTAxOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gQEAg
LTQ1LDYgKzQ1LDcgQEAgaTkxNS15ICs9IGk5MTVfZHJ2Lm8gXAo+ICAgICAgICAgICBpOTE1X3N3
aXRjaGVyb28ubyBcCj4gICAgICAgICAgIGk5MTVfc3lzZnMubyBcCj4gICAgICAgICAgIGk5MTVf
dXRpbHMubyBcCj4gKyAgICAgICAgIGk5MTVfZ2VtX3d3Lm8gXAoKTml0OiBTaG91bGQgYmUga2Vw
dCBzb3J0ZWQuCgo+ICAgICAgICAgICBpbnRlbF9kZXZpY2VfaW5mby5vIFwKPiAgICAgICAgICAg
aW50ZWxfZHJhbS5vIFwKPiAgICAgICAgICAgaW50ZWxfbWVtb3J5X3JlZ2lvbi5vIFwKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4gaW5kZXggMWZhZmNjODll
Y2VlLi43ODk1MjliNDI0YzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oCj4gQEAgLTE1LDYgKzE1LDcgQEAKPiAgI2luY2x1ZGUgImk5MTVfZ2VtX29i
amVjdF90eXBlcy5oIgo+ICAjaW5jbHVkZSAiaTkxNV9nZW1fZ3R0LmgiCj4gICNpbmNsdWRlICJp
OTE1X3ZtYV90eXBlcy5oIgo+ICsjaW5jbHVkZSAiaTkxNV9nZW1fd3cuaCIKClNhbWUgaGVyZS4K
ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
