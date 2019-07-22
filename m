Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C393707FE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 19:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50529891D9;
	Mon, 22 Jul 2019 17:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283BB891D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 17:57:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 10:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="344483023"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.40])
 by orsmga005.jf.intel.com with ESMTP; 22 Jul 2019 10:40:17 -0700
Date: Mon, 22 Jul 2019 10:40:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190722174015.ywxz2ckqxktdbb2t@ldmartin-desk1>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-22-lucas.demarchi@intel.com>
 <20190718054703.GA6676@intel.com>
 <20190719183954.jgcdgoygq4zd2cxz@ldmartin-desk1>
 <20190722074139.GA27705@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722074139.GA27705@intel.com>
User-Agent: NeoMutt/20180716
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MTE6NDBQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj5PbiAyMDE5LTA3LTE5IGF0IDExOjM5OjU0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6Cj4+IE9uIFRodSwgSnVsIDE4LCAyMDE5IGF0IDExOjE3OjAzQU0gKzA1MzAsIEFuc2h1
bWFuIEd1cHRhIHdyb3RlOgo+PiA+T24gMjAxOS0wNy0xMiBhdCAxODowOTozOSAtMDcwMCwgTHVj
YXMgRGUgTWFyY2hpIHdyb3RlOgo+PiA+PkZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgo+PiA+Pgo+PiA+PlRpZ2VyIExhc2sgaGFzIGEgbmV3IHJlZ2lz
dGVyIG9mZnNldCBmb3IgREM1IGFuZCBEQzYgcmVzaWRlbmN5IGNvdW50ZXJzLgo+PiA+Pgo+PiA+
PlNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+PiA+PlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgo+PiA+Pi0tLQo+PiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYyB8IDIxICsrKysrKysrKysrKystLS0tLS0tLQo+PiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICB8ICAyICsrCj4+ID4+IDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0
aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4gPj4KPj4gPj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+PiA+PmluZGV4IGExODQzZTNkZTZkNy4uNGIxMmI1NTg4ZGQ2IDEwMDY0NAo+PiA+
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4+ID4+KysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPj4gPj5AQCAtMjQ2NSw2ICsyNDY1LDcg
QEAgc3RhdGljIGludCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51
c2VkKQo+PiA+PiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19p
OTE1KG0tPnByaXZhdGUpOwo+PiA+PiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4+ID4+IAlz
dHJ1Y3QgaW50ZWxfY3NyICpjc3I7Cj4+ID4+KwlpOTE1X3JlZ190IGRjNV9yZWcsIGRjNl9yZWcg
PSB7fTsKPj4gPj4KPj4gPj4gCWlmICghSEFTX0NTUihkZXZfcHJpdikpCj4+ID4+IAkJcmV0dXJu
IC1FTk9ERVY7Cj4+ID4+QEAgLTI0ODIsMTUgKzI0ODMsMTkgQEAgc3RhdGljIGludCBpOTE1X2Rt
Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQo+PiA+PiAJc2VxX3ByaW50
ZihtLCAidmVyc2lvbjogJWQuJWRcbiIsIENTUl9WRVJTSU9OX01BSk9SKGNzci0+dmVyc2lvbiks
Cj4+ID4+IAkJICAgQ1NSX1ZFUlNJT05fTUlOT1IoY3NyLT52ZXJzaW9uKSk7Cj4+ID4+Cj4+ID4+
LQlpZiAoV0FSTl9PTihJTlRFTF9HRU4oZGV2X3ByaXYpID4gMTEpKQo+PiA+Pi0JCWdvdG8gb3V0
Owo+PiA+PisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPkJlbG93IERNQyBkZWJ1
ZyByZWdpc3RlcnMgb2Zmc2V0cyBhcmUgc3BlY2lmaWMgdG8gVEdMLAo+U28gaXQgd291bGQgbWFr
ZSBzZW5zZSB0byBhZGQgSVNfVElHRVJMQUtFIGNvbmRpdGlvbj8KCkkgdGhpbmsgd2UgY2FuIGxl
YXZlIGl0IHdpdGggZ2VuID49IDEyIGFuZCBjaGFuZ2UgaXQgd2hlbi9pZiB0aGUgbmV4dApwbGF0
Zm9ybSBjaGFuZ2UgdGhhdC4KCgo+PiA+PisJCWRjNV9yZWcgPSBUR0xfQ1NSX0RDNV9SRVNfQ09V
TlQ7Cj4+ID4+KwkJZGM2X3JlZyA9IFRHTF9DU1JfREM2X1JFU19DT1VOVDsKPj4gPj4rCX0gZWxz
ZSB7Cj4+ID4+KwkJZGM1X3JlZyA9IElTX0JST1hUT04oZGV2X3ByaXYpID8gQlhUX0NTUl9EQzNf
REM1X0NPVU5UIDoKPj4gPj4rCQkJCQkJIFNLTF9DU1JfREMzX0RDNV9DT1VOVDsKPj4gPj4rCQlp
ZiAoIUlTX0dFTjlfTFAoZGV2X3ByaXYpKQo+PiA+PisJCQlkYzZfcmVnID0gU0tMX0NTUl9EQzVf
REM2X0NPVU5UOwo+PiA+PisJfQo+PiA+Pgo+PiA+Pi0Jc2VxX3ByaW50ZihtLCAiREMzIC0+IERD
NSBjb3VudDogJWRcbiIsCj4+ID4+LQkJICAgSTkxNV9SRUFEKElTX0JST1hUT04oZGV2X3ByaXYp
ID8gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoKPj4gPj4tCQkJCQkJICAgIFNLTF9DU1JfREMzX0RD
NV9DT1VOVCkpOwo+PiA+Pi0JaWYgKCFJU19HRU45X0xQKGRldl9wcml2KSkKPj4gPj4tCQlzZXFf
cHJpbnRmKG0sICJEQzUgLT4gREM2IGNvdW50OiAlZFxuIiwKPj4gPj4tCQkJICAgSTkxNV9SRUFE
KFNLTF9DU1JfREM1X0RDNl9DT1VOVCkpOwo+PiA+PisJc2VxX3ByaW50ZihtLCAiREMzIC0+IERD
NSBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChkYzVfcmVnKSk7Cj4+ID4+KwlpZiAoZGM2X3JlZy5y
ZWcpCj4+ID4+KwkJc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRcbiIsIEk5MTVf
UkVBRChkYzZfcmVnKSk7Cj4+ID4+Cj4+ID4+IG91dDoKPj4gPj4gCXNlcV9wcmludGYobSwgInBy
b2dyYW0gYmFzZTogMHglMDh4XG4iLCBJOTE1X1JFQUQoQ1NSX1BST0dSQU0oMCkpKTsKPj4gPj5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gPj5pbmRleCA2Y2ZjZGY2YmIxYmIuLjVlMzQzNGNkZDFl
OCAxMDA2NDQKPj4gPj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+ID4+
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiA+PkBAIC03MjY5LDYgKzcy
NjksOCBAQCBlbnVtIHsKPj4gPj4gI2RlZmluZSBTS0xfQ1NSX0RDM19EQzVfQ09VTlQJX01NSU8o
MHg4MDAzMCkKPj4gPj4gI2RlZmluZSBTS0xfQ1NSX0RDNV9EQzZfQ09VTlQJX01NSU8oMHg4MDAy
QykKPj4gPj4gI2RlZmluZSBCWFRfQ1NSX0RDM19EQzVfQ09VTlQJX01NSU8oMHg4MDAzOCkKPj4g
Pj4rI2RlZmluZSBUR0xfQ1NSX0RDNV9SRVNfQ09VTlQJX01NSU8oMHgxMDEwODQpCj4+ID4+KyNk
ZWZpbmUgVEdMX0NTUl9EQzZfUkVTX0NPVU5UCV9NTUlPKDB4MTAxMDg4KQo+PiA+Q1NSIG1lbW9y
eSByYW5nZXMgZnJvbSAweDgwMDAwIHRpbGwgMHg4ZmZmZgo+PiA+VGhlc2UgRE1DX0RFQlVHIHJl
Z2lzZXJzIGFyZSBub3QgYXJlIG5vdCBDU1IgcmVnaXN0ZXIuCj4+ID5JdCB3b3VsZCBtYWtlIHNl
bnNlIHRvIHJlbmFtZSB0aGUgbWFjcm8uCj4+Cj4+IFRydWUuCj4+Cj4+IFRHTF9ETUNfREVCVUdf
REM1X0NPVU5UIGFuZCBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVCBzb3VuZHMgZ29vZD8KPnllcyEK
CnRoYW5rcywgSSdsbCBzZW5kIGFuIHVwZGF0ZWQgdmVyc2lvbi4KCkx1Y2FzIERlIE1hcmNoaQoK
Pj4KPj4gTHVjYXMgRGUgTWFyY2hpCj4+Cj4+ID4+Cj4+ID4+IC8qIGludGVycnVwdHMgKi8KPj4g
Pj4gI2RlZmluZSBERV9NQVNURVJfSVJRX0NPTlRST0wgICAoMSA8PCAzMSkKPj4gPj4tLQo+PiA+
PjIuMjEuMAo+PiA+Pgo+PiA+Pl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+ID4+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiA+PkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPj4gPj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
