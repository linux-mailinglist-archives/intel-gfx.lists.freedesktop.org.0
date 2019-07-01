Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701AA5BF19
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 17:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEDE898CE;
	Mon,  1 Jul 2019 15:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C18898CE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 15:09:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17086833-1500050 for multiple; Mon, 01 Jul 2019 16:09:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
Message-ID: <156199377822.1583.13857985932185394689@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 16:09:38 +0100
Subject: Re: [Intel-gfx] [PATCH v6 03/11] drm/i915/perf: allow for CS OA
 configs to be created lazily
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDoyOSkKPiAgc3RydWN0
IGk5MTVfb2FfY29uZmlnIHsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
Owo+ICsKPiAgICAgICAgIGNoYXIgdXVpZFtVVUlEX1NUUklOR19MRU4gKyAxXTsKPiAgICAgICAg
IGludCBpZDsKPiAgCj4gQEAgLTExMTAsNiArMTExMiwxMCBAQCBzdHJ1Y3QgaTkxNV9vYV9jb25m
aWcgewo+ICAgICAgICAgc3RydWN0IGF0dHJpYnV0ZSAqYXR0cnNbMl07Cj4gICAgICAgICBzdHJ1
Y3QgZGV2aWNlX2F0dHJpYnV0ZSBzeXNmc19tZXRyaWNfaWQ7Cj4gIAo+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiArCj4gKyAgICAgICBzdHJ1Y3QgbGlzdF9oZWFk
IHZtYV9saW5rOwo+ICsKPiAgICAgICAgIGF0b21pY190IHJlZl9jb3VudDsKPiAgfTsKCj4gLXN0
YXRpYyB2b2lkIGZyZWVfb2FfY29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9h
X2NvbmZpZykKPiArc3RhdGljIHZvaWQgcHV0X29hX2NvbmZpZyhzdHJ1Y3QgaTkxNV9vYV9jb25m
aWcgKm9hX2NvbmZpZykKPiAgewo+ICsgICAgICAgaWYgKCFhdG9taWNfZGVjX2FuZF90ZXN0KCZv
YV9jb25maWctPnJlZl9jb3VudCkpCj4gKyAgICAgICAgICAgICAgIHJldHVybjsKCkkgc3Ryb25n
bHkgYWR2aXNlIHRoYXQgcmVmX2NvdW50IGJlIHJlcGxhY2VkIGJ5IHN0cnVjdCBrcmVmLCBqdXN0
IHNvIHRoYXQKd2UgZ2V0IHRoZSBiZW5lZml0IG9mIGRlYnVnZ2luZy4KCnB1dF9vYV9jb25maWcg
LT4ga3JlZl9wdXQoJm9hX2NvbmZpZy0+cmVmLCBmcmVlX29hX2NvbmZpZykKKGZyZWVfb2FfY29u
ZmlnIHRha2VzIGtyZWYgYXMgaXRzIGFyZyBhbmQgdXNlcyBjb250YWluZXJfb2YoKSkKCj4gK2lu
dCBpOTE1X3BlcmZfZ2V0X29hX2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IG1ldHJpY3Nfc2V0LAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKipvdXRfY29uZmlnLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
Km91dF9vYmopCj4gK3sKPiArICAgICAgIGludCByZXQgPSAwOwo+ICsgICAgICAgc3RydWN0IGk5
MTVfb2FfY29uZmlnICpvYV9jb25maWc7Cj4gKwo+ICsgICAgICAgaWYgKCFpOTE1LT5wZXJmLmlu
aXRpYWxpemVkKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArCj4gKyAgICAg
ICByZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmk5MTUtPnBlcmYubWV0cmljc19sb2Nr
KTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gIAo+
IC0gICAgICAgKm91dF9jb25maWcgPSBpZHJfZmluZCgmZGV2X3ByaXYtPnBlcmYubWV0cmljc19p
ZHIsIG1ldHJpY3Nfc2V0KTsKPiAtICAgICAgIGlmICghKm91dF9jb25maWcpCj4gLSAgICAgICAg
ICAgICAgIHJldCA9IC1FSU5WQUw7Cj4gLSAgICAgICBlbHNlCj4gLSAgICAgICAgICAgICAgIGF0
b21pY19pbmMoJigqb3V0X2NvbmZpZyktPnJlZl9jb3VudCk7Cj4gKyAgICAgICBpZiAobWV0cmlj
c19zZXQgPT0gMSkgewo+ICsgICAgICAgICAgICAgICBvYV9jb25maWcgPSAmaTkxNS0+cGVyZi5v
YS50ZXN0X2NvbmZpZzsKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgICAgICAgIG9hX2Nv
bmZpZyA9IGlkcl9maW5kKCZpOTE1LT5wZXJmLm1ldHJpY3NfaWRyLCBtZXRyaWNzX3NldCk7CgpX
aHkgbm90IGhhdmUgdGhlIGJ1aWx0aW5bMV0gaW5zaWRlIHRoZSBpZHI/Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
