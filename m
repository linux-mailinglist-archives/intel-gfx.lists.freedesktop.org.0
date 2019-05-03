Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF7812BF7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 13:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9DE89C17;
	Fri,  3 May 2019 11:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3911F89C17
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 11:03:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 04:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="140944935"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 04:03:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ae2f30e8-fde2-f2f2-87c3-a2da3cc7baa0@linux.intel.com>
Date: Fri, 3 May 2019 12:03:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501114541.10077-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/14] drm/i915: Delay semaphore submission
 until the start of the signaler
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

Ck9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBDdXJyZW50bHkgd2Ug
c3VibWl0IHRoZSBzZW1hcGhvcmUgYnVzeXdhaXQgYXMgc29vbiBhcyB0aGUgc2lnbmFsZXIgaXMK
PiBzdWJtaXR0ZWQgdG8gSFcuIEhvd2V2ZXIsIHdlIG1heSBzdWJtaXQgdGhlIHNpZ25hbGVyIGFz
IHRoZSB0YWlsIG9mIGEKPiBiYXRjaCBvZiByZXF1ZXN0cywgYW5kIGV2ZW4gbm90IGFzIHRoZSBm
aXJzdCBjb250ZXh0IGluIHRoZSBIVyBsaXN0LAo+IGkuZS4gdGhlIGJ1c3l3YWl0IG1heSBzdGFy
dCBzcGlubmluZyBmYXIgaW4gYWR2YW5jZSBvZiB0aGUgc2lnbmFsZXIgZXZlbgo+IHN0YXJ0aW5n
Lgo+IAo+IElmIHdlIHdhaXQgdW50aWwgdGhlIHJlcXVlc3QgYmVmb3JlIHRoZSBzaWduYWxlciBp
cyBjb21wbGV0ZWQgYmVmb3JlCj4gc3VibWl0dGluZyB0aGUgYnVzeXdhaXQsIHdlIHByZXZlbnQg
dGhlIGJ1c3l3YWl0IGZyb20gc3RhcnRpbmcgdG9vCj4gZWFybHksIGlmIHRoZSBzaWduYWxlciBp
cyBub3QgZmlyc3QgaW4gc3VibWlzc2lvbiBwb3J0Lgo+IAo+IFRvIGhhbmRsZSB0aGUgY2FzZSB3
aGVyZSB0aGUgc2lnbmFsZXIgaXMgYXQgdGhlIHN0YXJ0IG9mIHRoZSBzZWNvbmQgKG9yCj4gbGF0
ZXIpIHN1Ym1pc3Npb24gcG9ydCwgd2Ugd2lsbCBuZWVkIHRvIGRlbGF5IHRoZSBleGVjdXRpb24g
Y2FsbGJhY2sKPiB1bnRpbCB3ZSBrbm93IHRoZSBjb250ZXh0IGlzIHByb21vdGVkIHRvIHBvcnQw
LiBBIGNoYWxsZW5nZSBmb3IgbGF0ZXIuCj4gCj4gRml4ZXM6IGU4ODYxOTY0Njk3MSAoImRybS9p
OTE1OiBVc2UgSFcgc2VtYXBob3JlcyBmb3IgaW50ZXItZW5naW5lIHN5bmNocm9uaQo+IHNhdGlv
biBvbiBnZW44KyIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDE5ICsr
KysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBpbmRleCAyZTIyZGE2NmE1NmMuLjhj
YjNlZDU1MzFlMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gQEAgLTc3
MCw2ICs3NzAsMjEgQEAgaTkxNV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCj4gICAJcmV0dXJuIHJxOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbnQKPiAraTkxNV9yZXF1
ZXN0X2F3YWl0X3N0YXJ0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpzaWduYWwpCj4gK3sKPiArCWlmIChsaXN0X2lzX2ZpcnN0KCZzaWduYWwtPnJpbmdfbGlu
aywgJnNpZ25hbC0+cmluZy0+cmVxdWVzdF9saXN0KSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlz
aWduYWwgPSBsaXN0X3ByZXZfZW50cnkoc2lnbmFsLCByaW5nX2xpbmspOwo+ICsJaWYgKGk5MTVf
dGltZWxpbmVfc3luY19pc19sYXRlcihycS0+dGltZWxpbmUsICZzaWduYWwtPmZlbmNlKSkKPiAr
CQlyZXR1cm4gMDsKPiArCj4gKwlyZXR1cm4gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2Uo
JnJxLT5zdWJtaXQsCj4gKwkJCQkJICAgICAmc2lnbmFsLT5mZW5jZSwgMCwKPiArCQkJCQkgICAg
IEk5MTVfRkVOQ0VfR0ZQKTsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQKPiAgIGVtaXRfc2VtYXBo
b3JlX3dhaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sCj4gICAJCSAgICBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpmcm9tLAo+IEBAIC03ODgsNiArODAzLDEwIEBAIGVtaXRfc2VtYXBob3JlX3dhaXQo
c3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sCj4gICAJCQkJCQkgICAgICZmcm9tLT5mZW5jZSwgMCwK
PiAgIAkJCQkJCSAgICAgSTkxNV9GRU5DRV9HRlApOwo+ICAgCj4gKwllcnIgPSBpOTE1X3JlcXVl
c3RfYXdhaXRfc3RhcnQodG8sIGZyb20pOwo+ICsJaWYgKGVyciA8IDApCj4gKwkJcmV0dXJuIGVy
cjsKPiArCj4gICAJZXJyID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoJnRvLT5zZW1h
cGhvcmUsCj4gICAJCQkJCSAgICAmZnJvbS0+ZmVuY2UsIDAsCj4gICAJCQkJCSAgICBJOTE1X0ZF
TkNFX0dGUCk7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
