Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A13932DE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518EC6EE3A;
	Thu, 27 May 2021 15:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AD36EE3A;
 Thu, 27 May 2021 15:51:24 +0000 (UTC)
IronPort-SDR: b75Ve+M+vAmT95MLS/uoo0EfI+S3OmU7lImlZqLc9bJh3rqweK65LlMSPsBLt1aIoEZwZ8f95j
 PIsHpPijH6yw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="223973444"
X-IronPort-AV: E=Sophos;i="5.83,334,1616482800"; d="scan'208";a="223973444"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:51:19 -0700
IronPort-SDR: Nb0nb55uLGR5TopJ/WUHDCbnO18MXrqSXXvodyeOUYJkMnTt9e4GlsbFGc8MsJMdjsHnW3zfiE
 uhb/ZFa1xBsw==
X-IronPort-AV: E=Sophos;i="5.83,334,1616482800"; d="scan'208";a="634039983"
Received: from ibanaga-mobl.ger.corp.intel.com ([10.249.254.58])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:51:18 -0700
Message-ID: <97b0903d941c05a8877579749c6a2ea6ec107d0b.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 17:51:15 +0200
In-Reply-To: <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
 <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
 <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTA1LTI3IGF0IDE3OjMyICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDI3LjA1LjIxIHVtIDE3OjA1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4gPiBP
