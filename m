Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFA5FDB34
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 11:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650016E3EF;
	Fri, 15 Nov 2019 10:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA086E3EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 10:22:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19209835-1500050 for multiple; Fri, 15 Nov 2019 10:21:59 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115101840.23921-2-jani.nikula@intel.com>
References: <20191115101840.23921-1-jani.nikula@intel.com>
 <20191115101840.23921-2-jani.nikula@intel.com>
Message-ID: <157381331724.8818.5022640832000274325@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 10:21:57 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: make debug printer
 shown_bug_once variable to drm_i915_private
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMS0xNSAxMDoxODo0MCkKPiBHZXQgcmlkIG9mIHRo
ZSBtb2R1bGUgc3BlY2lmaWMgc3RhdGljIHZhcmlhYmxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5jIHwgOSArKysrLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggMTc3OWY2
MDBmY2ZiLi5lMTFlZTMyNjhhZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAt
MTI4Myw2ICsxMjgzLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewo+ICAgICAgICAgLyog
TXV0ZXggdG8gcHJvdGVjdCB0aGUgYWJvdmUgaGRjcCBjb21wb25lbnQgcmVsYXRlZCB2YWx1ZXMu
ICovCj4gICAgICAgICBzdHJ1Y3QgbXV0ZXggaGRjcF9jb21wX211dGV4Owo+ICAKPiArICAgICAg
IGJvb2wgc2hvd25fYnVnX29uY2U7Cj4gKwo+ICAgICAgICAgSTkxNV9TRUxGVEVTVF9ERUNMQVJF
KHN0cnVjdCBpOTE1X3NlbGZ0ZXN0X3N0YXNoIHNlbGZ0ZXN0OykKPiAgCj4gICAgICAgICAvKgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKPiBpbmRleCBjNDcyNjFhZTg2ZWEuLmY0MzQyNzRi
MGIyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKPiBAQCAtMTMsMTEgKzEzLDEw
IEBACj4gICAgICAgICAgICAgICAgICAgICAicHJvdmlkaW5nIHRoZSBkbWVzZyBsb2cgYnkgYm9v
dGluZyB3aXRoIGRybS5kZWJ1Zz0weGYiCj4gIAo+ICB2b2lkCj4gLV9faTkxNV9wcmludGsoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBjb25zdCBjaGFyICpsZXZlbCwKPiArX19p
OTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgY29uc3QgY2hhciAqbGV2
ZWwsCj4gICAgICAgICAgICAgICBjb25zdCBjaGFyICpmbXQsIC4uLikKPiAgewo+IC0gICAgICAg
c3RhdGljIGJvb2wgc2hvd25fYnVnX29uY2U7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2aWNlICprZGV2
ID0gZGV2X3ByaXYtPmRybS5kZXY7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICprZGV2ID0gaTkx
NS0+ZHJtLmRldjsKPiAgICAgICAgIGJvb2wgaXNfZXJyb3IgPSBsZXZlbFsxXSA8PSBLRVJOX0VS
UlsxXTsKPiAgICAgICAgIGJvb2wgaXNfZGVidWcgPSBsZXZlbFsxXSA9PSBLRVJOX0RFQlVHWzFd
Owo+ICAgICAgICAgc3RydWN0IHZhX2Zvcm1hdCB2YWY7Cj4gQEAgLTM5LDcgKzM4LDcgQEAgX19p
OTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IGNoYXIg
KmxldmVsLAo+ICAKPiAgICAgICAgIHZhX2VuZChhcmdzKTsKPiAgCj4gLSAgICAgICBpZiAoaXNf
ZXJyb3IgJiYgIXNob3duX2J1Z19vbmNlKSB7Cj4gKyAgICAgICBpZiAoaXNfZXJyb3IgJiYgIWk5
MTUtPnNob3duX2J1Z19vbmNlKSB7Cj4gICAgICAgICAgICAgICAgIC8qCj4gICAgICAgICAgICAg
ICAgICAqIEFzayB0aGUgdXNlciB0byBmaWxlIGEgYnVnIHJlcG9ydCBmb3IgdGhlIGVycm9yLCBl
eGNlcHQKPiAgICAgICAgICAgICAgICAgICogaWYgdGhleSBtYXkgaGF2ZSBjYXVzZWQgdGhlIGJ1
ZyBieSBmaWRkbGluZyB3aXRoIHVuc2FmZQo+IEBAIC00Nyw3ICs0Niw3IEBAIF9faTkxNV9wcmlu
dGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBjb25zdCBjaGFyICpsZXZlbCwK
PiAgICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgICAgIGlmICghdGVzdF90YWludChU
QUlOVF9VU0VSKSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfbm90aWNlKGtkZXYsICIl
cyIsIEZET19CVUdfTVNHKTsKCkkgZmVlbCB0aGlzIHBsZWEgdG8gdGhlIHVzZXJzIHRvIGZpbGUg
YSBidWcgcmVwb3J0IHNob3VsZCBiZSBhIG9uZS10aW1lCnRoaW5nOyBhIHRydWUgZ2xvYmFsLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
