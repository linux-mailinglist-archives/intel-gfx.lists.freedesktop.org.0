Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B67394405
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 16:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2BC6F5CE;
	Fri, 28 May 2021 14:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C936F5CB;
 Fri, 28 May 2021 14:17:37 +0000 (UTC)
IronPort-SDR: sv2/I7gBbXQtFFNe6wOa4uagEFOJNnwlIgEQc8QFi8CiNy04LT9PBVIqpDyN6rZVEQ/qtGiRc2
 xovydcrmdVcA==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="202737021"
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; d="scan'208";a="202737021"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 07:17:37 -0700
IronPort-SDR: anLAClvBpsTHUhyzR+ot4oTvzxnyst0uZ9R2OfGOlvzWT6+wIhF9vj7H7bNUqgulZhZ7DFbI1F
 U7sdQWa/Tnnw==
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; d="scan'208";a="444013401"
Received: from jdahlin-mobl1.ger.corp.intel.com (HELO [10.249.254.92])
 ([10.249.254.92])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 07:17:35 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
 <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
 <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
 <97b0903d941c05a8877579749c6a2ea6ec107d0b.camel@linux.intel.com>
 <1dffe27a-bfc6-075e-f198-0c47cd282638@amd.com>
 <169de7a9af59135d1b63278b3b69a892ecfd4549.camel@linux.intel.com>
 <37dacfad-b557-b210-02f0-7afa202bac51@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <f8220d79-240d-1ee8-b2f6-c28927b2856f@linux.intel.com>
