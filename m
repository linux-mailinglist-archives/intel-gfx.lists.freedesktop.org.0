Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7E9498EE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 08:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC9789E3F;
	Tue, 18 Jun 2019 06:35:37 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3AF89D84
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 06:35:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 23:35:35 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jun 2019 23:35:35 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
 <20190618010108.27499-2-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f85944a-24c7-7409-fdd1-9c06eea04dbf@linux.intel.com>
Date: Tue, 18 Jun 2019 07:35:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618010108.27499-2-John.C.Harrison@Intel.com>
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

Ck9uIDE4LzA2LzIwMTkgMDI6MDEsIEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20gd3JvdGU6Cj4g
RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPiAKPiBOZXdl
ciBoYXJkd2FyZSBhZGRzIGZsYWdzIHRvIHRoZSB3aGl0ZWxpc3Qgd29yay1hcm91bmQgcmVnaXN0
ZXIuIFRoZXNlCj4gYWxsb3cgcGVyIGFjY2VzcyBkaXJlY3Rpb24gcHJpdmlsZWdlcyBhbmQgcmFu
Z2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJ
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3No
YUBpbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDkgKysrKysr
KystCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgNyAr
KysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBp
bmRleCAxNjViMGE0NWUwMDkuLmFlODIzNDBmZmY0NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xMDEyLDcgKzEwMTIsNyBAQCBib29s
IGludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQKPiAtd2hpdGVsaXN0X3JlZyhzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnKQo+ICt3aGl0ZWxpc3RfcmVnX2V4dChzdHJ1
Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgZmxhZ3MpCj4gICB7Cj4g
ICAJc3RydWN0IGk5MTVfd2Egd2EgPSB7Cj4gICAJCS5yZWcgPSByZWcKPiBAQCAtMTAyMSw5ICsx
MDIxLDE2IEBAIHdoaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3Jl
Z190IHJlZykKPiAgIAlpZiAoR0VNX0RFQlVHX1dBUk5fT04od2FsLT5jb3VudCA+PSBSSU5HX01B
WF9OT05QUklWX1NMT1RTKSkKPiAgIAkJcmV0dXJuOwoKQWN0dWFsbHkgaG93IGFib3V0IHdlIGFk
ZCBzb21ld2hlcmUgYXJvdW5kIGhlcmU6CgpHRU1fQlVHX09OKGh3ZWlnaHQzMihmbGFncyAmICgu
LlJEIHwgLi4gV1IpKSA+IDEpOwoKVG8gZW5zdXJlIGNvcnJlY3QgdXNhZ2Ugb2YgdGhlIGZsYWdz
PwoKUmVnYXJkcywKClR2cnRrbwoKPiArCXdhLnJlZy5yZWcgfD0gZmxhZ3M7Cj4gICAJX3dhX2Fk
ZCh3YWwsICZ3YSk7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQKPiArd2hpdGVsaXN0X3JlZyhz
dHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnKQo+ICt7Cj4gKwl3aGl0ZWxp
c3RfcmVnX2V4dCh3YWwsIHJlZywgUklOR19GT1JDRV9UT19OT05QUklWX1JXKTsKPiArfQo+ICsK
PiAgIHN0YXRpYyB2b2lkIGdlbjlfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KncpCj4gICB7Cj4gICAJLyogV2FWRkVTdGF0ZUFmdGVyUGlwZUNvbnRyb2x3aXRoTWVkaWFTdGF0
ZUNsZWFyOnNrbCxieHQsZ2xrLGNmbCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4
IDdhMjY3NjZiYTg0ZC4uY2MyOTVhNGY2ZTkyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gQEAgLTI1MTMsNiArMjUxMywxMyBAQCBlbnVtIGk5MTVfcG93ZXJfd2VsbF9pZCB7Cj4gICAj
ZGVmaW5lICAgUklOR19XQUlUX1NFTUFQSE9SRQkoMSA8PCAxMCkgLyogZ2VuNisgKi8KPiAgIAo+
ICAgI2RlZmluZSBSSU5HX0ZPUkNFX1RPX05PTlBSSVYoYmFzZSwgaSkgX01NSU8oKChiYXNlKSAr
IDB4NEQwKSArIChpKSAqIDQpCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUlcJ
CSgwIDw8IDI4KSAgICAvKiBDRkwrICYgR2VuMTErICovCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNF
X1RPX05PTlBSSVZfUkQJCSgxIDw8IDI4KQo+ICsjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05Q
UklWX1dSCQkoMiA8PCAyOCkKPiArI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SQU5H
RV8xCQkoMCA8PCAwKSAgICAgLyogQ0ZMKyAmIEdlbjExKyAqLwo+ICsjZGVmaW5lICAgUklOR19G
T1JDRV9UT19OT05QUklWX1JBTkdFXzQJCSgxIDw8IDApCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNF
X1RPX05PTlBSSVZfUkFOR0VfMTYJKDIgPDwgMCkKPiArI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9f
Tk9OUFJJVl9SQU5HRV82NAkoMyA8PCAwKQo+ICAgI2RlZmluZSAgIFJJTkdfTUFYX05PTlBSSVZf
U0xPVFMgIDEyCj4gICAKPiAgICNkZWZpbmUgR0VON19UTEJfUkRfQUREUglfTU1JTygweDQ3MDAp
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
