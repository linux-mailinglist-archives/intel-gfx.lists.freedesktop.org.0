Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C1D78D99
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 16:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E59289FCA;
	Mon, 29 Jul 2019 14:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 157C089FC9
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 14:17:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 07:17:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="346637087"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 29 Jul 2019 07:17:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190729132412.23380-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <af08651d-d4b3-236b-d6f3-f151dcc701b7@linux.intel.com>
Date: Mon, 29 Jul 2019 15:17:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729132412.23380-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush the i915_vm_release before
 ggtt shutdown
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

Ck9uIDI5LzA3LzIwMTkgMTQ6MjQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB0aGUgZ2VuNl9w
cGd0dCBtYXkgcmVmZXIgYmFjayB0byB0aGUgR0dUVCBmb3IgdGhlaXIgcGFnZS1kaXJlY3RvcnkK
PiBzbG90cywgbWFrZSBzdXJlIHRob3NlIF9faTkxNV92bV9yZWxlYXNlIGFyZSBjb21wbGV0ZWQg
cHJpb3IgdG8gc2h1dHRpbmcKPiBkb3duIHRoZSBHR1RULgo+IAo+IEZpeGVzOiBiMzJmYTgxMTE1
NjMgKCJkcm0vaTkxNS9ndHQ6IERlZmVyIGFkZHJlc3Mgc3BhY2UgY2xlYW51cCB0byBhbiBSQ1Ug
d29ya2VyIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAtLS0KPiBUaGUgd29ya2VycyBhcmUgUkNVIGRlZmVycmVkIHNvIG5lZWQgYSBiYXJyaWVyIHRv
IGZpcnN0IGZsdXNoIHRoZSBmcmVlcwo+IG9udG8gdGhlIHdvcmtxdWV1ZS4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMyArKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+
IGluZGV4IDRkZDFmYTk1NjE0My4uNDIzYzg5MGQwM2JmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKPiBAQCAtMjcyMSw2ICsyNzIxLDkgQEAgc3RhdGljIHZvaWQgZ2d0dF9j
bGVhbnVwX2h3KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gICAKPiAgIAlnZ3R0LT52bS5jbG9z
ZWQgPSB0cnVlOwo+ICAgCj4gKwlyY3VfYmFycmllcigpOyAvKiBmbHVzaCB0aGUgUkNVJ2VkX19p
OTE1X3ZtX3JlbGVhc2UgKi8KPiArCWZsdXNoX3dvcmtxdWV1ZShpOTE1LT53cSk7Cj4gKwo+ICAg
CW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICAgCj4gICAJbGlzdF9mb3Jf
ZWFjaF9lbnRyeV9zYWZlKHZtYSwgdm4sICZnZ3R0LT52bS5ib3VuZF9saXN0LCB2bV9saW5rKQo+
IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
