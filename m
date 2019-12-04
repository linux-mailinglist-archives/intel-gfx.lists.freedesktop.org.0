Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16682113045
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 17:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AC66E8F2;
	Wed,  4 Dec 2019 16:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 706CA6E8F2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 16:52:40 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id a13so40832uaq.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 08:52:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mTiooPwvLzc3Q4/TD1ei+qa5lyheVzZV4PgjG2Xg9U8=;
 b=RWW9V3BinsSSpDKsjokhpF8OyyW90QrqRJBufHAOFeunKDqrg+milWLiYokkBjIXz4
 +p6zhUIhbaWvok4lp7AnnpIriyEFLLeyXQzq1nXxFuoR2aCQQjGy1mMEXNh8AIlA60ua
 43sjDW+CaleI2lvsxjFwIkFE5EJLvvB9Q/2vF/VE8SO9K2nrZgZxU4CrNesko3lTy/P9
 N6kb785dpyrhdH+c37K2C4tSJcMahtv9U98o+dRcpzmHAS935X0dVBhH9RrxZfszDsaF
 UnmS5mdLYCefNu/dCdqLk4jjINq2UD4JeqkwRwsCBOPquUZ9RCOupta5l8Hj9guRIAF5
 R3JQ==
X-Gm-Message-State: APjAAAVssHeME6jGLRyXrtfJMEbmD266trd7y3raQbGgZFUMm6eLVoD1
 O58Cvz1Mq49+LEs20KXzZbHrxEUd0Uuku1utwSk=
X-Google-Smtp-Source: APXvYqwAuu15JJK1xlWXR7TBhi840Bp+6pAX0CnECA0/XnQnb3P1peK84e3zWHW5W1YB35qVYofajSSh/lki0NjZZp0=
X-Received: by 2002:ab0:2814:: with SMTP id w20mr3204338uap.95.1575478359278; 
 Wed, 04 Dec 2019 08:52:39 -0800 (PST)
MIME-Version: 1.0
References: <20191204162803.3841140-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204162803.3841140-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 4 Dec 2019 16:52:12 +0000
Message-ID: <CAM0jSHNa9G=wuhx8VNZ8Q2Q61jJq_hM+d-=BNxwS5BrGNHbD3Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=mTiooPwvLzc3Q4/TD1ei+qa5lyheVzZV4PgjG2Xg9U8=;
 b=XJg8gf8pHh6JV757Kw1zw6XKBKSwnPLZlhZqpfK4KaSdq7AbWQYv37VvvbpxE/17gp
 EcSiHouAS8gGkl6fOy0oagRMNC8pCExrdk9FKq0guLOI3yb6/ms6gwHQBVWjXJyzTTeQ
 415X7cb42sgxdbl+e9OKKLDRB8dWT2or5vOawdvSXMUA8QS3w4rLFP9z0ZgjVKI/RDD1
 5+h7vNCu5tlzG6UGgnUvTflNThxcg7M97pIRZzydtSO4OEUpGaPloraxNSdrOYHDdMr3
 JwL/eJuPvqAEthz/Pvdg7l+rsWW7Cpr9Qfsca8QkKMjItZl1G84YbSqay4xIRweISly7
 oJUQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Hook user-extensions upto
 MMAP_OFFSET_IOCTL
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
Cc: Chris Wilson <ickle@braswell.alporthouse.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCA0IERlYyAyMDE5IGF0IDE2OjI5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBGcm9tOiBDaHJpcyBXaWxzb24gPGlja2xlQGJyYXN3ZWxs
LmFscG9ydGhvdXNlLmNvbT4KPgo+IENhbGwgaTkxNV91c2VyX2V4dGVuc2lvbnMoKSB0byB2YWxp
ZGF0ZSB0aGUgYXJnLT5leHRlbnNpb25zIHBvaW50ZXIsIGFuZAo+IHNvIHJldHVybiBjb25zaXN0
ZW50IGVycm9yIG51bWJlcnMgZm9yIHRoZSBmdXR1cmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogQWJkaWVsIEphbnVsZ3Vl
IDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMgfCA4ICsrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmMKPiBpbmRleCAzN2FhYmJmYTg2OWEuLjNhM2YzMGJjOGFjNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+IEBAIC0xNyw2ICsxNyw3IEBACj4g
ICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3QuaCIKPiAgI2luY2x1ZGUgImk5MTVfZ2VtX21tYW4u
aCIKPiAgI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKPiArI2luY2x1ZGUgImk5MTVfdXNlcl9leHRl
bnNpb25zLmgiCj4gICNpbmNsdWRlICJpOTE1X3ZtYS5oIgo+Cj4gIHN0YXRpYyBpbmxpbmUgYm9v
bAo+IEBAIC02MTcsOSArNjE4LDEyIEBAIGk5MTVfZ2VtX21tYXBfb2Zmc2V0X2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9n
ZW1fbW1hcF9vZmZzZXQgKmFyZ3MgPSBkYXRhOwo+ICAgICAgICAgZW51bSBpOTE1X21tYXBfdHlw
ZSB0eXBlOwo+ICsgICAgICAgaW50IGVycjsKPgo+IC0gICAgICAgaWYgKGFyZ3MtPmV4dGVuc2lv
bnMpCj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsgICAgICAgZXJyID0gaTkx
NV91c2VyX2V4dGVuc2lvbnModTY0X3RvX3VzZXJfcHRyKGFyZ3MtPmV4dGVuc2lvbnMpLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCwgMCwgTlVMTCk7Cj4gKyAgICAg
ICBpZiAoZXJyKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gZXJyOwoKRG9uJ3Qgd2UgaGF2ZSB0
byBjaGVjayBnZXRfdXNlciBmaXJzdCBvbiB0aGUgcHRyPwoKPgo+ICAgICAgICAgc3dpdGNoIChh
cmdzLT5mbGFncykgewo+ICAgICAgICAgY2FzZSBJOTE1X01NQVBfT0ZGU0VUX0dUVDoKPiAtLQo+
IDIuMjQuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
