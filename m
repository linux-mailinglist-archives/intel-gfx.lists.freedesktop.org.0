Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43553F8F4D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 13:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A01676E42A;
	Tue, 12 Nov 2019 12:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C942A6E42A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 12:08:50 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id z9so923349otq.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 04:08:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OUN6Grlj3r+JUTZHCXOHHAU/NbGv44gvlcRy+k3pSHk=;
 b=F9eFCwZ6elOArkEXVV/uQOd0afv+h9GeIyuco9GzHeAf97GAv92Kkm5M2rCO8ZgHsJ
 ezjmGXlyw0gZQ4uvhQbJs4LwEzqVI8TL6hraarxJ/i+j94EDFMUXGavkXLAC/FFhGZT1
 O0qhWxCtE5QC664wq1DLYdSE7FjgjnNNJpSypijN4EojzyNrLQUgv9KEwzL+h/Dlt2sY
 kk8nVgcGRTpvNCVrpujg7PG2lgAVNVc+rJ3u3x2JZXNIBFDsZyCwDAJQXywHsrwIYKD0
 iLx7i4Xs03U07MiF/mciJPJbgzcVWLd8ezGe65jBs1U3Y5zEyQ+/L1O1ODZ6jZky4qTv
 xUSQ==
X-Gm-Message-State: APjAAAUJmM4TCnwlvBhrDpSIPL18cHdG+HjQSa/H1Zd52HMx9/P0BGr8
 cr1UqOoZrWL5fmv7hPMDX/0VWPlVi1lXl51gDi8KaA==
X-Google-Smtp-Source: APXvYqzEF3E6/uOIEbhv+KGFTcI55Is+WI6005Nr+Xu5QQ5Gr3PG7l8SkEl8TPYqY8kwEVbh9tflH7XeGvXTGu2QDzw=
X-Received: by 2002:a05:6830:1649:: with SMTP id
 h9mr26387549otr.281.1573560529975; 
 Tue, 12 Nov 2019 04:08:49 -0800 (PST)
MIME-Version: 1.0
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-4-chris@chris-wilson.co.uk>
 <CAKMK7uEgFS8FAatJBzsEid72sy2_h8x2WsyhsZuyyfaoD1Lg0Q@mail.gmail.com>
 <157355174344.9322.13853897964725973571@skylake-alporthouse-com>
 <CAKMK7uE8fjc3OXhAnESs-w=fqPhmJUUFOF_n_bKETFaQiQw+GA@mail.gmail.com>
