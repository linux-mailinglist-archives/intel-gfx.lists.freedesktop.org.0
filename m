Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5903B8A7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 17:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04F9789192;
	Mon, 10 Jun 2019 15:54:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE198918A
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 15:54:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 08:54:36 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 08:54:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 16:54:14 +0100
Message-Id: <20190610155419.23723-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 09/14] drm/i915: Convert
 intel_mocs_init_l3cc_table to intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgcmVt
b3ZhbCBvZiBpbXBsaWNpdCBkZXZfcHJpdiBmcm9tIHVzaW5nIG9sZCBtbWlvIGFjY2Vzc29ycy4K
ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgNTIgKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5o
IHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICB8ICAyICstCiAz
IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwppbmRleCA3OWRmNjYwMjJkM2EuLjFiYjk4ZjI3NzQw
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwpAQCAtMjMsNiArMjMsNyBAQAog
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAKICNpbmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKKyNpbmNs
dWRlICJpbnRlbF9ndC5oIgogI2luY2x1ZGUgImludGVsX21vY3MuaCIKICNpbmNsdWRlICJpbnRl
bF9scmMuaCIKIApAQCAtMjM5LDcgKzI0MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5
MTVfbW9jc19lbnRyeSBpY2VsYWtlX21vY3NfdGFibGVbXSA9IHsKIAogLyoqCiAgKiBnZXRfbW9j
c19zZXR0aW5ncygpCi0gKiBAZGV2X3ByaXY6CWk5MTUgZGV2aWNlLgorICogQGd0OgkJZ3QgZGV2
aWNlCiAgKiBAdGFibGU6ICAgICAgT3V0cHV0IHRhYmxlIHRoYXQgd2lsbCBiZSBtYWRlIHRvIHBv
aW50IGF0IGFwcHJvcHJpYXRlCiAgKgkgICAgICBNT0NTIHZhbHVlcyBmb3IgdGhlIGRldmljZS4K
ICAqCkBAIC0yNDksMzMgKzI1MCwzNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21v
Y3NfZW50cnkgaWNlbGFrZV9tb2NzX3RhYmxlW10gPSB7CiAgKgogICogUmV0dXJuOiB0cnVlIGlm
IHRoZXJlIGFyZSBhcHBsaWNhYmxlIE1PQ1Mgc2V0dGluZ3MgZm9yIHRoZSBkZXZpY2UuCiAgKi8K
LXN0YXRpYyBib29sIGdldF9tb2NzX3NldHRpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKK3N0YXRpYyBib29sIGdldF9tb2NzX3NldHRpbmdzKHN0cnVjdCBpbnRlbF9ndCAq
Z3QsCiAJCQkgICAgICBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSAqdGFibGUpCiB7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndF90b19pOTE1KGd0KTsKIAlib29sIHJlc3Vs
dCA9IGZhbHNlOwogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKKwlpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDExKSB7CiAJCXRhYmxlLT5zaXplICA9IEFSUkFZX1NJWkUoaWNlbGFr
ZV9tb2NzX3RhYmxlKTsKIAkJdGFibGUtPnRhYmxlID0gaWNlbGFrZV9tb2NzX3RhYmxlOwogCQl0
YWJsZS0+bl9lbnRyaWVzID0gR0VOMTFfTlVNX01PQ1NfRU5UUklFUzsKIAkJcmVzdWx0ID0gdHJ1
ZTsKLQl9IGVsc2UgaWYgKElTX0dFTjlfQkMoZGV2X3ByaXYpIHx8IElTX0NBTk5PTkxBS0UoZGV2
X3ByaXYpKSB7CisJfSBlbHNlIGlmIChJU19HRU45X0JDKGk5MTUpIHx8IElTX0NBTk5PTkxBS0Uo
aTkxNSkpIHsKIAkJdGFibGUtPnNpemUgID0gQVJSQVlfU0laRShza3lsYWtlX21vY3NfdGFibGUp
OwogCQl0YWJsZS0+bl9lbnRyaWVzID0gR0VOOV9OVU1fTU9DU19FTlRSSUVTOwogCQl0YWJsZS0+
dGFibGUgPSBza3lsYWtlX21vY3NfdGFibGU7CiAJCXJlc3VsdCA9IHRydWU7Ci0JfSBlbHNlIGlm
IChJU19HRU45X0xQKGRldl9wcml2KSkgeworCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChpOTE1KSkg
ewogCQl0YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKGJyb3h0b25fbW9jc190YWJsZSk7CiAJCXRh
YmxlLT5uX2VudHJpZXMgPSBHRU45X05VTV9NT0NTX0VOVFJJRVM7CiAJCXRhYmxlLT50YWJsZSA9
IGJyb3h0b25fbW9jc190YWJsZTsKIAkJcmVzdWx0ID0gdHJ1ZTsKIAl9IGVsc2UgewotCQlXQVJO
X09OQ0UoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5LAorCQlXQVJOX09OQ0UoSU5URUxfR0VOKGk5
MTUpID49IDksCiAJCQkgICJQbGF0Zm9ybSB0aGF0IHNob3VsZCBoYXZlIGEgTU9DUyB0YWJsZSBk
b2VzIG5vdC5cbiIpOwogCX0KIAogCS8qIFdhRGlzYWJsZVNraXBDYWNoaW5nOnNrbCxieHQsa2Js
LGdsayAqLwotCWlmIChJU19HRU4oZGV2X3ByaXYsIDkpKSB7CisJaWYgKElTX0dFTihpOTE1LCA5
KSkgewogCQlpbnQgaTsKIAogCQlmb3IgKGkgPSAwOyBpIDwgdGFibGUtPnNpemU7IGkrKykKQEAg
LTMzMCwxMiArMzMyLDEzIEBAIHN0YXRpYyB1MzIgZ2V0X2VudHJ5X2NvbnRyb2woY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X21vY3NfdGFibGUgKnRhYmxlLAogICovCiB2b2lkIGludGVsX21vY3NfaW5p
dF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGVuZ2luZS0+aTkxNTsKKwlzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0ID0gZW5naW5lLT5ndDsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndF90b191
bmNvcmUoZ3QpOwogCXN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlIHRhYmxlOwogCXVuc2lnbmVk
IGludCBpbmRleDsKIAl1MzIgdW51c2VkX3ZhbHVlOwogCi0JaWYgKCFnZXRfbW9jc19zZXR0aW5n
cyhkZXZfcHJpdiwgJnRhYmxlKSkKKwlpZiAoIWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUp
KQogCQlyZXR1cm47CiAKIAkvKiBTZXQgdW51c2VkIHZhbHVlcyB0byBQVEUgKi8KQEAgLTM0NCwx
MiArMzQ3LDE2IEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJZm9yIChpbmRleCA9IDA7IGluZGV4IDwgdGFibGUuc2l6ZTsgaW5k
ZXgrKykgewogCQl1MzIgdmFsdWUgPSBnZXRfZW50cnlfY29udHJvbCgmdGFibGUsIGluZGV4KTsK
IAotCQlJOTE1X1dSSVRFKG1vY3NfcmVnaXN0ZXIoZW5naW5lLT5pZCwgaW5kZXgpLCB2YWx1ZSk7
CisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgbW9jc19yZWdpc3Rlcihlbmdp
bmUtPmlkLCBpbmRleCksCisJCQkJICAgdmFsdWUpOwogCX0KIAogCS8qIEFsbCByZW1haW5pbmcg
ZW50cmllcyBhcmUgYWxzbyB1bnVzZWQgKi8KIAlmb3IgKDsgaW5kZXggPCB0YWJsZS5uX2VudHJp
ZXM7IGluZGV4KyspCi0JCUk5MTVfV1JJVEUobW9jc19yZWdpc3RlcihlbmdpbmUtPmlkLCBpbmRl
eCksIHVudXNlZF92YWx1ZSk7CisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAg
bW9jc19yZWdpc3RlcihlbmdpbmUtPmlkLCBpbmRleCksCisJCQkJICAgdW51c2VkX3ZhbHVlKTsK
IH0KIAogLyoqCkBAIC00OTQsMTMgKzUwMSwxNCBAQCBzdGF0aWMgaW50IGVtaXRfbW9jc19sM2Nj
X3RhYmxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogICoKICAqIFJldHVybjogTm90aGluZy4K
ICAqLwotdm9pZCBpbnRlbF9tb2NzX2luaXRfbDNjY190YWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCit2b2lkIGludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0cnVjdCBp
bnRlbF9ndCAqZ3QpCiB7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3RfdG9fdW5j
b3JlKGd0KTsKIAlzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB0YWJsZTsKIAl1bnNpZ25lZCBp
bnQgaTsKIAl1MTYgdW51c2VkX3ZhbHVlOwogCi0JaWYgKCFnZXRfbW9jc19zZXR0aW5ncyhkZXZf
cHJpdiwgJnRhYmxlKSkKKwlpZiAoIWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUpKQogCQly
ZXR1cm47CiAKIAkvKiBTZXQgdW51c2VkIHZhbHVlcyB0byBQVEUgKi8KQEAgLTUxMCwyMyArNTE4
LDI3IEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCQl1MTYgbG93ID0gZ2V0X2VudHJ5X2wzY2MoJnRhYmxlLCAyICog
aSk7CiAJCXUxNiBoaWdoID0gZ2V0X2VudHJ5X2wzY2MoJnRhYmxlLCAyICogaSArIDEpOwogCi0J
CUk5MTVfV1JJVEUoR0VOOV9MTkNGQ01PQ1MoaSksCi0JCQkgICBsM2NjX2NvbWJpbmUoJnRhYmxl
LCBsb3csIGhpZ2gpKTsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCQkgICBHRU45
X0xOQ0ZDTU9DUyhpKSwKKwkJCQkgICBsM2NjX2NvbWJpbmUoJnRhYmxlLCBsb3csIGhpZ2gpKTsK
IAl9CiAKIAkvKiBPZGQgdGFibGUgc2l6ZSAtIDEgbGVmdCBvdmVyICovCiAJaWYgKHRhYmxlLnNp
emUgJiAweDAxKSB7CiAJCXUxNiBsb3cgPSBnZXRfZW50cnlfbDNjYygmdGFibGUsIDIgKiBpKTsK
IAotCQlJOTE1X1dSSVRFKEdFTjlfTE5DRkNNT0NTKGkpLAotCQkJICAgbDNjY19jb21iaW5lKCZ0
YWJsZSwgbG93LCB1bnVzZWRfdmFsdWUpKTsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwK
KwkJCQkgICBHRU45X0xOQ0ZDTU9DUyhpKSwKKwkJCQkgICBsM2NjX2NvbWJpbmUoJnRhYmxlLCBs
b3csIHVudXNlZF92YWx1ZSkpOwogCQlpKys7CiAJfQogCiAJLyogQWxsIHJlbWFpbmluZyBlbnRy
aWVzIGFyZSBhbHNvIHVudXNlZCAqLwogCWZvciAoOyBpIDwgdGFibGUubl9lbnRyaWVzIC8gMjsg
aSsrKQotCQlJOTE1X1dSSVRFKEdFTjlfTE5DRkNNT0NTKGkpLAotCQkJICAgbDNjY19jb21iaW5l
KCZ0YWJsZSwgdW51c2VkX3ZhbHVlLCB1bnVzZWRfdmFsdWUpKTsKKwkJaW50ZWxfdW5jb3JlX3dy
aXRlKHVuY29yZSwKKwkJCQkgICBHRU45X0xOQ0ZDTU9DUyhpKSwKKwkJCQkgICBsM2NjX2NvbWJp
bmUoJnRhYmxlLCB1bnVzZWRfdmFsdWUsCisJCQkJCQl1bnVzZWRfdmFsdWUpKTsKIH0KIAogLyoq
CkBAIC01NTAsNyArNTYyLDcgQEAgaW50IGludGVsX3Jjc19jb250ZXh0X2luaXRfbW9jcyhzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB0OwogCWlu
dCByZXQ7CiAKLQlpZiAoZ2V0X21vY3Nfc2V0dGluZ3MocnEtPmk5MTUsICZ0KSkgeworCWlmIChn
ZXRfbW9jc19zZXR0aW5ncyhycS0+ZW5naW5lLT5ndCwgJnQpKSB7CiAJCS8qIFByb2dyYW0gdGhl
IFJDUyBjb250cm9sIHJlZ2lzdGVycyAqLwogCQlyZXQgPSBlbWl0X21vY3NfY29udHJvbF90YWJs
ZShycSwgJnQpOwogCQlpZiAocmV0KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbW9jcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oCmlu
ZGV4IDA5MTM3MDRhMWFmMi4uOGI5ODEzZTZmOWFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5oCkBAIC01Miw5ICs1MiwxMCBAQAogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiBz
dHJ1Y3QgaTkxNV9yZXF1ZXN0Owogc3RydWN0IGludGVsX2VuZ2luZV9jczsKK3N0cnVjdCBpbnRl
bF9ndDsKIAogaW50IGludGVsX3Jjc19jb250ZXh0X2luaXRfbW9jcyhzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSk7Ci12b2lkIGludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpOwogdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5lKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMK
aW5kZXggOWRkMDE0NzcwZTA2Li5mZWE2ZmMzNjU5YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YwpAQCAtMTI4NSw3ICsxMjg1LDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlnb3RvIG91dDsKIAl9CiAKLQlpbnRlbF9tb2NzX2lu
aXRfbDNjY190YWJsZShkZXZfcHJpdik7CisJaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoJmRl
dl9wcml2LT5ndCk7CiAKIAkvKiBPbmx5IHdoZW4gdGhlIEhXIGlzIHJlLWluaXRpYWxpc2VkLCBj
YW4gd2UgcmVwbGF5IHRoZSByZXF1ZXN0cyAqLwogCXJldCA9IGludGVsX2VuZ2luZXNfcmVzdW1l
KGRldl9wcml2KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
