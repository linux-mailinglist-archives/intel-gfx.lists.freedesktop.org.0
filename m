Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADBD35E92
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 16:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1381689AA7;
	Wed,  5 Jun 2019 14:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F5E489AA7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 14:03:31 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id p24so4256664vki.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Jun 2019 07:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TLmHEmuhNOiH44r6XD6VrVXAhNeJIhMVjdcW/w5DACg=;
 b=QWomg6Bj9qj/Jr699xFtR3rDUNLz/ntabhIj5XIe+4Gy8DgnAgSXyGM2mZmXmVlq6A
 ERiPbXrS10BldIA4o8GumyG4tTJClcrvRQUFrBTC3FOIv5iycJWGT9YLK+8o4fDDbw+f
 2K197JILz5SoDslkCYArJAX6OmJYx4aswjPOOhL47B3RMemk5px+/E/nwdmXDgMIlyjv
 mgObGy51bO1AfdqPwoYEJ6Ag5huOgoLTFdtvg8oz37F1T7bMf/t5aWCTU+lTf2aM+fDd
 OpwMwSonFGJqrjcq7TPLwrLZTJ3xY7BajXxw32xXBSi3VocYkj83KGOHnP2sVXQvxSdm
 +KVA==
X-Gm-Message-State: APjAAAUF4G6t7+oZTLtnQy4wFnIJKVQ9rtmwkwxTaTehHHlOyqDkJqJm
 Dalt6OnLiz+EjMlmts6NWBuo1YFOt9QkCbL4HX2sxPudNgA=
X-Google-Smtp-Source: APXvYqxSOruGVDv/Rdb7eHaKIjDw8w6uL3I7nzXkaL3SHHY4CjZFkTeazVEgrhMHGQ7FKtSF/H58EqtzA0fzK93qvcA=
X-Received: by 2002:ac5:c7bb:: with SMTP id d27mr14887708vkn.79.1559743409970; 
 Wed, 05 Jun 2019 07:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190603174935.23982-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 5 Jun 2019 15:03:03 +0100
Message-ID: <CAM0jSHOs9NQpn6njScJv4UVLOxMRE5_KtnabrWXvNZHEtSwf6w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=TLmHEmuhNOiH44r6XD6VrVXAhNeJIhMVjdcW/w5DACg=;
 b=tkvkz02umyiUojeHseAQKpRXxsc9QB4x2+9pV4rfWigZwCRppYdNhpvM35+Bo6iLOD
 5OB7WbX3y5Lx85VbLCm8bf8bUeZ9UCqhEE8PzB0a/3ZiCMLvtxhzYVAi/Slwf+IVEoB4
 F28uGiWQYcQ5a8HT/BJG3R1L91ZdVo7HKxdX+4MWNEmrPSrvEb+Vuz87RJ0rS2rORFq2
 6qaqfcmfxBEH9Vb6/5yiku4ByDewRF4CeMhy+Dsk+luTnqmvqWyHPoDHms6hoTn0Zghi
 CmADK25UGURhwL0Aq0IXuS0vs3QPUUTIhnEWZmdpIwCmcgYIaVcBl0CFN6VNvtrnz/70
 W5gA==
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Allow page pinning to be in
 the background
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

