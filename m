Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DABE3C5DB9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 15:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B268D89C16;
	Mon, 12 Jul 2021 13:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DBBB6E9E9;
 Fri,  9 Jul 2021 08:48:36 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id i8so11060118wrp.12;
 Fri, 09 Jul 2021 01:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=IZL0RVebz80UhYvt3lSs/13NdKZ7rvbA0Dgs8MSvPlE=;
 b=RT+nT75XXn1A6UM9rOVB6Kz2RVgz3n5U0CvgOh0rOu+q6OA0i00dY6wIZBxyRgqsCc
 B5qFXe+9g5Xa8l8Pf1uDWOd/Zpm2m2UpVtYU3k+zeb+rLwH7yvuPWWpHYnqlmKC7NyEO
 5nicIm7miH2DS4TY4k0B6y5aHI/G06AxjUQAsHN64noXhXhGKBK6l4SU/Yvkoq2AywNq
 f0IJ+/F4NCJlyDifd2ZJtb9Zt/owkE4DIneghpIzq6qs6MiXgiUlxjvdjCO8AyjIvEN/
 7aFMK0pgLmDceWNgQCI2AkEUuPBX0gf51Tf+Eq7a8XrTEevBP3zgZ3PWZ8e59p+Lbxon
 7O5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=IZL0RVebz80UhYvt3lSs/13NdKZ7rvbA0Dgs8MSvPlE=;
 b=A7UWGKo+kLtJmQzhD88E2xwz3cU/D8xX2Ow/dB7jUy33Jx+mrZ4wB/mHwqDNV2tzCT
 ewrNLvkf2IByexEGQJvoeH1RoWiBV9s1f1slgE+ktKHwHdw/sOZ2rmpEeVdFgRLfxlfi
 gGOgDkQFayzX7rKx8/ex4B1uGijCsFoBBMmg1Fcyd/qS2zacKdDxVCGazt4xsdcwRxl2
 ju3l37DHZ0kkoZ2KaJIgkgFfP/+yrriStWxtqn4DG2//pKC+K5r2qQSg1Mz+nMgnBbya
 WBeGElrE7q7RCk4cBsuVU+/ZxNMiZwHobbWdyjlzsm+G+3nn5+Q5avOYMduiIdm129S6
 j3Gw==
X-Gm-Message-State: AOAM530N18OhHBOXH3wTARmrqwRtSHkJzJAC20bcSg6BnYIsMHiq/4Cv
 wu4Pci/bINwOC1LLtxy9vn80NT/68AA=
X-Google-Smtp-Source: ABdhPJw4mHIMxmdUHqgbxfgmtWlqsE/jVJZcU3x3yckdnN/So3mD/rTfyth1ESMDLG3RizM9EnUchQ==
X-Received: by 2002:a5d:48c6:: with SMTP id p6mr39867826wrs.45.1625820515276; 
 Fri, 09 Jul 2021 01:48:35 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:3da0:55de:64af:96f9?
 ([2a02:908:1252:fb60:3da0:55de:64af:96f9])
 by smtp.gmail.com with ESMTPSA id s7sm4623429wrp.97.2021.07.09.01.48.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Jul 2021 01:48:34 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-17-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <2582129c-b0c3-831c-a3b4-caa51be95095@gmail.com>
Date: Fri, 9 Jul 2021 10:48:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708173754.3877540-17-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 12 Jul 2021 13:49:54 +0000
Subject: Re: [Intel-gfx] [PATCH v3 16/20] drm/msm: always wait for the
 exclusive fence
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
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMDguMDcuMjEgdW0gMTk6Mzcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IEZyb206IENocmlz
dGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPgo+Cj4gRHJpdmVy
cyBhbHNvIG5lZWQgdG8gdG8gc3luYyB0byB0aGUgZXhjbHVzaXZlIGZlbmNlIHdoZW4KPiBhIHNo
YXJlZCBvbmUgaXMgcHJlc2VudC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBbZGFudmV0OiBOb3QgdGhhdCBoYXJkIHRvIGNv
bXBpbGUtdGVzdCBvbiBhcm0gLi4uXQo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNv
bT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gQ2M6IGxpbnV4LWFybS1tc21A
dmdlci5rZXJuZWwub3JnCj4gQ2M6IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcKCldv
bmRlcmluZyBhIGJpdCB3aHkgeW91IGhhdmUgdGhhdCBpbiB0aGlzIHBhdGNoIHNldCBub3cuCgpC
dXQgYW55IG9iamVjdGlvbnMgdGhhdCB3ZSBwdXNoIHRoaXMgbm93PwoKVGhhbmtzLApDaHJpc3Rp
YW4uCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgfCAxNiArKysrKysr
LS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKPiBpbmRleCAxNDExNzg3NTQyMzEuLmQ5YzRmMWRl
ZWFmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCj4gQEAgLTgxMiwxNyArODEyLDE1IEBAIGlu
dCBtc21fZ2VtX3N5bmNfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAo+ICAgCXN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+ICAgCWludCBpLCByZXQ7Cj4gICAKPiAtCWZvYmogPSBk
bWFfcmVzdl9zaGFyZWRfbGlzdChvYmotPnJlc3YpOwo+IC0JaWYgKCFmb2JqIHx8IChmb2JqLT5z
aGFyZWRfY291bnQgPT0gMCkpIHsKPiAtCQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2Jq
LT5yZXN2KTsKPiAtCQkvKiBkb24ndCBuZWVkIHRvIHdhaXQgb24gb3VyIG93biBmZW5jZXMsIHNp
bmNlIHJpbmcgaXMgZmlmbyAqLwo+IC0JCWlmIChmZW5jZSAmJiAoZmVuY2UtPmNvbnRleHQgIT0g
ZmN0eC0+Y29udGV4dCkpIHsKPiAtCQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIHRydWUp
Owo+IC0JCQlpZiAocmV0KQo+IC0JCQkJcmV0dXJuIHJldDsKPiAtCQl9Cj4gKwlmZW5jZSA9IGRt
YV9yZXN2X2V4Y2xfZmVuY2Uob2JqLT5yZXN2KTsKPiArCS8qIGRvbid0IG5lZWQgdG8gd2FpdCBv
biBvdXIgb3duIGZlbmNlcywgc2luY2UgcmluZyBpcyBmaWZvICovCj4gKwlpZiAoZmVuY2UgJiYg
KGZlbmNlLT5jb250ZXh0ICE9IGZjdHgtPmNvbnRleHQpKSB7Cj4gKwkJcmV0ID0gZG1hX2ZlbmNl
X3dhaXQoZmVuY2UsIHRydWUpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gICAJ
fQo+ICAgCj4gKwlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5yZXN2KTsKPiAgIAlp
ZiAoIWV4Y2x1c2l2ZSB8fCAhZm9iaikKPiAgIAkJcmV0dXJuIDA7Cj4gICAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
