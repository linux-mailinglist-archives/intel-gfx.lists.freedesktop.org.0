Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8586C3AC93B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 12:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932FB6E9EB;
	Fri, 18 Jun 2021 10:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9CD6E9E9;
 Fri, 18 Jun 2021 10:54:23 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id j184so9866899qkd.6;
 Fri, 18 Jun 2021 03:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3L64G0kZpQX4YOzIs8AaNkLWGlymR+LDLduTHLv/7oI=;
 b=LRT9Ni6IvWt1RFSE9GrGTjhQNb/7OzlS6XmLy0gsxkgAtXg1+D0DHYa3c6glBoWhEs
 pwS1lSSH/LUAaMXfjnqvHN0eAfUzIQo/Ervfr5DsT/GaCh97JPeuC8tp+W0FYOTwm17k
 JjWwLTXnsIHo0XAFbRVDaOSihOg/LcY54bPiHkxZ6ZvROZou/+kQupoHCvhHCEFXX5sx
 aEP791JIavQ/kIyC846J/y1bTba5T6KifkjpcGfgzhqFDrSH6CaayLtLmdr24c05Cwip
 0QGmeLKyUeUou0jrnBmhkeJ9+A0T5xtpCtF+KtnvTn56jZXZlcqob7xG/UDCNbkBzd71
 mIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3L64G0kZpQX4YOzIs8AaNkLWGlymR+LDLduTHLv/7oI=;
 b=bHbkgoo98M/zBeOObGF19gX2tJe8lxXlcfinL1+1K1M9xtZqJTW5Oquesb9b7++uDI
 SOC/oTiwmTlekJdqqWP33b4grsw6BUhZVzePaR3u4GOxa0qysZV8uXLYwpsZuquUS1UG
 tqA17JFQTWVa7VtG1YSgu7saxaqI3DeEl/AzM4dQyu5Y9bAMsaBm641eMk88n5yHnXGy
 w0XsELeumY6YHND/3Su1K6IA+YYw4H/9o1UnPAeiHrcNNFBHxlsEMaxSNWBC6+oFKpi5
 YGcrVXWhBto0BaPVn3xei2ry54QrQMn1OW0uDDuJRNzdPBCB/2qAHAw0FsS1dqc+YG9O
 O/NA==
X-Gm-Message-State: AOAM532Bo18iaLT2AcFGWWphHRnuntpRpRmWX+C+hdERmpdfvnqdBttl
 2MTBQq8s4NU0Ncigbm5X9Bv7fPuW4XSqli0xKMA=
X-Google-Smtp-Source: ABdhPJx/+fXCAkRo8jFKYAAprplG8ODTdsX5WjBSPjVHxSu+A3bwfoRtMhLAno/XhW50ewUfUeqGFYt1lePWxGfuVS8=
X-Received: by 2002:a05:620a:919:: with SMTP id
 v25mr8405704qkv.327.1624013662065; 
 Fri, 18 Jun 2021 03:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210618083117.158081-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210618083117.158081-1-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 18 Jun 2021 11:53:55 +0100
Message-ID: <CAM0jSHMLmWGfVQEZu9R__SGsAAjfPMSOHxgyXf8veYVxOOa8Mw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix incorrect assumptions
 about ttm_bo_validate() semantics
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

