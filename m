Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 388FF6FFFD
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 14:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944FD89C1F;
	Mon, 22 Jul 2019 12:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFDF89C1F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 12:46:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 05:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="368503489"
Received: from kraman-mobl.amr.corp.intel.com (HELO [10.251.80.208])
 ([10.251.80.208])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 05:46:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d5e8d47e-dd7f-d310-d481-1add775e38ef@linux.intel.com>
Date: Mon, 22 Jul 2019 13:46:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718070024.21781-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/20] drm/i915: Remove obsolete engine
 cleanup
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

Ck9uIDE4LzA3LzIwMTkgMDg6MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSZW1vdmUgdGhlIG91
dGVyIGxheWVyIGNsZWFudXAgb2YgZW5naW5lIHN0dWJzOyBhcyBpOTE1X2RydiBpdHNlbGYgbm8K
PiBsb25nZXIgdHJpZXMgdG8gcHJlYWxsb2NhdGUgYW5kIHNvIGlzIG5vdCByZXNwb25zaWJsZSBm
b3IgZWl0aGVyIHRoZQo+IGFsbG9jYXRpb24gb3IgZnJlZS4gQnkgdGhlIHRpbWUgd2UgY2FsbCB0
aGUgY2xlYW51cCBmdW5jdGlvbiwgd2UgYWxyZWFkeQo+IGhhdmUgY2xlYW5lZCB1cCB0aGUgZW5n
aW5lcy4KPiAKPiB2MjogTGFjayBvZiBzeW1tZXRyeSBiZXR3ZWVuIG1taW9fcHJvYmUgYW5kIG1t
aW9fcmVsZWFzZSBmb3IgaGFuZGxpbmcKPiB0aGUgZXJyb3IgY2xlYW51cC4gZW5naW5lLT5kZXN0
cm95KCkgaXMgYSBjb21wb3VuZCBmdW5jdGlvbiB0aGF0IGlzCj4gY2FsbGVkIGVhcmxpZXIgaW4g
dGhlIG5vcm1hbCByZWxlYXNlIGFzIGl0IHRpZXMgdG9nZXRoZXIgb3RoZXIgYml0cyBvZgo+IHN0
YXRlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDE1ICsr
LS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggN2MyMDk3NDNlNDc4
Li5kMWMzNDk5YzhlMDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtODQ4LDE1
ICs4NDgsNiBAQCBzdGF0aWMgaW50IGk5MTVfd29ya3F1ZXVlc19pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiAgIAlyZXR1cm4gLUVOT01FTTsKPiAgIH0KPiAgIAo+IC1z
dGF0aWMgdm9pZCBpOTE1X2VuZ2luZXNfY2xlYW51cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAtewo+IC0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+IC0JZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQ7Cj4gLQo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwg
aWQpCj4gLQkJa2ZyZWUoZW5naW5lKTsKPiAtfQo+IC0KPiAgIHN0YXRpYyB2b2lkIGk5MTVfd29y
a3F1ZXVlc19jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIHsK
PiAgIAlkZXN0cm95X3dvcmtxdWV1ZShkZXZfcHJpdi0+aG90cGx1Zy5kcF93cSk7Cj4gQEAgLTky
OCw3ICs5MTksNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIAo+ICAgCXJldCA9IGk5MTVfd29ya3F1ZXVl
c19pbml0KGRldl9wcml2KTsKPiAgIAlpZiAocmV0IDwgMCkKPiAtCQlnb3RvIGVycl9lbmdpbmVz
Owo+ICsJCXJldHVybiByZXQ7Cj4gICAKPiAgIAlpbnRlbF9ndF9pbml0X2Vhcmx5KCZkZXZfcHJp
di0+Z3QsIGRldl9wcml2KTsKPiAgIAo+IEBAIC05NjEsOCArOTUyLDYgQEAgc3RhdGljIGludCBp
OTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4gICAJaTkxNV9nZW1fY2xlYW51cF9lYXJseShkZXZfcHJpdik7Cj4gICBlcnJfd29ya3F1ZXVl
czoKPiAgIAlpOTE1X3dvcmtxdWV1ZXNfY2xlYW51cChkZXZfcHJpdik7Cj4gLWVycl9lbmdpbmVz
Ogo+IC0JaTkxNV9lbmdpbmVzX2NsZWFudXAoZGV2X3ByaXYpOwo+ICAgCXJldHVybiByZXQ7Cj4g
ICB9Cj4gICAKPiBAQCAtOTc4LDcgKzk2Nyw2IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX2xh
dGVfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJaW50ZWxf
dWNfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0LnVjKTsKPiAgIAlpOTE1X2dlbV9jbGVhbnVw
X2Vhcmx5KGRldl9wcml2KTsKPiAgIAlpOTE1X3dvcmtxdWV1ZXNfY2xlYW51cChkZXZfcHJpdik7
Cj4gLQlpOTE1X2VuZ2luZXNfY2xlYW51cChkZXZfcHJpdik7Cj4gICAKPiAgIAlwbV9xb3NfcmVt
b3ZlX3JlcXVlc3QoJmRldl9wcml2LT5zYl9xb3MpOwo+ICAgCW11dGV4X2Rlc3Ryb3koJmRldl9w
cml2LT5zYl9sb2NrKTsKPiBAQCAtMTAzOSw2ICsxMDI3LDcgQEAgc3RhdGljIGludCBpOTE1X2Ry
aXZlcl9tbWlvX3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgICAq
Lwo+ICAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbW1pb19yZWxlYXNlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiAgIHsKPiArCWludGVsX2VuZ2luZXNfY2xlYW51cChkZXZf
cHJpdik7Cj4gICAJaW50ZWxfdGVhcmRvd25fbWNoYmFyKGRldl9wcml2KTsKPiAgIAlpbnRlbF91
bmNvcmVfZmluaV9tbWlvKCZkZXZfcHJpdi0+dW5jb3JlKTsKPiAgIAlwY2lfZGV2X3B1dChkZXZf
cHJpdi0+YnJpZGdlX2Rldik7Cj4gCgpPa2F5LCBsb29rcyBva2F5LiBCdXQgZG8gSSBkYXJlIHRv
IHNheSB0aGF0IGFmdGVyIGFsbCB0aGUgZWZmb3J0cyB0byAKbWFrZSB0aGluZ3MgbW9yZSBsb2dp
Y2FsIGluIHRoZSBpbml0L3JlbGVhc2UgcGF0aHMgd2UgYXJlIHN0aWxsIG5vdCAKdGhlcmU/IDop
CgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
ClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
