Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13646E41C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 12:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C32946E7F5;
	Fri, 19 Jul 2019 10:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6096E7F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 10:18:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 03:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="173464423"
Received: from mchmiel-mobl.ger.corp.intel.com (HELO [10.252.50.54])
 ([10.252.50.54])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2019 03:18:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-3-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <29f36349-0c1a-3af6-d707-632685f80929@intel.com>
Date: Fri, 19 Jul 2019 13:18:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718145407.21352-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Flush all user surfaces prior
 to first use
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

T24gMTgvMDcvMjAxOSAxNzo1NCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFNpbmNlIHVzZXJzcGFj
ZSBoYXMgdGhlIGFiaWxpdHkgdG8gYnlwYXNzIHRoZSBDUFUgY2FjaGUgZnJvbSB3aXRoaW4gaXRz
Cj4gdW5wcml2aWxlZ2VkIGNvbW1hbmQgc3RyZWFtLCB3ZSBoYXZlIHRvIGZsdXNoIHRoZSBDUFUg
Y2FjaGUgdG8gbWVtb3J5Cj4gaW4gb3JkZXIgdG8gb3ZlcndyaXRlIHRoZSBwcmV2aW91cyBjb250
ZW50cyBvbiBjcmVhdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5l
bkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IHN0YWJsZXZnZXIua2VybmVsLm9yZwo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMgfCAyNiArKysrKystLS0t
LS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTkgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3NobWVtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYwo+
IGluZGV4IGQyYTExNTg4NjhlNy4uZjc1MmIzMjZkMzk5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKPiBAQCAtNDU5LDcgKzQ1OSw2IEBAIGk5MTVfZ2Vt
X29iamVjdF9jcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU2NCBz
aXplKQo+ICAgewo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gICAJc3Ry
dWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmc7Cj4gLQl1bnNpZ25lZCBpbnQgY2FjaGVfbGV2ZWw7
Cj4gICAJZ2ZwX3QgbWFzazsKPiAgIAlpbnQgcmV0Owo+ICAgCj4gQEAgLTQ5OCwyNCArNDk3LDEz
IEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIHU2NCBzaXplKQo+ICAgCW9iai0+d3JpdGVfZG9tYWluID0gSTkxNV9HRU1fRE9NQUlO
X0NQVTsKPiAgIAlvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0RPTUFJTl9DUFU7Cj4gICAK
PiAtCWlmIChIQVNfTExDKGk5MTUpKQo+IC0JCS8qIE9uIHNvbWUgZGV2aWNlcywgd2UgY2FuIGhh
dmUgdGhlIEdQVSB1c2UgdGhlIExMQyAodGhlIENQVQo+IC0JCSAqIGNhY2hlKSBmb3IgYWJvdXQg
YSAxMCUgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQKPiAtCQkgKiBjb21wYXJlZCB0byB1bmNhY2hl
ZC4gIEdyYXBoaWNzIHJlcXVlc3RzIG90aGVyIHRoYW4KPiAtCQkgKiBkaXNwbGF5IHNjYW5vdXQg
YXJlIGNvaGVyZW50IHdpdGggdGhlIENQVSBpbgo+IC0JCSAqIGFjY2Vzc2luZyB0aGlzIGNhY2hl
LiAgVGhpcyBtZWFucyBpbiB0aGlzIG1vZGUgd2UKPiAtCQkgKiBkb24ndCBuZWVkIHRvIGNsZmx1
c2ggb24gdGhlIENQVSBzaWRlLCBhbmQgb24gdGhlCj4gLQkJICogR1BVIHNpZGUgd2Ugb25seSBu
ZWVkIHRvIGZsdXNoIGludGVybmFsIGNhY2hlcyB0bwo+IC0JCSAqIGdldCBkYXRhIHZpc2libGUg
dG8gdGhlIENQVS4KPiAtCQkgKgo+IC0JCSAqIEhvd2V2ZXIsIHdlIG1haW50YWluIHRoZSBkaXNw
bGF5IHBsYW5lcyBhcyBVQywgYW5kIHNvCj4gLQkJICogbmVlZCB0byByZWJpbmQgd2hlbiBmaXJz
dCB1c2VkIGFzIHN1Y2guCj4gLQkJICovCj4gLQkJY2FjaGVfbGV2ZWwgPSBJOTE1X0NBQ0hFX0xM
QzsKPiAtCWVsc2UKPiAtCQljYWNoZV9sZXZlbCA9IEk5MTVfQ0FDSEVfTk9ORTsKPiAtCj4gLQlp
OTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIGNhY2hlX2xldmVsKTsKPiAr
CS8qCj4gKwkgKiBOb3RlIHRoYXQgdXNlcnNwYWNlIGhhcyBjb250cm9sIG92ZXIgY2FjaGUtYnlw
YXNzCj4gKwkgKiB2aWEgaXRzIGNvbW1hbmQgc3RyZWFtLCBzbyBldmVuIG9uIExMQyBhcmNoaXRl
Y3R1cmVzCj4gKwkgKiB3ZSBoYXZlIHRvIGZsdXNoIG91dCB0aGUgQ1BVIGNhY2hlIHRvIG1lbW9y
eSB0bwo+ICsJICogY2xlYXIgcHJldmlvdXMgY29udGVudHMuCj4gKwkgKi8KPiArCWk5MTVfZ2Vt
X29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgSTkxNV9DQUNIRV9OT05FKTsKPiAgIAo+
ICAgCXRyYWNlX2k5MTVfZ2VtX29iamVjdF9jcmVhdGUob2JqKTsKPiAgIAoKRG9lcyBpOTE1X2Ry
bS5oIG5lZWRzIHVwZGF0aW5nPyA6CgoKLyoqCiDCoCogSTkxNV9DQUNISU5HX0NBQ0hFRAogwqAq
CiDCoCogR1BVIGFjY2VzcyBpcyBjb2hlcmVudCB3aXRoIGNwdSBjYWNoZXMgYW5kIGZ1cnRoZXJt
b3JlIHRoZSBkYXRhIGlzIApjYWNoZWQgaW4KIMKgKiBsYXN0LWxldmVsIGNhY2hlcyBzaGFyZWQg
YmV0d2VlbiBjcHUgY29yZXMgYW5kIHRoZSBncHUgR1QuIERlZmF1bHQgb24KIMKgKiBtYWNoaW5l
cyB3aXRoIEhBU19MTEMuCiDCoCovCiNkZWZpbmUgSTkxNV9DQUNISU5HX0NBQ0hFRMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