T24gRnJpLCAxOCBKdW4gMjAyMSBhdCAwOTozMSwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFdlIGhhdmUgYXNzdW1lZCB0aGF0
IGlmIHRoZSBjdXJyZW50IHBsYWNlbWVudCB3YXMgbm90IHRoZSByZXF1ZXN0ZWQKPiBwbGFjZW1l
bnQsIGJ1dCBpbnN0ZWFkIG9uZSBvZiB0aGUgYnVzeSBwbGFjZW1lbnRzLCBhIFRUTSBtb3ZlIHdv
dWxkIGhhdmUKPiBiZWVuIHRyaWdnZXJlZC4gVGhhdCBpcyBub3QgdGhlIGNhc2UuCj4KPiBTbyB3
aGVuIHdlIGluaXRpYWxseSBwbGFjZSBMTUVNIG9iamVjdHMgaW4gIkxpbWJvIiwgKHRoYXQgaXMg
c3lzdGVtCj4gcGxhY2VtZW50IHdpdGhvdXQgYW55IHBhZ2VzIGFsbG9jYXRlZCksIHRvIGJlIGFi
bGUgdG8gZGVmZXIgY2xlYXJpbmcKPiBvYmplY3RzIHVudGlsIGZpcnN0IGdldF9wYWdlcygpLCB0
aGUgZmlyc3QgZ2V0X3BhZ2VzKCkgd291bGQgaGFwcGlseSBrZWVwCj4gb2JqZWN0cyBpbiBzeXN0
ZW0gbWVtb3J5IGlmIHRoYXQgaXMgb25lIG9mIHRoZSBhbGxvd2VkIHBsYWNlbWVudHMuIEFuZAo+
IHNpbmNlIHdlIGRvbid0IHlldCBzdXBwb3J0IGk5MTUgR0VNIHN5c3RlbSBtZW1vcnkgZnJvbSBU
VE0sIGV2ZXJ5dGhpbmcKPiBicmVha3MgYXBhcnQuCj4KPiBTbyBtYWtlIHN1cmUgd2UgdHJ5IHRo
ZSByZXF1ZXN0ZWQgcGxhY2VtZW50IGZpcnN0LCBpZiBubyBldmljdGlvbiBpcwo+IG5lZWRlZC4g
SWYgdGhhdCBmYWlscywgcmV0cnkgd2l0aCBhbGwgYWxsb3dlZCBwbGFjZW1lbnRzIGFsc28gYWxs
b3dpbmcKPiBldmljdGlvbnMuIEFsc28gbWFrZSBzdXJlIHdlIGhhbmRsZSBUVE0gZmFpbHVyZSBj
b2RlcyBjb3JyZWN0bHkuCj4KPiBBbHNvIHRlbXBvcmFyaWx5ICh1bnRpbCB3ZSBzdXBwb3J0IGk5
MTUgR0VNIHN5c3RlbSBvbiBUVE0pLCByZXN0cmljdAo+IGFsbG93ZWQgcGxhY2VtZW50cyB0byB0
aGUgcmVxdWVzdGVkIHBsYWNlbWVudCB0byBhdm9pZCB0aGluZ3MgZmFsbGluZwo+IGFwYXJ0IHNo
b3VsZCBMTUVNIGJlIGZ1bGwuCj4KPiBGaXhlczogMzhmMjhjMDY5NWMwICgiZHJtL2k5MTUvdHRt
OiBDYWxjdWxhdGUgdGhlIG9iamVjdCBwbGFjZW1lbnQgYXQgZ2V0X3BhZ2VzIHRpbWUpCj4gU2ln
bmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMg
fCA2MSArKysrKysrKysrKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90dG0uYwo+IGluZGV4IGRmNDY1MzVjY2E0Ny4uNGJiMDQ0MGY2OTNjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+IEBAIC02NCw2ICs2NCwzMCBAQCBz
dGF0aWMgc3RydWN0IHR0bV9wbGFjZW1lbnQgaTkxNV9zeXNfcGxhY2VtZW50ID0gewo+ICAgICAg
ICAgLmJ1c3lfcGxhY2VtZW50ID0gJnN5c19wbGFjZW1lbnRfZmxhZ3MsCj4gIH07Cj4KPiArc3Rh
dGljIGludCBpOTE1X3R0bV9lcnJfdG9fZ2VtKGludCBlcnIpCj4gK3sKPiArICAgICAgIC8qIEZh
c3RwYXRoICovCj4gKyAgICAgICBpZiAobGlrZWx5KCFlcnIpKQo+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gMDsKPiArCj4gKyAgICAgICBzd2l0Y2ggKGVycikgewo+ICsgICAgICAgY2FzZSAtRUJV
U1k6Cj4gKyAgICAgICAgICAgICAgIC8qCj4gKyAgICAgICAgICAgICAgICAqIFRUTSBsaWtlcyB0
byBjb252ZXJ0IC1FREVBRExLIHRvIC1FQlVTWSwgYW5kIHdhbnRzIHVzIHRvCj4gKyAgICAgICAg
ICAgICAgICAqIHJlc3RhcnQgdGhlIG9wZXJhdGlvbiwgc2luY2Ugd2UgZG9uJ3QgcmVjb3JkIHRo
ZSBjb250ZW5kaW5nCj4gKyAgICAgICAgICAgICAgICAqIGxvY2suIFdlIHVzZSAtRUFHQUlOIHRv
IHJlc3RhcnQuCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICByZXR1cm4g
LUVBR0FJTjsKPiArICAgICAgIGNhc2UgLUVOT1NQQzoKPiArICAgICAgICAgICAgICAgLyogTWVt
b3J5IHR5cGUgLyByZWdpb24gaXMgZnVsbCwgYW5kIHdlIGNhbid0IGV2aWN0LiAqLwo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gLUVOWElPOwoKdHRtIHN5c3RlbSB3aWxsIHJldHVybiAtRU5PTUVN
IHJpZ2h0PwoKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KCj4gKyAgICAgICBkZWZhdWx0Ogo+ICsgICAgICAgICAgICAgICBicmVhazsKPiArICAgICAg
IH0KPiArCj4gKyAgICAgICByZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBpOTE1
X3R0bV9hZGp1c3RfbHJ1KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+Cj4gIHN0
YXRpYyBlbnVtIHR0bV9jYWNoaW5nCj4gQEAgLTUyMiwxNSArNTQ2LDQ2IEBAIHN0YXRpYyBpbnQg
aTkxNV90dG1fZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gICAg
ICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnN0Owo+ICAgICAgICAgc3RydWN0IHR0bV9wbGFjZSByZXF1
ZXN0ZWQsIGJ1c3lbSTkxNV9UVE1fTUFYX1BMQUNFTUVOVFNdOwo+ICAgICAgICAgc3RydWN0IHR0
bV9wbGFjZW1lbnQgcGxhY2VtZW50Owo+ICsgICAgICAgaW50IHJlYWxfbnVtX2J1c3k7Cj4gICAg
ICAgICBpbnQgcmV0Owo+Cj4gICAgICAgICBHRU1fQlVHX09OKG9iai0+bW0ubl9wbGFjZW1lbnRz
ID4gSTkxNV9UVE1fTUFYX1BMQUNFTUVOVFMpOwo+Cj4gICAgICAgICAvKiBNb3ZlIHRvIHRoZSBy
ZXF1ZXN0ZWQgcGxhY2VtZW50LiAqLwo+ICAgICAgICAgaTkxNV90dG1fcGxhY2VtZW50X2Zyb21f
b2JqKG9iaiwgJnJlcXVlc3RlZCwgYnVzeSwgJnBsYWNlbWVudCk7Cj4gKwo+ICsgICAgICAgLyoK
PiArICAgICAgICAqIEZvciBub3cgd2Ugc3VwcG9ydCBMTUVNIG9ubHkgd2l0aCBUVE0uCj4gKyAg
ICAgICAgKiBUT0RPOiBSZW1vdmUgd2l0aCBzeXN0ZW0gc3VwcG9ydAo+ICsgICAgICAgICovCj4g
KyAgICAgICBHRU1fQlVHX09OKHJlcXVlc3RlZC5tZW1fdHlwZSA8IEk5MTVfUExfTE1FTTAgfHwK
PiArICAgICAgICAgICAgICAgICAgYnVzeVswXS5tZW1fdHlwZSA8IEk5MTVfUExfTE1FTTApOwo+
ICsKPiArICAgICAgIC8qIEZpcnN0IHRyeSBvbmx5IHRoZSByZXF1ZXN0ZWQgcGxhY2VtZW50LiBO
byBldmljdGlvbi4gKi8KPiArICAgICAgIHJlYWxfbnVtX2J1c3kgPSBmZXRjaF9hbmRfemVybygm
cGxhY2VtZW50Lm51bV9idXN5X3BsYWNlbWVudCk7Cj4gICAgICAgICByZXQgPSB0dG1fYm9fdmFs
aWRhdGUoYm8sICZwbGFjZW1lbnQsICZjdHgpOwo+IC0gICAgICAgaWYgKHJldCkKPiAtICAgICAg
ICAgICAgICAgcmV0dXJuIHJldCA9PSAtRU5PU1BDID8gLUVOWElPIDogcmV0Owo+ICsgICAgICAg
aWYgKHJldCkgewo+ICsgICAgICAgICAgICAgICByZXQgPSBpOTE1X3R0bV9lcnJfdG9fZ2VtKHJl
dCk7Cj4gKyAgICAgICAgICAgICAgIC8qCj4gKyAgICAgICAgICAgICAgICAqIEFueXRoaW5nIHRo
YXQgd2FudHMgdG8gcmVzdGFydCB0aGUgb3BlcmF0aW9uIGdldHMgdG8KPiArICAgICAgICAgICAg
ICAgICogZG8gdGhhdC4KPiArICAgICAgICAgICAgICAgICovCj4gKyAgICAgICAgICAgICAgIGlm
IChyZXQgPT0gLUVERUFETEsgfHwgcmV0ID09IC1FSU5UUiB8fCByZXQgPT0gLUVSRVNUQVJUU1lT
IHx8Cj4gKyAgICAgICAgICAgICAgICAgICByZXQgPT0gLUVBR0FJTikKPiArICAgICAgICAgICAg
ICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsKPiArICAgICAgICAgICAgICAgLyogVE9ETzogUmVt
b3ZlIHRoaXMgd2hlbiB3ZSBzdXBwb3J0IHN5c3RlbSBhcyBUVE0uICovCj4gKyAgICAgICAgICAg
ICAgIHJlYWxfbnVtX2J1c3kgPSAxOwo+ICsKPiArICAgICAgICAgICAgICAgLyoKPiArICAgICAg
ICAgICAgICAgICogSWYgdGhlIGluaXRpYWwgYXR0ZW1wdCBmYWlscywgYWxsb3cgYWxsIGFjY2Vw
dGVkIHBsYWNlbWVudHMsCj4gKyAgICAgICAgICAgICAgICAqIGV2aWN0aW5nIGlmIG5lY2Vzc2Fy
eS4KPiArICAgICAgICAgICAgICAgICovCj4gKyAgICAgICAgICAgICAgIHBsYWNlbWVudC5udW1f
YnVzeV9wbGFjZW1lbnQgPSByZWFsX251bV9idXN5Owo+ICsgICAgICAgICAgICAgICByZXQgPSB0
dG1fYm9fdmFsaWRhdGUoYm8sICZwbGFjZW1lbnQsICZjdHgpOwo+ICsgICAgICAgICAgICAgICBp
ZiAocmV0KQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBpOTE1X3R0bV9lcnJfdG9f
Z2VtKHJldCk7Cj4gKyAgICAgICB9Cj4KPiAgICAgICAgIC8qIE9iamVjdCBlaXRoZXIgaGFzIGEg
cGFnZSB2ZWN0b3Igb3IgaXMgYW4gaW9tZW0gb2JqZWN0ICovCj4gICAgICAgICBzdCA9IGJvLT50
dG0gPyBpOTE1X3R0bV90dF9nZXRfc3QoYm8tPnR0bSkgOiBvYmotPnR0bS5jYWNoZWRfaW9fc3Q7
Cj4gQEAgLTc0MSw1ICs3OTYsNSBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQoc3Ry
dWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiAgICAgICAgICAgICAgICAgb2JqLT50dG0u
Y3JlYXRlZCA9IHRydWU7Cj4KPiAgICAgICAgIC8qIGk5MTUgd2FudHMgLUVOWElPIHdoZW4gb3V0
IG9mIG1lbW9yeSByZWdpb24gc3BhY2UuICovCj4gLSAgICAgICByZXR1cm4gKHJldCA9PSAtRU5P
U1BDKSA/IC1FTlhJTyA6IHJldDsKPiArICAgICAgIHJldHVybiBpOTE1X3R0bV9lcnJfdG9fZ2Vt
KHJldCk7Cj4gIH0KPiAtLQo+IDIuMzEuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