In-Reply-To: <CAKMK7uE8fjc3OXhAnESs-w=fqPhmJUUFOF_n_bKETFaQiQw+GA@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 12 Nov 2019 13:08:38 +0100
Message-ID: <CAKMK7uHwoff5+GHEfswsvgCzSAAnZgtYu0hE_JQU9_86PeTN4Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=OUN6Grlj3r+JUTZHCXOHHAU/NbGv44gvlcRy+k3pSHk=;
 b=RmGR38IYKbiIxal/+Dz6A8YenRRTKIyPoln3q+lhgdFr1ekEQuJcVQ9k3bSQOFkuQf
 oAFc66FTa57xnu/Cs4i2MZeh5uaoJ9fzH60cQTeWuRXyF6B1mJOG+bu6f2lZm4gbkUkA
 uoFAyKBMLxKQI9J7MTMhIzv7Gl0vtAK54eLe0=
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Flush stale cachelines on
 set-cache-level
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMTE6NTcgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDEwOjQzIEFNIENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+Cj4gPiBRdW90aW5n
IERhbmllbCBWZXR0ZXIgKDIwMTktMTEtMTIgMDk6MDk6MDYpCj4gPiA+IE9uIFRodSwgSnVsIDE4
LCAyMDE5IGF0IDQ6NTQgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gRW5zdXJlIHRoYXQgd2UgZmx1c2ggYW55IGNhY2hlIGRp
cnQgb3V0IHRvIG1haW4gbWVtb3J5IGJlZm9yZSB0aGUgdXNlcgo+ID4gPiA+IGNoYW5nZXMgdGhl
IGNhY2hlLWxldmVsIGFzIHRoZXkgbWF5IGVsZWN0IHRvIGJ5cGFzcyB0aGUgY2FjaGUgKGV2ZW4g
YWZ0ZXIKPiA+ID4gPiBkZWNsYXJpbmcgdGhlaXIgYWNjZXNzIGNhY2hlLWNvaGVyZW50KSB2aWEg
dXNlIG9mIHVucHJpdmlsZWdlZCBNT0NTLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+ID4gQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gPiBDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA1ICsrKysrCj4gPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKPiA+ID4gPiBpbmRleCAyZTNjZTJhNjk2NTMuLjVk
NDFlNzY5YTQyOCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG9tYWluLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG9tYWluLmMKPiA+ID4gPiBAQCAtMjc3LDYgKzI3NywxMSBAQCBpbnQgaTkxNV9n
ZW1fb2JqZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAo+ID4gPiA+Cj4gPiA+ID4gICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHZtYSwgJm9iai0+
dm1hLmxpc3QsIG9ial9saW5rKQo+ID4gPiA+ICAgICAgICAgICAgICAgICB2bWEtPm5vZGUuY29s
b3IgPSBjYWNoZV9sZXZlbDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAvKiBGbHVzaCBhbnkg
cHJldmlvdXMgY2FjaGUgZGlydCBpbiBjYXNlIG9mIGNhY2hlIGJ5cGFzcyAqLwo+ID4gPiA+ICsg
ICAgICAgaWYgKG9iai0+Y2FjaGVfZGlydHkgJiB+b2JqLT5jYWNoZV9jb2hlcmVudCkKPiA+ID4g
PiArICAgICAgICAgICAgICAgaTkxNV9nZW1fY2xmbHVzaF9vYmplY3Qob2JqLCBJOTE1X0NMRkxV
U0hfU1lOQyk7Cj4gPiA+Cj4gPiA+IEkgdGhpbmsgd3JpdGluZyBvdXQgdGhlIGJpdCBsb2dpYyBp
bnN0ZWFkIG9mIGltcGxpY2l0bHkgcmVseWluZyBvbiB0aGUKPiA+ID4gI2RlZmluZXMgd291bGQg
YmUgbXVjaCBiZXR0ZXIsIGkuZS4gJiYgIShjYWNoZV9jb2hlcmVudCAmCj4gPiA+IENPSEVSRU5U
X0ZPUl9SRUFEKS4gUGx1cyBJIHRoaW5rIHdlIG9ubHkgbmVlZCB0byBzZXQgY2FjaGVfZGlydHkg
PQo+ID4gPiB0cnVlIGlmIHdlIGRvbid0IGZsdXNoIGhlcmUgYWxyZWFkeSwgdG8gYXZvaWQgZG91
YmxlIGZsdXNoaW5nPwo+ID4KPiA+IE5vLiBUaGUgbWFzayBpcyBiZWluZyB1cGRhdGVkLCBzbyB5
b3UgbmVlZCB0byBmbHVzaCBiZWZvcmUgeW91IGxvc2UKPiA+IHRyYWNrLiBUaGUgY2FjaGUgaXMg
dGhlbiBjbGVhcmVkIG9mIHRoZSBkaXJ0eSBiaXQgc28gd29uJ3QgYmUgZmx1c2hlZAo+ID4gYWdh
aW4gdW50aWwgZGlydHkgYW5kIG5vIGxvbmdlciBjb2hlcmVudC4gV2UgbmVlZCB0byBmbGFnIHRo
YXQgdGhlIHBhZ2UKPiA+IGlzIG5vIGxvbmdlciBjb2hlcmVudCBhdCB0aGUgZW5kIG9mIGl0cyBs
aWZldGltZSAocGFzc2luZyBiYWNrIHRvIHRoZQo+ID4gc3lzdGVtKSB0byBmb3JjZSB0aGUgZmx1
c2ggdGhlbi4KPgo+IEhtIEkgdGhpbmsgSSBvdmVybG9va2VkIHRoYXQgd2Ugb25seSBjbGVhciBj
YWNoZV9kaXJ0eSBpbgo+IGk5MTVfZ2VtX2NsZmx1c2hfb2JqZWN0IHdoZW4gaXQncyBhIGNvaGVy
ZW50IG1vZGUuCgpIbSwgdGhlIGNsZWFyL2JsdCBjb2RlIHJlY2VudGx5IG1lcmdlZCBkb2Vzbid0
IHByZXNlcnZlIHRoZQotPmNhY2hlX2RpcnR5IHNldHRpbmcgZm9yIHRoaXMgY2FzZSwgdW5saWtl
IGNsZnVzaF9vYmplY3QuIERvIHdlIGhhdmUKYSBidWcgdGhlcmU/Cgo+IEkgYWxzbyBzcG90dGVk
IG1vcmUgY2FzZXMgZm9yIChvYmotPmNhY2hlX2RpcnR5Cj4gJn5vYmotPmNhY2hlX2NvaGVyZW50
KSwgc28gdGhhdCBvYnNjdXJlL2ZyYWdpbGUgcGF0dGVybiBpcwo+IHByZS1leGlzdGluZyA6LS8g
T25lIG9mIHRoZW0gYWxzbyBjaGVja3Mgb3V0c2lkZSBvZiB0aGUgb2JqZWN0IGxvY2ssCj4gd2hp
Y2ggSSB0aGluayBpcyBob3cgdGhlc2Ugc3RhdGVzIGFyZSBzdXBwb3NlZCB0byBiZSBwcm90ZWN0
ZWQuIFNtZWxscwo+IGEgYml0IGZpc2h5IHN0aWxsLCB3b3VsZCBiZSBnb29kIHRvIG1ha2UgYSBi
aXQgY2xlYXJlci4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZnds
bC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
