Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C831786A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 13:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C435B89745;
	Wed,  8 May 2019 11:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262D289745
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 11:36:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 04:36:14 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 08 May 2019 04:36:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-14-chris@chris-wilson.co.uk>
 <4b4fa815-b2b2-7873-bc55-720f856ce596@linux.intel.com>
 <155731427456.28198.14269344483505289083@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2dc8b674-ec0a-eaf6-cc1c-78cabc05fc01@linux.intel.com>
Date: Wed, 8 May 2019 12:36:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155731427456.28198.14269344483505289083@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/40] drm/i915: Load balancing across a
 virtual engine
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

Ck9uIDA4LzA1LzIwMTkgMTI6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDExOjI5OjM0KQo+Pgo+PiBPbiAwOC8wNS8yMDE5IDA5OjA2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiArc3RhdGljIGludCBsaXZlX3ZpcnR1YWxfZW5naW5l
KHZvaWQgKmFyZykKPj4+ICt7Cj4+PiArICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGFyZzsKPj4+ICsgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKnNpYmxpbmdzW01BWF9F
TkdJTkVfSU5TVEFOQ0UgKyAxXTsKPj4+ICsgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZTsKPj4+ICsgICAgIGVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+Pj4gKyAgICAgdW5zaWdu
ZWQgaW50IGNsYXNzLCBpbnN0Owo+Pj4gKyAgICAgaW50IGVyciA9IC1FTk9ERVY7Cj4+PiArCj4+
PiArICAgICBpZiAoVVNFU19HVUNfU1VCTUlTU0lPTihpOTE1KSkKPj4+ICsgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4+PiArCj4+PiArICAgICBtdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211
dGV4KTsKPj4+ICsKPj4+ICsgICAgIGZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7
Cj4+PiArICAgICAgICAgICAgIGVyciA9IG5vcF92aXJ0dWFsX2VuZ2luZShpOTE1LCAmZW5naW5l
LCAxLCAxLCAwKTsKPj4+ICsgICAgICAgICAgICAgaWYgKGVycikgewo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIHByX2VycigiRmFpbGVkIHRvIHdyYXAgZW5naW5lICVzOiBlcnI9JWRcbiIsCj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVuZ2luZS0+bmFtZSwgZXJyKTsKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4+PiArICAgICAgICAgICAgIH0K
Pj4+ICsgICAgIH0KPj4+ICsKPj4+ICsgICAgIGZvciAoY2xhc3MgPSAwOyBjbGFzcyA8PSBNQVhf
RU5HSU5FX0NMQVNTOyBjbGFzcysrKSB7Cj4+PiArICAgICAgICAgICAgIGludCBuc2libGluZywg
bjsKPj4+ICsKPj4+ICsgICAgICAgICAgICAgbnNpYmxpbmcgPSAwOwo+Pj4gKyAgICAgICAgICAg
ICBmb3IgKGluc3QgPSAwOyBpbnN0IDw9IE1BWF9FTkdJTkVfSU5TVEFOQ0U7IGluc3QrKykgewo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlmICghaTkxNS0+ZW5naW5lX2NsYXNzW2NsYXNzXVtp
bnN0XSkKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pgo+PiBJIHBy
ZXZpb3VzIHJldmlldyBJIHNhaWQgSSB0aGluayB0aGlzIHNob3VsZCBiZSBjb250aW51ZSBpbnN0
ZWFkIG9mCj4+IGJyZWFrIHNvIHZjczAgKyB2Y3MyIHNrdXMgY2FuIGFsc28gYmUgdGVzdGVkLgo+
IAo+IENvbXBsZXRlbHkgbWlzc2VkIHRoYXQsIHNvcnJ5Lgo+IAo+Pj4gKwo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIHNpYmxpbmdzW25zaWJsaW5nKytdID0gaTkxNS0+ZW5naW5lX2NsYXNzW2Ns
YXNzXVtpbnN0XTsKPj4+ICsgICAgICAgICAgICAgfQo+Pj4gKyAgICAgICAgICAgICBpZiAobnNp
YmxpbmcgPCAyKQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+Pgo+PiBBbmQg
YWxzbyB0aGF0IHNpbmdsZSBlbmdpbmUgVkUgY291bGQgYmUgdGVzdGVkIGp1c3QgYXMgd2VsbCwg
dW5sZXNzIEkgYW0KPj4gbWlzc2luZyBzb21ldGhpbmcuCj4gCj4gVGhlcmUncyBubyBzdWNoIHRo
aW5nIGFzIHNpbmdsZSBlbmdpbmUgVkUuIFRoZSBjdXJyZW50IGRlc2lnbiByZXF1aXJlcwo+IHRo
YXQgdGhpcyB0eXBlIG9mIHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSBlbmNvbXBhc3NlcyBtb3JlIHRo
YW4gb25lIGVuZ2luZQo+IChmYWlsaW5nIHRoYXQgd2UgYnJlYWsgdGhlIHNpbmdsZSByZXF1ZXN0
IHNjaGVkdWxpbmcsIGFsdGhvdWdoIG1pZ2h0IGJlCj4gYWJsZSB0byBsaWZ0IHRoYXQgd2l0aCB0
aW1lc2xpY2luZyBidXQgdGhlIGVhcmx5IHJlc3VsdHMgd2VyZSBub3QKPiBmYXZvdXJhYmxlKTsg
dGhlIHNpbmdsZSBlbmdpbmUgYmVpbmcgYSByZWd1bGFyIGludGVsX2NvbnRleHQgaW5zdGFuY2Uu
CgpZZWFoIG15IGJhZCwgdGhlIGF1dG8tbWFnaWMgcmVwbGFjZW1lbnQgd2l0aCBwaHlzaWNhbCBl
bmdpbmUgaGFwcGVucyBvbmUgCmxldmVsIGhpZ2hlciB0aGFuIHdoYXQgdGhpcyBzZWxmdGVzdCBp
cyBvcGVyYXRpbmcgb24uCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
