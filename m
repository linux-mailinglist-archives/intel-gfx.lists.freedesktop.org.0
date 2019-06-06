Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF7037DD8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 22:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5772E89203;
	Thu,  6 Jun 2019 20:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C5DE89203
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 20:10:53 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id b17so2613981wrq.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Jun 2019 13:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0HqrD3F8jS6f+XLiFv0TcNsoEVzoko+l9RpJfiwKmX4=;
 b=r16HyZmdHt0pi8leFd3hc2Ar/c6Uh/+bAF9SFoFDVptSZu/e9CF9Q+GOazsGGwhWlJ
 YNFio72si+6lb71oKfXT64Bh5c+qh9ZYEqGcea1lGQABWCl55iTN/4xI6/3l1dT/FsiR
 JQLOjAAHn3sbEWy/e7soJsNju9AFR+kl4aakDJJDdMPE7d25rPZm73hHLRg24KDdV0bm
 pL2V2l1LDdAjvsEs8650EESsAxyXBhEKk7oEOQgW+5pyH5zY92A60AFFmA6dAC7jwvQ4
 gMivAKBHwNPpoC1YbnHf3Q0m7G3SyJoeZWg5uy/VqFX8vVpCdqSLNLk0uD4i+SUXyP25
 M6DQ==
X-Gm-Message-State: APjAAAWe/S9guJbwDzwiCbQltfTscdQaEs5n1jPK6d/Inc3oNR2tzEh3
 yKNoEz5NO+bvmrkDTbj8FOLkzpMkE1Qsf6ikkVg=
X-Google-Smtp-Source: APXvYqyh8UhrlXWOdEpKZdhlVC5RPtyuXpprLWZRicoNLx7cSl0Z9UBsEnS2FFODUGio2gXigWFQZUOfyWbSyd83Ckw=
X-Received: by 2002:a5d:404a:: with SMTP id w10mr12965107wrp.177.1559851851954; 
 Thu, 06 Jun 2019 13:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190530234014.22340-1-matthew.d.roper@intel.com>
In-Reply-To: <20190530234014.22340-1-matthew.d.roper@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 6 Jun 2019 13:10:40 -0700
Message-ID: <CAKi4VAKVbVeOnm7pe7um9fTkGvYP422dGqajzDAP1b=iXcFdfA@mail.gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=0HqrD3F8jS6f+XLiFv0TcNsoEVzoko+l9RpJfiwKmX4=;
 b=vMA45wtmZIdFo+V4N85EGYzkd/VvTsaGyeILAUaO5HxcNNvfwC4pgv0i+ZYz/MZ+zt
 FuqgJDB0fJ22k2JTHv7Ok8unl61bvLJJbkjFK9ECIPGZWA85B18e4XXQnYxVQM5RlPPP
 PSwrwpc9iBrigXJDn6mD1TCTcxZkO0brHfRkiI6GSWOkGJ9B7Q4h5Swo9hqQ4llKeSZ3
 oWcnThAjpqfXcM8oxjOQ7IM5kOU0IiyDA8gPvPmA3nZbedHRWtGIiFzUzUq2vh4Tn0yN
 Bc+WFCvjIuwlYXygSN/+X/GkZ4QEOR8lxoKHi5ywRSPKLFTMmxAk//238HRRrRqJ+Xqq
 kisQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgNDo0MCBQTSBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPiB3cm90ZToKPgo+IEVITCBkZWZpbmVzIHR3byBuZXcgTU9DUyB0YWJsZSBl
bnRyaWVzIGJ1dCBpcyBvdGhlcndpc2UgY29tcGF0aWJsZSB3aXRoCj4gdGhlIElDTCBNT0NTIHRh
YmxlLgo+Cj4gVGhlc2UgdGFibGUgZW50cmllcyAoMTYgYW5kIDE3KSBzaG91bGQgc3RpbGwgYmUg
Y29uc2lkZXJlZCB1bnVzZWQgZm9yCj4gSUNMIGFuZCBhcyBzdWNoIHRoZWlyIGJlaGF2aW9yIHJl
bWFpbnMgdW5kZWZpbmVkIGZvciB0aGF0IHBsYXRmb3JtLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgOCArKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gaW5k
ZXggNzlkZjY2MDIyZDNhLi4xZjlkYjUwYjE4NjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jCj4gQEAgLTIwMCw2ICsyMDAsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9tb2NzX2VudHJ5IGJyb3h0b25fbW9jc190YWJsZVtdID0gewo+ICAgICAgICAgTU9D
U19FTlRSWSgxNSwgXAo+ICAgICAgICAgICAgICAgICAgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMg
fCBMRV9MUlVNKDIpIHwgTEVfQU9NKDEpLCBcCj4gICAgICAgICAgICAgICAgICAgIEwzXzNfV0Ip
LCBcCj4gKyAgICAgICAvKiBCeXBhc3MgTExDIC0gVW5jYWNoZWQgKEVITCspICovIFwKPiArICAg
ICAgIE1PQ1NfRU5UUlkoMTYsIFwKPiArICAgICAgICAgICAgICAgICAgTEVfMV9VQyB8IExFX1RD
XzFfTExDIHwgTEVfU0NGKDEpLCBcCj4gKyAgICAgICAgICAgICAgICAgIEwzXzFfVUMpLCBcCj4g
KyAgICAgICAvKiBCeXBhc3MgTExDIC0gTDMgKFJlYWQtT25seSkgKEVITCspICovIFwKPiArICAg
ICAgIE1PQ1NfRU5UUlkoMTcsIFwKPiArICAgICAgICAgICAgICAgICAgTEVfMV9VQyB8IExFX1RD
XzFfTExDIHwgTEVfU0NGKDEpLCBcCj4gKyAgICAgICAgICAgICAgICAgIEwzXzNfV0IpLCBcCj4g
ICAgICAgICAvKiBTZWxmLVNub29wIC0gTDMgKyBMTEMgKi8gXAo+ICAgICAgICAgTU9DU19FTlRS
WSgxOCwgXAo+ICAgICAgICAgICAgICAgICAgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9M
UlVNKDMpIHwgTEVfU1NFKDMpLCBcCj4gLS0KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoKPiAyLjE0LjUKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCgot
LSAKTHVjYXMgRGUgTWFyY2hpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
