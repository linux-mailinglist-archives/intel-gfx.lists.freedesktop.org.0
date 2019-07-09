Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0802663559
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6199289FD4;
	Tue,  9 Jul 2019 12:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAD889FD4
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:03:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:03:31 -0700
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="159431689"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jul 2019 05:03:31 -0700
Date: Tue, 9 Jul 2019 05:04:07 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709120407.GE16315@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-4-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2 03/25] drm/i915/tgl: Introduce Tiger Lake
 PCH
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

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MDdQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFk
YUBpbnRlbC5jb20+Cj4gCj4gQWRkIHRoZSBlbnVtIGFkZGl0aW9ucyB0byBUR1AuCj4gCj4gQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBEYXZpZCBXZWluZWhh
bGwgPGRhdmlkLndlaW5laGFsbEBpbnRlbC5jb20+Cj4gQ2M6IEphbWVzIEF1c211cyA8amFtZXMu
YXVzbXVzQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8
cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IFJvZHJpZ28g
Vml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgfCA0ICsrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCB8IDMgKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggNzk0YzY4MTRhNmQwLi5iY2VkZDJkOGUyNjcgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMjI0LDYgKzIyNCwxMCBAQCBpbnRlbF9wY2hf
dHlwZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHVuc2lnbmVkIHNo
b3J0IGlkKQo+ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIE11bGUgQ3JlZWsgQ2FueW9uIFBDSFxu
Iik7Cj4gIAkJV0FSTl9PTighSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKTsKPiAgCQlyZXR1cm4g
UENIX01DQzsKPiArCWNhc2UgSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQRToKPiArCQlEUk1f
REVCVUdfS01TKCJGb3VuZCBUaWdlciBMYWtlIExQIFBDSFxuIik7Cj4gKwkJV0FSTl9PTighSVNf
VElHRVJMQUtFKGRldl9wcml2KSk7Cj4gKwkJcmV0dXJuIFBDSF9UR1A7Cj4gIAlkZWZhdWx0Ogo+
ICAJCXJldHVybiBQQ0hfTk9ORTsKPiAgCX0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRl
eCAyNTA4YjEyMjJkMmMuLjMyNDhmOTk1OTIyNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAo+IEBAIC01MzYsNiArNTM2LDcgQEAgZW51bSBpbnRlbF9wY2ggewo+ICAJUENIX0NOUCwgICAg
ICAgIC8qIENhbm5vbi9Db21ldCBMYWtlIFBDSCAqLwo+ICAJUENIX0lDUCwJLyogSWNlIExha2Ug
UENIICovCj4gIAlQQ0hfTUNDLCAgICAgICAgLyogTXVsZSBDcmVlayBDYW55b24gUENIICovCj4g
KwlQQ0hfVEdQLAkvKiBUaWdlciBMYWtlIFBDSCAqLwo+ICB9Owo+ICAKPiAgI2RlZmluZSBRVUlS
S19MVkRTX1NTQ19ESVNBQkxFICgxPDwxKQo+IEBAIC0yMzIyLDYgKzIzMjMsNyBAQCBJU19TVUJQ
TEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgI2RlZmluZSBJ
TlRFTF9QQ0hfSUNQX0RFVklDRV9JRF9UWVBFCQkweDM0ODAKPiAgI2RlZmluZSBJTlRFTF9QQ0hf
TUNDX0RFVklDRV9JRF9UWVBFCQkweDRCMDAKPiAgI2RlZmluZSBJTlRFTF9QQ0hfTUNDMl9ERVZJ
Q0VfSURfVFlQRQkJMHgzODgwCj4gKyNkZWZpbmUgSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQ
RQkJMHhBMDgwCj4gICNkZWZpbmUgSU5URUxfUENIX1AyWF9ERVZJQ0VfSURfVFlQRQkJMHg3MTAw
Cj4gICNkZWZpbmUgSU5URUxfUENIX1AzWF9ERVZJQ0VfSURfVFlQRQkJMHg3MDAwCj4gICNkZWZp
bmUgSU5URUxfUENIX1FFTVVfREVWSUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11IHEzNSBoYXMg
MjkxOCAqLwo+IEBAIC0yMzI5LDYgKzIzMzEsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgI2RlZmluZSBJTlRFTF9QQ0hfVFlQRShkZXZf
cHJpdikgKChkZXZfcHJpdiktPnBjaF90eXBlKQo+ICAjZGVmaW5lIElOVEVMX1BDSF9JRChkZXZf
cHJpdikgKChkZXZfcHJpdiktPnBjaF9pZCkKPiAgI2RlZmluZSBIQVNfUENIX01DQyhkZXZfcHJp
dikgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfTUNDKQo+ICsjZGVmaW5lIEhBU19Q
Q0hfVEdQKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9UR1ApCj4g
ICNkZWZpbmUgSEFTX1BDSF9JQ1AoZGV2X3ByaXYpIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikg
PT0gUENIX0lDUCkKPiAgI2RlZmluZSBIQVNfUENIX0NOUChkZXZfcHJpdikgKElOVEVMX1BDSF9U
WVBFKGRldl9wcml2KSA9PSBQQ0hfQ05QKQo+ICAjZGVmaW5lIEhBU19QQ0hfU1BUKGRldl9wcml2
KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9TUFQpCj4gLS0gCj4gMi4yMS4wCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
