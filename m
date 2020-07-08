Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9FD218DE7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9F76E58A;
	Wed,  8 Jul 2020 17:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077C56E58A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 17:08:22 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id t4so20578668oij.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 10:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nz/Nyjw8G1SzsAD8yYV+6UttTkfPL55BtDrcSw7RFcU=;
 b=fh/TkZu1o4N1LBT/HryWywI6g9JUeVkqRtFirICPghjM4NBcH4Qwmo5tgfusY9gham
 +AYEJNAhfe8avx67D6vs/LGZGtXw57ThH/P6EFe99SHRd30W1zDk+YX9U3GS6S0HyYkU
 BuL5BGGOAmdiJdSSWZO2GjkBbd6Pmrywj6mMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nz/Nyjw8G1SzsAD8yYV+6UttTkfPL55BtDrcSw7RFcU=;
 b=pp8XCzRgtw1Zyxm5R+BkkAbvaZf1BM6qxivjoO6K/5peh6oAL8Rfp3UmX3m5vQbToV
 6xWSByySEAzV0iugvS61MZcohrBW9CSYatHlO/chy+FLpvqbnq0JKPJGxfaXk6dJhwMP
 ENwjUnkj7/HCGFnE0VfooQn8fW0cTT4hxYP3blQjZvMg8aZT6xgZGRtGKGFBzxkeshvk
 9ummLo5YHuoockI8I10bnfx3DDVuz47w/YBm9KVuHvTZG3Gi671AV2g2NGWH1D5dUXHF
 X9sMk/QYrPO/JUUJvNFbbVOHyAtzLW3rNd6Z4E7alHEsWoewYYRd6zUo8nst5ePrhrXT
 5N9A==
X-Gm-Message-State: AOAM533JZ852eRjqx1YUutM+UFGsX/VsDuLyFEfU4jKzXwh8J7jZMr8I
 AzE6JWVdW/CuOAznJOGSzBhyo9ZgMJKMEYBZJlgs+S6J
X-Google-Smtp-Source: ABdhPJz4pJ+nfbS36S1XreFAHVbejzWHkJSShRY+pAhejeScPel/lPVGugVuhTwzC9J01eLTPbCxisobbWbc7nbxHs8=
X-Received: by 2002:aca:da03:: with SMTP id r3mr8108646oig.14.1594228102274;
 Wed, 08 Jul 2020 10:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
 <20200701235339.32608-4-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-4-lucas.demarchi@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 8 Jul 2020 19:08:11 +0200
Message-ID: <CAKMK7uFHfGXz4WxeVtJnhmp6ueJ3VF1y581Ne-KzADEoxxMRpA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Intel-gfx] [PATCH v3 03/28] drm/i915/dg1: Add DG1 PCI IDs
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMiwgMjAyMCBhdCAxOjU1IEFNIEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPiB3cm90ZToKPgo+IEZyb206IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVs
LmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPgo+IEFkZCB0aGUgUENJIElEIGZvciBERzEsIGJ1
dCBrZWVwIGl0IG91dCBvZiB0aGUgdGFibGUgd2UgdXNlIHRvIHJlZ2lzdGVyCj4gdGhlIGRyaXZl
ci4gQXQgdGhpcyBwb2ludCB3ZSBjYW4ndCBjb25zaWRlciB0aGUgZHJpdmVyIHJlYWR5IHRvIGJp
bmQgdG8KPiB0aGUgZGV2aWNlIHNpbmNlIHdlIGJhc2ljYWxseSBtaXNzIHN1cHBvcnQgZm9yIGV2
ZXJ5dGhpbmcuIFdoZW4gbW9yZQo+IHN1cHBvcnQgaXMgbWVyZ2VkIHdlIGNhbiBlbmFibGUgaXQg
dG8gd29yayBwYXJ0aWFsbHkgZm9yIGV4YW1wbGUgYXMgYQo+IGRpc3BsYXktb25seSBkcml2ZXIu
Cj4KPiB2MjogcmVtb3ZlIERHMSBmcm9tIHRoZSBwY2kgdGFibGUgYW5kIHJld29yZCBjb21taXQg
bWVzc2FnZSAoTHVjYXMpCj4KPiBCc3BlYzogNDQ0NjMKPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVzQGlu
dGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+ICMgdjEKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyB8IDIgKy0KPiAgaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCAgICAgICB8IDQgKysrKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jCj4gaW5kZXggNThjY2VlYWEwZmZhLi44Y2FlNjRhZGJiMjMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBAQCAtOTAwLDcgKzkwMCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gcmtsX2luZm8gPSB7Cj4gICAgICAgICAuaGFzX21h
c3Rlcl91bml0X2lycSA9IDEsIFwKPiAgICAgICAgIC5pc19kZ2Z4ID0gMQo+Cj4gLXN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfZGcxX2luZm8gPSB7Cj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gZGcxX2luZm8gPSB7CgpMb29rcyBsaWtl
IGEgbWlzcGxhY2VkIGh1bmsgaGVyZSwgYnV0IGFzaWRlIGZyb20gdGhhdCwgb24gdGhlICJsZXQn
cwpqdXN0IG5vdCBhZGQgdGhlIHBjaSBpZCI6CgpBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KCkFsc28gYWRkaW5nIERhdmUganVzdCBhcyBmeWkuCi1EYW5p
ZWwKCj4gICAgICAgICBHRU4xMl9ER0ZYX0ZFQVRVUkVTLAo+ICAgICAgICAgUExBVEZPUk0oSU5U
RUxfREcxKSwKPiAgICAgICAgIC5waXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0Ip
IHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiBpbmRleCBiYzk4OWRl
MmFhYzIuLmY0NGZlODIyODgwZCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oCj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+IEBAIC02MTQsNCArNjE0LDgg
QEAKPiAgICAgICAgIElOVEVMX1ZHQV9ERVZJQ0UoMHg0QzkwLCBpbmZvKSwgXAo+ICAgICAgICAg
SU5URUxfVkdBX0RFVklDRSgweDRDOUEsIGluZm8pCj4KPiArLyogREcxICovCj4gKyNkZWZpbmUg
SU5URUxfREcxX0lEUyhpbmZvKSBcCj4gKyAgICAgICBJTlRFTF9WR0FfREVWSUNFKDB4NDkwNSwg
aW5mbykKPiArCj4gICNlbmRpZiAvKiBfSTkxNV9QQ0lJRFNfSCAqLwo+IC0tCj4gMi4yNi4yCj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgoK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0
dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
