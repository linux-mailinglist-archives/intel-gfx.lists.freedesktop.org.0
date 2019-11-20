Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB2E104045
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFCE6E840;
	Wed, 20 Nov 2019 16:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB4A6E840
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:05:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:05:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200764385"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 08:05:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <362b3365-f0b2-dd08-ee0a-f68a3021458d@linux.intel.com>
Date: Wed, 20 Nov 2019 16:05:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Serialise with remote
 retirement
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

Ck9uIDIwLzExLzIwMTkgMTU6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSByZXRpcmVt
ZW50IG1heSBiZSBydW5uaW5nIGluIGEgd29ya2VyIG9uIGFub3RoZXIgQ1BVLCBpdCBtYXkgYmUK
PiBza2lwcGVkIGluIHRoZSBsb2NhbCBpbnRlbF9ndF93YWl0X2Zvcl9pZGxlKCkuIFRvIGVuc3Vy
ZSB0aGUgc3RhdGUgaXMKPiBjb25zaXN0ZW50IGZvciBvdXIgc2FuaXR5IGNoZWNrcyB1cG9uIGxv
YWQsIHNlcmlhbGlzZSB3aXRoIHRoZSByZW1vdGUKPiByZXRpcmVyIGJ5IHdhaXRpbmcgb24gdGhl
IHRpbWVsaW5lLT5tdXRleC4KCldoYXQgbWF5IGdldCBza2lwcGVkPyBUaW1lbGluZSBtaWdodCBo
YXZlIGJlZW4gcmVtb3ZlZCBmcm9tIHRoZSBhY3RpdmUgCmxpc3QgYmVmb3JlIHdhaXRfZm9yX2lk
bGU/IEJ1dCB3aHkgd291bGQgdGhhdCBiZSBiYWQgZm9yIHRoaXMgY29kZT8gSXQgCmp1c3Qgc3Bs
aXRzIHBhcnQgb2YgdGhlIHJldGlyZW1lbnQgdG8gdHdvIHBhdGhzIC0gd2FpdF9mb3JfaWRsZSBz
dGlsbC4uLiAKb29wcyB3YWl0Li4gaW5kZWVkLi4gd2FpdF9mb3JfaWRsZSB1c2VkIHRvIGd1YXJh
bnRlZSByZXRpcmVtZW50IGFuZCBub3cgCml0IGNhbiBiZSBvbmdvaW5nLiBEb2VzIHdhaXRfZm9y
X2lkbGUgbmVlZHMgdG8gYWx3YXlzIHdhaXQgb3IgeW91IHRoaW5rIApjYXNlLWJ5LWNhc2UgYmFz
aXMgaXMgYmV0dGVyPwoKUmVnYXJkcywKClR2cnRrbwoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCj4gaW5kZXggMWJhNWYyNjcwMGIwLi42MTM5NWIwMzQ0M2UgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMKPiBAQCAtNDUsNiArNDUsNyBAQAo+ICAgI2luY2x1ZGUgImdlbS9pOTE1
X2dlbV9jb250ZXh0LmgiCj4gICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgo+ICAg
I2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfY29udGV4
dC5oIgo+ICAgI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2VyLmgiCj4gICAjaW5jbHVkZSAi
Z3QvaW50ZWxfZ3QuaCIKPiAgICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgo+IEBAIC0xMDQx
LDYgKzEwNDIsMTggQEAgaTkxNV9nZW1fbWFkdmlzZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLAo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiArc3RhdGljIGlu
dCBfX2ludGVsX2NvbnRleHRfZmx1c2hfcmV0aXJlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
PiArewo+ICsJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKPiArCj4gKwl0bCA9IGludGVsX2Nv
bnRleHRfdGltZWxpbmVfbG9jayhjZSk7Cj4gKwlpZiAoSVNfRVJSKHRsKSkKPiArCQlyZXR1cm4g
UFRSX0VSUih0bCk7Cj4gKwo+ICsJaW50ZWxfY29udGV4dF90aW1lbGluZV91bmxvY2sodGwpOwo+
ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNv
cmRfZGVmYXVsdHMoc3RydWN0IGludGVsX2d0ICpndCkKPiAgIHsKPiAgIAlzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpyZXF1ZXN0c1tJOTE1X05VTV9FTkdJTkVTXSA9IHt9Owo+IEBAIC0xMTA5LDEzICsx
MTIyLDIwIEBAIHN0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZhdWx0cyhzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQo+ICAgCQlpZiAoIXJxKQo+ICAgCQkJY29udGludWU7Cj4gICAKPiAt
CQkvKiBXZSB3YW50IHRvIGJlIGFibGUgdG8gdW5iaW5kIHRoZSBzdGF0ZSBmcm9tIHRoZSBHR1RU
ICovCj4gLQkJR0VNX0JVR19PTihpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChycS0+aHdfY29udGV4
dCkpOwo+IC0KPiArCQlHRU1fQlVHX09OKCF0ZXN0X2JpdChDT05URVhUX0FMTE9DX0JJVCwKPiAr
CQkJCSAgICAgJnJxLT5od19jb250ZXh0LT5mbGFncykpOwo+ICAgCQlzdGF0ZSA9IHJxLT5od19j
b250ZXh0LT5zdGF0ZTsKPiAgIAkJaWYgKCFzdGF0ZSkKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCj4g
KwkJLyogU2VyaWFsaXNlIHdpdGggcmV0aXJlbWVudCBvbiBhbm90aGVyIENQVSAqLwo+ICsJCWVy
ciA9IF9faW50ZWxfY29udGV4dF9mbHVzaF9yZXRpcmUocnEtPmh3X2NvbnRleHQpOwo+ICsJCWlm
IChlcnIpCj4gKwkJCWdvdG8gb3V0Owo+ICsKPiArCQkvKiBXZSB3YW50IHRvIGJlIGFibGUgdG8g
dW5iaW5kIHRoZSBzdGF0ZSBmcm9tIHRoZSBHR1RUICovCj4gKwkJR0VNX0JVR19PTihpbnRlbF9j
b250ZXh0X2lzX3Bpbm5lZChycS0+aHdfY29udGV4dCkpOwo+ICsKPiAgIAkJLyoKPiAgIAkJICog
QXMgd2Ugd2lsbCBob2xkIGEgcmVmZXJlbmNlIHRvIHRoZSBsb2dpY2FsIHN0YXRlLCBpdCB3aWxs
Cj4gICAJCSAqIG5vdCBiZSB0b3JuIGRvd24gd2l0aCB0aGUgY29udGV4dCwgYW5kIGltcG9ydGFu
dGx5IHRoZQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
