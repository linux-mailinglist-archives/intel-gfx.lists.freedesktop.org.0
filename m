Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2392C7B12B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293C46E600;
	Tue, 30 Jul 2019 18:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23D06E5F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:04:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP; 30 Jul 2019 11:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="172032310"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.102])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2019 11:04:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 11:04:06 -0700
Message-Id: <20190730180407.5993-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730180407.5993-1-lucas.demarchi@intel.com>
References: <20190730180407.5993-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915/tgl: Tigerlake only has global
 MOCS registers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClVudGlsIElj
ZWxha2UsIGVhY2ggZW5naW5lIGhhZCBpdHMgb3duIHNldCBvZiA2NCBNT0NTIHJlZ2lzdGVycy4g
SW4Kb3JkZXIgdG8gc2ltcGxpZnksIFRpZ2VybGFrZSBtb3ZlcyB0byBvbmx5IDY0IEdsb2JhbCBN
T0NTIHJlZ2lzdGVycywKd2hpY2ggYXJlIG5vIGxvbmdlciBwYXJ0IG9mIHRoZSBlbmdpbmUgY29u
dGV4dC4gU2luY2UgdGhlc2UgcmVnaXN0ZXJzCmFyZSBub3cgZ2xvYmFsLCB0aGV5IGFsc28gb25s
eSBuZWVkIHRvIGJlIGluaXRpYWxpemVkIG9uY2UuCgpGcm9tIEdlbjEyIG9ud2FyZHMsIE1PQ1Mg
bXVzdCBzcGVjaWZ5IHRoZSB0YXJnZXQgY2FjaGUgKDM6MikgYW5kIExSVQptYW5hZ2VtZW50ICg1
OjQpIGZpZWxkcyBhbmQgY2Fubm90IGJlIHByb2dyYW1tZWQgdG8gJ3VzZSB0aGUgdmFsdWUgZnJv
bQpQcml2YXRlIFBBVCcsIGJlY2F1c2UgdGhlc2UgZmllbGRzIGFyZSBubyBsb25nZXIgcGFydCBv
ZiB0aGUgUFBBVC4gQWxzbwpjYWNoZWFiaWxpdHkgY29udHJvbCAoMTowKSBmaWVsZCBoYXMgY2hh
bmdlZCwgMDAgbm8gbG9uZ2VyIG1lYW5zICd1c2UKY29udHJvbHMgZnJvbSBwYWdlIHRhYmxlJywg
YnV0IHVuY2FjaGVhYmxlIChVQykuCgp2MiAoTHVjYXMpOgogICAgLSBNb3ZlIHRoZSBjaGFuZ2Vz
IHRvIHRoZSBmYXVsdCByZWdpc3RlcnMgdG8gYSBzZXBhcmF0ZSBjb21taXQgLSB0aGUKICAgICAg
b2xkIG9uZXMgb3ZlcmxhcCB3aXRoIHRoZSByYW5nZSB1c2VkIGJ5IHRoZSBuZXcgZ2xvYmFsIE1P
Q1MKICAgICAgKHJlcXVlc3RlZCBieSBEYW5pZWxlKQp2MyAoTHVjYXMpOgogICAgLSBDbGFyaWZ5
IGNvbW1lbnQgYWJvdXQgc2V0dGluZyB0aGUgdW51c2VkIGVudHJpZXMgdG8gdGhlIHNhbWUgdmFs
dWUKICAgICAgb2YgaW5kZXggMCwgdGhhdCBpcyB0aGUgaW52YWxpZCBlbnRyeSAocmVxdWVzdGVk
IGJ5IERhbmllbGUpCiAgICAtIE1vdmUgY2hhbmdlcyB0byBET05FX1JFRyBhbmQgRVJST1JfR0VO
NiB0byBhIHNlcGFyYXRlIGNvbW1pdAogICAgICAocmVxdWVzdGVkIGJ5IERhbmllbGUpCgpDYzog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBUb21hc3ogTGlzIDx0b21hc3oubGlzQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgICAgIHwgNDQgKysrKysrKysrKysrKysr
KysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmggICAgIHwgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICAyICsrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICB8ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmggfCAgMSArCiA3IGZpbGVzIGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCmluZGV4IGQ5
MzMwMTMxMGRjNy4uNzY0ZTQ3MTMxYzA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5jCkBAIC0zOTIsNiArMzkyLDEwIEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJdW5zaWduZWQgaW50IGluZGV4OwogCXUzMiB1
bnVzZWRfdmFsdWU7CiAKKwkvKiBQbGF0Zm9ybXMgd2l0aCBnbG9iYWwgTU9DUyBkbyBub3QgbmVl
ZCBwZXItZW5naW5lIGluaXRpYWxpemF0aW9uLiAqLworCWlmIChIQVNfR0xPQkFMX01PQ1NfUkVH
SVNURVJTKGd0LT5pOTE1KSkKKwkJcmV0dXJuOworCiAJLyogQ2FsbGVkIHVuZGVyIGEgYmxhbmtl
dCBmb3JjZXdha2UgKi8KIAlhc3NlcnRfZm9yY2V3YWtlc19hY3RpdmUodW5jb3JlLCBGT1JDRVdB
S0VfQUxMKTsKIApAQCAtNDE2LDYgKzQyMCw0MyBAQCB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdp
bmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJCSAgICAgIHVudXNlZF92YWx1
ZSk7CiB9CiAKKy8qKgorICogaW50ZWxfbW9jc19pbml0X2dsb2JhbCgpIC0gcHJvZ3JhbSB0aGUg
Z2xvYmFsIG1vY3MgcmVnaXN0ZXJzCisgKiBndDogICAgICBwb2ludGVyIHRvIHN0cnVjdCBpbnRl
bF9ndAorICoKKyAqIFRoaXMgZnVuY3Rpb24gaW5pdGlhbGl6ZXMgdGhlIE1PQ1MgZ2xvYmFsIHJl
Z2lzdGVycy4KKyAqLwordm9pZCBpbnRlbF9tb2NzX2luaXRfZ2xvYmFsKHN0cnVjdCBpbnRlbF9n
dCAqZ3QpCit7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB0YWJsZTsKKwl1bnNpZ25lZCBpbnQgaW5kZXg7CisK
KwlpZiAoIUhBU19HTE9CQUxfTU9DU19SRUdJU1RFUlMoZ3QtPmk5MTUpKQorCQlyZXR1cm47CisK
KwlpZiAoIWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUpKQorCQlyZXR1cm47CisKKwlpZiAo
R0VNX0RFQlVHX1dBUk5fT04odGFibGUuc2l6ZSA+IHRhYmxlLm5fZW50cmllcykpCisJCXJldHVy
bjsKKworCWZvciAoaW5kZXggPSAwOyBpbmRleCA8IHRhYmxlLnNpemU7IGluZGV4KyspCisJCWlu
dGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgR0VOMTJfR0xPQkFMX01PQ1MoaW5kZXgp
LAorCQkJCSAgIHRhYmxlLnRhYmxlW2luZGV4XS5jb250cm9sX3ZhbHVlKTsKKworCS8qCisJICog
T2ssIG5vdyBzZXQgdGhlIHVudXNlZCBlbnRyaWVzIHRvIHRoZSBpbnZhbGlkIGVudHJ5IChpbmRl
eCAwKS4gVGhlc2UKKwkgKiBlbnRyaWVzIGFyZSBvZmZpY2lhbGx5IHVuZGVmaW5lZCBhbmQgbm8g
Y29udHJhY3QgZm9yIHRoZSBjb250ZW50cyBhbmQKKwkgKiBzZXR0aW5ncyBpcyBnaXZlbiBmb3Ig
dGhlc2UgZW50cmllcy4KKwkgKi8KKwlmb3IgKDsgaW5kZXggPCB0YWJsZS5uX2VudHJpZXM7IGlu
ZGV4KyspCisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgR0VOMTJfR0xPQkFM
X01PQ1MoaW5kZXgpLAorCQkJCSAgIHRhYmxlLnRhYmxlWzBdLmNvbnRyb2xfdmFsdWUpOworfQor
CiAvKioKICAqIGVtaXRfbW9jc19jb250cm9sX3RhYmxlKCkgLSBlbWl0IHRoZSBtb2NzIGNvbnRy
b2wgdGFibGUKICAqIEBycToJUmVxdWVzdCB0byBzZXQgdXAgdGhlIE1PQ1MgdGFibGUgZm9yLgpA
QCAtNjE5LDcgKzY2MCw4IEBAIGludCBpbnRlbF9tb2NzX2VtaXQoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCiAJc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgdDsKIAlpbnQgcmV0OwogCi0JaWYg
KHJxLT5lbmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFTUykKKwlpZiAoSEFTX0dMT0JBTF9NT0NT
X1JFR0lTVEVSUyhycS0+aTkxNSkgfHwKKwkgICAgcnEtPmVuZ2luZS0+Y2xhc3MgIT0gUkVOREVS
X0NMQVNTKQogCQlyZXR1cm4gMDsKIAogCWlmIChnZXRfbW9jc19zZXR0aW5ncyhycS0+ZW5naW5l
LT5ndCwgJnQpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9t
b2NzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKaW5kZXggYTMzNGRi
MmQ2ZDZiLi43MjdlNjdiZGE4ZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgK
QEAgLTU1LDYgKzU1LDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9jczsKIHN0cnVjdCBpbnRlbF9n
dDsKIAogdm9pZCBpbnRlbF9tb2NzX2luaXRfbDNjY190YWJsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KTsKK3ZvaWQgaW50ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIHZv
aWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
OwogCiBpbnQgaW50ZWxfbW9jc19lbWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IGE0ZjUyNGU3OTFiMS4uNzA2ZWE4NGI3ZjNjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIyNzcsNiArMjI3Nyw4IEBAIElTX1NVQlBMQVRGT1JNKGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAjZGVmaW5lIEhBU19QT09MRURf
RVUoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFzX3Bvb2xlZF9ldSkKIAorI2Rl
ZmluZSBIQVNfR0xPQkFMX01PQ1NfUkVHSVNURVJTKGRldl9wcml2KQkoSU5URUxfSU5GTyhkZXZf
cHJpdiktPmhhc19nbG9iYWxfbW9jcykKKwogI2RlZmluZSBJTlRFTF9QQ0hfREVWSUNFX0lEX01B
U0sJCTB4ZmY4MAogI2RlZmluZSBJTlRFTF9QQ0hfSUJYX0RFVklDRV9JRF9UWVBFCQkweDNiMDAK
ICNkZWZpbmUgSU5URUxfUENIX0NQVF9ERVZJQ0VfSURfVFlQRQkJMHgxYzAwCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwppbmRleCA2NTg2M2U5NTVmNDAuLjk1NDg5NDg4YjBjYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCkBAIC0xMjUzLDYgKzEyNTMsNyBAQCBpbnQgaTkxNV9nZW1faW5pdF9odyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJZ290byBvdXQ7CiAJfQogCisJaW50ZWxf
bW9jc19pbml0X2dsb2JhbChndCk7CiAJaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3QpOwog
CiAJaW50ZWxfZW5naW5lc19zZXRfc2NoZWR1bGVyX2NhcHMoaTkxNSk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYwppbmRleCBiZDkyMTFiM2Q3NmUuLmE3ZTFjZGU0YTZkOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jCkBAIC03ODMsNyArNzgzLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
ZXZpY2VfaW5mbyBpbnRlbF9lbGtoYXJ0bGFrZV9pbmZvID0gewogCQlbVFJBTlNDT0RFUl9EXSA9
IFRSQU5TQ09ERVJfRF9PRkZTRVQsIFwKIAkJW1RSQU5TQ09ERVJfRFNJXzBdID0gVFJBTlNDT0RF
Ul9EU0kwX09GRlNFVCwgXAogCQlbVFJBTlNDT0RFUl9EU0lfMV0gPSBUUkFOU0NPREVSX0RTSTFf
T0ZGU0VULCBcCi0JfQorCX0sIFwKKwkuaGFzX2dsb2JhbF9tb2NzID0gMQogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3RpZ2VybGFrZV8xMl9pbmZvID0gewog
CUdFTjEyX0ZFQVRVUkVTLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMGYwZWRiOTkxMmQ2
Li4yZTJjMTUzYjcwOTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTEyMTYsNiArMTEy
MTYsOCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgICBQTUZMVVNIX0dBUEwzVU5C
TE9DSwkJKDEgPDwgMjEpCiAjZGVmaW5lICAgUE1GTFVTSERPTkVfTE5FQkxLCQkoMSA8PCAyMikK
IAorI2RlZmluZSBHRU4xMl9HTE9CQUxfTU9DUyhpKQlfTU1JTygweDQwMDAgKyAoaSkgKiA0KSAv
KiBHbG9iYWwgTU9DUyByZWdzICovCisKIC8qIGdhbXQgcmVncyAqLwogI2RlZmluZSBHRU44X0wz
X0xSQV8xX0dQR1BVIF9NTUlPKDB4NGRkNCkKICNkZWZpbmUgICBHRU44X0wzX0xSQV8xX0dQR1BV
X0RFRkFVTFRfVkFMVUVfQkRXICAweDY3RjE0MjdGIC8qIG1heC9taW4gZm9yIExSQTEvMiAqLwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKaW5kZXggNGY1OGU4ZDcxYjY3
Li45MmUwYzJlMDk1NGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
aApAQCAtMTEyLDYgKzExMiw3IEBAIGVudW0gaW50ZWxfcHBndHRfdHlwZSB7CiAJZnVuYyhncHVf
cmVzZXRfY2xvYmJlcnNfZGlzcGxheSk7IFwKIAlmdW5jKGhhc19yZXNldF9lbmdpbmUpOyBcCiAJ
ZnVuYyhoYXNfZnBnYV9kYmcpOyBcCisJZnVuYyhoYXNfZ2xvYmFsX21vY3MpOyBcCiAJZnVuYyho
YXNfZ3RfdWMpOyBcCiAJZnVuYyhoYXNfbDNfZHBmKTsgXAogCWZ1bmMoaGFzX2xsYyk7IFwKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
