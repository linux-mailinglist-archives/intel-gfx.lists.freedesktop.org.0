Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A676EABD
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 20:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2488B6E84B;
	Fri, 19 Jul 2019 18:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16A46E84B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 18:39:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 11:39:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="188056635"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.91])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2019 11:39:55 -0700
Date: Fri, 19 Jul 2019 11:39:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190719183954.jgcdgoygq4zd2cxz@ldmartin-desk1>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-22-lucas.demarchi@intel.com>
 <20190718054703.GA6676@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718054703.GA6676@intel.com>
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMTE6MTc6MDNBTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj5PbiAyMDE5LTA3LTEyIGF0IDE4OjA5OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6Cj4+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+Pgo+PiBUaWdlciBMYXNrIGhhcyBhIG5ldyByZWdpc3RlciBvZmZzZXQgZm9yIERDNSBh
bmQgREM2IHJlc2lkZW5jeSBjb3VudGVycy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgMjEgKysrKysrKysrKysrKy0tLS0tLS0t
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICB8ICAyICsrCj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4+IGluZGV4IGExODQzZTNkZTZkNy4uNGIxMmI1NTg4
ZGQ2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+PiBAQCAtMjQ2NSw2
ICsyNDY1LDcgQEAgc3RhdGljIGludCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwg
dm9pZCAqdW51c2VkKQo+PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5v
ZGVfdG9faTkxNShtLT5wcml2YXRlKTsKPj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKPj4g
IAlzdHJ1Y3QgaW50ZWxfY3NyICpjc3I7Cj4+ICsJaTkxNV9yZWdfdCBkYzVfcmVnLCBkYzZfcmVn
ID0ge307Cj4+Cj4+ICAJaWYgKCFIQVNfQ1NSKGRldl9wcml2KSkKPj4gIAkJcmV0dXJuIC1FTk9E
RVY7Cj4+IEBAIC0yNDgyLDE1ICsyNDgzLDE5IEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPj4gIAlzZXFfcHJpbnRmKG0sICJ2ZXJz
aW9uOiAlZC4lZFxuIiwgQ1NSX1ZFUlNJT05fTUFKT1IoY3NyLT52ZXJzaW9uKSwKPj4gIAkJICAg
Q1NSX1ZFUlNJT05fTUlOT1IoY3NyLT52ZXJzaW9uKSk7Cj4+Cj4+IC0JaWYgKFdBUk5fT04oSU5U
RUxfR0VOKGRldl9wcml2KSA+IDExKSkKPj4gLQkJZ290byBvdXQ7Cj4+ICsJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTIpIHsKPj4gKwkJZGM1X3JlZyA9IFRHTF9DU1JfREM1X1JFU19DT1VO
VDsKPj4gKwkJZGM2X3JlZyA9IFRHTF9DU1JfREM2X1JFU19DT1VOVDsKPj4gKwl9IGVsc2Ugewo+
PiArCQlkYzVfcmVnID0gSVNfQlJPWFRPTihkZXZfcHJpdikgPyBCWFRfQ1NSX0RDM19EQzVfQ09V
TlQgOgo+PiArCQkJCQkJIFNLTF9DU1JfREMzX0RDNV9DT1VOVDsKPj4gKwkJaWYgKCFJU19HRU45
X0xQKGRldl9wcml2KSkKPj4gKwkJCWRjNl9yZWcgPSBTS0xfQ1NSX0RDNV9EQzZfQ09VTlQ7Cj4+
ICsJfQo+Pgo+PiAtCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLAo+PiAt
CQkgICBJOTE1X1JFQUQoSVNfQlJPWFRPTihkZXZfcHJpdikgPyBCWFRfQ1NSX0RDM19EQzVfQ09V
TlQgOgo+PiAtCQkJCQkJICAgIFNLTF9DU1JfREMzX0RDNV9DT1VOVCkpOwo+PiAtCWlmICghSVNf
R0VOOV9MUChkZXZfcHJpdikpCj4+IC0JCXNlcV9wcmludGYobSwgIkRDNSAtPiBEQzYgY291bnQ6
ICVkXG4iLAo+PiAtCQkJICAgSTkxNV9SRUFEKFNLTF9DU1JfREM1X0RDNl9DT1VOVCkpOwo+PiAr
CXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoZGM1X3Jl
ZykpOwo+PiArCWlmIChkYzZfcmVnLnJlZykKPj4gKwkJc2VxX3ByaW50ZihtLCAiREM1IC0+IERD
NiBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChkYzZfcmVnKSk7Cj4+Cj4+ICBvdXQ6Cj4+ICAJc2Vx
X3ByaW50ZihtLCAicHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIsIEk5MTVfUkVBRChDU1JfUFJPR1JB
TSgwKSkpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gaW5kZXggNmNmY2RmNmJiMWJiLi41
ZTM0MzRjZGQxZTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiBAQCAtNzI2OSw2
ICs3MjY5LDggQEAgZW51bSB7Cj4+ICAjZGVmaW5lIFNLTF9DU1JfREMzX0RDNV9DT1VOVAlfTU1J
TygweDgwMDMwKQo+PiAgI2RlZmluZSBTS0xfQ1NSX0RDNV9EQzZfQ09VTlQJX01NSU8oMHg4MDAy
QykKPj4gICNkZWZpbmUgQlhUX0NTUl9EQzNfREM1X0NPVU5UCV9NTUlPKDB4ODAwMzgpCj4+ICsj
ZGVmaW5lIFRHTF9DU1JfREM1X1JFU19DT1VOVAlfTU1JTygweDEwMTA4NCkKPj4gKyNkZWZpbmUg
VEdMX0NTUl9EQzZfUkVTX0NPVU5UCV9NTUlPKDB4MTAxMDg4KQo+Q1NSIG1lbW9yeSByYW5nZXMg
ZnJvbSAweDgwMDAwIHRpbGwgMHg4ZmZmZgo+VGhlc2UgRE1DX0RFQlVHIHJlZ2lzZXJzIGFyZSBu
b3QgYXJlIG5vdCBDU1IgcmVnaXN0ZXIuCj5JdCB3b3VsZCBtYWtlIHNlbnNlIHRvIHJlbmFtZSB0
aGUgbWFjcm8uCgpUcnVlLgoKVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQgYW5kIFRHTF9ETUNfREVC
VUdfREM2X0NPVU5UIHNvdW5kcyBnb29kPwoKTHVjYXMgRGUgTWFyY2hpCgo+Pgo+PiAgLyogaW50
ZXJydXB0cyAqLwo+PiAgI2RlZmluZSBERV9NQVNURVJfSVJRX0NPTlRST0wgICAoMSA8PCAzMSkK
Pj4gLS0KPj4gMi4yMS4wCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
