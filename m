Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 064FE39F32B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 12:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A116E0E6;
	Tue,  8 Jun 2021 10:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F3F6E056;
 Tue,  8 Jun 2021 10:06:25 +0000 (UTC)
IronPort-SDR: eNJVQ8LEr65BNkHWe+nbA4DO/JVsD5TnPRrr+WXN/di8nO9ASUO0HkOpiM2hLCs/7puXYjO8ME
 S87VRuaEcXmQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204780515"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204780515"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:06:24 -0700
IronPort-SDR: 7Zwm7XbS0ZQ0e+Sb6HaPhfePXTkd39+Cw9VXSri9KiB5B7XxxLV767xCGmFrUDs7PWJql6X7qn
 atkgTyhlykHg==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="447842655"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO [10.249.254.115])
 ([10.249.254.115])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:06:23 -0700
Message-ID: <af3f336696d4c07cf4c3761f4ac9d5c2702354fb.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 12:06:20 +0200
In-Reply-To: <f009f03e-ec03-e180-ac25-fff2e0ceb856@intel.com>
References: <20210602093636.167070-1-matthew.auld@intel.com>
 <3af30ebb-a46b-2b21-57b0-988b2400ac08@linux.intel.com>
 <f009f03e-ec03-e180-ac25-fff2e0ceb856@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem/mman: only allow WC for lmem
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA2LTA4IGF0IDEwOjU3ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gMDIvMDYvMjAyMSAxMzowMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gPiBIaSwKPiA+
IAo+ID4gT24gNi8yLzIxIDExOjM2IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gPiA+IEZvciBk
Z2Z4IHdoZXJlIHdlIG5vdyBoYXZlIGxtZW0gYW5kIHR0bSwgd2UgY2FuIG9ubHkgc3VwcG9ydAo+
ID4gPiBzaW5nbGUgbW1hcAo+ID4gPiBtb2RlIGZvciB0aGUgbGlmZXRpbWUgb2YgdGhlIG9iamVj
dCwgYW5kIGZvciBsbWVtIG9iamVjdHMgdGhpcwo+ID4gPiBzaG91bGQgYmUKPiA+ID4gV0MsIHNv
IHJlamVjdCBhbGwgb3RoZXIgbWFwcGluZyBtb2RlcyBmb3IgbW1hcF9vZmZzZXQsIGluY2x1ZGlu
Zwo+ID4gPiBpZiB0aGUKPiA+ID4gb2JqZWN0IGNhbiBiZSBwbGFjZWQgaW4gYm90aCBzbWVtIGFu
ZCBsbWVtLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgo+ID4gPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxs
c3Ryb21AbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiA+IC0tLQo+ID4gPiDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jwqDCoCB8wqAgNCArKysrCj4gPiA+IMKgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyB8IDIyCj4gPiA+ICsrKysrKysrKysr
KysrKysrKysrKysKPiA+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5oIHzCoCA0ICsrKysKPiA+ID4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYyAKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jCj4gPiA+IGluZGV4IGZkMWM5NzE0ZjhkOC4uMzJmODhmMjM2NzcxIDEwMDY0NAo+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiA+ID4gQEAgLTY4
OSw2ICs2ODksMTAgQEAgX19hc3NpZ25fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9maWxlICpmaWxl
LAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4gPiA+IMKgwqDCoMKgwqAgfQo+
ID4gPiArwqDCoMKgIGlmIChtbWFwX3R5cGUgIT0gSTkxNV9NTUFQX1RZUEVfV0MgJiYKPiA+ID4g
K8KgwqDCoMKgwqDCoMKgIGk5MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRzX2NvbnRhaW5fdHlwZShv
YmosIAo+ID4gPiBJTlRFTF9NRU1PUllfTE9DQUwpKQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9ERVY7Cj4gPiA+ICsKPiA+IAo+ID4gSSB0aGluayB3ZSB3aWxsIGFsc28gaGF2ZSB0
aGUgcmVzdHJpY3Rpb24gdGhhdCBhbnkgb3RoZXIgb2JqZWN0cyBvbgo+ID4gREdGWCAKPiA+IGNh
biBvbmx5IGJlIG1hcHBlZCBjYWNoZWQ/IEF0IGxlYXN0IHRoYXQncyB3aGF0IHRoZSBUVE0gY29k
ZSBpcyAKPiA+IGltcGxlbWVudGluZyBjdXJyZW50bHkuCj4gCj4gWWVhaCwgd2l0aCB0aGlzIHBh
dGNoIHRoZSBjYWNoaW5nIG1vZGUgc2hvdWxkIG5vdyBhdCBsZWFzdCBiZQo+IGNvbnNpc3RlbnQg
Cj4gZm9yIGxtZW0gb2JqZWN0cywgZm9yIHNtZW0gd2Ugc3RpbGwgbmVlZCBtb3JlIHBhdGNoZXMu
Cj4gCj4gPiAKPiA+IAo+ID4gPiDCoMKgwqDCoMKgIG1tbyA9IG1tYXBfb2Zmc2V0X2F0dGFjaChv
YmosIG1tYXBfdHlwZSwgZmlsZSk7Cj4gPiA+IMKgwqDCoMKgwqAgaWYgKElTX0VSUihtbW8pKSB7
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIgPSBQVFJfRVJSKG1tbyk7Cj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgCj4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gPiA+IGluZGV4
IDJiZTYxMDlkMDA5My4uZDRiMGRhOGVkOTY5IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gPiA+IEBAIC00MDMsNiArNDAzLDI4IEBA
IGludCBpOTE1X2dlbV9vYmplY3RfcmVhZF9mcm9tX3BhZ2Uoc3RydWN0IAo+ID4gPiBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosIHU2NCBvZmZzZXQsCj4gPiA+IMKgwqDCoMKgwqAgcmV0dXJuIDA7
Cj4gPiA+IMKgIH0KPiA+ID4gKy8qKgo+ID4gPiArICogaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVu
dHNfY29udGFpbl90eXBlIC0gQ2hlY2sgd2hldGhlciB0aGUKPiA+ID4gb2JqZWN0IAo+ID4gPiBj
YW4gYmUKPiA+ID4gKyAqIHBsYWNlZCBhdCBjZXJ0YWluIG1lbW9yeSB0eXBlCj4gPiA+ICsgKiBA
b2JqOiBQb2ludGVyIHRvIHRoZSBvYmplY3QKPiA+ID4gKyAqIEB0eXBlOiBUaGUgbWVtb3J5IHR5
cGUgdG8gY2hlY2sKPiA+ID4gKyAqCj4gPiA+ICsgKiBSZXR1cm46IFRydWUgaWYgdGhlIG9iamVj
dCBjYW4gYmUgcGxhY2VkIGluIEB0eXBlLiBGYWxzZQo+ID4gPiBvdGhlcndpc2UuCj4gPiA+ICsg
Ki8KPiA+ID4gK2Jvb2wgaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudHNfY29udGFpbl90eXBlKHN0
cnVjdCAKPiA+ID4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gaW50ZWxfbWVtb3J5X3R5
cGUgdHlwZSkKPiA+ID4gK3sKPiA+ID4gK8KgwqDCoCB1bnNpZ25lZCBpbnQgaTsKPiA+ID4gKwo+
ID4gPiArwqDCoMKgIC8qIFRPRE86IGNvbnNpZGVyIG1heWJlIHN0b3JpbmcgYXMgYSBtYXNrIHdo
ZW4gZG9pbmcgCj4gPiA+IGdlbV9jcmVhdGVfZXh0ICovCj4gPiA+ICvCoMKgwqAgZm9yIChpID0g
MDsgaSA8IG9iai0+bW0ubl9wbGFjZW1lbnRzOyBpKyspIHsKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
IGlmIChvYmotPm1tLnBsYWNlbWVudHNbaV0tPnR5cGUgPT0gdHlwZSkKPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7Cj4gPiA+ICvCoMKgwqAgfQo+ID4gPiArCj4gPiA+
ICvCoMKgwqAgcmV0dXJuIGZhbHNlOwo+ID4gPiArfQo+ID4gPiArCj4gPiAKPiA+IERvIHdlIG5l
ZWQgc29tZXRoaW5nIGZvciB0aGUgaW4ta2VybmVsIG1hcHBpbmdzIGFzIHdlbGw/IE9yIGp1c3QK
PiA+IHJldHVybiAKPiA+IGEgbWFwcGluZyB3aXRoIHRoZSBvbmx5IGFsbG93ZWQgY2FjaGluZyBt
b2RlPwo+IAo+IEZvciBsbWVtIGV2ZXJ5dGhpbmcgc2hvdWxkIGFscmVhZHkgYmUgV0MgZm9yIGlu
LWtlcm5lbCBtYXBwaW5ncy4gRm9yIAo+IGV2ZXJ5dGhpbmcgZWxzZSB3aGljaCB1c2VzIHBpbl9t
YXAoKSB3ZSB3aWxsIG5lZWQgdG8gZGVmYXVsdCB0bwo+IGNhY2hlZC4gCj4gSSBndWVzcyBqdXN0
IGFkZCBhIGRpZmZlcmVudCBoZWxwZXIgZm9yIHRoaXM/IFdlIHNob3VsZCBwcm9iYWJseSBhbHNv
Cj4gYWRqdXN0IHRoZSBvYmotPmNhY2hlX2xldmVsIGZvciBkZzEuCgpOb3RlIHRoYXQgb2JqZWN0
cyB0aGF0IGhhdmUgTE1FTSBpbiB0aGUgYWxsb3dlZCBwbGFjZW1lbnQgbGlzdCwgYnV0IGFyZQpt
aWdyYXRlZCB0byBTTUVNIGZvciBzb21lIHJlYXNvbiAod2UgaGF2ZW4ndCByZWFsbHkgZGVjaWRl
ZCB0aGUgcG9saWN5CmZvciB0aGlzIHlldCwgYnV0IHBlcmhhcHMgZm9yIGRtYS1idWYgZXhwb3J0
IHJlYXNvbnMgb3IganVzdCBiZWluZwpldmljdGVkIHdpdGggc21lbSBhcyBhbiBhbGxvd2FibGUg
cGxhY2VtZW50KSB3aWxsIHN0aWxsIGJlIFdDLW9ubHksCndoaWNoIHdhcyBEYW5pZWwncyByZWNv
bW1lbmRhdGlvbiB0byBiZWdpbiB3aXRoLCAoYnV0IHdlIGNhbiBmbGlwCmNhY2hpbmcgbW9kZSBv
biBldmljdGlvbiAvIG1pZ3JhdGlvbiBpZiB3ZSdkIHdhbnQgdG8pLgoKQ3VycmVudGx5IHdlIGRv
bid0IGZsaXAgR0VNIHJlZ2lvbiB3aGVuIGV2aWN0aW5nIGV2ZW4gaWYgU01FTSBpcyBhbgphbGxv
d2VkIHBsYWNlbWVudCwgYmVjYXVzZSB0aGUgb2JqZWN0IG1heSB0aGVuIGVuZCB1cCBzdHVjayBp
biBTTUVNLgpOb3Qgc3VyZSBpZiB3ZSB3YW50IHRvIGV4cG9zZSBhIHVzZXItc3BhY2UgbWFkdmlz
ZS10eXBlIGhpbnQgZm9yIHRoaXM/IAoKL1Rob21hcwoKPiAKPiA+IAo+ID4gL1Rob21hcwo+ID4g
Cj4gPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
