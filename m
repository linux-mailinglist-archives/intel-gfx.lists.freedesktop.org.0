Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6C2B8D23
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 10:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D226FB80;
	Fri, 20 Sep 2019 08:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC8B6FB80
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 08:47:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 01:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="199673056"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 20 Sep 2019 01:47:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190919111912.21631-1-chris@chris-wilson.co.uk>
 <5202f44e-a251-f4e0-f27c-1f96fab24078@linux.intel.com>
 <156889956418.31102.4110265390892262636@skylake-alporthouse-com>
 <8b0b57de-6d4b-57f8-be31-7201d3f235ec@linux.intel.com>
 <156891536326.1196.6694433407311839234@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <89b0252e-dc4a-9fd6-e007-58bcc7e30bd7@linux.intel.com>
Date: Fri, 20 Sep 2019 09:47:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156891536326.1196.6694433407311839234@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Mark i915_request.timeline
 as a volatile, rcu pointer
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

Ck9uIDE5LzA5LzIwMTkgMTg6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTE5IDE4OjExOjE0KQo+Pgo+PiBPbiAxOS8wOS8yMDE5IDE0OjI2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5
LTE5IDE0OjAyOjE5KQo+Pj4+Cj4+Pj4gT24gMTkvMDkvMjAxOSAxMjoxOSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiArc3RhdGljIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqZ2V0X3RpbWVsaW5l
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+Pj4+PiArewo+Pj4+PiArICAgICBzdHJ1Y3QgaW50
ZWxfdGltZWxpbmUgKnRsOwo+Pj4+PiArCj4+Pj4+ICsgICAgIC8qCj4+Pj4+ICsgICAgICAqIEV2
ZW4gdGhvdWdoIHdlIGFyZSBob2xkaW5nIHRoZSBlbmdpbmUtPmFjdGl2ZS5sb2NrIGhlcmUsIHRo
ZXJlCj4+Pj4+ICsgICAgICAqIGlzIG5vIGNvbnRyb2wgb3ZlciB0aGUgc3VibWlzc2lvbiBxdWV1
ZSBwZXItc2UgYW5kIHdlIGFyZQo+Pj4+PiArICAgICAgKiBpbnNwZWN0aW5nIHRoZSBhY3RpdmUg
c3RhdGUgYXQgYSByYW5kb20gcG9pbnQgaW4gdGltZSwgd2l0aCBhbgo+Pj4+PiArICAgICAgKiB1
bmtub3duIHF1ZXVlLiBQbGF5IHNhZmUgYW5kIG1ha2Ugc3VyZSB0aGUgdGltZWxpbmUgcmVtYWlu
cyB2YWxpZC4KPj4+Pj4gKyAgICAgICogKE9ubHkgYmVpbmcgdXNlZCBmb3IgcHJldHR5IHByaW50
aW5nLCBvbmUgZXh0cmEga3JlZiBzaG91bGRuJ3QKPj4+Pj4gKyAgICAgICogY2F1c2UgYSBjYW1l
bCBzdGFtcGVkZSEpCj4+Pj4+ICsgICAgICAqLwo+Pj4+PiArICAgICByY3VfcmVhZF9sb2NrKCk7
Cj4+Pj4+ICsgICAgIHRsID0gcmN1X2RlcmVmZXJlbmNlKHJxLT50aW1lbGluZSk7Cj4+Pj4+ICsg
ICAgIGlmICgha3JlZl9nZXRfdW5sZXNzX3plcm8oJnRsLT5rcmVmKSkKPj4+Pj4gKyAgICAgICAg
ICAgICB0bCA9IE5VTEw7Cj4+Pj4+ICsgICAgIHJjdV9yZWFkX3VubG9jaygpOwo+Pj4+Cj4+Pj4g
SG93IGNhbiBpdCBiZSBOVUxMIHVuZGVyIHRoZSBhY3RpdmUgbG9jaz8gSXNuJ3QgdGhhdCB0aGUg
c2FtZSBhc3NlcnRpb24KPj4+PiBmcm9tIGk5MTVfdGltZWxpbmVfZ2V0X2FjdGl2ZS4KPj4+Cj4+
PiBOb3QgTlVMTCwgYnV0IHJldGlyZWQuIFRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgZHVyaW5nIHN1
Ym1pc3Npb24gd2Uga25vdwo+Pj4gdGhhdCB0aGlzIHJlcXVlc3QncyBjb250ZXh0L3RpbWVsaW5l
IG11c3QgYmUgY3VycmVudGx5IHBpbm5lZCB1bnRpbAo+Pj4gYSBzdWJzZXF1ZW50IHJlcXVlc3Qg
KGNvbnRhaW5pbmcgdGhlIGlkbGUtYmFycmllcnMpIGlzIHN1Ym1pdHRlZC4gVGhlCj4+PiBkYW5n
ZXIgSSB3b3JyeSBhYm91dCBoZXJlIGlzIHRoYXQgc3Vic2VxdWVudCBpZGxlIHJlcXVlc3QgbWF5
IGJlIGFscmVhZHkKPj4+IHN1Ym1pdHRlZCBhbmQgc2luY2UgdGhlIHF1ZXVlZCByZXF1ZXN0cyBt
YXkgKmFscmVhZHkqIGhhdmUgYmVlbiByZXRpcmVkLAo+Pj4gdGhlIHRpbWVsaW5lIG1heSBiZSB1
bnBpbm5lZCBhbmQgaW5kZWVkIGRyb3BwZWQgaXQncyBsYXN0IHJlZmVyZW5jZS4KPj4KPj4gQnV0
IGhlcmUgaXQgaXMgdW5kZXIgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2sgd2l0aCBpbnRlcnJ1cHRz
IGRpc2FibGVkCj4+IGFuZCB0aGUgcmVxdWVzdHMgYXJlIGZldGNoZWQgZnJvbSBleGVjbGlzdHMg
cG9ydHMuIFRpbWVsaW5lIGlzIG5vdAo+PiBndWFyYW50ZWVkIHRvIGJlIGtlcHQgYWxpdmUgdW5k
ZXIgdGhlc2UgY29uZGl0aW9ucz8gaW50ZWxfY29udGV4dAo+PiByZWZlcmVuY2Ugd2lsbCBiZSBo
ZWxkIHVudGlsIHByb2Nlc3NfY3NiIHNjaGVkdWxlcyBpdCBvdXQgc28gSSdkIGV4cGVjdAo+PiB0
aW1lbGluZSBhbmQgaHdzcCB0byBiZSB0aGVyZS4gQnV0IEkgY291bGQgYmUgbG9zdCBpbiB0aGUg
bmV3IHNjaGVtZSBvZgo+PiB0aGluZ3MuCj4gCj4gSSBmZWx0IGl0IHdhcyBwcnVkZW50IHRvIG9u
bHkgcmVseSBvbiB0aGUgYWN0aXZlIHBpbi4gWW91IGFyZSByaWdodCBpbgo+IHRoYXQgd2UgaGF2
ZSBhIGNvbnRleHQgcmVmZXJlbmNlIGlmIGl0IGlzIGluIGFjdGl2ZSwgYW5kIHRoYXQgY29udGV4
dAo+IGhvbGRzIGEgcmVmZXJlbmNlIHRvIHRoZSB0aW1lbGluZS4gQnV0Li4uIGVuZ2luZS0+YWN0
aXZlLmxvY2sgaXMgbm90Cj4gdGhlIGxvY2sgdGhhdCBndWFyZHMgcnEtPnRpbWVsaW5lLCBzbyBJ
IGZlZWwgdW5lYXN5IG9uIGV4dGVuZGluZwo+IGk5MTVfcmVxdWVzdF9hY3RpdmVfdGltZWxpbmUo
KSB0b28gZmFyLiBPdXRzaWRlIG9mIHRoZSBzdWJtaXNzaW9uCj4gcGF0aHdheSwgaW5zaWRlIGEg
cHJldHR5IHByaW50ZXIsIGl0IGZlZWxzIHNhZmVyICh3aGF0ZXZlciBjaGFuZ2VzIG1heQo+IGNv
bWUgd2UgZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCBpdCkgdG8gbm90IGFzc3VtZSBhbnl0aGlu
ZyBhbmQganVzdAo+IHVzZSB0aGUgZmFpbHNhZmUgcmN1X2RlcmVmZXJlbmNlKCkgKyBrcmVmLgoK
V2VsbCBva2F5LCBJIGNhbiBhY2NlcHQgdGhhdCBpbiB0aGUgb3ZlcmFsbCBzaXR1YXRpb24uCgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
