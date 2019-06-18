Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669FE4A2A0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE406E176;
	Tue, 18 Jun 2019 13:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 121226E176
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:45:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="150276393"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga007.jf.intel.com with ESMTP; 18 Jun 2019 06:45:52 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 740365C1EC4; Tue, 18 Jun 2019 16:45:45 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190618074153.16055-1-chris@chris-wilson.co.uk>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
Date: Tue, 18 Jun 2019 16:45:45 +0300
Message-ID: <87wohj6m7q.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/26] drm/i915: Keep engine alive as we
 retire the context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhvdWdo
IHdlIHBpbiB0aGUgY29udGV4dCBmaXJzdCBiZWZvcmUgdGFraW5nIHRoZSBwbSB3YWtlcmVmLCBk
dXJpbmcKPiByZXRpcmUgd2UgbmVlZCB0byB1bnBpbiBiZWZvcmUgZHJvcHBpbmcgdGhlIHBtIHdh
a2VyZWYgKGJyZWFraW5nIHRoZQo+ICJuYXR1cmFsIiBvbmlvbikuIER1cmluZyB0aGUgdW5waW4s
IHdlIG1heSBuZWVkIHRvIGF0dGFjaCBhIGNsZWFudXAKPiBvcGVyYXRpb24gb24gdG8gdGhlIGVu
Z2luZSB3YWtlcmVmLCBlcmdvIHdlIHdhbnQgdG8ga2VlcCB0aGUgZW5naW5lCj4gYXdha2UgdW50
aWwgYWZ0ZXIgdGhlIHVucGluLgo+Cj4gdjI6IFB1c2ggdGhlIGVuZ2luZSB3YWtlcmVmIGludG8g
dGhlIGJhcnJpZXIgc28gd2Uga2VlcCB0aGUgb25pb24gdW53aW5kCj4gb3JkZXJpbmcgaW4gdGhl
IHJlcXVlc3QgaXRzZWxmCj4KPiBGaXhlczogY2U0NzZjODBiOGJmICgiZHJtL2k5MTU6IEtlZXAg
Y29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5lbCBjb250ZXh0IHN3aXRj
aCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMjIgKysrKysrKysr
KysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+IGluZGV4IDJkMDE5YWM2
ZGIyMC4uNDFlZDI3OTg2ODdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYWN0aXZlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCj4g
QEAgLTQsNiArNCw4IEBACj4gICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9u
Cj4gICAqLwo+ICAKPiArI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV9wbS5oIgo+ICsKPiAgI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCj4gICNpbmNsdWRlICJpOTE1X2FjdGl2ZS5oIgo+ICAjaW5jbHVk
ZSAiaTkxNV9nbG9iYWxzLmgiCj4gQEAgLTI2OCw4ICsyNzAsOSBAQCBpbnQgaTkxNV9hY3RpdmVf
YWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAo+ICAJ
CQkJCSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIHsKPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1Owo+ICsJc3RydWN0IGxsaXN0X25v
ZGUgKnBvcywgKm5leHQ7Cj4gIAl1bnNpZ25lZCBsb25nIHRtcDsKPiAtCWludCBlcnIgPSAwOwo+
ICsJaW50IGVycjsKPiAgCj4gIAlHRU1fQlVHX09OKCFlbmdpbmUtPm1hc2spOwo+ICAJZm9yX2Vh
Y2hfZW5naW5lX21hc2tlZChlbmdpbmUsIGk5MTUsIGVuZ2luZS0+bWFzaywgdG1wKSB7Cj4gQEAg
LTI3OSw3ICsyODIsNyBAQCBpbnQgaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJy
aWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAo+ICAJCW5vZGUgPSBrbWVtX2NhY2hlX2FsbG9j
KGdsb2JhbC5zbGFiX2NhY2hlLCBHRlBfS0VSTkVMKTsKPiAgCQlpZiAodW5saWtlbHkoIW5vZGUp
KSB7Cj4gIAkJCWVyciA9IC1FTk9NRU07Cj4gLQkJCWJyZWFrOwo+ICsJCQlnb3RvIHVud2luZDsK
PiAgCQl9Cj4gIAo+ICAJCWk5MTVfYWN0aXZlX3JlcXVlc3RfaW5pdCgmbm9kZS0+YmFzZSwKPiBA
QCAtMjg4LDEwICsyOTEsMjQgQEAgaW50IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVf
YmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKPiAgCQlub2RlLT5yZWYgPSByZWY7Cj4g
IAkJcmVmLT5jb3VudCsrOwo+ICAKPiArCQlpbnRlbF9lbmdpbmVfcG1fZ2V0KGVuZ2luZSk7Cj4g
IAkJbGxpc3RfYWRkKChzdHJ1Y3QgbGxpc3Rfbm9kZSAqKSZub2RlLT5iYXNlLmxpbmssCj4gIAkJ
CSAgJnJlZi0+YmFycmllcnMpOwo+ICAJfQo+ICAKPiArCXJldHVybiAwOwo+ICsKPiArdW53aW5k
Ogo+ICsJbGxpc3RfZm9yX2VhY2hfc2FmZShwb3MsIG5leHQsIGxsaXN0X2RlbF9hbGwoJnJlZi0+
YmFycmllcnMpKSB7Cj4gKwkJc3RydWN0IGFjdGl2ZV9ub2RlICpub2RlOwo+ICsKPiArCQlub2Rl
ID0gY29udGFpbmVyX29mKChzdHJ1Y3QgbGlzdF9oZWFkICopcG9zLAo+ICsJCQkJICAgIHR5cGVv
Zigqbm9kZSksIGJhc2UubGluayk7Cj4gKwkJZW5naW5lID0gKHZvaWQgKilyY3VfYWNjZXNzX3Bv
aW50ZXIobm9kZS0+YmFzZS5yZXF1ZXN0KTsKPiArCj4gKwkJaW50ZWxfZW5naW5lX3BtX3B1dChl
bmdpbmUpOwo+ICsJCWtmcmVlKG5vZGUpOwo+ICsJfQo+ICAJcmV0dXJuIGVycjsKPiAgfQo+ICAK
PiBAQCAtMzI4LDYgKzM0NSw3IEBAIHZvaWQgaTkxNV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQo+ICAKPiAgCQlsbGlzdF9hZGQoKHN0cnVjdCBsbGlzdF9u
b2RlICopJm5vZGUtPmJhc2UubGluaywKPiAgCQkJICAmZW5naW5lLT5iYXJyaWVyX3Rhc2tzKTsK
PiArCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7CgpCdXQgeW91IHNhaWQgdGhhdCB5b3Ug
a2VlcCB0aGUgd2FrZXJlZiB1bnRpbCB1bnBpbj8KLU1pa2EKCgo+ICAJfQo+ICAJaTkxNV9hY3Rp
dmVfcmVsZWFzZShyZWYpOwo+ICB9Cj4gLS0gCj4gMi4yMC4xCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
