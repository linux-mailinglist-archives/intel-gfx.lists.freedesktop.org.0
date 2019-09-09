Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7B0AD9E3
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 15:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF4189C0D;
	Mon,  9 Sep 2019 13:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90B589C0D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 13:21:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 06:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="335594904"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2019 06:21:16 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-9-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <cd39c7eb-ccc9-8606-1c49-b6637f6722a1@intel.com>
Date: Mon, 9 Sep 2019 18:51:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907110735.10302-9-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 08/11] drm/i915/dsb: added dsb refcount
 to synchronize between get/put.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvNy8yMDE5IDQ6MzcgUE0sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4gVGhlIGxpZmV0aW1l
IG9mIGNvbW1hbmQgYnVmZmVyIGNhbiBiZSBjb250cm9sbGVkIGJ5IHRoZSBkc2IgdXNlcgo+IHRo
cm91aCByZWZjb3VudC4gQWRkZWQgcmVmY291bnQgbWVjaGFuaXNtIGlzIGRzYiBnZXQvcHV0IGNh
bGwKPiB3aGljaCBjcmVhdGUvZGVzdHJveSBkc2IgY29udGV4dC4KPgo+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5r
LnNoYXJtYUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIHwgMjIgKysrKysrKysrKysrKysrKy0tLS0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICAxICsKPiAgIDIgZmlsZXMgY2hhbmdlZCwg
MTcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYwo+IGluZGV4IDg1MzY4NTc1MTU0MC4uYjk1MWE2YjUyNjRhIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gQEAgLTc4LDcg
Kzc4LDEyIEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gICAJc3Ry
dWN0IGludGVsX2RzYiAqZHNiID0gJmNydGMtPmRzYjsKPiAgIAlpbnRlbF93YWtlcmVmX3Qgd2Fr
ZXJlZjsKPiAgIAo+IC0JaWYgKCghSEFTX0RTQihpOTE1KSkgfHwgZHNiLT5jbWRfYnVmKQo+ICsJ
aWYgKCFIQVNfRFNCKGk5MTUpKQo+ICsJCXJldHVybiBkc2I7Cj4gKwo+ICsJYXRvbWljX2luYygm
ZHNiLT5yZWZjb3VudCk7Cj4gKwoKQXMgZGlzY3Vzc2VkIHdlIGFyZSBub3Qgc29sdmluZyBhbnkg
cHJvYmxlbSB3aXRoIHJlZmVyZW5jZSBjb3VudGluZywgCnJhdGhlciwgd2UgYXJlIGFkZGluZyBh
IGNvbXBsZXhpdHkgaGVyZS4gSXQgbWF5IGJlIHVzZWZ1bCwgd2hlbiB3ZSBhcmUgCmV4dGVuZGlu
ZyBzaW5nbGUgaW5zdGFuY2Ugb2YgRFNCIHRvIERTQiBwb29sIGJ1dCBub3QgcmlnaHQgbm93LgoK
SSB3b3VsZCBzYXkgd2UgZHJvcCB0aGlzIHBhdGNoIGFsbCB0b2dldGhlciwgYW5kIGp1c3QgaGF2
ZSB0aGUgc2ltcGxlIAppbXBsZW1lbnRhdGlvbiBub3cuCgotIFNoYXNoYW5rCgo+ICsJaWYgKGRz
Yi0+Y21kX2J1ZikKPiAgIAkJcmV0dXJuIGRzYjsKPiAgIAo+ICAgCWRzYi0+aWQgPSBEU0IxOwo+
IEBAIC05NCw2ICs5OSw3IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMp
Cj4gICAJaWYgKElTX0VSUih2bWEpKSB7Cj4gICAJCURSTV9FUlJPUigiVm1hIGNyZWF0aW9uIGZh
aWxlZC5cbiIpOwo+ICAgCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gKwkJYXRvbWljX2Rl
YygmZHNiLT5yZWZjb3VudCk7Cj4gICAJCWdvdG8gZXJyOwo+ICAgCX0KPiAgIAo+IEBAIC0xMDIs
NiArMTA4LDcgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgIAkJ
RFJNX0VSUk9SKCJDb21tYW5kIGJ1ZmZlciBjcmVhdGlvbiBmYWlsZWQuXG4iKTsKPiAgIAkJaTkx
NV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJnZtYSwgMCk7Cj4gICAJCWRzYi0+Y21kX2J1ZiA9IE5V
TEw7Cj4gKwkJYXRvbWljX2RlYygmZHNiLT5yZWZjb3VudCk7Cj4gICAJCWdvdG8gZXJyOwo+ICAg
CX0KPiAgIAlkc2ItPnZtYSA9IHZtYTsKPiBAQCAtMTIxLDExICsxMjgsMTQgQEAgdm9pZCBpbnRl
bF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKPiAgIAkJcmV0dXJuOwo+ICAgCj4gICAJ
aWYgKGRzYi0+Y21kX2J1Zikgewo+IC0JCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOwo+IC0JCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoZHNiLT52bWEtPm9iaik7Cj4gLQkJ
aTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCAwKTsKPiAtCQlkc2ItPmNtZF9i
dWYgPSBOVUxMOwo+IC0JCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4g
KwkJYXRvbWljX2RlYygmZHNiLT5yZWZjb3VudCk7Cj4gKwkJaWYgKCFhdG9taWNfcmVhZCgmZHNi
LT5yZWZjb3VudCkpIHsKPiArCQkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
Cj4gKwkJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoZHNiLT52bWEtPm9iaik7Cj4gKwkJCWk5
MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZkc2ItPnZtYSwgMCk7Cj4gKwkJCWRzYi0+Y21kX2J1
ZiA9IE5VTEw7Cj4gKwkJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4g
KwkJfQo+ICAgCX0KPiAgIH0KPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuaAo+IGluZGV4IDczODljOGM1YjY2NS4uZGNhNGU2MzJkZDNjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCj4gQEAgLTIwLDYgKzIwLDcgQEAgZW51
bSBkc2JfaWQgewo+ICAgfTsKPiAgIAo+ICAgc3RydWN0IGludGVsX2RzYiB7Cj4gKwlhdG9taWNf
dCByZWZjb3VudDsKPiAgIAllbnVtIGRzYl9pZCBpZDsKPiAgIAl1MzIgKmNtZF9idWY7Cj4gICAJ
c3RydWN0IGk5MTVfdm1hICp2bWE7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
