Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C98043056
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 21:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D8B891F2;
	Wed, 12 Jun 2019 19:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF67891F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 19:41:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 12:41:05 -0700
X-ExtLoop1: 1
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga003.jf.intel.com with ESMTP; 12 Jun 2019 12:41:05 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190612182745.GO13184@mdroper-desk.amr.corp.intel.com>
 <20190612183631.30540-1-matthew.d.roper@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <957c710d-78bb-0e03-4937-e467f3803854@intel.com>
Date: Wed, 12 Jun 2019 11:40:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612183631.30540-1-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add Wa_1409120013:icl,ehl
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

TG9va3MgZ29vZCBub3cuCgpSZXZpZXdlZC1ieTogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5
bG9yQGludGVsLmNvbT4KCgotQ2xpbnQKCgpPbiA2LzEyLzE5IDExOjM2IEFNLCBNYXR0IFJvcGVy
IHdyb3RlOgo+IFRoaXMgY2hpY2tlbiBiaXQgc2hvdWxkIGJlIHNldCBiZWZvcmUgZW5hYmxpbmcg
RkJDIHRvIGF2b2lkIHNjcmVlbgo+IGNvcnJ1cHRpb24gd2hlbiB0aGUgcGxhbmUgc2l6ZSBoYXMg
b2RkIHZlcnRpY2FsIGFuZCBob3Jpem9udGFsCj4gZGltZW5zaW9ucy4gIEl0IGlzIHNhZmUgdG8g
bGVhdmUgdGhlIGJpdCBzZXQgZXZlbiB3aGVuIEZCQyBpcyBkaXNhYmxlZC4KPgo+IHYyOgo+ICAg
LSBUaGUgYnNwZWMncyBuYW1lIGZvciB0aGlzIGJpdCBvbiB0aGVzZSBwbGF0Zm9ybXMgKCJTcGFy
ZSAxNCIpIGlzCj4gICAgIHByZXR0eSBtZWFuaW5nbGVzcy4gIExldCdzIHJlbmFtZSB0aGUgYml0
IGRlZmluaXRpb24gdG8gc29tZXRoaW5nCj4gICAgIHRoYXQgbW9yZSBhY2N1cmF0ZWx5IHJlZmxl
Y3RzIHdoYXQgdGhlIGJpdCByZWFsbHkgZG9lcy4gIChDbGludCkKPgo+IHYzOgo+ICAgLSBUaGUg
Y2hpY2tlbiByZWdpc3RlciB3YXMgYWxyZWFkeSBkZWZpbmVkIChhbG9uZyB3aXRoIGEgZmV3IG90
aGVyCj4gICAgIGdlbjktc3BlY2lmaWMgYml0cykgZmFydGhlciBkb3duLiAgSnVzdCBhZGQgdGhl
IG5ldyBiaXQgZGVmaW5pdGlvbgo+ICAgICB0aGVyZS4gIChDbGludCkKPgo+IENjOiBDbGludG9u
IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggIHwgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9mYmMuYyB8IDQgKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGVkZjlmOTM5MzRhMS4uMzY4ZWU3MTc1ODBj
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTMxNjMsNiArMzE2Myw3IEBAIGVu
dW0gaTkxNV9wb3dlcl93ZWxsX2lkIHsKPiAgICNkZWZpbmUgSUxLX0RQRkNfRkVOQ0VfWU9GRglf
TU1JTygweDQzMjE4KQo+ICAgI2RlZmluZSBJTEtfRFBGQ19DSElDS0VOCV9NTUlPKDB4NDMyMjQp
Cj4gICAjZGVmaW5lICAgSUxLX0RQRkNfRElTQUJMRV9EVU1NWTAgKDEgPDwgOCkKPiArI2RlZmlu
ZSAgIElMS19EUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTAkoMSA8PCAxNCkKPiAgICNkZWZp
bmUgICBJTEtfRFBGQ19OVUtFX09OX0FOWV9NT0RJRklDQVRJT04JKDEgPDwgMjMpCj4gICAjZGVm
aW5lIElMS19GQkNfUlRfQkFTRQkJX01NSU8oMHgyMTI4KQo+ICAgI2RlZmluZSAgIElMS19GQkNf
UlRfVkFMSUQJKDEgPDwgMCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYwo+IGluZGV4IDU2Nzlm
MmZmZmI3Yy4uZDM2Y2FkYTJjYzdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2ZiYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMKPiBA
QCAtMzQ0LDYgKzM0NCwxMCBAQCBzdGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJCQkgICBIU1dfRkJDUV9ESVMpOwo+ICAg
CX0KPiAgIAo+ICsJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQo+ICsJCS8qIFdhXzE0MDkxMjAw
MTM6aWNsLGVobCAqLwo+ICsJCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwgSUxLX0RQRkNf
Q0hJQ0tFTl9DT01QX0RVTU1ZX1BJWEVMKTsKPiArCj4gICAJSTkxNV9XUklURShJTEtfRFBGQ19D
T05UUk9MLCBkcGZjX2N0bCB8IERQRkNfQ1RMX0VOKTsKPiAgIAo+ICAgCWludGVsX2ZiY19yZWNv
bXByZXNzKGRldl9wcml2KTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
