Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0505B50BD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 16:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0634F6ECBC;
	Tue, 17 Sep 2019 14:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3306ECBC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 14:51:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 07:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="198714942"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 17 Sep 2019 07:51:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190917074312.12290-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9626a365-534f-3134-f7cf-d66cee3dee0b@linux.intel.com>
Date: Tue, 17 Sep 2019 15:51:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917074312.12290-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock signaler timeline while
 navigating
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

Ck9uIDE3LzA5LzIwMTkgMDg6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB3ZSBuZWVkIHRv
IHRha2UgYSB3YWxrIGJhY2sgYWxvbmcgdGhlIHNpZ25hbGVyIHRpbWVsaW5lIHRvIGZpbmQgdGhl
Cj4gZmVuY2UgYmVmb3JlIHVwb24gd2hpY2ggd2Ugd2FudCB0byB3YWl0LCB3ZSBuZWVkIHRvIGxv
Y2sgdGhhdCB0aW1lbGluZQo+IHRvIHByZXZlbnQgaXQgYmVpbmcgbW9kaWZpZWQgYXMgd2Ugd2Fs
ay4gU2ltaWxhcmx5LCB3ZSBhbHNvIG5lZWQgdG8KPiBhY3F1aXJlIGEgcmVmZXJlbmNlIHRvIHRo
ZSBlYXJsaWVyIGZlbmNlIHdoaWxlIGl0IHN0aWxsIGV4aXN0cyEKPiAKPiBUaG91Z2ggd2UgbGFj
ayB0aGUgY29ycmVjdCBsb2NraW5nIHRvZGF5LCB3ZSBhcmUgc2F2ZWQgYnkgdGhlCj4gb3ZlcmFy
Y2hpbmcgc3RydWN0X211dGV4IC0tIGJ1dCB0aGF0IHByb3RlY3Rpb24gaXMgYmVpbmcgcmVtb3Zl
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMzAg
KysrKysrKysrKysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCj4gaW5kZXggZjEyMzU4MTUwMDk3Li40NTJhZDdhOGZmMGMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC03NjcsMTYgKzc2NywzNCBAQCBpOTE1X3JlcXVlc3Rf
Y3JlYXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAgIHN0YXRpYyBpbnQKPiAgIGk5MTVf
cmVxdWVzdF9hd2FpdF9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0IGk5MTVf
cmVxdWVzdCAqc2lnbmFsKQo+ICAgewo+IC0JaWYgKGxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+bGlu
aywgJnNpZ25hbC0+dGltZWxpbmUtPnJlcXVlc3RzKSkKPiArCXN0cnVjdCBpbnRlbF90aW1lbGlu
ZSAqdGwgPSBzaWduYWwtPnRpbWVsaW5lOwo+ICsJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4g
KwlpbnQgZXJyOwo+ICsKPiArCWlmIChsaXN0X2lzX2ZpcnN0KCZzaWduYWwtPmxpbmssICZ0bC0+
cmVxdWVzdHMpKQo+ICAgCQlyZXR1cm4gMDsKPiAgIAo+IC0Jc2lnbmFsID0gbGlzdF9wcmV2X2Vu
dHJ5KHNpZ25hbCwgbGluayk7Cj4gLQlpZiAoaW50ZWxfdGltZWxpbmVfc3luY19pc19sYXRlcihy
cS0+dGltZWxpbmUsICZzaWduYWwtPmZlbmNlKSkKPiArCWlmIChtdXRleF9sb2NrX2ludGVycnVw
dGlibGVfbmVzdGVkKCZ0bC0+bXV0ZXgsIFNJTkdMRV9ERVBUSF9ORVNUSU5HKSkKCldlIGFyZSBn
ZXR0aW5nIG1vcmUgYW5kIG1vcmUgdGhlc2UgbmVzdGVkIG9uZXMgYW5kIGl0IHdpbGwgYmVjb21l
IAp1bm1hbmFnZWFibGUgdG8gcmVtZW1iZXIgd2hpY2ggb25lcywgd2h5IGFuZCBvbiB3aGF0IHBh
dGhzLiBQZXJoYXBzIHdlIApuZWVkIGEgY29tbWVudCBuZXh0IHRvIHRoZSBtZW1iZXIgaW4gdGhl
IHN0cnVjdHVyZSBkZWZpbml0aW9uPwoKPiArCQlyZXR1cm4gLUVJTlRSOwo+ICsKPiArCWlmIChs
aXN0X2lzX2ZpcnN0KCZzaWduYWwtPmxpbmssICZ0bC0+cmVxdWVzdHMpKSB7Cj4gKwkJZmVuY2Ug
PSBOVUxMOwo+ICsJfSBlbHNlIHsKPiArCQlzaWduYWwgPSBsaXN0X3ByZXZfZW50cnkoc2lnbmFs
LCBsaW5rKTsKPiArCQlmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KCZzaWduYWwtPmZlbmNlKTsK
PiArCX0KPiArCW11dGV4X3VubG9jaygmdGwtPm11dGV4KTsKPiArCWlmICghZmVuY2UpCgpDYW4g
aXQgYmUgbm8gZmVuY2Ugd2hlbiBpdCB3YXMgb2J0YWluZWQgdW5kZXIgdGhlIG11dGV4PwoKPiAg
IAkJcmV0dXJuIDA7Cj4gICAKPiAtCXJldHVybiBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5j
ZSgmcnEtPnN1Ym1pdCwKPiAtCQkJCQkgICAgICZzaWduYWwtPmZlbmNlLCAwLAo+IC0JCQkJCSAg
ICAgSTkxNV9GRU5DRV9HRlApOwo+ICsJZXJyID0gMDsKPiArCWlmICghaW50ZWxfdGltZWxpbmVf
c3luY19pc19sYXRlcihycS0+dGltZWxpbmUsIGZlbmNlKSkKPiArCQllcnIgPSBpOTE1X3N3X2Zl
bmNlX2F3YWl0X2RtYV9mZW5jZSgmcnEtPnN1Ym1pdCwKPiArCQkJCQkJICAgIGZlbmNlLCAwLAo+
ICsJCQkJCQkgICAgSTkxNV9GRU5DRV9HRlApOwo+ICsJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4g
Kwo+ICsJcmV0dXJuIGVycjsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludGVsX2VuZ2luZV9tYXNr
X3QKPiAKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
