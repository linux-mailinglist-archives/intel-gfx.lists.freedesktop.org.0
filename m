Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9FD7594A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 23:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58786E833;
	Thu, 25 Jul 2019 21:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E81106E833
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 21:05:00 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id w186so1958953vkd.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 14:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=amdaOAaEor28At6mOvyV2aBEJ0HT1uCg5MsUqhxYlT0=;
 b=YgHjoifQS8+hYKq3bi8Nxnsd9z+k7HFRyHQeyQym+WQlnOmrxLb/zcjOkmAEo9rTNe
 9zaB7+2Ylzt1J7ltF6pdqPdy/m4S35BkdEUU6UO/JwGVEMWOypRjsPaXwgoEN8jlCRkx
 0NNccZLahYr2UvKJZOTsOTy0i9WlBxPUUZkHQR5Daf7zJV7iCVvInX7sFgCWNBNgG8MZ
 r5cuA/NZmPR8MGRaWj5Vha3riqWKhk4V1DMqC/bjQFCb0WZZ86vUdPwpj2Xzl5ZgxqYm
 HZfaGL3i0rsyZTUr1dfu5WO2t7HkKqRLMm1Q2A/Zm2YA0SUbIYKSuhklg9959k/nFqUN
 cQ0w==
X-Gm-Message-State: APjAAAX3dC6hvJt6lHB5Ck6LyhNgHv7xphYX80Tv9XI9Z+SvuDmWDbLC
 YI3G24kJqfmsnuKi5Br0qjrNHVLRxq0ZJYhftRY=
X-Google-Smtp-Source: APXvYqzfIa/ZU/pirAMFqZvSCbl+DYYmQFg2bv9OuKf/t8kdT0dECgzZWuxhpGvmatgCygDzDRrkEMQlhtz9CGr5mf0=
X-Received: by 2002:a1f:b48e:: with SMTP id d136mr36243586vkf.57.1564088699801; 
 Thu, 25 Jul 2019 14:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190725182437.3228-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190725182437.3228-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 25 Jul 2019 22:04:33 +0100
