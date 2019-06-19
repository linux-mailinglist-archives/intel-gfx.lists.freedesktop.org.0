Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 799E04BBC1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 16:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927606E418;
	Wed, 19 Jun 2019 14:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178BA6E417
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 14:35:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 07:35:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358209832"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 07:35:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190619134435.11141-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <93fe799e-6b4d-3b55-5aec-4fb718289366@linux.intel.com>
Date: Wed, 19 Jun 2019 15:35:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619134435.11141-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep rings pinned while the
 context is active
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

Ck9uIDE5LzA2LzIwMTkgMTQ6NDQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSZW1lbWJlciB0byBr
ZWVwIHRoZSByaW5ncyBwaW5uZWQgYXMgd2VsbCBhcyB0aGUgY29udGV4dCBpbWFnZSB1bnRpbCB0
aGUKPiBHUFUgaXMgbm8gbG9uZ2VyIGFjdGl2ZS4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTQ2Cj4gRml4ZXM6IGNlNDc2Yzgw
YjhiZiAoImRybS9pOTE1OiBLZWVwIGNvbnRleHRzIHBpbm5lZCB1bnRpbCBhZnRlciB0aGUgbmV4
dCBrZXJuZWwgY29udGV4dCBzd2l0Y2giKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYyB8IDE3ICsrKysrKysrKysrKy0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyAgICAgfCAgOSArLS0tLS0tLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2NvbnRleHQuYwo+IGluZGV4IDJjNDU0ZjIyN2MyZS4uYjg0ZjExYTUyZDg4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+IEBAIC0xMjYsNiArMTI2LDcg
QEAgc3RhdGljIHZvaWQgaW50ZWxfY29udGV4dF9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICph
Y3RpdmUpCj4gICAJaWYgKGNlLT5zdGF0ZSkKPiAgIAkJX19jb250ZXh0X3VucGluX3N0YXRlKGNl
LT5zdGF0ZSk7Cj4gICAKPiArCWludGVsX3JpbmdfdW5waW4oY2UtPnJpbmcpOwo+ICAgCWludGVs
X2NvbnRleHRfcHV0KGNlKTsKPiAgIH0KPiAgIAo+IEBAIC0xNjAsMTUgKzE2MSwxNiBAQCBpbnQg
aW50ZWxfY29udGV4dF9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHVu
c2lnbmVkIGxvbmcgZmxhZ3MpCj4gICAKPiAgIAlpbnRlbF9jb250ZXh0X2dldChjZSk7Cj4gICAK
PiArCWVyciA9IGludGVsX3JpbmdfcGluKGNlLT5yaW5nKTsKPiArCWlmIChlcnIpCj4gKwkJZ290
byBlcnJfcHV0Owo+ICsKPiAgIAlpZiAoIWNlLT5zdGF0ZSkKPiAgIAkJcmV0dXJuIDA7Cj4gICAK
PiAgIAllcnIgPSBfX2NvbnRleHRfcGluX3N0YXRlKGNlLT5zdGF0ZSwgZmxhZ3MpOwo+IC0JaWYg
KGVycikgewo+IC0JCWk5MTVfYWN0aXZlX2NhbmNlbCgmY2UtPmFjdGl2ZSk7Cj4gLQkJaW50ZWxf
Y29udGV4dF9wdXQoY2UpOwo+IC0JCXJldHVybiBlcnI7Cj4gLQl9Cj4gKwlpZiAoZXJyKQo+ICsJ
CWdvdG8gZXJyX3B1dDsKCmludGVsX3JpbmdfdW5waW4/CgpSZWdhcmRzLAoKVHZydGtvCgo+ICAg
Cj4gICAJLyogUHJlYWxsb2NhdGUgdHJhY2tpbmcgbm9kZXMgKi8KPiAgIAlpZiAoIWk5MTVfZ2Vt
X2NvbnRleHRfaXNfa2VybmVsKGNlLT5nZW1fY29udGV4dCkpIHsKPiBAQCAtMTgxLDYgKzE4Mywx
MSBAQCBpbnQgaW50ZWxfY29udGV4dF9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCj4gICAJfQo+ICAgCj4gICAJcmV0dXJuIDA7Cj4g
Kwo+ICtlcnJfcHV0Ogo+ICsJaW50ZWxfY29udGV4dF9wdXQoY2UpOwo+ICsJaTkxNV9hY3RpdmVf
Y2FuY2VsKCZjZS0+YWN0aXZlKTsKPiArCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiAgIHZvaWQg
aW50ZWxfY29udGV4dF9hY3RpdmVfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCBiNDJiNWYxNTgyOTUuLjRiZmI4
MTkzODZlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTE0MjYs
NyArMTQyNiw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jb250ZXh0X3VucGluKHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSkKPiAgIHsKPiAgIAlpOTE1X2dlbV9jb250ZXh0X3VucGluX2h3X2lk
KGNlLT5nZW1fY29udGV4dCk7Cj4gICAJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChjZS0+c3Rh
dGUtPm9iaik7Cj4gLQlpbnRlbF9yaW5nX3VucGluKGNlLT5yaW5nKTsKPiAgIH0KPiAgIAo+ICAg
c3RhdGljIHZvaWQKPiBAQCAtMTQ3OCwxMyArMTQ3Nyw5IEBAIF9fZXhlY2xpc3RzX2NvbnRleHRf
cGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAgIAkJZ290byB1bnBpbl9hY3RpdmU7Cj4g
ICAJfQo+ICAgCj4gLQlyZXQgPSBpbnRlbF9yaW5nX3BpbihjZS0+cmluZyk7Cj4gLQlpZiAocmV0
KQo+IC0JCWdvdG8gdW5waW5fbWFwOwo+IC0KPiAgIAlyZXQgPSBpOTE1X2dlbV9jb250ZXh0X3Bp
bl9od19pZChjZS0+Z2VtX2NvbnRleHQpOwo+ICAgCWlmIChyZXQpCj4gLQkJZ290byB1bnBpbl9y
aW5nOwo+ICsJCWdvdG8gdW5waW5fbWFwOwo+ICAgCj4gICAJY2UtPmxyY19kZXNjID0gbHJjX2Rl
c2NyaXB0b3IoY2UsIGVuZ2luZSk7Cj4gICAJY2UtPmxyY19yZWdfc3RhdGUgPSB2YWRkciArIExS
Q19TVEFURV9QTiAqIFBBR0VfU0laRTsKPiBAQCAtMTQ5Miw4ICsxNDg3LDYgQEAgX19leGVjbGlz
dHNfY29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICAgCj4gICAJcmV0dXJu
IDA7Cj4gICAKPiAtdW5waW5fcmluZzoKPiAtCWludGVsX3JpbmdfdW5waW4oY2UtPnJpbmcpOwo+
ICAgdW5waW5fbWFwOgo+ICAgCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoY2UtPnN0YXRlLT5v
YmopOwo+ICAgdW5waW5fYWN0aXZlOgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
