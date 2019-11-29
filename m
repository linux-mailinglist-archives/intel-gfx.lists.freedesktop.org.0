Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6B710D502
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D0A6E8E1;
	Fri, 29 Nov 2019 11:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D9A6E8E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 11:39:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:39:30 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203711018"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 29 Nov 2019 03:39:30 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191129103455.744389-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <24a4e778-cd32-48ae-5d1f-1e3482b383bf@linux.intel.com>
Date: Fri, 29 Nov 2019 11:39:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191129103455.744389-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wait only on the
 expected barrier
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

Ck9uIDI5LzExLzIwMTkgMTA6MzQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXYWl0IG9uIG9ubHkg
dGhlIGxhc3QgcmVxdWVzdCBvbiB0aGUga2VybmVsX2NvbnRleHQgYWZ0ZXIgZW1pdHRpbmcgYQo+
IGJhcnJpZXIgc28gdGhhdCB3ZSBkbyBub3Qgd2FpdCBmb3IgZXZlcnl0aGluZyBpbiBnZW5lcmFs
IGFuZCBieSBkb2luZyBzbwo+IGNhdXNlIGFuIGFjY2lkZW50YWwgZW1pc3Npb24gb2YgdGhlIGJh
cnJpZXIhCj4gCj4gQnVnemlsbGE7IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMjQwNQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgLi4uL2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2lu
ZV9oZWFydGJlYXQuYyAgIHwgMjQgKysrKysrKysrKysrKysrKysrLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCj4gaW5kZXggMGIx
MTQ4Y2YzZjYxLi41MjI3ZTc5MjA0YTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCj4gQEAgLTExLDYgKzExLDI4IEBA
Cj4gICAjaW5jbHVkZSAiaW50ZWxfZ3RfcmVxdWVzdHMuaCIKPiAgICNpbmNsdWRlICJpOTE1X3Nl
bGZ0ZXN0LmgiCj4gICAKPiArc3RhdGljIGludCB0aW1lbGluZV9zeW5jKHN0cnVjdCBpbnRlbF90
aW1lbGluZSAqdGwpCj4gK3sKPiArCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+ICsJbG9uZyB0
aW1lb3V0Owo+ICsKPiArCWZlbmNlID0gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0KCZ0bC0+bGFzdF9y
ZXF1ZXN0KTsKPiArCWlmICghZmVuY2UpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJdGltZW91dCA9
IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIHRydWUsIEhaIC8gMik7Cj4gKwlkbWFfZmVu
Y2VfcHV0KGZlbmNlKTsKPiArCWlmICh0aW1lb3V0IDwgMCkKPiArCQlyZXR1cm4gdGltZW91dDsK
PiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBlbmdpbmVfc3luY19iYXJy
aWVyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJcmV0dXJuIHRpbWVs
aW5lX3N5bmMoZW5naW5lLT5rZXJuZWxfY29udGV4dC0+dGltZWxpbmUpOwo+ICt9Cj4gKwo+ICAg
c3RydWN0IHB1bHNlIHsKPiAgIAlzdHJ1Y3QgaTkxNV9hY3RpdmUgYWN0aXZlOwo+ICAgCXN0cnVj
dCBrcmVmIGtyZWY7Cj4gQEAgLTkwLDcgKzExMiw3IEBAIHN0YXRpYyBpbnQgX19saXZlX2lkbGVf
cHVsc2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgCj4gICAJR0VNX0JVR19P
TighbGxpc3RfZW1wdHkoJmVuZ2luZS0+YmFycmllcl90YXNrcykpOwo+ICAgCj4gLQlpZiAoaW50
ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoZW5naW5lLT5ndCwgSFogLyA1KSkgewo+ICsJ
aWYgKGVuZ2luZV9zeW5jX2JhcnJpZXIoZW5naW5lKSkgewo+ICAgCQlzdHJ1Y3QgZHJtX3ByaW50
ZXIgbSA9IGRybV9lcnJfcHJpbnRlcigicHVsc2UiKTsKPiAgIAo+ICAgCQlwcl9lcnIoIiVzOiBu
byBoZWFydGJlYXQgcHVsc2U/XG4iLCBlbmdpbmUtPm5hbWUpOwo+IAoKUmV2aWV3ZWQtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
