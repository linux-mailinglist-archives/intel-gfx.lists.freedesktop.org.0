Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA94BB5BD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:48:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30E86E912;
	Mon, 23 Sep 2019 13:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1DF6E912
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 13:48:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 06:48:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,540,1559545200"; d="scan'208";a="213333463"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 06:48:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
 <20190921095542.23205-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <89c1b924-6060-61fc-b674-c7fb836283b6@linux.intel.com>
Date: Mon, 23 Sep 2019 14:48:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190921095542.23205-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

Ck9uIDIxLzA5LzIwMTkgMTA6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBGb3JjZSBib25kZWQg
cmVxdWVzdHMgdG8gcnVuIG9uIGRpc3RpbmN0IGVuZ2luZXMgc28gdGhhdCB0aGV5IGNhbm5vdCBi
ZQo+IHNodWZmbGVkIG9udG8gdGhlIHNhbWUgZW5naW5lIHdoZXJlIHRpbWVzbGljaW5nIHdpbGwg
cmV2ZXJzZSB0aGUgb3JkZXIuCj4gQSBib25kZWQgcmVxdWVzdCB3aWxsIG9mdGVuIHdhaXQgb24g
YSBzZW1hcGhvcmUgc2lnbmFsZWQgYnkgaXRzIG1hc3RlciwKPiBjcmVhdGluZyBhbiBpbXBsaWNp
dCBkZXBlbmRlbmN5IC0tIGlmIHdlIGlnbm9yZSB0aGF0IGltcGxpY2l0IGRlcGVuZGVuY3kKPiBh
bmQgYWxsb3cgdGhlIGJvbmRlZCByZXF1ZXN0IHRvIHJ1biBvbiB0aGUgc2FtZSBlbmdpbmUgYW5k
IGJlZm9yZSBpdHMKPiBtYXN0ZXIsIHdlIHdpbGwgY2F1c2UgYSBHUFUgaGFuZy4gW1doZXRoZXIg
aXQgd2lsbCBoYW5nIHRoZSBHUFUgaXMKPiBkZWJhdGFibGUsIHdlIHNob3VsZCBrZWVwIG9uIHRp
bWVzbGljaW5nIGFuZCBlYWNoIHRpbWVzbGljZSBzaG91bGQgYmUKPiAiYWNjaWRlbnRhbGx5IiBj
b3VudGVkIGFzIGZvcndhcmQgcHJvZ3Jlc3MsIGluIHdoaWNoIGNhc2UgaXQgc2hvdWxkIHJ1bgo+
IGJ1dCBhdCBvbmUtaGFsZiB0byBvbmUtdGhpcmQgc3BlZWQuXQo+IAo+IFdlIGNhbiBwcmV2ZW50
IHRoaXMgaW52ZXJzaW9uIGJ5IHJlc3RyaWN0aW5nIHdoaWNoIGVuZ2luZXMgd2UgYWxsb3cKPiBv
dXJzZWx2ZXMgdG8ganVtcCB0byB1cG9uIHByZWVtcHRpb24sIGkuZS4gYmFraW5nIGluIHRoZSBh
cnJhbmdlbWVudAo+IGVzdGFibGlzaGVkIGF0IGZpcnN0IGV4ZWN1dGlvbi4gKFdlIHNob3VsZCBh
bHNvIGNvbnNpZGVyIGNhcHR1cmluZyB0aGUKPiBpbXBsaWNpdCBkZXBlbmRlbmN5IHVzaW5nIGk5
MTVfc2NoZWRfYWRkX2RlcGVuZGVuY3koKSwgYnV0IGZpcnN0IHdlIG5lZWQKPiB0byB0aGluayBh
Ym91dCB0aGUgY29uc3RyYWludHMgdGhhdCByZXF1aXJlcyBvbiB0aGUgZXhlY3V0aW9uL3JldGly
ZW1lbnQKPiBvcmRlcmluZy4pCj4gCj4gRml4ZXM6IDhlZTM2ZTA0OGM5OCAoImRybS9pOTE1L2V4
ZWNsaXN0czogTWluaW1hbGlzdGljIHRpbWVzbGljaW5nIikKPiBSZWZlcmVuY2VzOiBlZTExMzY5
MDhlOWIgKCJkcm0vaTkxNS9leGVjbGlzdHM6IFZpcnR1YWwgZW5naW5lIGJvbmRpbmciKQo+IFRl
c3RjYXNlOiBpZ3QvZ2VtX2V4ZWNfYmFsYW5jZXIvYm9uZGVkLXNsaWNlCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCAyMCArKysrKysrKysrKystLS0tLS0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCAzZWFkZDI5NGJjZDcuLjk4NzJiYjRjOTlmYyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTM4NDYsMTggKzM4NDYsMjIg
QEAgc3RhdGljIHZvaWQKPiAgIHZpcnR1YWxfYm9uZF9leGVjdXRlKHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxLCBzdHJ1Y3QgZG1hX2ZlbmNlICpzaWduYWwpCj4gICB7Cj4gICAJc3RydWN0IHZpcnR1
YWxfZW5naW5lICp2ZSA9IHRvX3ZpcnR1YWxfZW5naW5lKHJxLT5lbmdpbmUpOwo+ICsJaW50ZWxf
ZW5naW5lX21hc2tfdCBhbGxvd2VkLCBleGVjOwo+ICAgCXN0cnVjdCB2ZV9ib25kICpib25kOwo+
ICAgCj4gKwlhbGxvd2VkID0gfnRvX3JlcXVlc3Qoc2lnbmFsKS0+ZW5naW5lLT5tYXNrOwo+ICsK
PiAgIAlib25kID0gdmlydHVhbF9maW5kX2JvbmQodmUsIHRvX3JlcXVlc3Qoc2lnbmFsKS0+ZW5n
aW5lKTsKPiAtCWlmIChib25kKSB7Cj4gLQkJaW50ZWxfZW5naW5lX21hc2tfdCBvbGQsIG5ldywg
Y21wOwo+ICsJaWYgKGJvbmQpCj4gKwkJYWxsb3dlZCAmPSBib25kLT5zaWJsaW5nX21hc2s7Cj4g
ICAKPiAtCQljbXAgPSBSRUFEX09OQ0UocnEtPmV4ZWN1dGlvbl9tYXNrKTsKPiAtCQlkbyB7Cj4g
LQkJCW9sZCA9IGNtcDsKPiAtCQkJbmV3ID0gY21wICYgYm9uZC0+c2libGluZ19tYXNrOwo+IC0J
CX0gd2hpbGUgKChjbXAgPSBjbXB4Y2hnKCZycS0+ZXhlY3V0aW9uX21hc2ssIG9sZCwgbmV3KSkg
IT0gb2xkKTsKPiAtCX0KPiArCS8qIFJlc3RyaWN0IHRoZSBib25kZWQgcmVxdWVzdCB0byBydW4g
b24gb25seSB0aGUgYXZhaWxhYmxlIGVuZ2luZXMgKi8KPiArCWV4ZWMgPSBSRUFEX09OQ0UocnEt
PmV4ZWN1dGlvbl9tYXNrKTsKPiArCXdoaWxlICghdHJ5X2NtcHhjaGcoJnJxLT5leGVjdXRpb25f
bWFzaywgJmV4ZWMsIGV4ZWMgJiBhbGxvd2VkKSkKPiArCQk7Cj4gKwo+ICsJLyogUHJldmVudCB0
aGUgbWFzdGVyIGZyb20gYmVpbmcgcmUtcnVuIG9uIHRoZSBib25kZWQgZW5naW5lcyAqLwo+ICsJ
dG9fcmVxdWVzdChzaWduYWwpLT5leGVjdXRpb25fbWFzayAmPSB+YWxsb3dlZDsKCkkgaGFkIGFu
IG9wZW4gaGVyZSB3aGV0aGVyIHdlIHNob3VsZCBhbHNvIGZpeCB0aGUgc2xhdmUuIEF0IHJlLXN1
Ym1pdCAKdGltZSB3aGF0IGlzIHByZXZlbnRpbmcgdGhlIHNsYXZlIGJlaW5nIHB1dCBvbiB0aGUg
c2FtZSBlbmdpbmUgYXMgdGhlIAptYXN0ZXI/CgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgfQo+ICAg
Cj4gICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
