Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9736E49956
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 08:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0265C6E0DA;
	Tue, 18 Jun 2019 06:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5952B6E0DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 06:51:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 23:51:06 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jun 2019 23:51:05 -0700
To: John Harrison <John.C.Harrison@Intel.com>, intel-gfx@lists.freedesktop.org
References: <20190614002838.3072-1-robert.m.fosha@intel.com>
 <20190614002838.3072-2-robert.m.fosha@intel.com>
 <62ddd492-4a40-0854-73a2-bc5693797011@linux.intel.com>
 <e240571b-f8bf-71d7-a359-8a423881eaee@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cb177163-0a17-83bc-eb0f-813b4e8159de@linux.intel.com>
Date: Tue, 18 Jun 2019 07:51:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e240571b-f8bf-71d7-a359-8a423881eaee@Intel.com>
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

Ck9uIDE4LzA2LzIwMTkgMDI6MTMsIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4gT24gNi8xMy8yMDE5
IDIzOjQ4LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4KPj4gT24gMTQvMDYvMjAxOSAwMToyOCwg
Um9iZXJ0IE0uIEZvc2hhIHdyb3RlOgo+Pj4gRnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhh
cnJpc29uQEludGVsLmNvbT4KPj4+Cj4+PiBOZXdlciBoYXJkd2FyZSBhZGRzIGZsYWdzIHRvIHRo
ZSB3aGl0ZWxpc3Qgd29yay1hcm91bmQgcmVnaXN0ZXIuIFRoZXNlCj4+PiBhbGxvdyBwZXIgYWNj
ZXNzIGRpcmVjdGlvbiBwcml2aWxlZ2VzIGFuZCByYW5nZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4+IFNpZ25lZC1v
ZmYtYnk6IFJvYmVydCBNLiBGb3NoYSA8cm9iZXJ0Lm0uZm9zaGFAaW50ZWwuY29tPgo+Pj4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+PiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA5ICsrKysrKysrLQo+Pj4gwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDcgKysrKysrKwo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKPj4+IGluZGV4IDE2NWIwYTQ1ZTAwOS4uYWU4MjM0MGZmZjQ1IDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+Pj4gQEAg
LTEwMTIsNyArMTAxMiw3IEBAIGJvb2wgaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91bmRzKHN0cnVj
dCAKPj4+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+PiDCoCB9Cj4+PiDCoCDCoCBzdGF0aWMg
dm9pZAo+Pj4gLXdoaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3Jl
Z190IHJlZykKPj4+ICt3aGl0ZWxpc3RfcmVnX2V4dChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWws
IGk5MTVfcmVnX3QgcmVnLCB1MzIgZmxhZ3MpCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCBpOTE1X3dhIHdhID0gewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5yZWcgPSByZWcKPj4+IEBA
IC0xMDIxLDkgKzEwMjEsMTYgQEAgd2hpdGVsaXN0X3JlZyhzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwsIAo+Pj4gaTkxNV9yZWdfdCByZWcpCj4+PiDCoMKgwqDCoMKgIGlmIChHRU1fREVCVUdfV0FS
Tl9PTih3YWwtPmNvdW50ID49IFJJTkdfTUFYX05PTlBSSVZfU0xPVFMpKQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybjsKPj4+IMKgICvCoMKgwqAgd2EucmVnLnJlZyB8PSBmbGFnczsKPj4+
IMKgwqDCoMKgwqAgX3dhX2FkZCh3YWwsICZ3YSk7Cj4+PiDCoCB9Cj4+PiDCoCArc3RhdGljIHZv
aWQKPj4+ICt3aGl0ZWxpc3RfcmVnKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdf
dCByZWcpCj4+PiArewo+Pj4gK8KgwqDCoCB3aGl0ZWxpc3RfcmVnX2V4dCh3YWwsIHJlZywgUklO
R19GT1JDRV9UT19OT05QUklWX1JXKTsKPj4+ICt9Cj4+PiArCj4+PiDCoCBzdGF0aWMgdm9pZCBn
ZW45X3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3KQo+Pj4gwqAgewo+Pj4g
wqDCoMKgwqDCoCAvKiAKPj4+IFdhVkZFU3RhdGVBZnRlclBpcGVDb250cm9sd2l0aE1lZGlhU3Rh
dGVDbGVhcjpza2wsYnh0LGdsayxjZmwgKi8KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4+PiBpbmRleCBlZGY5ZjkzOTM0YTEuLjEwZmVhNWFiM2ZjMyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPj4+IEBAIC0yNTEzLDYgKzI1MTMsMTMgQEAgZW51bSBpOTE1X3Bvd2Vy
X3dlbGxfaWQgewo+Pj4gwqAgI2RlZmluZcKgwqAgUklOR19XQUlUX1NFTUFQSE9SRcKgwqDCoCAo
MSA8PCAxMCkgLyogZ2VuNisgKi8KPj4+IMKgIMKgICNkZWZpbmUgUklOR19GT1JDRV9UT19OT05Q
UklWKGJhc2UsIGkpIF9NTUlPKCgoYmFzZSkgKyAweDREMCkgKyAKPj4+IChpKSAqIDQpCj4+PiAr
I2RlZmluZcKgwqAgUklOR19GT1JDRV9UT19OT05QUklWX1JXwqDCoMKgwqDCoMKgwqAgKDAgPDwg
MjgpwqDCoMKgIC8qIENGTCsgJiAKPj4+IEdlbjExKyAqLwo+Pgo+PiBTaG91bGRuJ3QgdGhpcyBj
b21tZW50IGJlIGFnYWluc3QgdGhlIFJEIGFuZCBXUiBmbGFncywgd2hpbGUgdGhlIGFib3ZlIAo+
PiBpcyB0aGUgbGVnYWN5IG9uZT8KPiAKPiBUZWNobmljYWxseSwgdGhpcyBmaWVsZCBkb2VzIG5v
dCBleGlzdCBhdCBhbGwgb24gb2xkZXIgaGFyZHdhcmUuIEhvd2V2ZXIgCj4gdGhlc2UgYml0cyBh
cmUgTUJaIGhlbmNlIGFyZSBlcXVpdmFsZW50IHRvIGhhdmluZyB0aGUgdmFsdWUgb2YgUlcgYmVp
bmcgCj4gc2V0LiBUbyBtZSwgaXQgbWFrZXMgbW9yZSBzZW5zZSB0byBiZSBhY2N1cmF0ZSBhbmQg
bGFiZWwgdGhlIGVudGlyZSAKPiBmaWVsZCBhcyBuZXdlciBoYXJkd2FyZSBvbmx5LgoKRGlkIG5v
dCBzZWUgeW91ciByZXBseSBpbml0aWFsbHkgZHVlIG5vdCBiZWluZyBjb3BpZWQuCgpPa2F5IHRo
ZW4gSSBndWVzcy4gSnVzdCBnb2luZyBmb3J3YXJkIG1ha2Ugc3VyZSB0aGUgcGF0Y2hlcyBmb3Ig
b2xkIAp3b3JrYXJvdW5kcyBkb24ndCB1c2UgUklOR19GT1JDRV9UT19OT05QUklWX1JXIGxpa2Ug
dGhlIHByZXZpb3VzIHJvdW5kIApkaWQuIChDYW4ndCBoYXZlIGl0IGJvdGggd2F5cy4gOykKClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
