Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCB1EF66E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 08:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD98A6E90C;
	Tue,  5 Nov 2019 07:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579686E90A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 07:31:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 23:31:32 -0800
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; d="scan'208";a="195730695"
Received: from gliebl-mobl.ger.corp.intel.com (HELO localhost) ([10.252.42.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 23:31:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20191104153128.GK1208@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191101142024.13877-1-jani.nikula@intel.com>
 <20191104153128.GK1208@intel.com>
Date: Tue, 05 Nov 2019 09:31:25 +0200
Message-ID: <8736f2ye2a.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: update rawclk also on resume
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwNCBOb3YgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMDQ6MjA6MjRQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFNpbmNlIENOUCBpdCdzIHBvc3NpYmxlIGZvciBy
YXdjbGsgdG8gaGF2ZSB0d28gZGlmZmVyZW50IHZhbHVlcywgMTkuMgo+PiBhbmQgMjQgTUh6LiBJ
ZiB0aGUgdmFsdWUgaW5kaWNhdGVkIGJ5IFNGVVNFX1NUUkFQIHJlZ2lzdGVyIGlzIGRpZmZlcmVu
dAo+PiBmcm9tIHRoZSBwb3dlciBvbiBkZWZhdWx0IGZvciBQQ0hfUkFXQ0xLX0ZSRVEsIHdlJ2xs
IGVuZCB1cCBoYXZpbmcgYQo+PiBtaXNtYXRjaCBiZXR3ZWVuIHRoZSByYXdjbGsgaGFyZHdhcmUg
YW5kIHNvZnR3YXJlIHN0YXRlcyBhZnRlcgo+PiBzdXNwZW5kL3Jlc3VtZS4gT24gcHJldmlvdXMg
cGxhdGZvcm1zIHRoaXMgdXNlZCB0byB3b3JrIGJ5IGFjY2lkZW50LAo+PiBiZWNhdXNlIHRoZSBw
b3dlciBvbiBkZWZhdWx0cyB3b3JrZWQganVzdCBmaW5lLgo+PiAKPj4gVXBkYXRlIHRoZSByYXdj
bGsgYWxzbyBvbiByZXN1bWUuIFRoZSBuYXR1cmFsIHBsYWNlIHRvIGRvIHRoaXMgd291bGQgYmUK
Pj4gaW50ZWxfbW9kZXNldF9pbml0X2h3KCksIGhvd2V2ZXIgVkxWL0NIViBuZWVkIGl0IGRvbmUg
YmVmb3JlCj4+IGludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odygpLiBUaHVzIHB1dCBpdCB0aGVy
ZSBldmVuIGlmIGl0IGZlZWxzCj4+IHNsaWdodGx5IG91dCBvZiBwbGFjZS4KPj4gCj4+IHYyOiBD
YWxsIGludGVsX3VwZGF0ZV9yYXdjbGNrKCkgaW4gaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3
KCkgZm9yIGFsbAo+PiAgICAgcGxhdGZvcm1zIChWaWxsZSkuCj4+IAo+PiBSZXBvcnRlZC1ieTog
U2hhd24gTGVlIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Cj4+IENjOiBTaGF3biBMZWUgPHNoYXdu
LmMubGVlQGludGVsLmNvbT4KPj4gQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+CgpUaGFua3MgZm9yIHRoZSB0ZXN0aW5nIGFuZCByZXZpZXcsIHB1
c2hlZCB0byBkaW5xLgoKQlIsCkphbmkuCgo+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAzICsrKwo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgICAgICAgfCAzIC0tLQo+PiAgMiBmaWxl
cyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+PiBp
bmRleCA3MDdhYzExMGUyNzEuLmNlMWI2NGY0ZGQ0NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPj4gQEAgLTUwMTUs
NiArNTAxNSw5IEBAIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCBib29sIHJlc3VtZSkKPj4gIAo+PiAgCXBvd2VyX2RvbWFpbnMt
PmluaXRpYWxpemluZyA9IHRydWU7Cj4+ICAKPj4gKwkvKiBNdXN0IGhhcHBlbiBiZWZvcmUgcG93
ZXIgZG9tYWluIGluaXQgb24gVkxWL0NIViAqLwo+PiArCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkx
NSk7Cj4+ICsKPj4gIAlpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKSB7Cj4+ICAJCWljbF9kaXNw
bGF5X2NvcmVfaW5pdChpOTE1LCByZXN1bWUpOwo+PiAgCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFL
RShpOTE1KSkgewo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gaW5kZXggMzM0MDQ4NWMxMmUz
Li43MTk0NDM5OWRjZmMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+PiBAQCAtMjk2
LDkgKzI5Niw2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gIAlpZiAocmV0KQo+PiAgCQlnb3RvIGNsZWFudXBf
dmdhX2NsaWVudDsKPj4gIAo+PiAtCS8qIG11c3QgaGFwcGVuIGJlZm9yZSBpbnRlbF9wb3dlcl9k
b21haW5zX2luaXRfaHcoKSBvbiBWTFYvQ0hWICovCj4+IC0JaW50ZWxfdXBkYXRlX3Jhd2Nsayhp
OTE1KTsKPj4gLQo+PiAgCWludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odyhpOTE1LCBmYWxzZSk7
Cj4+ICAKPj4gIAlpbnRlbF9jc3JfdWNvZGVfaW5pdChpOTE1KTsKPj4gLS0gCj4+IDIuMjAuMQoK
LS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