Date: Fri, 28 May 2021 16:17:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <37dacfad-b557-b210-02f0-7afa202bac51@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH] drm/ttm: Fix swapping dereferences of
 freed memory
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMjgvMjEgNDoxMCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAyOC4wNS4y
MSB1bSAwOTozMyBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBPbiBGcmksIDIwMjEtMDUt
MjggYXQgMDk6MTYgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAyNy4wNS4y
MSB1bSAxNzo1MSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+IE9uIFRodSwgMjAyMS0w
NS0yNyBhdCAxNzozMiArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4gQW0gMjcu
MDUuMjEgdW0gMTc6MDUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4+IE9uIFRodSwg
MjAyMS0wNS0yNyBhdCAxNzowMSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+Pj4+
Pj4gT24gVGh1LCAyMDIxLTA1LTI3IGF0IDE2OjU0ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOgo+Pj4+Pj4+PiBBbSAyNy4wNS4yMSB1bSAxNjoxOSBzY2hyaWViIFRob21hcyBIZWxsc3Ry
w7ZtOgo+Pj4+Pj4+Pj4gVGhlIHN3YXBwaW5nIGNvZGUgd2FzIGRlcmVmZXJlbmNlIGJvLT50dG0g
cG9pbnRlcnMKPj4+Pj4+Pj4+IHdpdGhvdXQKPj4+Pj4+Pj4+IGhhdmluZwo+Pj4+Pj4+Pj4gdGhl
Cj4+Pj4+Pj4+PiBkbWEtcmVzdiBsb2NrIGhlbGQuIEFsc28gaXQgbWlnaHQgdHJ5IHRvIHN3YXAg
b3V0Cj4+Pj4+Pj4+PiB1bnBvcHVsYXRlZAo+Pj4+Pj4+Pj4gYm9zLgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IEZpeCB0aGlzIGJ5IG1vdmluZyB0aGUgYm8tPnR0bSBkZXJlZmVyZW5jZSB1bnRpbCB3ZSBo
YXZlCj4+Pj4+Pj4+PiB0aGUKPj4+Pj4+Pj4+IHJlc2VydmF0aW9uCj4+Pj4+Pj4+PiBsb2NrLiBD
aGVjayB0aGF0IHRoZSB0dG1fdHQgaXMgcG9wdWxhdGVkIGFmdGVyIHRoZQo+Pj4+Pj4+Pj4gc3dh
cF9ub3RpZnkKPj4+Pj4+Pj4+IGNhbGxiYWNrLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFNpZ25lZC1v
ZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtCj4+Pj4+Pj4+PiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+Cj4+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4+IMKgwqDCoMKgIGRyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvLmPCoMKgwqDCoCB8IDE2Cj4+Pj4+Pj4+PiArKysrKysrKysrKysrKyst
Cj4+Pj4+Pj4+PiDCoMKgwqDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYyB8wqAg
OCArKystLS0tLQo+Pj4+Pj4+Pj4gwqDCoMKgwqAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4+Pj4+Pj4+PiBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKPj4+Pj4+Pj4+IGluZGV4IDlmNTM1MDZhODJmYy4uODYyMTNkMzc2NTdiIDEw
MDY0NAo+Pj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4+Pj4gQEAgLTExNjMs
NiArMTE2MywxNiBAQCBpbnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0Cj4+Pj4+Pj4+PiB0dG1fYnVm
ZmVyX29iamVjdAo+Pj4+Pj4+Pj4gKmJvLCBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwK
Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXR0bV9ib19ldmljdF9zd2Fwb3V0
X2FsbG93YWJsZShibywgY3R4LAo+Pj4+Pj4+Pj4gJnBsYWNlLAo+Pj4+Pj4+Pj4gJmxvY2tlZCwg
TlVMTCkpCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiAtRUJVU1k7Cj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl9hc3NlcnRfaGVs
ZChiby0+YmFzZS5yZXN2KTsKPj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoGlm
ICghYm8tPnR0bSB8fAo+Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGJvLT50dG0tPnBh
Z2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NHIHx8Cj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYm8tPnR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU1dBUFBFRCkKPj4+Pj4+
Pj4+IHsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobG9ja2Vk
KQo+Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oH0KPj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXR0bV9i
b19nZXRfdW5sZXNzX3plcm8oYm8pKSB7Cj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChsb2NrZWQpCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl91bmxvY2soYm8tPmJh
c2UucmVzdik7Cj4+Pj4+Pj4+PiBAQCAtMTIxNSw3ICsxMjI1LDggQEAgaW50IHR0bV9ib19zd2Fw
b3V0KHN0cnVjdAo+Pj4+Pj4+Pj4gdHRtX2J1ZmZlcl9vYmplY3QKPj4+Pj4+Pj4+ICpibywgc3Ry
dWN0IHR0bV9vcGVyYXRpb25fY3R4ICpjdHgsCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKGJvLT5iZGV2LT5mdW5jcy0+c3dhcF9ub3RpZnkpCj4+Pj4+Pj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJvLT5iZGV2LT5mdW5jcy0+c3dhcF9ub3RpZnko
Ym8pOwo+Pj4+Pj4+Pj4gwqDCoMKgwqAgLcKgwqDCoMKgwqDCoMKgcmV0ID0gdHRtX3R0X3N3YXBv
dXQoYm8tPmJkZXYsIGJvLT50dG0sCj4+Pj4+Pj4+PiBnZnBfZmxhZ3MpOwo+Pj4+Pj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKHR0bV90dF9pc19wb3B1bGF0ZWQoYm8tPnR0bSkpCj4+Pj4+Pj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gdHRtX3R0X3N3YXBvdXQoYm8tPmJk
ZXYsIGJvLT50dG0sCj4+Pj4+Pj4+PiBnZnBfZmxhZ3MpOwo+Pj4+Pj4+PiBFeGFjdGx5IHRoYXQg
aXMgd2hhdCBJIHdvbid0IHJlY29tbWVuZC4gV2Ugd291bGQgdHJ5IHRvCj4+Pj4+Pj4+IHN3YXAK
Pj4+Pj4+Pj4gb3V0Cj4+Pj4+Pj4+IHRoZQo+Pj4+Pj4+PiBzYW1lIEJPIG92ZXIgYW5kIG92ZXIg
YWdhaW4gd2l0aCB0aGF0Lgo+Pj4+Pj4+IEJ1dCB3ZSB3b3VsZG4ndCBzaW5jZSB0aGUgQk8gaXMg
dGFrZW4gb2ZmIHRoZSBMUlUgYW5kIG5ldmVyCj4+Pj4+Pj4gcmUtCj4+Pj4+Pj4gYWRkZWQsCj4+
Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4gSW4gZmFjdCwgd2UnZCBwcm9iYWJseSBtaWdodCB3YW50IHRv
IHRha2UgdGhlICFiby0+dHRtIGJvcyBvZmYKPj4+Pj4+IHRoZQo+Pj4+Pj4gTFJVCj4+Pj4+PiBh
cyB3ZWxsLi4KPj4+Pj4gTm8sIHdlIGRvbid0IHdhbnQgdG8gdGFrZSBhbnkgQk9zIG9mIHRoZSBM
UlUgdW5sZXNzIHRoZXkgYXJlCj4+Pj4+IHBpbm5lZC4KPj4+Pj4KPj4+Pj4gQWRkaW5nIGEgVFQg
b2JqZWN0IG9yIHBvcHVsYXRpbmcgaXQgZG9lc24ndCBuZWNlc3NhcmlseSBwdXQgdGhlCj4+Pj4+
IEJPCj4+Pj4+IGJhY2sKPj4+Pj4gdG8gdGhlIExSVS4KPj4+PiBPSywgYnV0IHN3YXBwZWQgYm9z
IGFyZSBhbHNvIHRha2VuIG9mZiB0aGUgTFJVIGxpc3Qgc28gdGhlc2UKPj4+PiB1bnBvcHVsYXRl
ZCBib3MgYXJlIGp1c3QgdGFraW5nIHRoZSBzYW1lIHBhdGguIE9ubHkgZGlmZmVyZW5jZSB0bwo+
Pj4+IHN3YXBwZWQgaXMgdGhhdCB0aGV5IGRvbid0IGdldCByZWFkIGJhY2sgb24gcmUtcG9wdWxh
dGUsIGJ1dAo+Pj4+IHR5cGljYWxseQo+Pj4+IGNsZWFyZWQuCj4+Pj4KPj4+PiBCdXQgd2hhdCB3
b3VsZCBiZSB0aGUgcG9pbnQgb2Yga2VlcGluZyBzd2FwcGVkLW91dCBib3Mgb24gdGhlIExSVQo+
Pj4+IGxpc3Q/LCBwYXJ0aWN1bGFybHkgd2hlbiB3ZSdyZSBpdGVyYXRpbmcgdW5kZXIgYSBzcGlu
bG9jaz8KPj4+PiBTaG91bGRuJ3Qgd2UgdHJ5IHRvIHJlLWFkZCB0byBMUlUgKGlmIG5vdCBhbHJl
YWR5IG9uIGFuIExSVSkganVzdAo+Pj4+IGJlZm9yZSBwb3B1bGF0aW5nPyBUaGVyZSBhcmVuJ3Qg
cmVhbGx5IHRoYXQgbWFueSBjYWxscyBpbiBjb3JlIFRUTS4KPj4+IEkgd2FudCB0byBhdm9pZCBy
ZW1vdmluZyBCT3MgZnJvbSB0aGUgTFJVIGFzIG11Y2ggYXMgcG9zc2libGUgc2luY2UKPj4+IHdl
Cj4+PiBmb3Jnb3Qgb24gbXVsdGlwbGUgcGxhY2VzIHRoYXQgd2Ugd2FudCB0byByZS1hZGQgdGhl
bS4KPj4+Cj4+PiBDb25jZXB0dWFsIEkgdGhpbmsgdGhlIHN3YXBwZWQgQk9zIHNob3VsZCBoYXZl
IGEgc2VwYXJhdGUgbWVtb3J5Cj4+PiBkb21haW4sCj4+PiB0aGlzIHdheSB3ZSBjYW4gaWdub3Jl
IHRoZW0gY2xlYW5seSB3aGVuIHN3YXBwaW5nIHRoaW5ncyBvdXQuCj4+IFllcywgdGhhdCB3b3Vs
ZCBvZiBjb3Vyc2Ugd29yayBhcyB3ZWxsLiBLZWVwaW5nIHRoZW0gb24gdGhlIHN5c3RlbSBMUlUK
Pj4gaXMgSU1PIGhpZ2hseSB1bmRlc2lyYWJsZS4KPj4KPj4+IEdvaW5nIHRvIHBpY2sgdGhpcyBw
YXRjaCB1cCwgbW9kaWZ5aW5nIGl0IGEgYml0IG1vcmUgYW5kIHRoZW4gcHVzaGluZwo+Pj4gaXQK
Pj4+IHRvIGRybS1taXNjLWZpeGVzIGZvciB1cHN0cmVhbWluZy4KPj4gT0ssIEkgZHJvcHBlZCB0
aGUgVFRNIGZpeCBmb3IgdGhlIHB1cmdlLWluLXN3YXAtbm90aWZ5IGZyb20gdGhlIGk5MTUKPj4g
c2VyaWVzLCBob3BpbmcgdGhhdCB0aGUgcmV3b3JrZWQgdmFyaWFudCBvZiB0aGlzIHBhdGNoIGxh
bmRzIGZpcnN0Lgo+Cj4gWW91IHdpbGwgc3RpbGwgbmVlZCB0byBhZGQgdGhlIHNlY29uZCB0dG1f
dHRfcG9wdWxhdGVkKCkgY2hlY2sgc2luY2UgSSAKPiBkcm9wcGVkIHRoYXQgZm9yIHRoZSBiYWNr
IHdoaWNoIEkgd2FudCB0byBwdXNoIHRvIC1maXhlcy4KPgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFu
Lgo+Ck9LLCBncmVhdC4gdGhlbiB5b3UgaGF2ZSBteSBTLU8tQiBvbiB0aGlzIHBhdGNoLgoKQlRX
IHRoYXQgb3JpZ2luYWwgcGF0Y2ggdGhhdCBhZGRlZCB0aGUgdHRtX3R0X2lzX3BvcHVsYXRlZCgp
IHdhcyAKY29uc2lkZXJlZCAiTEdUTSIgYnkgeW91LCBleGNlcHQgZm9yIHRoaXMgdHRtX3R0X2lz
X3BvcHVsYXRlZCgpLiBTbyBkbyBJIApoYXZlIGFuIEFja2VkLWJ5OiBvbiB0aGF0IG5vdz8KClRo
YXQgaXMKCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80MzU4MzMvP3Nl
cmllcz05MDY4MSZyZXY9MgoKcGx1cyB0aGUgY2hlY2sgYWRkZWQ/CgpUaGFua3MsCgpUaG9tYXMK
CgoKCj4+Cj4+IFRoYW5rcywKPj4gVGhvbWFzCj4+Cj4+PiBUaGFua3MsCj4+PiBDaHJpc3RpYW4u
Cj4+Pgo+Pj4+IC9UaG9tYXMKPj4+Pgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4+IENocmlzdGlh
bi4KPj4+Pj4KPj4+Pj4+IC9UaG9tYXMKPj4+Pj4+Cj4+Cj4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
