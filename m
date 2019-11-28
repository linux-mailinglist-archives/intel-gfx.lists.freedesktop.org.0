Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3014B10C846
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:56:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29AE66E7C0;
	Thu, 28 Nov 2019 11:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4186E7C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:56:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 03:56:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203415043"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 28 Nov 2019 03:56:41 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191127223252.3777141-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5275e2ce-07b3-fe6b-98cf-bd6599d849b0@linux.intel.com>
Date: Thu, 28 Nov 2019 11:56:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127223252.3777141-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 1/3] drm/i915/selftests: Count the number of
 engines used
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

Ck9uIDI3LzExLzIwMTkgMjI6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBEb24ndCByZWx5IG9u
IHRoZSBSVU5USU1FX0lORk8oKSB3aGVuIHdlIGxvb3Agb3ZlciBhIHBhcnRpY3VsYXIgY29udGV4
dAo+IGFuZCBvbmx5IHJ1biBvbiBhIGZpbHRlcmVkIHNldCBvZiBlbmdpbmVzLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+
ICAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgMjUgKysr
KysrKysrKysrLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCAyZWE0NzkwZjM3MjEuLjMzZTU2ZDlh
ZjA2MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTEzNDMsMTEgKzEzNDMsMTMgQEAgc3RhdGljIGlu
dCBpZ3RfY3R4X3NzZXUodm9pZCAqYXJnKQo+ICAgc3RhdGljIGludCBpZ3RfY3R4X3JlYWRvbmx5
KHZvaWQgKmFyZykKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFy
ZzsKPiArCXVuc2lnbmVkIGxvbmcgaWR4LCBuZHdvcmRzLCBkdywgbnVtX2VuZ2luZXM7Cj4gICAJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IE5VTEw7Cj4gICAJc3RydWN0IGk5MTVf
cmVxdWVzdCAqdHFbNV0gPSB7fTsKPiArCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7
Cj4gICAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07Cj4gICAJc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eDsKPiAtCXVuc2lnbmVkIGxvbmcgaWR4LCBuZHdvcmRzLCBkdzsKPiArCXN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKPiAgIAlzdHJ1Y3QgaWd0X2xpdmVfdGVzdCB0Owo+ICAg
CUk5MTVfUk5EX1NUQVRFKHBybmcpOwo+ICAgCUlHVF9USU1FT1VUKGVuZF90aW1lKTsKPiBAQCAt
MTM4MSwxMiArMTM4MywxNSBAQCBzdGF0aWMgaW50IGlndF9jdHhfcmVhZG9ubHkodm9pZCAqYXJn
KQo+ICAgCQlnb3RvIG91dF9maWxlOwo+ICAgCX0KPiAgIAo+ICsJbnVtX2VuZ2luZXMgPSAwOwo+
ICsJZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMo
Y3R4KSwgaXQpCj4gKwkJaWYgKGludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2lu
ZSkpCj4gKwkJCW51bV9lbmdpbmVzKys7Cj4gKwlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdp
bmVzKGN0eCk7Cj4gKwo+ICAgCW5kd29yZHMgPSAwOwo+ICAgCWR3ID0gMDsKPiAgIAl3aGlsZSAo
IXRpbWVfYWZ0ZXIoamlmZmllcywgZW5kX3RpbWUpKSB7Cj4gLQkJc3RydWN0IGk5MTVfZ2VtX2Vu
Z2luZXNfaXRlciBpdDsKPiAtCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gLQo+ICAgCQlm
b3JfZWFjaF9nZW1fZW5naW5lKGNlLAo+ICAgCQkJCSAgICBpOTE1X2dlbV9jb250ZXh0X2xvY2tf
ZW5naW5lcyhjdHgpLCBpdCkgewo+ICAgCQkJaWYgKCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3
b3JkKGNlLT5lbmdpbmUpKQo+IEBAIC0xNDI5LDggKzE0MzQsOCBAQCBzdGF0aWMgaW50IGlndF9j
dHhfcmVhZG9ubHkodm9pZCAqYXJnKQo+ICAgCQl9Cj4gICAJCWk5MTVfZ2VtX2NvbnRleHRfdW5s
b2NrX2VuZ2luZXMoY3R4KTsKPiAgIAl9Cj4gLQlwcl9pbmZvKCJTdWJtaXR0ZWQgJWx1IGR3b3Jk
cyAoYWNyb3NzICV1IGVuZ2luZXMpXG4iLAo+IC0JCW5kd29yZHMsIFJVTlRJTUVfSU5GTyhpOTE1
KS0+bnVtX2VuZ2luZXMpOwo+ICsJcHJfaW5mbygiU3VibWl0dGVkICVsdSBkd29yZHMgKGFjcm9z
cyAlbHUgZW5naW5lcylcbiIsCj4gKwkJbmR3b3JkcywgbnVtX2VuZ2luZXMpOwo+ICAgCj4gICAJ
ZHcgPSAwOwo+ICAgCWlkeCA9IDA7Cj4gQEAgLTE2OTAsMTAgKzE2OTUsMTAgQEAgc3RhdGljIGlu
dCBpZ3Rfdm1faXNvbGF0aW9uKHZvaWQgKmFyZykKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGFyZzsKPiAgIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4X2Es
ICpjdHhfYjsKPiArCXVuc2lnbmVkIGxvbmcgbnVtX2VuZ2luZXMsIGNvdW50Owo+ICAgCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiAgIAlzdHJ1Y3QgaWd0X2xpdmVfdGVzdCB0Owo+
ICAgCUk5MTVfUk5EX1NUQVRFKHBybmcpOwo+IC0JdW5zaWduZWQgbG9uZyBjb3VudDsKPiAgIAlz
dHJ1Y3QgZmlsZSAqZmlsZTsKPiAgIAl1NjQgdm1fdG90YWw7Cj4gICAJaW50IGVycjsKPiBAQCAt
MTczNSw2ICsxNzQwLDcgQEAgc3RhdGljIGludCBpZ3Rfdm1faXNvbGF0aW9uKHZvaWQgKmFyZykK
PiAgIAl2bV90b3RhbCAtPSBJOTE1X0dUVF9QQUdFX1NJWkU7Cj4gICAKPiAgIAljb3VudCA9IDA7
Cj4gKwludW1fZW5naW5lcyA9IDA7Cj4gICAJZm9yX2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lLCBp
OTE1KSB7Cj4gICAJCUlHVF9USU1FT1VUKGVuZF90aW1lKTsKPiAgIAkJdW5zaWduZWQgbG9uZyB0
aGlzID0gMDsKPiBAQCAtMTc3Miw5ICsxNzc4LDEwIEBAIHN0YXRpYyBpbnQgaWd0X3ZtX2lzb2xh
dGlvbih2b2lkICphcmcpCj4gICAJCQl0aGlzKys7Cj4gICAJCX0KPiAgIAkJY291bnQgKz0gdGhp
czsKPiArCQludW1fZW5naW5lcysrOwo+ICAgCX0KPiAtCXByX2luZm8oIkNoZWNrZWQgJWx1IHNj
cmF0Y2ggb2Zmc2V0cyBhY3Jvc3MgJWQgZW5naW5lc1xuIiwKPiAtCQljb3VudCwgUlVOVElNRV9J
TkZPKGk5MTUpLT5udW1fZW5naW5lcyk7Cj4gKwlwcl9pbmZvKCJDaGVja2VkICVsdSBzY3JhdGNo
IG9mZnNldHMgYWNyb3NzICVsdSBlbmdpbmVzXG4iLAo+ICsJCWNvdW50LCBudW1fZW5naW5lcyk7
Cj4gICAKPiAgIG91dF9maWxlOgo+ICAgCWlmIChpZ3RfbGl2ZV90ZXN0X2VuZCgmdCkpCj4gCgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
