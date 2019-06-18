Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018A7498DE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 08:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 256D26E0DA;
	Tue, 18 Jun 2019 06:27:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A06F76E0DA
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 06:27:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 23:27:33 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jun 2019 23:27:32 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
 <20190618010108.27499-2-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <06f39905-36b0-ba19-b441-7c0040d5104c@linux.intel.com>
Date: Tue, 18 Jun 2019 07:27:32 +0100
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
WF9OT05QUklWX1NMT1RTKSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gKwl3YS5yZWcucmVnIHw9IGZs
YWdzOwo+ICAgCV93YV9hZGQod2FsLCAmd2EpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkCj4g
K3doaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZykK
PiArewo+ICsJd2hpdGVsaXN0X3JlZ19leHQod2FsLCByZWcsIFJJTkdfRk9SQ0VfVE9fTk9OUFJJ
Vl9SVyk7Cj4gK30KPiArCj4gICBzdGF0aWMgdm9pZCBnZW45X3doaXRlbGlzdF9idWlsZChzdHJ1
Y3QgaTkxNV93YV9saXN0ICp3KQo+ICAgewo+ICAgCS8qIFdhVkZFU3RhdGVBZnRlclBpcGVDb250
cm9sd2l0aE1lZGlhU3RhdGVDbGVhcjpza2wsYnh0LGdsayxjZmwgKi8KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBpbmRleCA3YTI2NzY2YmE4NGQuLmNjMjk1YTRmNmU5MiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+IEBAIC0yNTEzLDYgKzI1MTMsMTMgQEAgZW51bSBpOTE1X3Bvd2Vy
X3dlbGxfaWQgewo+ICAgI2RlZmluZSAgIFJJTkdfV0FJVF9TRU1BUEhPUkUJKDEgPDwgMTApIC8q
IGdlbjYrICovCj4gICAKPiAgICNkZWZpbmUgUklOR19GT1JDRV9UT19OT05QUklWKGJhc2UsIGkp
IF9NTUlPKCgoYmFzZSkgKyAweDREMCkgKyAoaSkgKiA0KQo+ICsjZGVmaW5lICAgUklOR19GT1JD
RV9UT19OT05QUklWX1JXCQkoMCA8PCAyOCkgICAgLyogQ0ZMKyAmIEdlbjExKyAqLwoKUmVwZWF0
aW5nIHRoZSBxdWVzdGlvbiBmcm9tIHByZXZpb3VzIHJvdW5kIC0gaXNuJ3QgdGhlIFJXIGxlZ2Fj
eSBhbmQgdGhlIAp0d28gbmV3IGZsYWdzIGJlbG93IGFyZSBDRkwrICYgR2VuMTErPwoKPiArI2Rl
ZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SRAkJKDEgPDwgMjgpCj4gKyNkZWZpbmUgICBS
SU5HX0ZPUkNFX1RPX05PTlBSSVZfV1IJCSgyIDw8IDI4KQo+ICsjZGVmaW5lICAgUklOR19GT1JD
RV9UT19OT05QUklWX1JBTkdFXzEJCSgwIDw8IDApICAgICAvKiBDRkwrICYgR2VuMTErICovCj4g
KyNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNAkJKDEgPDwgMCkKPiArI2Rl
ZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SQU5HRV8xNgkoMiA8PCAwKQo+ICsjZGVmaW5l
ICAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzY0CSgzIDw8IDApCj4gICAjZGVmaW5lICAg
UklOR19NQVhfTk9OUFJJVl9TTE9UUyAgMTIKPiAgIAo+ICAgI2RlZmluZSBHRU43X1RMQl9SRF9B
RERSCV9NTUlPKDB4NDcwMCkKPiAKCklmIEkgYW0gcmlnaHQgdGhhdCB0aGUgY29tbWVudCBzaG91
bGQgYmUgbW92ZWQgYSBsaW5lIGRvd24sIHRoZW4gd2l0aCAKdGhhdCwgb3IgaWYgSSBhbSBub3Qg
cmlnaHQgbGlrZSBpdCBpczoKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
