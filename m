Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C264A2B4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38DFD6E192;
	Tue, 18 Jun 2019 13:48:10 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A144F6E192
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 13:48:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:48:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="161880958"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.251.137.226])
 ([10.251.137.226])
 by orsmga003.jf.intel.com with ESMTP; 18 Jun 2019 06:48:07 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
 <20190618010108.27499-2-John.C.Harrison@Intel.com>
 <9f85944a-24c7-7409-fdd1-9c06eea04dbf@linux.intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <c9f0fbd4-35df-573b-1de4-464da35e7f29@Intel.com>
Date: Tue, 18 Jun 2019 06:48:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9f85944a-24c7-7409-fdd1-9c06eea04dbf@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Support flags in whitlist WAs
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

T24gNi8xNy8yMDE5IDIzOjM1LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiBPbiAxOC8wNi8yMDE5
IDAyOjAxLCBKb2huLkMuSGFycmlzb25ASW50ZWwuY29tIHdyb3RlOgo+PiBGcm9tOiBKb2huIEhh
cnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+Pgo+PiBOZXdlciBoYXJkd2FyZSBh
ZGRzIGZsYWdzIHRvIHRoZSB3aGl0ZWxpc3Qgd29yay1hcm91bmQgcmVnaXN0ZXIuIFRoZXNlCj4+
IGFsbG93IHBlciBhY2Nlc3MgZGlyZWN0aW9uIHByaXZpbGVnZXMgYW5kIHJhbmdlcy4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRlbC5j
b20+Cj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiBD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IC0tLQo+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgOSArKysrKysrKy0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDcgKysrKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+PiBpbmRleCAxNjViMGE0NWUwMDkuLmFlODIzNDBmZmY0NSAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+IEBAIC0x
MDEyLDcgKzEwMTIsNyBAQCBib29sIGludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcyhzdHJ1Y3Qg
Cj4+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+IMKgIH0KPj4gwqAgwqAgc3RhdGljIHZvaWQK
Pj4gLXdoaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJl
ZykKPj4gK3doaXRlbGlzdF9yZWdfZXh0KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9y
ZWdfdCByZWcsIHUzMiBmbGFncykKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1X3dh
IHdhID0gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLnJlZyA9IHJlZwo+PiBAQCAtMTAyMSw5ICsx
MDIxLDE2IEBAIHdoaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCAKPj4gaTkx
NV9yZWdfdCByZWcpCj4+IMKgwqDCoMKgwqAgaWYgKEdFTV9ERUJVR19XQVJOX09OKHdhbC0+Y291
bnQgPj0gUklOR19NQVhfTk9OUFJJVl9TTE9UUykpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4KPiBBY3R1YWxseSBob3cgYWJvdXQgd2UgYWRkIHNvbWV3aGVyZSBhcm91bmQgaGVyZToK
Pgo+IEdFTV9CVUdfT04oaHdlaWdodDMyKGZsYWdzICYgKC4uUkQgfCAuLiBXUikpID4gMSk7Cj4K
PiBUbyBlbnN1cmUgY29ycmVjdCB1c2FnZSBvZiB0aGUgZmxhZ3M/Cj4KCkl0IHNob3VsZCBwcm9i
YWJseSBiZSBtb3JlIGxpa2UgQlVHX09OKChmbGFncyAmIEFDQ0VTU19NQVNLKSA+IApBQ0NFU1Nf
TUFYKS4gSXQgaXMgaW50ZW5kZWQgdG8gYmUgYW4gYWNjZXNzIGVudW0gd2l0aCB0aHJlZSB2YWxp
ZCB2YWx1ZXMgCnJhdGhlciB0aGFuIGEgcGFpciBvZiBmbGFncy4gQnV0IHllcywgc3VjaCBhIGNo
ZWNrIGNvdWxkIGJlIGFkZGVkIGluIHRoZSAKbmV4dCB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBzZXJp
ZXMgYWxvbmcgd2l0aCB0aGUgc2VsZnRlc3QgdXBkYXRlcy4KCkpvaG4uCgoKPiBSZWdhcmRzLAo+
Cj4gVHZydGtvCj4KPj4gK8KgwqDCoCB3YS5yZWcucmVnIHw9IGZsYWdzOwo+PiDCoMKgwqDCoMKg
IF93YV9hZGQod2FsLCAmd2EpOwo+PiDCoCB9Cj4+IMKgICtzdGF0aWMgdm9pZAo+PiArd2hpdGVs
aXN0X3JlZyhzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnKQo+PiArewo+
PiArwqDCoMKgIHdoaXRlbGlzdF9yZWdfZXh0KHdhbCwgcmVnLCBSSU5HX0ZPUkNFX1RPX05PTlBS
SVZfUlcpOwo+PiArfQo+PiArCj4+IMKgIHN0YXRpYyB2b2lkIGdlbjlfd2hpdGVsaXN0X2J1aWxk
KHN0cnVjdCBpOTE1X3dhX2xpc3QgKncpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCAvKiAKPj4gV2FW
RkVTdGF0ZUFmdGVyUGlwZUNvbnRyb2x3aXRoTWVkaWFTdGF0ZUNsZWFyOnNrbCxieHQsZ2xrLGNm
bCAqLwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAKPj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+IGluZGV4IDdhMjY3NjZiYTg0ZC4u
Y2MyOTVhNGY2ZTkyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gQEAgLTI1MTMs
NiArMjUxMywxMyBAQCBlbnVtIGk5MTVfcG93ZXJfd2VsbF9pZCB7Cj4+IMKgICNkZWZpbmXCoMKg
IFJJTkdfV0FJVF9TRU1BUEhPUkXCoMKgwqAgKDEgPDwgMTApIC8qIGdlbjYrICovCj4+IMKgIMKg
ICNkZWZpbmUgUklOR19GT1JDRV9UT19OT05QUklWKGJhc2UsIGkpIF9NTUlPKCgoYmFzZSkgKyAw
eDREMCkgKyAKPj4gKGkpICogNCkKPj4gKyNkZWZpbmXCoMKgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJ
Vl9SV8KgwqDCoMKgwqDCoMKgICgwIDw8IDI4KcKgwqDCoCAvKiBDRkwrICYgCj4+IEdlbjExKyAq
Lwo+PiArI2RlZmluZcKgwqAgUklOR19GT1JDRV9UT19OT05QUklWX1JEwqDCoMKgwqDCoMKgwqAg
KDEgPDwgMjgpCj4+ICsjZGVmaW5lwqDCoCBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfV1LCoMKgwqDC
oMKgwqDCoCAoMiA8PCAyOCkKPj4gKyNkZWZpbmXCoMKgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9S
QU5HRV8xwqDCoMKgwqDCoMKgwqAgKDAgPDwgMCnCoMKgwqDCoCAvKiBDRkwrIAo+PiAmIEdlbjEx
KyAqLwo+PiArI2RlZmluZcKgwqAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzTCoMKgwqDC
oMKgwqDCoCAoMSA8PCAwKQo+PiArI2RlZmluZcKgwqAgUklOR19GT1JDRV9UT19OT05QUklWX1JB
TkdFXzE2wqDCoMKgICgyIDw8IDApCj4+ICsjZGVmaW5lwqDCoCBSSU5HX0ZPUkNFX1RPX05PTlBS
SVZfUkFOR0VfNjTCoMKgwqAgKDMgPDwgMCkKPj4gwqAgI2RlZmluZcKgwqAgUklOR19NQVhfTk9O
UFJJVl9TTE9UU8KgIDEyCj4+IMKgIMKgICNkZWZpbmUgR0VON19UTEJfUkRfQUREUsKgwqDCoCBf
TU1JTygweDQ3MDApCj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
