Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2D55BD24
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB0589BFE;
	Mon,  1 Jul 2019 13:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88DEA89BFE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:42:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 06:42:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="314888108"
Received: from unknown (HELO [10.249.141.63]) ([10.249.141.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2019 06:42:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-11-lionel.g.landwerlin@intel.com>
 <156198796295.1583.946008928784734214@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0b4763d5-8f01-2694-49c7-54f09e63eda1@intel.com>
Date: Mon, 1 Jul 2019 16:42:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156198796295.1583.946008928784734214@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 10/11] drm/i915/perf: execute OA
 configuration from command stream
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

T24gMDEvMDcvMjAxOSAxNjozMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MzYpCj4+IEBAIC0xODYwLDIzICsxODkzLDU1
IEBAIHN0YXRpYyBpbnQgYWxsb2Nfbm9hX3dhaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4+ICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIHZvaWQg
Y29uZmlnX29hX3JlZ3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9vYV9yZWcgKnJlZ3MsCj4+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBuX3JlZ3MpCj4+ICtzdGF0aWMgaW50IGVt
aXRfb2FfY29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+ICAgewo+
PiAtICAgICAgIHUzMiBpOwo+PiArICAgICAgIHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29u
ZmlnID0gc3RyZWFtLT5vYV9jb25maWc7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEgPSBzdHJlYW0tPmluaXRpYWxfY29uZmlnX3JxOwo+PiArICAgICAgIHN0cnVjdCBpOTE1X3Zt
YSAqdm1hOwo+PiArICAgICAgIHUzMiAqY3M7Cj4+ICsgICAgICAgaW50IGVycjsKPj4gICAKPj4g
LSAgICAgICBmb3IgKGkgPSAwOyBpIDwgbl9yZWdzOyBpKyspIHsKPj4gLSAgICAgICAgICAgICAg
IGNvbnN0IHN0cnVjdCBpOTE1X29hX3JlZyAqcmVnID0gcmVncyArIGk7Cj4+ICsgICAgICAgdm1h
ID0gaTkxNV92bWFfaW5zdGFuY2Uob2FfY29uZmlnLT5vYmosICZpOTE1LT5nZ3R0LnZtLCBOVUxM
KTsKPj4gKyAgICAgICBpZiAodW5saWtlbHkoSVNfRVJSKHZtYSkpKQo+PiArICAgICAgICAgICAg
ICAgcmV0dXJuIFBUUl9FUlIodm1hKTsKPj4gKwo+PiArICAgICAgIGVyciA9IGk5MTVfdm1hX3Bp
bih2bWEsIDAsIDAsIFBJTl9HTE9CQUwpOwo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAgICAg
ICAgICAgICByZXR1cm4gZXJyOwo+IE5vIHBpbm5pbmcgdW5kZXJuZWF0aCB0aGUgdGltZWxpbmUt
Pm11dGV4Lgo+Cj4gLi4uCgoKSG1tLi4uIEJ1dCBpbiB0aGlzIGNoYW5nZSBlbWl0X29hX2NvbmZp
ZygpIGlzIGNhbGxlZCBieSB0aGUgCmVuYWJsZV9tZXRyaWNzZXQoKSB2ZnVuYyBmcm9tIGk5MTVf
b2Ffc3RyZWFtX2luaXQoKSB3aXRob3V0IGhvbGRpbmcgCmRybS5zdHJ1Y3RfbXV0ZXguCgpUaGF0
IGRvZXNuJ3Qgc2VlbSB0byBiZSB1bmRlciB0aGUgdGltZWxpbmUtPm11dGV4LgoKCj4KPj4gQEAg
LTI0NTUsNDcgKzI0NjYsOTAgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVj
dCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4+ICAgICAgICAgIGlmIChyZXQpCj4+ICAgICAg
ICAgICAgICAgICAgZ290byBlcnJfb2FfYnVmX2FsbG9jOwo+PiAgIAo+PiArICAgICAgIHJldCA9
IGk5MTVfcGVyZl9nZXRfb2FfY29uZmlnKGRldl9wcml2LCBwcm9wcy0+bWV0cmljc19zZXQsCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnN0cmVhbS0+b2FfY29uZmln
LCAmb2JqKTsKPj4gKyAgICAgICBpZiAocmV0KSB7Cj4+ICsgICAgICAgICAgICAgICBEUk1fREVC
VUcoIkludmFsaWQgT0EgY29uZmlnIGlkPSVpXG4iLCBwcm9wcy0+bWV0cmljc19zZXQpOwo+PiAr
ICAgICAgICAgICAgICAgZ290byBlcnJfY29uZmlnOwo+PiArICAgICAgIH0KPj4gKwo+PiArICAg
ICAgIC8qCj4+ICsgICAgICAgICogV2UganVzdCBuZWVkIHRoZSBidWZmZXIgdG8gYmUgY3JlYXRl
ZCwgYnV0IG5vdCBvdXIgb3duIHJlZmVyZW5jZSBvbgo+PiArICAgICAgICAqIGl0IGFzIHRoZSBv
YV9jb25maWcgYWxyZWFkeSBoYXMgb25lLgo+PiArICAgICAgICAqLwo+PiArICAgICAgIGk5MTVf
Z2VtX29iamVjdF9wdXQob2JqKTsKPj4gKwo+PiArICAgICAgIHN0cmVhbS0+aW5pdGlhbF9jb25m
aWdfcnEgPQo+PiArICAgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0X2NyZWF0ZShkZXZfcHJpdi0+
ZW5naW5lW1JDUzBdLT5rZXJuZWxfY29udGV4dCk7Cj4+ICsgICAgICAgaWYgKElTX0VSUihzdHJl
YW0tPmluaXRpYWxfY29uZmlnX3JxKSkgewo+PiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VS
UihzdHJlYW0tPmluaXRpYWxfY29uZmlnX3JxKTsKPj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJy
X2luaXRpYWxfY29uZmlnOwo+PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIHN0cmVhbS0+b3Bz
ID0gJmk5MTVfb2Ffc3RyZWFtX29wczsKPj4gKwo+PiAgICAgICAgICByZXQgPSBpOTE1X211dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgmZGV2X3ByaXYtPmRybSk7Cj4+ICAgICAgICAgIGlmIChyZXQp
Cj4+ICAgICAgICAgICAgICAgICAgZ290byBlcnJfbG9jazsKPiBUaGlzIGxvY2tpbmcgaXMgaW52
ZXJ0ZWQgYXMgdGltZWxpbmUtPm11dGV4IGlzIG5vdCBhIGNvbXBsZXRlIGd1YXJkIGZvcgo+IHJl
cXVlc3QgYWxsb2NhdGlvbiB5ZXQuCgoKU28gaW50ZWxfY29udGV4dF9sb2NrX3Bpbm5lZCgpIGFy
b3VuZCB0aGUgcmVxdWVzdCBhbGxvY2F0aW9uIGFuZCBzZXR0aW5nIAp0aGUgYWN0aXZlIHJlcXVl
c3QgdGhlbj8KCldpdGggdGhlIHN0cnVjdF9tdXRleCBsb2NrIHRha2VuIGFyb3VuZCBpdD8KCgo+
Cj4+IC0gICAgICAgc3RyZWFtLT5vcHMgPSAmaTkxNV9vYV9zdHJlYW1fb3BzOwo+PiArICAgICAg
IHJldCA9IGk5MTVfYWN0aXZlX3JlcXVlc3Rfc2V0KCZkZXZfcHJpdi0+ZW5naW5lW1JDUzBdLT5s
YXN0X29hX2NvbmZpZywKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJlYW0tPmluaXRpYWxfY29uZmlnX3JxKTsKPiBJJ20gbm90IGNvbnZpbmNlZCB5b3Ugd2FudCB0
aGlzIChhbmQgdGhlIG1pc3NpbmcgbXV0ZXgpIG9uIHRoZSBlbmdpbmUsCj4gYXMgaXQgaXMganVz
dCBkZXNjcmliaW5nIHRoZSBwZXJmIG9hX2NvbmZpZyB0aW1lbGluZS4gSSB0aGluayBpdCdzCj4g
YmV0dGVyIHRvIHB1dCB0aGF0IGF0IHRoZSBzYW1lIGdyYW51bGFyaXR5IGFzIGl0IGlzIHVzZWQu
Cj4gLUNocmlzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