Message-ID: <CAM0jSHMPYONMca4vQi0N9D5fU7-NeCasd5+BC1AaacJGXfW4Ng@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=amdaOAaEor28At6mOvyV2aBEJ0HT1uCg5MsUqhxYlT0=;
 b=mlGTsabCudEqYZk5b/7V8Z8epbiX+ajU8AagaZAopybBCy0Gn/tSXOaDCXUXdMG4YC
 XLelr52KrboQGzY5HvsjHoK601aH3orFQ6+OUxQ4JZ89vzmniUjaxcFkpcz181epPWum
 g0h/uJO1xezikXRsE2PE0MnYRU5AGooekQYHn4Y2XFYXSguJOEzRoSe06hA4PjP9B22N
 Rm3de3PsdaS2ItkSwwRaqZvP4gzopmm/4SVhsjLumDfrmlpN/wsGNhhM07fHI8n+oVu9
 NEc1cg4aAfwedM3O3eT+ndNHr3SuOpqUjnCzypUf4bSlRRBbPCq+PcjtV2YhO478ycCv
 oohw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Capture vma contents outside of
 spinlock
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNSBKdWwgMjAxOSBhdCAxOToyNCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ3VycmVudGx5IHdlIHVzZSB0aGUgZW5naW5lLT5hY3Rp
dmUubG9jayB0byBlbnN1cmUgdGhhdCB0aGUgcmVxdWVzdCBpcwo+IG5vdCByZXRpcmVkIGFzIHdl
IGNhcHR1cmUgdGhlIGRhdGEuIEhvd2V2ZXIsIHdlIG9ubHkgbmVlZCB0byBlbnN1cmUgdGhhdAo+
IHRoZSB2bWEgYXJlIG5vdCByZW1vdmVkIHByaW9yIHRvIHVzZSBhY3F1aXJpbmcgdGhlaXIgY29u
dGVudHMsIGFuZAo+IHNpbmNlIHdlIGhhdmUgYWxyZWFkeSByZWxpbnF1aXNoZWQgb3VyIHN0b3At
bWFjaGluZSBwcm90ZWN0aW9uLCB3ZQo+IGFzc3VtZSB0aGF0IHRoZSB1c2VyIHdpbGwgbm90IGJl
IG92ZXJ3cml0aW5nIHRoZSBjb250ZW50cyBiZWZvcmUgd2UgYXJlCj4gYWJsZSB0byByZWNvcmQg
dGhlbS4KPgo+IEluIG9yZGVyIHRvIGNhcHR1cmUgdGhlIHZtYSBvdXRzaWRlIG9mIHRoZSBzcGlu
bG9jaywgd2UgYWNxdWlyZSBhCj4gcmVmZXJlbmNlIGFuZCBtYXJrIHRoZSB2bWEgYXMgYWN0aXZl
IHRvIHByZXZlbnQgaXQgZnJvbSBiZWluZyB1bmJvdW5kLgo+IEhvd2V2ZXIsIHNpbmNlIGl0IGlz
IHRyaWNreSBhbGxvY2F0ZSBhbiBlbnRyeSBpbiB0aGUgZmVuY2UgdHJlZSAoZG9pbmcKPiBzbyB3
b3VsZCByZXF1aXJlIHRha2luZyBhIG11dGV4KSB3aGlsZSBpbnNpZGUgdGhlIGVuZ2luZSBzcGlu
bG9jaywgd2UKPiB1c2UgYW4gYXRvbWljIGJpdCBhbmQgc3BlY2lhbCBjYXNlIHRoZSBoYW5kbGlu
ZyBmb3IgaTkxNV9hY3RpdmVfd2FpdC4KPgo+IFRoZSBjb3JlIGJlbmVmaXQgaXMgdGhhdCB3ZSBj
YW4gdXNlIHNvbWUgbm9uLWF0b21pYyBtZXRob2RzIGZvciBtYXBwaW5nCj4gdGhlIGRldmljZSBw
YWdlcywgd2UgY2FuIHJlbW92ZSB0aGUgc2xvdyBjb21wcmVzc2lvbiBwaGFzZSBvdXQgb2YgYXRv
bWljCj4gY29udGV4dCAoaS5lLiBzdG9wIGFudGFnb25pc2luZyB0aGUgbm1pLXdhdGNoZG9nKSwg
YW5kIG5vIHdlIGxvbmdlciBuZWVkCj4gbGFyZ2UgcmVzZXJ2ZXMgb2YgYXRvbWljIHBhZ2VzLgo+
Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMTIxNQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAgICAg
IHwgIDM0ICsrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCAgICAg
ICB8ICAgMyArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmggfCAg
IDMgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgIHwgMTEzICsr
KysrKysrKysrKysrKystLS0tLS0tCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTE4IGluc2VydGlvbnMo
KyksIDM1IGRlbGV0aW9ucygtKQoKPHNuaXA+Cgo+Cj4gIHN0YXRpYyBzdHJ1Y3QgZHJtX2k5MTVf
ZXJyb3Jfb2JqZWN0ICoKPiBAQCAtMTM3MCw2ICsxMzk5LDcgQEAgZ2VtX3JlY29yZF9yaW5ncyhz
dHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yLCBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNzKQo+
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBpOTE1LT5l
bmdpbmVbaV07Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9lcnJvcl9lbmdpbmUg
KmVlID0gJmVycm9yLT5lbmdpbmVbaV07Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJlcXVlc3Q7Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBjYXB0dXJlX3ZtYSAqY2Fw
dHVyZTsKCk5vdCBldmVuIHNldHRpbmcgY2FwdHVyZSA9IE5VTEw/CgpSZXZpZXdlZC1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