biBUaHUsIDIwMjEtMDUtMjcgYXQgMTc6MDEgKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3Rl
Ogo+ID4gPiBPbiBUaHUsIDIwMjEtMDUtMjcgYXQgMTY6NTQgKzAyMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6Cj4gPiA+ID4gQW0gMjcuMDUuMjEgdW0gMTY6MTkgc2NocmllYiBUaG9tYXMgSGVs
bHN0csO2bToKPiA+ID4gPiA+IFRoZSBzd2FwcGluZyBjb2RlIHdhcyBkZXJlZmVyZW5jZSBiby0+
dHRtIHBvaW50ZXJzIHdpdGhvdXQKPiA+ID4gPiA+IGhhdmluZwo+ID4gPiA+ID4gdGhlCj4gPiA+
ID4gPiBkbWEtcmVzdiBsb2NrIGhlbGQuIEFsc28gaXQgbWlnaHQgdHJ5IHRvIHN3YXAgb3V0IHVu
cG9wdWxhdGVkCj4gPiA+ID4gPiBib3MuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEZpeCB0aGlzIGJ5
IG1vdmluZyB0aGUgYm8tPnR0bSBkZXJlZmVyZW5jZSB1bnRpbCB3ZSBoYXZlIHRoZQo+ID4gPiA+
ID4gcmVzZXJ2YXRpb24KPiA+ID4gPiA+IGxvY2suIENoZWNrIHRoYXQgdGhlIHR0bV90dCBpcyBw
b3B1bGF0ZWQgYWZ0ZXIgdGhlCj4gPiA+ID4gPiBzd2FwX25vdGlmeQo+ID4gPiA+ID4gY2FsbGJh
Y2suCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
Cj4gPiA+ID4gPiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gPiAt
LS0KPiA+ID4gPiA+IMKgwqAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uY8KgwqDCoMKgIHwg
MTYgKysrKysrKysrKysrKysrLQo+ID4gPiA+ID4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9kZXZpY2UuYyB8wqAgOCArKystLS0tLQo+ID4gPiA+ID4gwqDCoCAyIGZpbGVzIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gPiA+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPiA+ID4gPiA+IGluZGV4IDlmNTM1MDZhODJmYy4uODYy
MTNkMzc2NTdiIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym8uYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+ID4gPiA+
ID4gQEAgLTExNjMsNiArMTE2MywxNiBAQCBpbnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0Cj4gPiA+
ID4gPiB0dG1fYnVmZmVyX29iamVjdAo+ID4gPiA+ID4gKmJvLCBzdHJ1Y3QgdHRtX29wZXJhdGlv
bl9jdHggKmN0eCwKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoGlmICghdHRtX2JvX2V2aWN0
X3N3YXBvdXRfYWxsb3dhYmxlKGJvLCBjdHgsICZwbGFjZSwKPiA+ID4gPiA+ICZsb2NrZWQsIE5V
TEwpKQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAt
RUJVU1k7Cj4gPiA+ID4gPiDCoMKgIAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZG1hX3Jlc3Zf
YXNzZXJ0X2hlbGQoYm8tPmJhc2UucmVzdik7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBpZiAoIWJvLT50dG0gfHwKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
by0+dHRtLT5wYWdlX2ZsYWdzICYgVFRNX1BBR0VfRkxBR19TRyB8fAo+ID4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NXQVBQ
RUQpIHsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobG9ja2Vk
KQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oH0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoGlmICghdHRtX2JvX2dl
dF91bmxlc3NfemVybyhibykpIHsKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpZiAobG9ja2VkKQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4g
PiA+ID4gPiBAQCAtMTIxNSw3ICsxMjI1LDggQEAgaW50IHR0bV9ib19zd2Fwb3V0KHN0cnVjdAo+
ID4gPiA+ID4gdHRtX2J1ZmZlcl9vYmplY3QKPiA+ID4gPiA+ICpibywgc3RydWN0IHR0bV9vcGVy
YXRpb25fY3R4ICpjdHgsCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoYm8tPmJkZXYt
PmZ1bmNzLT5zd2FwX25vdGlmeSkKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBiby0+YmRldi0+ZnVuY3MtPnN3YXBfbm90aWZ5KGJvKTsKPiA+ID4gPiA+IMKgwqAg
Cj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqByZXQgPSB0dG1fdHRfc3dhcG91dChiby0+YmRldiwg
Ym8tPnR0bSwgZ2ZwX2ZsYWdzKTsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICh0dG1fdHRf
aXNfcG9wdWxhdGVkKGJvLT50dG0pKQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldCA9IHR0bV90dF9zd2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLAo+ID4gPiA+ID4g
Z2ZwX2ZsYWdzKTsKPiA+ID4gPiBFeGFjdGx5IHRoYXQgaXMgd2hhdCBJIHdvbid0IHJlY29tbWVu
ZC4gV2Ugd291bGQgdHJ5IHRvIHN3YXAKPiA+ID4gPiBvdXQKPiA+ID4gPiB0aGUKPiA+ID4gPiBz
YW1lIEJPIG92ZXIgYW5kIG92ZXIgYWdhaW4gd2l0aCB0aGF0Lgo+ID4gPiBCdXQgd2Ugd291bGRu
J3Qgc2luY2UgdGhlIEJPIGlzIHRha2VuIG9mZiB0aGUgTFJVIGFuZCBuZXZlciByZS0KPiA+ID4g
YWRkZWQsCj4gPiA+IAo+ID4gPiAKPiA+IEluIGZhY3QsIHdlJ2QgcHJvYmFibHkgbWlnaHQgd2Fu
dCB0byB0YWtlIHRoZSAhYm8tPnR0bSBib3Mgb2ZmIHRoZQo+ID4gTFJVCj4gPiBhcyB3ZWxsLi4K
PiAKPiBObywgd2UgZG9uJ3Qgd2FudCB0byB0YWtlIGFueSBCT3Mgb2YgdGhlIExSVSB1bmxlc3Mg
dGhleSBhcmUgcGlubmVkLgo+IAo+IEFkZGluZyBhIFRUIG9iamVjdCBvciBwb3B1bGF0aW5nIGl0
IGRvZXNuJ3QgbmVjZXNzYXJpbHkgcHV0IHRoZSBCTwo+IGJhY2sgCj4gdG8gdGhlIExSVS4KCk9L
LCBidXQgc3dhcHBlZCBib3MgYXJlIGFsc28gdGFrZW4gb2ZmIHRoZSBMUlUgbGlzdCBzbyB0aGVz
ZQp1bnBvcHVsYXRlZCBib3MgYXJlIGp1c3QgdGFraW5nIHRoZSBzYW1lIHBhdGguIE9ubHkgZGlm
ZmVyZW5jZSB0bwpzd2FwcGVkIGlzIHRoYXQgdGhleSBkb24ndCBnZXQgcmVhZCBiYWNrIG9uIHJl
LXBvcHVsYXRlLCBidXQgdHlwaWNhbGx5CmNsZWFyZWQuCgpCdXQgd2hhdCB3b3VsZCBiZSB0aGUg
cG9pbnQgb2Yga2VlcGluZyBzd2FwcGVkLW91dCBib3Mgb24gdGhlIExSVQpsaXN0PywgcGFydGlj
dWxhcmx5IHdoZW4gd2UncmUgaXRlcmF0aW5nIHVuZGVyIGEgc3BpbmxvY2s/ClNob3VsZG4ndCB3
ZSB0cnkgdG8gcmUtYWRkIHRvIExSVSAoaWYgbm90IGFscmVhZHkgb24gYW4gTFJVKSBqdXN0CmJl
Zm9yZSBwb3B1bGF0aW5nPyBUaGVyZSBhcmVuJ3QgcmVhbGx5IHRoYXQgbWFueSBjYWxscyBpbiBj
b3JlIFRUTS4KCi9UaG9tYXMKCgoKCgo+IAo+IENocmlzdGlhbi4KPiAKPiA+IAo+ID4gL1Rob21h
cwo+ID4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
