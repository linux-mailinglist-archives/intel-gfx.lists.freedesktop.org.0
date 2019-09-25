Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C67EBDA30
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 10:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BE289C53;
	Wed, 25 Sep 2019 08:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A0F89C53
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 08:49:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 01:49:51 -0700
X-IronPort-AV: E=Sophos;i="5.64,547,1559545200"; d="scan'208";a="179753729"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 01:49:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-17-chris@chris-wilson.co.uk>
 <86c1cd64-e5e5-4065-7489-f8a861981061@linux.intel.com>
 <156940100781.4979.16490963525085766366@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ef7aaff6-a350-c2d9-df0b-b4e1856c5153@linux.intel.com>
Date: Wed, 25 Sep 2019 09:49:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156940100781.4979.16490963525085766366@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/21] drm/i915: Drop struct_mutex from
 around i915_retire_requests()
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

Ck9uIDI1LzA5LzIwMTkgMDk6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTI0IDE2OjI1OjI5KQo+Pgo+PiBPbiAwMi8wOS8yMDE5IDA1OjAy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBAQCAtNDQ5LDggKzQ0Nyw2IEBAIHRsX3dyaXRlKHN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGwsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwg
dTMyIHZhbHVlKQo+Pj4gICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+Pj4gICAgICAg
IGludCBlcnI7Cj4+PiAgICAKPj4+IC0gICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJnRsLT5ndC0+
aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7IC8qIGxhenkgcnEgcmVmcyAqLwo+Pj4gLQo+Pj4gICAg
ICAgIGVyciA9IGludGVsX3RpbWVsaW5lX3Bpbih0bCk7Cj4+PiAgICAgICAgaWYgKGVycikgewo+
Pj4gICAgICAgICAgICAgICAgcnEgPSBFUlJfUFRSKGVycik7Cj4+PiBAQCAtNDYxLDEwICs0NTcs
MTQgQEAgdGxfd3JpdGUoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCwgc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCB1MzIgdmFsdWUpCj4+PiAgICAgICAgaWYgKElTX0VSUihycSkpCj4+
PiAgICAgICAgICAgICAgICBnb3RvIG91dF91bnBpbjsKPj4+ICAgIAo+Pj4gKyAgICAgaTkxNV9y
ZXF1ZXN0X2dldChycSk7Cj4+PiArCj4+PiAgICAgICAgZXJyID0gZW1pdF9nZ3R0X3N0b3JlX2R3
KHJxLCB0bC0+aHdzcF9vZmZzZXQsIHZhbHVlKTsKPj4+ICAgICAgICBpOTE1X3JlcXVlc3RfYWRk
KHJxKTsKPj4+IC0gICAgIGlmIChlcnIpCj4+PiArICAgICBpZiAoZXJyKSB7Cj4+PiArICAgICAg
ICAgICAgIGk5MTVfcmVxdWVzdF9wdXQocnEpOwo+Pj4gICAgICAgICAgICAgICAgcnEgPSBFUlJf
UFRSKGVycik7Cj4+PiArICAgICB9Cj4+PiAgICAKPj4+ICAgIG91dF91bnBpbjoKPj4+ICAgICAg
ICBpbnRlbF90aW1lbGluZV91bnBpbih0bCk7Cj4+PiBAQCAtNTAwLDcgKzUwMCw2IEBAIHN0YXRp
YyBpbnQgbGl2ZV9od3NwX2VuZ2luZSh2b2lkICphcmcpCj4+PiAgICAgICAgc3RydWN0IGludGVs
X3RpbWVsaW5lICoqdGltZWxpbmVzOwo+Pj4gICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZTsKPj4+ICAgICAgICBlbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKPj4+IC0gICAgIGlu
dGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+Pj4gICAgICAgIHVuc2lnbmVkIGxvbmcgY291bnQsIG47
Cj4+PiAgICAgICAgaW50IGVyciA9IDA7Cj4+PiAgICAKPj4+IEBAIC01MTUsMTQgKzUxNCwxMyBA
QCBzdGF0aWMgaW50IGxpdmVfaHdzcF9lbmdpbmUodm9pZCAqYXJnKQo+Pj4gICAgICAgIGlmICgh
dGltZWxpbmVzKQo+Pj4gICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4+PiAgICAKPj4+
IC0gICAgIG11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+Pj4gLSAgICAgd2Fr
ZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKPj4+IC0KPj4+
ICAgICAgICBjb3VudCA9IDA7Cj4+PiAgICAgICAgZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkx
NSwgaWQpIHsKPj4+ICAgICAgICAgICAgICAgIGlmICghaW50ZWxfZW5naW5lX2Nhbl9zdG9yZV9k
d29yZChlbmdpbmUpKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPj4+ICAg
IAo+Pj4gKyAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfcG1fZ2V0KGVuZ2luZSk7Cj4+PiArCj4+
PiAgICAgICAgICAgICAgICBmb3IgKG4gPSAwOyBuIDwgTlVNX1RJTUVMSU5FUzsgbisrKSB7Cj4+
PiAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4+PiAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+Pj4gQEAgLTUz
MCwyMiArNTI4LDI2IEBAIHN0YXRpYyBpbnQgbGl2ZV9od3NwX2VuZ2luZSh2b2lkICphcmcpCj4+
PiAgICAgICAgICAgICAgICAgICAgICAgIHRsID0gY2hlY2tlZF9pbnRlbF90aW1lbGluZV9jcmVh
dGUoaTkxNSk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19FUlIodGwpKSB7Cj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUih0bCk7Cj4+PiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4gICAgICAgICAgICAgICAgICAgICAgICB9Cj4+PiAg
ICAKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgcnEgPSB0bF93cml0ZSh0bCwgZW5naW5lLCBj
b3VudCk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19FUlIocnEpKSB7Cj4+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ZWxfdGltZWxpbmVfcHV0KHRsKTsKPj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBQVFJfRVJSKHJxKTsKPj4+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYnJlYWs7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIH0KPj4+ICAg
IAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICB0aW1lbGluZXNbY291bnQrK10gPSB0bDsKPj4+
ICsgICAgICAgICAgICAgICAgICAgICBpOTE1X3JlcXVlc3RfcHV0KHJxKTsKPj4KPj4gVGhpcyB3
YXMgYSBsZWFrIHVudGlsIG5vdz8KPiAKPiBObywgd2UgYWRkZWQgYSBnZXQgaW50byB0bF93cml0
ZSgpIHNvIHRoYXQgd2Ugb3duIGEgcmVmZXJlbmNlIHRvIHRoZQo+IHJlcXVlc3QsIGp1c3Qgc28g
dGhhdCBvd25lcnNoaXAgaXMgY2xlYXIgYWNyb3NzIHRoZSB3YWl0cyAoYW5kIGl0IGNhbid0Cj4g
YWNjaWRlbnRhbGx5IGJlIHJldGlyZWQpLgoKL21lIHNjcm9sbHMgdXAsIHNjcm9sbHMgZG93bi4u
IHJ1YnMgZXllcy4uIHllcCwgSSB3YXMgYmxpbmQuCgpbc25pcF0KCj4+IEVzc2VudGlhbGx5IGxv
b2tzIGZpbmUuIFByb3Zpc2lvbmFsLCBtZWFuaW5nIGtlZXAgaXQgaWYgeW91IGRvIHNvbWUKPj4g
c21hbGwgdHdlYWtzOgo+IAo+IE5vdGhpbmcgc2VlbWVkIHRvIGJlIHJlcXVpcmVkLgoKQWNrLgoK
UmVnYXJkcywKClR2cnRrbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
