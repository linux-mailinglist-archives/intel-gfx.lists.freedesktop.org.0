Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFE4FE272
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 17:16:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DD36E94D;
	Fri, 15 Nov 2019 16:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69326E94D
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 16:16:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 08:16:00 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199242262"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 08:15:58 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191115150841.880349-1-chris@chris-wilson.co.uk>
 <20191115150841.880349-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <84e3f48d-26fd-b5de-0e74-1ea40559fbe1@linux.intel.com>
Date: Fri, 15 Nov 2019 16:15:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115150841.880349-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Disable heartbeat
 around context barrier tests
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE1LzExLzIwMTkgMTU6MDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB0aGUgaGVhcnRi
ZWF0IGhhcyB0aGUgZWZmZWN0IG9mIGZsdXNoaW5nIGNvbnRleHQgYmFycmllcnMsIHRoaXMKPiBp
bnRlcmZlcmVzIHdpdGggdGhlIGNvbnRleHQgYmFycmllciB0ZXN0cyB0aGF0IGFyZSB0cnlpbmcg
dG8gb2JzZXJ2ZQo+IHRoZW0gZGlyZWN0bHkuIERpc2FibGUgdGhlIGhlYXJ0YmVhdCBzbyB0aGF0
IHRoZSBiYXJyaWVycyBhcmUgYXMKPiBwcmVkaWN0YWJsZSBhcyB0aGUgdGVzdCBkZW1hbmRzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jIHwgNDQgKysrKysr
KysrKysrKysrKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRl
eHQuYwo+IGluZGV4IDE0YmE2Y2ViOTE3Ny4uMzU4NmFmNjM2MzA0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+IEBAIC01LDYgKzUsNyBAQAo+ICAg
ICovCj4gICAKPiAgICNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCj4gKyNpbmNsdWRlICJpbnRl
bF9lbmdpbmVfaGVhcnRiZWF0LmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCj4g
ICAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKPiAgIAo+IEBAIC0yMDAsNiArMjAxLDcgQEAgc3RhdGlj
IGludCBsaXZlX2NvbnRleHRfc2l6ZSh2b2lkICphcmcpCj4gICBzdGF0aWMgaW50IF9fbGl2ZV9h
Y3RpdmVfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJCQkJIHN0
cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpmaXhtZSkKPiAgIHsKPiArCXVuc2lnbmVkIGxvbmcgc2F2
ZWRfaGVhcnRiZWF0Owo+ICAgCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKPiAgIAlpbnQgcGFz
czsKPiAgIAlpbnQgZXJyOwo+IEBAIC0yMjcsMzYgKzIyOSw1MCBAQCBzdGF0aWMgaW50IF9fbGl2
ZV9hY3RpdmVfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJaWYg
KElTX0VSUihjZSkpCj4gICAJCXJldHVybiBQVFJfRVJSKGNlKTsKPiAgIAo+ICsJc2F2ZWRfaGVh
cnRiZWF0ID0gZW5naW5lLT5wcm9wcy5oZWFydGJlYXRfaW50ZXJ2YWxfbXM7Cj4gKwllbmdpbmUt
PnByb3BzLmhlYXJ0YmVhdF9pbnRlcnZhbF9tcyA9IDA7Cj4gKwo+ICAgCWZvciAocGFzcyA9IDA7
IHBhc3MgPD0gMjsgcGFzcysrKSB7Cj4gICAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICAg
Cj4gKwkJaW50ZWxfZW5naW5lX3BtX2dldChlbmdpbmUpOwo+ICsKPiAgIAkJcnEgPSBpbnRlbF9j
b250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsKPiAgIAkJaWYgKElTX0VSUihycSkpIHsKPiAgIAkJ
CWVyciA9IFBUUl9FUlIocnEpOwo+IC0JCQlnb3RvIGVycjsKPiArCQkJZ290byBvdXRfZW5naW5l
Owo+ICAgCQl9Cj4gICAKPiAgIAkJZXJyID0gcmVxdWVzdF9zeW5jKHJxKTsKPiAgIAkJaWYgKGVy
cikKPiAtCQkJZ290byBlcnI7Cj4gKwkJCWdvdG8gb3V0X2VuZ2luZTsKPiAgIAo+ICAgCQkvKiBD
b250ZXh0IHdpbGwgYmUga2VwdCBhY3RpdmUgdW50aWwgYWZ0ZXIgYW4gaWRsZS1iYXJyaWVyLiAq
Lwo+ICAgCQlpZiAoaTkxNV9hY3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkpIHsKPiAgIAkJCXBy
X2VycigiY29udGV4dCBpcyBub3QgYWN0aXZlOyBleHBlY3RlZCBpZGxlLWJhcnJpZXIgKCVzIHBh
c3MgJWQpXG4iLAo+ICAgCQkJICAgICAgIGVuZ2luZS0+bmFtZSwgcGFzcyk7Cj4gICAJCQllcnIg
PSAtRUlOVkFMOwo+IC0JCQlnb3RvIGVycjsKPiArCQkJZ290byBvdXRfZW5naW5lOwo+ICAgCQl9
Cj4gICAKPiAgIAkJaWYgKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSkgewo+ICAg
CQkJcHJfZXJyKCIlcyBpcyBhc2xlZXAgYmVmb3JlIGlkbGUtYmFycmllclxuIiwKPiAgIAkJCSAg
ICAgICBlbmdpbmUtPm5hbWUpOwo+ICAgCQkJZXJyID0gLUVJTlZBTDsKPiAtCQkJZ290byBlcnI7
Cj4gKwkJCWdvdG8gb3V0X2VuZ2luZTsKPiAgIAkJfQo+ICsKPiArb3V0X2VuZ2luZToKPiArCQlp
bnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7Cj4gKwkJaWYgKGVycikKPiArCQkJZ290byBlcnI7
Cj4gICAJfQo+ICAgCj4gICAJLyogTm93IG1ha2Ugc3VyZSBvdXIgaWRsZS1iYXJyaWVycyBhcmUg
Zmx1c2hlZCAqLwo+ICsJZXJyID0gaW50ZWxfZW5naW5lX2ZsdXNoX2JhcnJpZXJzKGVuZ2luZSk7
Cj4gKwlpZiAoZXJyKQo+ICsJCWdvdG8gZXJyOwo+ICsKPiAgIAllcnIgPSBjb250ZXh0X3N5bmMo
ZW5naW5lLT5rZXJuZWxfY29udGV4dCk7Cj4gICAJaWYgKGVycikKPiAgIAkJZ290byBlcnI7Cj4g
QEAgLTI3MCw4ICsyODYsOSBAQCBzdGF0aWMgaW50IF9fbGl2ZV9hY3RpdmVfY29udGV4dChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJCXN0cnVjdCBkcm1fcHJpbnRlciBwID0g
ZHJtX2RlYnVnX3ByaW50ZXIoX19mdW5jX18pOwo+ICAgCj4gICAJCWludGVsX2VuZ2luZV9kdW1w
KGVuZ2luZSwgJnAsCj4gLQkJCQkgICIlcyBpcyBzdGlsbCBhd2FrZSBhZnRlciBpZGxlLWJhcnJp
ZXJzXG4iLAo+IC0JCQkJICBlbmdpbmUtPm5hbWUpOwo+ICsJCQkJICAiJXMgaXMgc3RpbGwgYXdh
a2U6JWQgYWZ0ZXIgaWRsZS1iYXJyaWVyc1xuIiwKPiArCQkJCSAgZW5naW5lLT5uYW1lLAo+ICsJ
CQkJICBhdG9taWNfcmVhZCgmZW5naW5lLT53YWtlcmVmLmNvdW50KSk7Cj4gICAJCUdFTV9UUkFD
RV9EVU1QKCk7Cj4gICAKPiAgIAkJZXJyID0gLUVJTlZBTDsKPiBAQCAtMjc5LDYgKzI5Niw3IEBA
IHN0YXRpYyBpbnQgX19saXZlX2FjdGl2ZV9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSwKPiAgIAl9Cj4gICAKPiAgIGVycjoKPiArCWVuZ2luZS0+cHJvcHMuaGVhcnRiZWF0
X2ludGVydmFsX21zID0gc2F2ZWRfaGVhcnRiZWF0Owo+ICAgCWludGVsX2NvbnRleHRfcHV0KGNl
KTsKPiAgIAlyZXR1cm4gZXJyOwo+ICAgfQo+IEBAIC0zNDksNiArMzY3LDcgQEAgc3RhdGljIGlu
dCBfX2xpdmVfcmVtb3RlX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
ICAgCQkJCSBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZml4bWUpCj4gICB7Cj4gICAJc3RydWN0
IGludGVsX2NvbnRleHQgKmxvY2FsLCAqcmVtb3RlOwo+ICsJdW5zaWduZWQgbG9uZyBzYXZlZF9o
ZWFydGJlYXQ7Cj4gICAJaW50IHBhc3M7Cj4gICAJaW50IGVycjsKPiAgIAo+IEBAIC0zNjAsNiAr
Mzc5LDEyIEBAIHN0YXRpYyBpbnQgX19saXZlX3JlbW90ZV9jb250ZXh0KHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKPiAgIAkgKiBjbG9iYmVyIHRoZSBpZGxlLWJhcnJpZXIuCj4gICAJ
ICovCj4gICAKPiArCWlmIChpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSkgewo+ICsJ
CXByX2VycigiJXMgaXMgYXdha2UgYmVmb3JlIHN0YXJ0aW5nICVzIVxuIiwKPiArCQkgICAgICAg
ZW5naW5lLT5uYW1lLCBfX2Z1bmNfXyk7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gKwo+
ICAgCXJlbW90ZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGZpeG1lLCBlbmdpbmUpOwo+ICAgCWlm
IChJU19FUlIocmVtb3RlKSkKPiAgIAkJcmV0dXJuIFBUUl9FUlIocmVtb3RlKTsKPiBAQCAtMzcw
LDYgKzM5NSwxMCBAQCBzdGF0aWMgaW50IF9fbGl2ZV9yZW1vdGVfY29udGV4dChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJCWdvdG8gZXJyX3JlbW90ZTsKPiAgIAl9Cj4gICAK
PiArCXNhdmVkX2hlYXJ0YmVhdCA9IGVuZ2luZS0+cHJvcHMuaGVhcnRiZWF0X2ludGVydmFsX21z
Owo+ICsJZW5naW5lLT5wcm9wcy5oZWFydGJlYXRfaW50ZXJ2YWxfbXMgPSAwOwo+ICsJaW50ZWxf
ZW5naW5lX3BtX2dldChlbmdpbmUpOwo+ICsKPiAgIAlmb3IgKHBhc3MgPSAwOyBwYXNzIDw9IDI7
IHBhc3MrKykgewo+ICAgCQllcnIgPSBfX3JlbW90ZV9zeW5jKGxvY2FsLCByZW1vdGUpOwo+ICAg
CQlpZiAoZXJyKQo+IEBAIC0zODcsNiArNDE2LDkgQEAgc3RhdGljIGludCBfX2xpdmVfcmVtb3Rl
X2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgCQl9Cj4gICAJfQo+
ICAgCj4gKwlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7Cj4gKwllbmdpbmUtPnByb3BzLmhl
YXJ0YmVhdF9pbnRlcnZhbF9tcyA9IHNhdmVkX2hlYXJ0YmVhdDsKPiArCj4gICAJaW50ZWxfY29u
dGV4dF9wdXQobG9jYWwpOwo+ICAgZXJyX3JlbW90ZToKPiAgIAlpbnRlbF9jb250ZXh0X3B1dChy
ZW1vdGUpOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
