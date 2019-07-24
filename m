Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D1172A04
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 10:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A253D6E49E;
	Wed, 24 Jul 2019 08:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2EC6E49E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 08:26:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17557932-1500050 for multiple; Wed, 24 Jul 2019 09:26:08 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190724022153.8927-9-daniele.ceraolospurio@intel.com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
 <20190724022153.8927-9-daniele.ceraolospurio@intel.com>
Message-ID: <156395676679.31349.12593661282364758907@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 24 Jul 2019 09:26:06 +0100
Subject: Re: [Intel-gfx] [PATCH v2 8/8] drm/i915/uc: Unify uC firmware upload
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTI0IDAzOjIxOjUzKQo+ICtz
dGF0aWMgaW50IHVjX2Z3X3hmZXIoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGlu
dGVsX2d0ICpndCwKPiArICAgICAgICAgICAgICAgICAgICAgdTMyIHdvcGNtX29mZnNldCwgdTMy
IGRtYV9mbGFncykKPiArewo+ICsgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0g
Z3QtPnVuY29yZTsKPiArICAgICAgIHU2NCBvZmZzZXQ7Cj4gKyAgICAgICBpbnQgcmV0Owo+ICsK
PiArICAgICAgIGludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FM
TCk7Cj4gKwo+ICsgICAgICAgLyogU2V0IHRoZSBzb3VyY2UgYWRkcmVzcyBmb3IgdGhlIHVDb2Rl
ICovCj4gKyAgICAgICBvZmZzZXQgPSB1Y19md19nZ3R0X29mZnNldCh1Y19mdywgZ3QtPmdndHQp
ICsgdWNfZnctPmhlYWRlcl9vZmZzZXQ7Cj4gKyAgICAgICBHRU1fQlVHX09OKHVwcGVyXzMyX2Jp
dHMob2Zmc2V0KSAmIDB4RkZGRjAwMDApOwo+ICsgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlX2Z3
KHVuY29yZSwgRE1BX0FERFJfMF9MT1csIGxvd2VyXzMyX2JpdHMob2Zmc2V0KSk7Cj4gKyAgICAg
ICBpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBETUFfQUREUl8wX0hJR0gsIHVwcGVyXzMy
X2JpdHMob2Zmc2V0KSk7Cj4gKwo+ICsgICAgICAgLyogU2V0IHRoZSBETUEgZGVzdGluYXRpb24g
Ki8KPiArICAgICAgIGludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIERNQV9BRERSXzFfTE9X
LCB3b3BjbV9vZmZzZXQpOwo+ICsgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwg
RE1BX0FERFJfMV9ISUdILCBETUFfQUREUkVTU19TUEFDRV9XT1BDTSk7Cj4gKwo+ICsgICAgICAg
LyoKPiArICAgICAgICAqIFNldCB0aGUgdHJhbnNmZXIgc2l6ZS4gVGhlIGhlYWRlciBwbHVzIHVD
b2RlIHdpbGwgYmUgY29waWVkIHRvIFdPUENNCj4gKyAgICAgICAgKiB2aWEgRE1BLCBleGNsdWRp
bmcgYW55IG90aGVyIGNvbXBvbmVudHMKPiArICAgICAgICAqLwo+ICsgICAgICAgaW50ZWxfdW5j
b3JlX3dyaXRlX2Z3KHVuY29yZSwgRE1BX0NPUFlfU0laRSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1Y19mdy0+aGVhZGVyX3NpemUgKyB1Y19mdy0+dWNvZGVfc2l6ZSk7Cj4gKwo+
ICsgICAgICAgLyogU3RhcnQgdGhlIERNQSAqLwo+ICsgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRl
X2Z3KHVuY29yZSwgRE1BX0NUUkwsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX01B
U0tFRF9CSVRfRU5BQkxFKGRtYV9mbGFncyB8IFNUQVJUX0RNQSkpOwo+ICsKPiArICAgICAgIC8q
IFdhaXQgZm9yIERNQSB0byBmaW5pc2ggKi8KPiArICAgICAgIHJldCA9IGludGVsX3dhaXRfZm9y
X3JlZ2lzdGVyX2Z3KHVuY29yZSwgRE1BX0NUUkwsIFNUQVJUX0RNQSwgMCwgMTAwKTsKPiArICAg
ICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIERSTV9FUlJPUigiRE1BIGZvciAlcyBmdyBm
YWlsZWQsIGVycj0lZFxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX3VjX2Z3
X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksIHJldCk7CgpOb3RlIHRoZSBlcnJubyB3aWxsIG5ldmVy
IGJlIHRoYXQgaW50ZXJlc3RpbmcgaGVyZSwgaXQncyBhIHdhaXQuIEkgd291bGQKc3VnZ2VzdCBp
bmNsdWRpbmcgRE1BX0NUTCBhcyB0aGF0IGxvb2tzIGxpa2UgaXQgY29udGFpbnMgc3RhdHVzIGJp
dHMgYXMKd2VsbCBhcyBjb250cm9sLgoKQW5kIGxldCdzIG5vdGUgdXNlIERSTV9FUlJPUigpIGlm
IHdlIGNhbiBoZWxwIGl0LCBhbmQgdXNlIGRldl9lcnIoKSB3aGVuCmFwcGxpY2FibGUuIChNaWdo
dCBiZSB0aW1lIGZvciBhIG5ldyBjcnVzYWRlLikKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
