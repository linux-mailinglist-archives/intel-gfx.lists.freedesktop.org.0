Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B41D386C87
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 23:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72EF96E3EE;
	Mon, 17 May 2021 21:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236ED6E3EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 21:46:10 +0000 (UTC)
IronPort-SDR: nMelUkRCUuWFIhytrQZ71/imY4rXZMzAIaw/s0y5D17exH0hIRtPHLSNJ6LmDOdrtVGXXPyz+S
 cMAzYkPb4deg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198624695"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="198624695"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 14:46:09 -0700
IronPort-SDR: DS2sbaaN9Z9BO5PMiWBuJ8QsxK0KyBXOUX/eduJPCTgDnYGZJkOVvO5Y+0rvyXARZE6NUdBb5a
 iCGFvudg7jQw==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="439109834"
Received: from vrsinha-mobl.amr.corp.intel.com (HELO [10.255.229.219])
 ([10.255.229.219])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 14:46:09 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-23-matthew.d.roper@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <c59e8fdb-9de6-b2ef-cd2f-2c6c9bb996bf@intel.com>
Date: Mon, 17 May 2021 14:46:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210515031035.2561658-23-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 22/23] drm/i915/adlp: Add PIPE_MISC2
 programming
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+Cgot
Q2xpbnQKCgpPbiA1LzE0LzIxIDg6MTAgUE0sIE1hdHQgUm9wZXIgd3JvdGU6Cj4gRnJvbTogQW51
c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+Cj4gV2hlbiBzY2FsZXJz
IGFyZSBlbmFibGVkLCB3ZSBuZWVkIHRvIHByb2dyYW0gdW5kZXJydW4KPiBidWJibGUgY291bnRl
ciB0byAweDUwIHRvIGF2b2lkIFNvZnQgUGlwZSBBIHVuZGVycnVucy4KPiBNYWtlIHN1cmUgb3Ro
ZXIgYml0cyBkb250IGdldCBvdmVyd3JpdHRlbi4KPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPgo+IENjOiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JA
aW50ZWwuY29tPgo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXls
b3JAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIxICsrKysrKysrKysrKysrKysrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8ICA3ICsrKysrKysKPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBkZDI0ODk5NWM1M2QuLjg1MDc3Y2FhMzc0NCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAg
LTU3MTYsOCArNTcxNiwxMiBAQCBzdGF0aWMgdm9pZCBoc3dfc2V0X3BpcGVjb25mKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAgc3RhdGljIHZvaWQgYmR3X3Nl
dF9waXBlbWlzYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAg
IHsKPiAgIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsKPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAq
c2NhbGVyX3N0YXRlID0KPiArCQkmY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlOwo+ICsKPiAgIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKPiAgIAl1MzIgdmFsID0gMDsKPiArCWludCBpOwo+ICAgCj4gICAJc3dpdGNoIChjcnRjX3N0
YXRlLT5waXBlX2JwcCkgewo+ICAgCWNhc2UgMTg6Cj4gQEAgLTU3NTYsNiArNTc2MCwyMyBAQCBz
dGF0aWMgdm9pZCBiZHdfc2V0X3BpcGVtaXNjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQo+ICAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpCj4gICAJ
CXZhbCB8PSBQSVBFTUlTQ19QSVhFTF9ST1VORElOR19UUlVOQzsKPiAgIAo+ICsJaWYgKElTX0FM
REVSTEFLRV9QKGRldl9wcml2KSkgewo+ICsJCWJvb2wgc2NhbGVyX2luX3VzZSA9IGZhbHNlOwo+
ICsKPiArCQlmb3IgKGkgPSAwOyBpIDwgY3J0Yy0+bnVtX3NjYWxlcnM7IGkrKykgewo+ICsJCQlp
ZiAoIXNjYWxlcl9zdGF0ZS0+c2NhbGVyc1tpXS5pbl91c2UpCj4gKwkJCQljb250aW51ZTsKPiAr
Cj4gKwkJCXNjYWxlcl9pbl91c2UgPSB0cnVlOwo+ICsJCQlicmVhazsKPiArCQl9Cj4gKwo+ICsJ
CWludGVsX2RlX3JtdyhkZXZfcHJpdiwgUElQRV9NSVNDMihjcnRjLT5waXBlKSwKPiArCQkJICAg
ICBQSVBFX01JU0MyX1VOREVSUlVOX0JVQkJMRV9DT1VOVEVSX01BU0ssCj4gKwkJCSAgICAgc2Nh
bGVyX2luX3VzZSA/IFBJUEVfTUlTQzJfQlVCQkxFX0NPVU5URVJfU0NBTEVSX0VOIDoKPiArCQkJ
ICAgICBQSVBFX01JU0MyX0JVQkJMRV9DT1VOVEVSX1NDQUxFUl9ESVMpOwo+ICsJfQo+ICsKPiAg
IAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUElQRU1JU0MoY3J0Yy0+cGlwZSksIHZhbCk7Cj4g
ICB9Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCA5YjhkYTRhNmEwYWUuLjZm
ZDEyNmI2NDcyNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC02MTYzLDYgKzYx
NjMsMTMgQEAgZW51bSB7Cj4gICAjZGVmaW5lICAgUElQRU1JU0NfRElUSEVSX1RZUEVfU1AJKDAg
PDwgMikKPiAgICNkZWZpbmUgUElQRU1JU0MocGlwZSkJCQlfTU1JT19QSVBFMihwaXBlLCBfUElQ
RV9NSVNDX0EpCj4gICAKPiArI2RlZmluZSBfUElQRV9NSVNDMl9BCQkJCQkweDcwMDJDCj4gKyNk
ZWZpbmUgX1BJUEVfTUlTQzJfQgkJCQkJMHg3MTAyQwo+ICsjZGVmaW5lICAgUElQRV9NSVNDMl9C
VUJCTEVfQ09VTlRFUl9TQ0FMRVJfRU4JCSgweDUwIDw8IDI0KQo+ICsjZGVmaW5lICAgUElQRV9N
SVNDMl9CVUJCTEVfQ09VTlRFUl9TQ0FMRVJfRElTCQkoMHgxNCA8PCAyNCkKPiArI2RlZmluZSAg
IFBJUEVfTUlTQzJfVU5ERVJSVU5fQlVCQkxFX0NPVU5URVJfTUFTSwkoMHhmZiA8PCAyNCkKPiAr
I2RlZmluZSBQSVBFX01JU0MyKHBpcGUpCQkJCQlfTU1JT19QSVBFMihwaXBlLCBfUElQRV9NSVND
Ml9BKQo+ICsKPiAgIC8qIFNreWxha2UrIHBpcGUgYm90dG9tIChiYWNrZ3JvdW5kKSBjb2xvciAq
Lwo+ICAgI2RlZmluZSBfU0tMX0JPVFRPTV9DT0xPUl9BCQkweDcwMDM0Cj4gICAjZGVmaW5lICAg
U0tMX0JPVFRPTV9DT0xPUl9HQU1NQV9FTkFCTEUJKDEgPDwgMzEpCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
