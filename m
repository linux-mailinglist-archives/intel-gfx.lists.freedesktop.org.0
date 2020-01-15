Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BABF13BB81
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 09:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05B16E0C1;
	Wed, 15 Jan 2020 08:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F296E0C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 08:53:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 00:53:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="218057314"
Received: from huse-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.50.31])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Jan 2020 00:53:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200115012305.27395-1-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200115012305.27395-1-vivek.kasireddy@intel.com>
Date: Wed, 15 Jan 2020 10:53:40 +0200
Message-ID: <87d0blje23.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Lookup the i2c bus from ACPI
 NS only if CONFIG_ACPI=y (v2)
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
Cc: Hulk Robot <hulkci@huawei.com>, Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNCBKYW4gMjAyMCwgVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPiB3cm90ZToKPiBQZXJmb3JtIHRoZSBpMmMgYnVzL2FkYXB0ZXIgbG9va3VwIGZyb20g
QUNQSSBOYW1lc3BhY2Ugb25seSBpZgo+IEFDUEkgaXMgZW5hYmxlZCBpbiB0aGUga2VybmVsIGNv
bmZpZy4gSWYgQUNQSSBpcyBub3QgZW5hYmxlZCBvciBpZgo+IHRoZSBsb29rdXAgZmFpbHMsIHdl
J2xsIGZhbGxiYWNrIHRvIHVzaW5nIHRoZSBWQlQgZm9yIGlkZW50aXlpbmcKPiB0aGUgaTJjIGJ1
cy4KPgo+IFRoaXMgcGF0Y2gKPiBGaXhlczogOGNiZjg5ZGIyOTQxICgiZHJtL2k5MTUvZHNpOiBQ
YXJzZSB0aGUgSTJDIGVsZW1lbnQgZnJvbSB0aGUgVkJUCj4gTUlQSSBzZXF1ZW5jZSBibG9jayAo
djMpIikKCkhybWgsIHBsZWFzZSBoYXZlIGEgbG9vayBhdCBnaXQgbG9nLiBGaXhlczogZ29lcyB3
aXRoIHRoZSBvdGhlciB0YWdzCmJlbG93LCB5b3UgZG9uJ3Qgc3BsaXQgaXQgYWNyb3NzIG11bHRp
cGxlIGxpbmVzLCBhbmQgeW91IGRvbid0IG5lZWQgdG8KZW1iZWQgaXQgaW4gdGhlIHRleHQuCgpT
b21lb25lIGFwcGx5aW5nIHRoZSBwYXRjaCBjYW4gZml4IHRoaXMsIG5vIG5lZWQgdG8gc2VuZCBh
bm90aGVyCnZlcnNpb24uCgo+IHYyOiBSZWZvcm1hdCB0aGUgYWJvdmUgbGluZSB0byBjbGVhcmx5
IGlkZW50aWZ5IHRoZSBjb21taXQgdGhpcyBwYXRjaCBpcwo+IGZpeGluZyBmb3IgQ0kgKEphbmkp
CgpJdCdzIG5vdCBmb3IgQ0ksIGl0J3MgbW9zdGx5IGZvciBwZW9wbGUuIE5vIG5lZWQgdG8gc2Vu
ZCBhbm90aGVyIHZlcnNpb24KdG8gYWRqdXN0IHRoYXQgZWl0aGVyLgoKQlIsCkphbmkuCgo+Cj4g
Q2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4gQ2M6IE5hYmVuZHUgTWFp
dGkgPG5hYmVuZHUuYmlrYXNoLm1haXRpQGludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogQm9iIFBhYXV3ZSA8Ym9iLmoucGFhdXdlQGlu
dGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogWmhh
bmcgWGlhb3h1IDx6aGFuZ3hpYW94dTVAaHVhd2VpLmNvbT4KPiBSZXBvcnRlZC1ieTogSHVsayBS
b2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5
IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzaV92YnQuYyB8IDQ3ICsrKysrKysrKysrKystLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaV92YnQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpX3ZidC5jCj4gaW5kZXggODlmYjBk
OTBiNjk0Li42ZWMzNWQ5NzViZDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2lfdmJ0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzaV92YnQuYwo+IEBAIC0zODQsNiArMzg0LDcgQEAgc3RhdGljIGNvbnN0IHU4
ICptaXBpX2V4ZWNfZ3BpbyhzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2ksIGNvbnN0IHU4ICpk
YXRhKQo+ICAJcmV0dXJuIGRhdGE7Cj4gIH0KPiAgCj4gKyNpZmRlZiBDT05GSUdfQUNQSQo+ICBz
dGF0aWMgaW50IGkyY19hZGFwdGVyX2xvb2t1cChzdHJ1Y3QgYWNwaV9yZXNvdXJjZSAqYXJlcywg
dm9pZCAqZGF0YSkKPiAgewo+ICAJc3RydWN0IGkyY19hZGFwdGVyX2xvb2t1cCAqbG9va3VwID0g
ZGF0YTsKPiBAQCAtNDEzLDE0ICs0MTQsNDEgQEAgc3RhdGljIGludCBpMmNfYWRhcHRlcl9sb29r
dXAoc3RydWN0IGFjcGlfcmVzb3VyY2UgKmFyZXMsIHZvaWQgKmRhdGEpCj4gIAlyZXR1cm4gMTsK
PiAgfQo+ICAKPiAtc3RhdGljIGNvbnN0IHU4ICptaXBpX2V4ZWNfaTJjKHN0cnVjdCBpbnRlbF9k
c2kgKmludGVsX2RzaSwgY29uc3QgdTggKmRhdGEpCj4gK3N0YXRpYyB2b2lkIGkyY19hY3BpX2Zp
bmRfYWRhcHRlcihzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2ksCj4gKwkJCQkgIGNvbnN0IHUx
NiBzbGF2ZV9hZGRyKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldiA9IGludGVs
X2RzaS0+YmFzZS5iYXNlLmRldjsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZkcm1fZGV2LT5w
ZGV2LT5kZXY7Cj4gLQlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXI7Cj4gIAlzdHJ1Y3QgYWNw
aV9kZXZpY2UgKmFjcGlfZGV2Owo+ICAJc3RydWN0IGxpc3RfaGVhZCByZXNvdXJjZV9saXN0Owo+
ICAJc3RydWN0IGkyY19hZGFwdGVyX2xvb2t1cCBsb29rdXA7Cj4gKwo+ICsJYWNwaV9kZXYgPSBB
Q1BJX0NPTVBBTklPTihkZXYpOwo+ICsJaWYgKGFjcGlfZGV2KSB7Cj4gKwkJbWVtc2V0KCZsb29r
dXAsIDAsIHNpemVvZihsb29rdXApKTsKPiArCQlsb29rdXAuc2xhdmVfYWRkciA9IHNsYXZlX2Fk
ZHI7Cj4gKwkJbG9va3VwLmludGVsX2RzaSA9IGludGVsX2RzaTsKPiArCQlsb29rdXAuZGV2X2hh
bmRsZSA9IGFjcGlfZGV2aWNlX2hhbmRsZShhY3BpX2Rldik7Cj4gKwo+ICsJCUlOSVRfTElTVF9I
RUFEKCZyZXNvdXJjZV9saXN0KTsKPiArCQlhY3BpX2Rldl9nZXRfcmVzb3VyY2VzKGFjcGlfZGV2
LCAmcmVzb3VyY2VfbGlzdCwKPiArCQkJCSAgICAgICBpMmNfYWRhcHRlcl9sb29rdXAsCj4gKwkJ
CQkgICAgICAgJmxvb2t1cCk7Cj4gKwkJYWNwaV9kZXZfZnJlZV9yZXNvdXJjZV9saXN0KCZyZXNv
dXJjZV9saXN0KTsKPiArCX0KPiArfQo+ICsjZWxzZQo+ICtzdGF0aWMgaW5saW5lIHZvaWQgaTJj
X2FjcGlfZmluZF9hZGFwdGVyKHN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSwKPiArCQkJCQkg
Y29uc3QgdTE2IHNsYXZlX2FkZHIpCj4gK3sKPiArfQo+ICsjZW5kaWYKPiArCj4gK3N0YXRpYyBj
b25zdCB1OCAqbWlwaV9leGVjX2kyYyhzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2ksIGNvbnN0
IHU4ICpkYXRhKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldiA9IGludGVsX2Rz
aS0+YmFzZS5iYXNlLmRldjsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZkcm1fZGV2LT5wZGV2
LT5kZXY7Cj4gKwlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXI7Cj4gIAlzdHJ1Y3QgaTJjX21z
ZyBtc2c7Cj4gIAlpbnQgcmV0Owo+ICAJdTggdmJ0X2kyY19idXNfbnVtID0gKihkYXRhICsgMik7
Cj4gQEAgLTQzMSwyMCArNDU5LDcgQEAgc3RhdGljIGNvbnN0IHU4ICptaXBpX2V4ZWNfaTJjKHN0
cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSwgY29uc3QgdTggKmRhdGEpCj4gIAo+ICAJaWYgKGlu
dGVsX2RzaS0+aTJjX2J1c19udW0gPCAwKSB7Cj4gIAkJaW50ZWxfZHNpLT5pMmNfYnVzX251bSA9
IHZidF9pMmNfYnVzX251bTsKPiAtCj4gLQkJYWNwaV9kZXYgPSBBQ1BJX0NPTVBBTklPTihkZXYp
Owo+IC0JCWlmIChhY3BpX2Rldikgewo+IC0JCQltZW1zZXQoJmxvb2t1cCwgMCwgc2l6ZW9mKGxv
b2t1cCkpOwo+IC0JCQlsb29rdXAuc2xhdmVfYWRkciA9IHNsYXZlX2FkZHI7Cj4gLQkJCWxvb2t1
cC5pbnRlbF9kc2kgPSBpbnRlbF9kc2k7Cj4gLQkJCWxvb2t1cC5kZXZfaGFuZGxlID0gYWNwaV9k
ZXZpY2VfaGFuZGxlKGFjcGlfZGV2KTsKPiAtCj4gLQkJCUlOSVRfTElTVF9IRUFEKCZyZXNvdXJj
ZV9saXN0KTsKPiAtCQkJYWNwaV9kZXZfZ2V0X3Jlc291cmNlcyhhY3BpX2RldiwgJnJlc291cmNl
X2xpc3QsCj4gLQkJCQkJICAgICAgIGkyY19hZGFwdGVyX2xvb2t1cCwKPiAtCQkJCQkgICAgICAg
Jmxvb2t1cCk7Cj4gLQkJCWFjcGlfZGV2X2ZyZWVfcmVzb3VyY2VfbGlzdCgmcmVzb3VyY2VfbGlz
dCk7Cj4gLQkJfQo+ICsJCWkyY19hY3BpX2ZpbmRfYWRhcHRlcihpbnRlbF9kc2ksIHNsYXZlX2Fk
ZHIpOwo+ICAJfQo+ICAKPiAgCWFkYXB0ZXIgPSBpMmNfZ2V0X2FkYXB0ZXIoaW50ZWxfZHNpLT5p
MmNfYnVzX251bSk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
