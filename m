Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28066114
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 23:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22386E265;
	Thu, 11 Jul 2019 21:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C396E265
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 21:24:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 14:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="168135371"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.246])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jul 2019 14:24:10 -0700
Date: Thu, 11 Jul 2019 14:24:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190711212409.uyimlioreokqrvc6@ldmartin-desk1>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
 <20190711173115.28296-16-lucas.demarchi@intel.com>
 <20190711205213.GK9024@mdroper-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711205213.GK9024@mdroper-desk.amr.corp.intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v3 15/21] drm/i915/tgl: apply Display WA
 #1178 to fix type C dongles
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDE6NTI6MTNQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPk9uIFRodSwgSnVsIDExLCAyMDE5IGF0IDEwOjMxOjA5QU0gLTA3MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToKPj4gQWRkIHBvcnQgQyB0byB3b3JrYXJvdW5kIHRvIGNvdmVyIFRpZ2VyIExh
a2UuCj4+Cj4+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+
PiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiAt
LS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
IHwgNyArKysrKysrCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgICAgICAgICB8IDQgKysrLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4+IGluZGV4IDEyYWE5Y2UwOGQ5NS4uMDYxNDMyODYy
YzdkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYwo+PiBAQCAtNDUzLDYgKzQ1Myw3IEBAIGljbF9jb21ib19waHlfYXV4
X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4g
IAlpbnQgcHdfaWR4ID0gcG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeDsKPj4gIAllbnVtIHBoeSBw
aHkgPSBJQ0xfQVVYX1BXX1RPX1BIWShwd19pZHgpOwo+PiAgCXUzMiB2YWw7Cj4+ICsJaW50IHdh
X2lkeF9tYXg7Cj4+Cj4+ICAJdmFsID0gSTkxNV9SRUFEKHJlZ3MtPmRyaXZlcik7Cj4+ICAJSTkx
NV9XUklURShyZWdzLT5kcml2ZXIsIHZhbCB8IEhTV19QV1JfV0VMTF9DVExfUkVRKHB3X2lkeCkp
Owo+PiBAQCAtNDYyLDYgKzQ2MywxMiBAQCBpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX2Vu
YWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+Cj4+ICAJaHN3X3dhaXRf
Zm9yX3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2LCBwb3dlcl93ZWxsKTsKPj4KPj4gKwkvKiBE
aXNwbGF5IFdBICMxMTc4OiBpY2wsIHRnbCAqLwo+PiArCWlmIChJU19USUdFUkxBS0UoZGV2X3By
aXYpKQo+PiArCQl3YV9pZHhfbWF4ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0M7Cj4+ICsJZWxzZQo+
PiArCQl3YV9pZHhfbWF4ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0I7Cj4+ICsKPj4gIAkvKiBEaXNw
bGF5IFdBICMxMTc4OiBpY2wgKi8KPj4gIAlpZiAoSVNfSUNFTEFLRShkZXZfcHJpdikgJiYKPgo+
SSB0aGluayB0aGlzIG5lZWRzIHRvIGNoYW5nZSB0byAhZWhsIG5vdy4KPgo+PiAgCSAgICBwd19p
ZHggPj0gSUNMX1BXX0NUTF9JRFhfQVVYX0EgJiYgcHdfaWR4IDw9IElDTF9QV19DVExfSURYX0FV
WF9CICYmCj4KPkFuZCB0aGlzIHNob3VsZCB1c2UgeW91ciBuZXcgd2FfaWR4X21heCB2YXJpYWJs
ZQoKdGhhbmtzIGZvciBjYXRjaGluZyB0aGlzLCB3cm9uZyByZWJhc2Ugb24gbXkgc2lkZS4KCkx1
Y2FzIERlIE1hcmNoaQoKPgo+Cj5NYXR0Cj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+IGlu
ZGV4IGNhNzBiZTQwYTQ2Ny4uYWQ5NmM1YjQ5NzVjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPj4gQEAgLTkyNDQsOSArOTI0NCwxMSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPj4g
ICNkZWZpbmUgX0lDTF9BVVhfUkVHX0lEWChwd19pZHgpCSgocHdfaWR4KSAtIElDTF9QV19DVExf
SURYX0FVWF9BKQo+PiAgI2RlZmluZSBfSUNMX0FVWF9BTkFPVlJEMV9BCQkweDE2MjM5OAo+PiAg
I2RlZmluZSBfSUNMX0FVWF9BTkFPVlJEMV9CCQkweDZDMzk4Cj4+ICsjZGVmaW5lIF9UR0xfQVVY
X0FOQU9WUkQxX0MJCTB4MTYwMzk4Cj4+ICAjZGVmaW5lIElDTF9BVVhfQU5BT1ZSRDEocHdfaWR4
KQlfTU1JTyhfUElDSyhfSUNMX0FVWF9SRUdfSURYKHB3X2lkeCksIFwKPj4gIAkJCQkJCSAgICBf
SUNMX0FVWF9BTkFPVlJEMV9BLCBcCj4+IC0JCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQikp
Cj4+ICsJCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQiwgXAo+PiArCQkJCQkJICAgIF9UR0xf
QVVYX0FOQU9WUkQxX0MpKQo+PiAgI2RlZmluZSAgIElDTF9BVVhfQU5BT1ZSRDFfTERPX0JZUEFT
UwkoMSA8PCA3KQo+PiAgI2RlZmluZSAgIElDTF9BVVhfQU5BT1ZSRDFfRU5BQkxFCSgxIDw8IDAp
Cj4+Cj4+IC0tCj4+IDIuMjEuMAo+Pgo+Cj4tLSAKPk1hdHQgUm9wZXIKPkdyYXBoaWNzIFNvZnR3
YXJlIEVuZ2luZWVyCj5Jb1RHIFBsYXRmb3JtIEVuYWJsaW5nICYgRGV2ZWxvcG1lbnQKPkludGVs
IENvcnBvcmF0aW9uCj4oOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
