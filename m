Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D08436FAA1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 09:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3624089BC2;
	Mon, 22 Jul 2019 07:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5665F89BC2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 07:46:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 00:45:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,294,1559545200"; d="scan'208";a="196671394"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jul 2019 00:45:39 -0700
Date: Mon, 22 Jul 2019 13:11:40 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190722074139.GA27705@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-22-lucas.demarchi@intel.com>
 <20190718054703.GA6676@intel.com>
 <20190719183954.jgcdgoygq4zd2cxz@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719183954.jgcdgoygq4zd2cxz@ldmartin-desk1>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 21/22] drm/i915/tgl: Add and use new DC5 and
 DC6 residency counter registers
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

T24gMjAxOS0wNy0xOSBhdCAxMTozOTo1NCAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IE9uIFRodSwgSnVsIDE4LCAyMDE5IGF0IDExOjE3OjAzQU0gKzA1MzAsIEFuc2h1bWFuIEd1cHRh
IHdyb3RlOgo+ID5PbiAyMDE5LTA3LTEyIGF0IDE4OjA5OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJj
aGkgd3JvdGU6Cj4gPj5Gcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiA+Pgo+ID4+VGlnZXIgTGFzayBoYXMgYSBuZXcgcmVnaXN0ZXIgb2Zmc2V0IGZv
ciBEQzUgYW5kIERDNiByZXNpZGVuY3kgY291bnRlcnMuCj4gPj4KPiA+PlNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4+U2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPj4t
LS0KPiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDIxICsrKysrKysr
KysrKystLS0tLS0tLQo+ID4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwg
IDIgKysKPiA+PiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCj4gPj4KPiA+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gPj5pbmRleCBhMTg0
M2UzZGU2ZDcuLjRiMTJiNTU4OGRkNiAxMDA2NDQKPiA+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jCj4gPj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+ID4+QEAgLTI0NjUsNiArMjQ2NSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5m
byhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiA+PiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUpOwo+ID4+IAlpbnRl
bF93YWtlcmVmX3Qgd2FrZXJlZjsKPiA+PiAJc3RydWN0IGludGVsX2NzciAqY3NyOwo+ID4+Kwlp
OTE1X3JlZ190IGRjNV9yZWcsIGRjNl9yZWcgPSB7fTsKPiA+Pgo+ID4+IAlpZiAoIUhBU19DU1Io
ZGV2X3ByaXYpKQo+ID4+IAkJcmV0dXJuIC1FTk9ERVY7Cj4gPj5AQCAtMjQ4MiwxNSArMjQ4Mywx
OSBAQCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1
bnVzZWQpCj4gPj4gCXNlcV9wcmludGYobSwgInZlcnNpb246ICVkLiVkXG4iLCBDU1JfVkVSU0lP
Tl9NQUpPUihjc3ItPnZlcnNpb24pLAo+ID4+IAkJICAgQ1NSX1ZFUlNJT05fTUlOT1IoY3NyLT52
ZXJzaW9uKSk7Cj4gPj4KPiA+Pi0JaWYgKFdBUk5fT04oSU5URUxfR0VOKGRldl9wcml2KSA+IDEx
KSkKPiA+Pi0JCWdvdG8gb3V0Owo+ID4+KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikg
ewpCZWxvdyBETUMgZGVidWcgcmVnaXN0ZXJzIG9mZnNldHMgYXJlIHNwZWNpZmljIHRvIFRHTCwK
U28gaXQgd291bGQgbWFrZSBzZW5zZSB0byBhZGQgSVNfVElHRVJMQUtFIGNvbmRpdGlvbj8gCj4g
Pj4rCQlkYzVfcmVnID0gVEdMX0NTUl9EQzVfUkVTX0NPVU5UOwo+ID4+KwkJZGM2X3JlZyA9IFRH
TF9DU1JfREM2X1JFU19DT1VOVDsKPiA+PisJfSBlbHNlIHsKPiA+PisJCWRjNV9yZWcgPSBJU19C
Uk9YVE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9DT1VOVCA6Cj4gPj4rCQkJCQkJIFNL
TF9DU1JfREMzX0RDNV9DT1VOVDsKPiA+PisJCWlmICghSVNfR0VOOV9MUChkZXZfcHJpdikpCj4g
Pj4rCQkJZGM2X3JlZyA9IFNLTF9DU1JfREM1X0RDNl9DT1VOVDsKPiA+PisJfQo+ID4+Cj4gPj4t
CXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLAo+ID4+LQkJICAgSTkxNV9S
RUFEKElTX0JST1hUT04oZGV2X3ByaXYpID8gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoKPiA+Pi0J
CQkJCQkgICAgU0tMX0NTUl9EQzNfREM1X0NPVU5UKSk7Cj4gPj4tCWlmICghSVNfR0VOOV9MUChk
ZXZfcHJpdikpCj4gPj4tCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2IGNvdW50OiAlZFxuIiwK
PiA+Pi0JCQkgICBJOTE1X1JFQUQoU0tMX0NTUl9EQzVfREM2X0NPVU5UKSk7Cj4gPj4rCXNlcV9w
cmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoZGM1X3JlZykpOwo+
ID4+KwlpZiAoZGM2X3JlZy5yZWcpCj4gPj4rCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2IGNv
dW50OiAlZFxuIiwgSTkxNV9SRUFEKGRjNl9yZWcpKTsKPiA+Pgo+ID4+IG91dDoKPiA+PiAJc2Vx
X3ByaW50ZihtLCAicHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIsIEk5MTVfUkVBRChDU1JfUFJPR1JB
TSgwKSkpOwo+ID4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPj5pbmRleCA2Y2ZjZGY2YmIxYmIu
LjVlMzQzNGNkZDFlOCAxMDA2NDQKPiA+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiA+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+PkBAIC03
MjY5LDYgKzcyNjksOCBAQCBlbnVtIHsKPiA+PiAjZGVmaW5lIFNLTF9DU1JfREMzX0RDNV9DT1VO
VAlfTU1JTygweDgwMDMwKQo+ID4+ICNkZWZpbmUgU0tMX0NTUl9EQzVfREM2X0NPVU5UCV9NTUlP
KDB4ODAwMkMpCj4gPj4gI2RlZmluZSBCWFRfQ1NSX0RDM19EQzVfQ09VTlQJX01NSU8oMHg4MDAz
OCkKPiA+PisjZGVmaW5lIFRHTF9DU1JfREM1X1JFU19DT1VOVAlfTU1JTygweDEwMTA4NCkKPiA+
PisjZGVmaW5lIFRHTF9DU1JfREM2X1JFU19DT1VOVAlfTU1JTygweDEwMTA4OCkKPiA+Q1NSIG1l
bW9yeSByYW5nZXMgZnJvbSAweDgwMDAwIHRpbGwgMHg4ZmZmZgo+ID5UaGVzZSBETUNfREVCVUcg
cmVnaXNlcnMgYXJlIG5vdCBhcmUgbm90IENTUiByZWdpc3Rlci4KPiA+SXQgd291bGQgbWFrZSBz
ZW5zZSB0byByZW5hbWUgdGhlIG1hY3JvLgo+IAo+IFRydWUuCj4gCj4gVEdMX0RNQ19ERUJVR19E
QzVfQ09VTlQgYW5kIFRHTF9ETUNfREVCVUdfREM2X0NPVU5UIHNvdW5kcyBnb29kPwp5ZXMhCj4g
Cj4gTHVjYXMgRGUgTWFyY2hpCj4gCj4gPj4KPiA+PiAvKiBpbnRlcnJ1cHRzICovCj4gPj4gI2Rl
ZmluZSBERV9NQVNURVJfSVJRX0NPTlRST0wgICAoMSA8PCAzMSkKPiA+Pi0tCj4gPj4yLjIxLjAK
PiA+Pgo+ID4+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+PkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+PkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiA+Pmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