T24gTW9uLCAzIEp1biAyMDE5IGF0IDE4OjQ5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBBc3N1bWUgdGhhdCBwYWdlcyBtYXkgYmUgcGlubmVkIGlu
IGEgYmFja2dyb3VuZCB0YXNrIGFuZCB1c2UgYQo+IGNvbXBsZXRpb24gZXZlbnQgdG8gc3luY2hy
b25pc2Ugd2l0aCBjYWxsZXJzIHRoYXQgbXVzdCBhY2Nlc3MgdGhlIHBhZ2VzCj4gaW1tZWRpYXRl
bHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
ICAgIHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0Lmgg
ICAgfCAgNyArLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmggIHwgIDMgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMg
ICAgIHwgNTMgKysrKysrKysrKysrKysrLS0tLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDUyIGluc2Vy
dGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuYwo+IGluZGV4IDI3MDJlMDYwMTAyZS4uMmM1YTAyMjc0MTcwIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+IEBAIC03OSw2
ICs3OSw3IEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXQoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKPiAgICAgICAgIG9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9XSUxMTkVFRDsK
PiAgICAgICAgIElOSVRfUkFESVhfVFJFRSgmb2JqLT5tbS5nZXRfcGFnZS5yYWRpeCwgR0ZQX0tF
Uk5FTCB8IF9fR0ZQX05PV0FSTik7Cj4gICAgICAgICBtdXRleF9pbml0KCZvYmotPm1tLmdldF9w
YWdlLmxvY2spOwo+ICsgICAgICAgaW5pdF9jb21wbGV0aW9uKCZvYmotPm1tLmNvbXBsZXRpb24p
Owo+ICB9Cj4KPiAgLyoqCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuaAo+IGluZGV4IDdjYjE4NzFkNzEyOC4uMTk0ZTRmYjZhMjU5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAo+IEBAIC0yNDAsNyArMjQwLDcgQEAg
aW50IF9fX19pOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopOwo+ICBpbnQgX19pOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzKHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+Cj4gIHN0YXRpYyBpbmxpbmUgaW50IF9fbXVzdF9jaGVj
awo+IC1pOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmopCj4gK2k5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfYXN5bmMoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKPiAgewo+ICAgICAgICAgbWlnaHRfbG9jaygmb2JqLT5tbS5sb2Nr
KTsKPgo+IEBAIC0yNTAsNiArMjUwLDkgQEAgaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICAgICAgICAgcmV0dXJuIF9faTkxNV9nZW1f
b2JqZWN0X2dldF9wYWdlcyhvYmopOwo+ICB9Cj4KPiAraW50IF9fbXVzdF9jaGVjawo+ICtpOTE1
X2dlbV9vYmplY3RfcGluX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+
ICsKPiAgc3RhdGljIGlubGluZSBib29sCj4gIGk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiAgewo+IEBAIC0yNzMsOSArMjc2LDcgQEAg
aTkxNV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKPiAgc3RhdGljIGlubGluZSB2b2lkCj4gIF9faTkxNV9nZW1fb2JqZWN0X3VucGlu
X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gIHsKPiAtICAgICAgIEdF
TV9CVUdfT04oIWk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2JqKSk7Cj4gICAgICAgICBHRU1f
QlVHX09OKCFpOTE1X2dlbV9vYmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKTsKPiAtCj4gICAg
ICAgICBhdG9taWNfZGVjKCZvYmotPm1tLnBhZ2VzX3Bpbl9jb3VudCk7Cj4gIH0KPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiBpbmRl
eCA0MWQyZTdjOGUzMzIuLjYxNWE1OWI5MjdkNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiBAQCAtNyw2ICs3LDcgQEAKPiAg
I2lmbmRlZiBfX0k5MTVfR0VNX09CSkVDVF9UWVBFU19IX18KPiAgI2RlZmluZSBfX0k5MTVfR0VN
X09CSkVDVF9UWVBFU19IX18KPgo+ICsjaW5jbHVkZSA8bGludXgvY29tcGxldGlvbi5oPgo+ICAj
aW5jbHVkZSA8bGludXgvcmVzZXJ2YXRpb24uaD4KPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9nZW0u
aD4KPiBAQCAtMjExLDYgKzIxMiw4IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKPiAg
ICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgICAgIHN0cnVjdCBsaXN0X2hlYWQgbGlu
azsKPgo+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgY29tcGxldGlvbiBjb21wbGV0aW9uOwo+ICsK
PiAgICAgICAgICAgICAgICAgLyoqCj4gICAgICAgICAgICAgICAgICAqIEFkdmljZTogYXJlIHRo
ZSBiYWNraW5nIHBhZ2VzIHB1cmdlYWJsZT8KPiAgICAgICAgICAgICAgICAgICovCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKPiBpbmRleCA3ODY4ZGQ0OGQ5MzEu
LjY4MjYyMjMxZjU2ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcGFnZXMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
YWdlcy5jCj4gQEAgLTcyLDIxICs3MiwxOCBAQCB2b2lkIF9faTkxNV9nZW1fb2JqZWN0X3NldF9w
YWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+Cj4gICAgICAgICAgICAgICAg
IHNwaW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7Cj4gICAgICAgICB9Cj4gKwo+ICsgICAg
ICAgY29tcGxldGVfYWxsKCZvYmotPm1tLmNvbXBsZXRpb24pOwo+ICB9CgpXb3J0aCBoYXZpbmcg
IF9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlc19lcnJvcihzdHJ1Y3QKZHJtX2k5MTVfZ2VtX29i
amVjdCwgaW50IGVycikgYXQgc29tZSBwb2ludD8KClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
