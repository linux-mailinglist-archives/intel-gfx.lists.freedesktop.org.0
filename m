Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A0A72463
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 04:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261086E427;
	Wed, 24 Jul 2019 02:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C04A66E427
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 02:22:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 19:22:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="160422035"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 23 Jul 2019 19:22:23 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 19:21:52 -0700
Message-Id: <20190724022153.8927-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 7/8] drm/i915/uc: Plumb the gt through
 fw_upload
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

VGhlIGd0IGlzIG91ciBuZXcgY2VudHJhbCBzdHJ1Y3R1cmUgZm9yIHVjLXJlbGF0ZWQgY29kZSwg
c28gd2UgY2FuIHVzZQp0aGF0IGluc3RlYWQgb2YganVtcGluZyBiYWNrIHRvIGk5MTUgdmlhIHRo
ZSBmdyBvYmplY3QuIFNpbmNlIHdlIGhhdmUgaXQKaW4gdGhlIHVwbG9hZCBmdW5jdGlvbiBpdCBp
cyBlYXN5IHRvIHBhc3MgaXQgdGhyb3VnaCB0aGUgbG93ZXIgbGV2ZWxzIG9mCnRoZSB4ZmVyIHBy
b2Nlc3MgaW5zdGVhZCBvZiBjb250aW51b3NseSBqdW1waW5nIHZpYSB1Y19mdy0+dWMtPmd0LCB3
aGljaAp3aWxsIGFsc28gbWFrZSB0aGluZ3MgYSBiaXQgY2xlYW5lciBmb3IgdGhlIG5leHQgcGF0
Y2guCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jIHwgMzUgKysrKysrKysr
KystLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5j
IHwgMzIgKysrKysrKystLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jICB8IDI5ICsrKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmggIHwgIDggKysrKy0tCiA0IGZpbGVzIGNoYW5nZWQsIDQ4
IGluc2VydGlvbnMoKyksIDU2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX2Z3LmMKaW5kZXggMDliMGZmMmJkMjU2Li5kY2I0ZGRjZTY1OWEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jCkBAIC00NCwxMCArNDQsOCBA
QCB2b2lkIGludGVsX2d1Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAlp
bnRlbF91Y19md19pbml0X2Vhcmx5KGd1Y190b19ndChndWMpLT5pOTE1LCBndWNfZncsIElOVEVM
X1VDX0ZXX1RZUEVfR1VDKTsKIH0KIAotc3RhdGljIHZvaWQgZ3VjX3ByZXBhcmVfeGZlcihzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpCitzdGF0aWMgdm9pZCBndWNfcHJlcGFyZV94ZmVyKHN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSkKIHsKLQlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0
KGd1Yyk7Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKIAl1MzIg
c2hpbV9mbGFncyA9IEdVQ19ESVNBQkxFX1NSQU1fSU5JVF9UT19aRVJPRVMgfAogCQkJIEdVQ19F
TkFCTEVfUkVBRF9DQUNIRV9MT0dJQyB8CiAJCQkgR1VDX0VOQUJMRV9NSUFfQ0FDSElORyB8CkBA
IC01OCwxMiArNTYsMTIgQEAgc3RhdGljIHZvaWQgZ3VjX3ByZXBhcmVfeGZlcihzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpCiAJLyogTXVzdCBwcm9ncmFtIHRoaXMgcmVnaXN0ZXIgYmVmb3JlIGxvYWRp
bmcgdGhlIHVjb2RlIHdpdGggRE1BICovCiAJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR1VD
X1NISU1fQ09OVFJPTCwgc2hpbV9mbGFncyk7CiAKLQlpZiAoSVNfR0VOOV9MUChndC0+aTkxNSkp
CisJaWYgKElTX0dFTjlfTFAodW5jb3JlLT5pOTE1KSkKIAkJaW50ZWxfdW5jb3JlX3dyaXRlKHVu
Y29yZSwgR0VOOUxQX0dUX1BNX0NPTkZJRywgR1RfRE9PUkJFTExfRU5BQkxFKTsKIAllbHNlCiAJ
CWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjlfR1RfUE1fQ09ORklHLCBHVF9ET09SQkVM
TF9FTkFCTEUpOwogCi0JaWYgKElTX0dFTihndC0+aTkxNSwgOSkpIHsKKwlpZiAoSVNfR0VOKHVu
Y29yZS0+aTkxNSwgOSkpIHsKIAkJLyogRE9QIENsb2NrIEdhdGluZyBFbmFibGUgZm9yIEd1QyBj
bG9ja3MgKi8KIAkJaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIEdFTjdfTUlTQ0NQQ1RMLAogCQkJ
CSAwLCBHRU44X0RPUF9DTE9DS19HQVRFX0dVQ19FTkFCTEUpOwpAQCAtNzQsMTQgKzcyLDE0IEBA
IHN0YXRpYyB2b2lkIGd1Y19wcmVwYXJlX3hmZXIoc3RydWN0IGludGVsX2d1YyAqZ3VjKQogfQog
CiAvKiBDb3B5IFJTQSBzaWduYXR1cmUgZnJvbSB0aGUgZncgaW1hZ2UgdG8gSFcgZm9yIHZlcmlm
aWNhdGlvbiAqLwotc3RhdGljIHZvaWQgZ3VjX3hmZXJfcnNhKHN0cnVjdCBpbnRlbF9ndWMgKmd1
YykKK3N0YXRpYyB2b2lkIGd1Y194ZmVyX3JzYShzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdywK
KwkJCSBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiB7Ci0Jc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlID0gZ3VjX3RvX2d0KGd1YyktPnVuY29yZTsKIAl1MzIgcnNhW1VPU19SU0FfU0NS
QVRDSF9DT1VOVF07CiAJc2l6ZV90IGNvcGllZDsKIAlpbnQgaTsKIAotCWNvcGllZCA9IGludGVs
X3VjX2Z3X2NvcHlfcnNhKCZndWMtPmZ3LCByc2EsIHNpemVvZihyc2EpKTsKKwljb3BpZWQgPSBp
bnRlbF91Y19md19jb3B5X3JzYShndWNfZncsIHJzYSwgc2l6ZW9mKHJzYSkpOwogCUdFTV9CVUdf
T04oY29waWVkIDwgc2l6ZW9mKHJzYSkpOwogCiAJZm9yIChpID0gMDsgaSA8IFVPU19SU0FfU0NS
QVRDSF9DT1VOVDsgaSsrKQpAQCAtMTU3LDEwICsxNTUsMTAgQEAgc3RhdGljIGludCBndWNfd2Fp
dF91Y29kZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiAgKiB0cmFuc2ZlciBiZXR3ZWVu
IEdUVCBsb2NhdGlvbnMuIFRoaXMgZnVuY3Rpb25hbGl0eSBpcyBsZWZ0IG91dCBvZiB0aGUgQVBJ
CiAgKiBmb3Igbm93IGFzIHRoZXJlIGlzIG5vIG5lZWQgZm9yIGl0LgogICovCi1zdGF0aWMgaW50
IGd1Y194ZmVyX3Vjb2RlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKK3N0YXRpYyBpbnQgZ3VjX3hm
ZXJfdWNvZGUoc3RydWN0IGludGVsX3VjX2Z3ICpndWNfZncsCisJCQkgIHN0cnVjdCBpbnRlbF9n
dCAqZ3QpCiB7Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3VjX3RvX2d0KGd1Yykt
PnVuY29yZTsKLQlzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdyA9ICZndWMtPmZ3OworCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJdW5zaWduZWQgbG9uZyBvZmZz
ZXQ7CiAKIAkvKgpAQCAtMTcxLDcgKzE2OSw3IEBAIHN0YXRpYyBpbnQgZ3VjX3hmZXJfdWNvZGUo
c3RydWN0IGludGVsX2d1YyAqZ3VjKQogCQkJICAgZ3VjX2Z3LT5oZWFkZXJfc2l6ZSArIGd1Y19m
dy0+dWNvZGVfc2l6ZSk7CiAKIAkvKiBTZXQgdGhlIHNvdXJjZSBhZGRyZXNzIGZvciB0aGUgbmV3
IGJsb2IgKi8KLQlvZmZzZXQgPSBpbnRlbF91Y19md19nZ3R0X29mZnNldChndWNfZncpICsgZ3Vj
X2Z3LT5oZWFkZXJfb2Zmc2V0OworCW9mZnNldCA9IGludGVsX3VjX2Z3X2dndHRfb2Zmc2V0KGd1
Y19mdywgZ3QtPmdndHQpICsgZ3VjX2Z3LT5oZWFkZXJfb2Zmc2V0OwogCWludGVsX3VuY29yZV93
cml0ZSh1bmNvcmUsIERNQV9BRERSXzBfTE9XLCBsb3dlcl8zMl9iaXRzKG9mZnNldCkpOwogCWlu
dGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIERNQV9BRERSXzBfSElHSCwgdXBwZXJfMzJfYml0cyhv
ZmZzZXQpICYgMHhGRkZGKTsKIApAQCAtMTkxLDI2ICsxODksMjUgQEAgc3RhdGljIGludCBndWNf
eGZlcl91Y29kZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiAvKgogICogTG9hZCB0aGUgR3VDIGZp
cm13YXJlIGJsb2IgaW50byB0aGUgTWludXRlSUEuCiAgKi8KLXN0YXRpYyBpbnQgZ3VjX2Z3X3hm
ZXIoc3RydWN0IGludGVsX3VjX2Z3ICpndWNfZncpCitzdGF0aWMgaW50IGd1Y19md194ZmVyKHN0
cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewotCXN0cnVj
dCBpbnRlbF9ndWMgKmd1YyA9IGNvbnRhaW5lcl9vZihndWNfZncsIHN0cnVjdCBpbnRlbF9ndWMs
IGZ3KTsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndWNfdG9fZ3QoZ3VjKS0+dW5j
b3JlOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJaW50IHJl
dDsKIAogCUdFTV9CVUdfT04oZ3VjX2Z3LT50eXBlICE9IElOVEVMX1VDX0ZXX1RZUEVfR1VDKTsK
IAogCWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAK
LQlndWNfcHJlcGFyZV94ZmVyKGd1Yyk7CisJZ3VjX3ByZXBhcmVfeGZlcih1bmNvcmUpOwogCiAJ
LyoKIAkgKiBOb3RlIHRoYXQgR3VDIG5lZWRzIHRoZSBDU1MgaGVhZGVyIHBsdXMgdUtlcm5lbCBj
b2RlIHRvIGJlIGNvcGllZAogCSAqIGJ5IHRoZSBETUEgZW5naW5lIGluIG9uZSBvcGVyYXRpb24s
IHdoZXJlYXMgdGhlIFJTQSBzaWduYXR1cmUgaXMKIAkgKiBsb2FkZWQgdmlhIE1NSU8uCiAJICov
Ci0JZ3VjX3hmZXJfcnNhKGd1Yyk7CisJZ3VjX3hmZXJfcnNhKGd1Y19mdywgdW5jb3JlKTsKIAot
CXJldCA9IGd1Y194ZmVyX3Vjb2RlKGd1Yyk7CisJcmV0ID0gZ3VjX3hmZXJfdWNvZGUoZ3VjX2Z3
LCBndCk7CiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCh1bmNvcmUsIEZPUkNFV0FLRV9B
TEwpOwogCkBAIC0yMzEsNyArMjI4LDcgQEAgc3RhdGljIGludCBndWNfZndfeGZlcihzdHJ1Y3Qg
aW50ZWxfdWNfZncgKmd1Y19mdykKICAqLwogaW50IGludGVsX2d1Y19md191cGxvYWQoc3RydWN0
IGludGVsX2d1YyAqZ3VjKQogewotCWludCByZXQgPSBpbnRlbF91Y19md191cGxvYWQoJmd1Yy0+
ZncsIGd1Y19md194ZmVyKTsKKwlpbnQgcmV0ID0gaW50ZWxfdWNfZndfdXBsb2FkKCZndWMtPmZ3
LCBndWNfdG9fZ3QoZ3VjKSwgZ3VjX2Z3X3hmZXIpOwogCWlmICghcmV0KQogCQlndWMtPmZ3LnN0
YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX1JVTk5JTkc7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfaHVjX2Z3LmMKaW5kZXggZjcwNDlmMGM3NDQ0Li4wNTM0MmVlMGQxNTYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCkBAIC0zNiwxMCArMzYs
MTcgQEAgdm9pZCBpbnRlbF9odWNfZndfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfaHVjICpodWMp
CiAJaW50ZWxfdWNfZndfaW5pdF9lYXJseShodWNfdG9fZ3QoaHVjKS0+aTkxNSwgaHVjX2Z3LCBJ
TlRFTF9VQ19GV19UWVBFX0hVQyk7CiB9CiAKLXN0YXRpYyBpbnQgaHVjX3hmZXJfdWNvZGUoc3Ry
dWN0IGludGVsX2h1YyAqaHVjKQorLyoqCisgKiBodWNfZndfeGZlcigpIC0gRE1BJ3MgdGhlIGZp
cm13YXJlCisgKiBAaHVjX2Z3OiB0aGUgZmlybXdhcmUgZGVzY3JpcHRvcgorICoKKyAqIFRyYW5z
ZmVyIHRoZSBmaXJtd2FyZSBpbWFnZSB0byBSQU0gZm9yIGV4ZWN1dGlvbiBieSB0aGUgbWljcm9j
b250cm9sbGVyLgorICoKKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCBub24temVybyBvbiBmYWls
dXJlCisgKi8KK3N0YXRpYyBpbnQgaHVjX2Z3X3hmZXIoc3RydWN0IGludGVsX3VjX2Z3ICpodWNf
ZncsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0Jc3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncg
PSAmaHVjLT5mdzsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBodWNfdG9fZ3QoaHVj
KS0+dW5jb3JlOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJ
dW5zaWduZWQgbG9uZyBvZmZzZXQgPSAwOwogCXUzMiBzaXplOwogCWludCByZXQ7CkBAIC00OSw3
ICs1Niw3IEBAIHN0YXRpYyBpbnQgaHVjX3hmZXJfdWNvZGUoc3RydWN0IGludGVsX2h1YyAqaHVj
KQogCWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAK
IAkvKiBTZXQgdGhlIHNvdXJjZSBhZGRyZXNzIGZvciB0aGUgdUNvZGUgKi8KLQlvZmZzZXQgPSBp
bnRlbF91Y19md19nZ3R0X29mZnNldChodWNfZncpICsKKwlvZmZzZXQgPSBpbnRlbF91Y19md19n
Z3R0X29mZnNldChodWNfZncsIGd0LT5nZ3R0KSArCiAJCSBodWNfZnctPmhlYWRlcl9vZmZzZXQ7
CiAJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgRE1BX0FERFJfMF9MT1csCiAJCQkgICBsb3dl
cl8zMl9iaXRzKG9mZnNldCkpOwpAQCAtODMsMjEgKzkwLDYgQEAgc3RhdGljIGludCBodWNfeGZl
cl91Y29kZShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiAJcmV0dXJuIHJldDsKIH0KIAotLyoqCi0g
KiBodWNfZndfeGZlcigpIC0gRE1BJ3MgdGhlIGZpcm13YXJlCi0gKiBAaHVjX2Z3OiB0aGUgZmly
bXdhcmUgZGVzY3JpcHRvcgotICoKLSAqIFRyYW5zZmVyIHRoZSBmaXJtd2FyZSBpbWFnZSB0byBS
QU0gZm9yIGV4ZWN1dGlvbiBieSB0aGUgbWljcm9jb250cm9sbGVyLgotICoKLSAqIFJldHVybjog
MCBvbiBzdWNjZXNzLCBub24temVybyBvbiBmYWlsdXJlCi0gKi8KLXN0YXRpYyBpbnQgaHVjX2Z3
X3hmZXIoc3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncpCi17Ci0Jc3RydWN0IGludGVsX2h1YyAq
aHVjID0gY29udGFpbmVyX29mKGh1Y19mdywgc3RydWN0IGludGVsX2h1YywgZncpOwotCi0JcmV0
dXJuIGh1Y194ZmVyX3Vjb2RlKGh1Yyk7Ci19Ci0KIC8qKgogICogaW50ZWxfaHVjX2Z3X3VwbG9h
ZCgpIC0gbG9hZCBIdUMgdUNvZGUgdG8gZGV2aWNlCiAgKiBAaHVjOiBpbnRlbF9odWMgc3RydWN0
dXJlCkBAIC0xMTIsNSArMTA0LDUgQEAgc3RhdGljIGludCBodWNfZndfeGZlcihzdHJ1Y3QgaW50
ZWxfdWNfZncgKmh1Y19mdykKICAqLwogaW50IGludGVsX2h1Y19md191cGxvYWQoc3RydWN0IGlu
dGVsX2h1YyAqaHVjKQogewotCXJldHVybiBpbnRlbF91Y19md191cGxvYWQoJmh1Yy0+ZncsIGh1
Y19md194ZmVyKTsKKwlyZXR1cm4gaW50ZWxfdWNfZndfdXBsb2FkKCZodWMtPmZ3LCBodWNfdG9f
Z3QoaHVjKSwgaHVjX2Z3X3hmZXIpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMKaW5kZXggOTA5YTgxOTZmOWQ0Li5lYTE0NTJkYmU3OGMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpAQCAtMzI1LDEyICszMjUsMTMgQEAgdm9pZCBp
bnRlbF91Y19md19mZXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmVs
ZWFzZV9maXJtd2FyZShmdyk7CQkvKiBPSyBldmVuIGlmIGZ3IGlzIE5VTEwgKi8KIH0KIAotc3Rh
dGljIHZvaWQgaW50ZWxfdWNfZndfZ2d0dF9iaW5kKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncp
CitzdGF0aWMgdm9pZCBpbnRlbF91Y19md19nZ3R0X2JpbmQoc3RydWN0IGludGVsX3VjX2Z3ICp1
Y19mdywKKwkJCQkgIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiA9IHVjX2Z3LT5vYmo7Ci0Jc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZ0
b19pOTE1KG9iai0+YmFzZS5kZXYpLT5nZ3R0OworCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSBn
dC0+Z2d0dDsKIAlzdHJ1Y3QgaTkxNV92bWEgZHVtbXkgPSB7Ci0JCS5ub2RlLnN0YXJ0ID0gaW50
ZWxfdWNfZndfZ2d0dF9vZmZzZXQodWNfZncpLAorCQkubm9kZS5zdGFydCA9IGludGVsX3VjX2Z3
X2dndHRfb2Zmc2V0KHVjX2Z3LCBnZ3R0KSwKIAkJLm5vZGUuc2l6ZSA9IG9iai0+YmFzZS5zaXpl
LAogCQkucGFnZXMgPSBvYmotPm1tLnBhZ2VzLAogCQkudm0gPSAmZ2d0dC0+dm0sCkBAIC0zNDUs
MTEgKzM0NiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF91Y19md19nZ3R0X2JpbmQoc3RydWN0IGlu
dGVsX3VjX2Z3ICp1Y19mdykKIAlnZ3R0LT52bS5pbnNlcnRfZW50cmllcygmZ2d0dC0+dm0sICZk
dW1teSwgSTkxNV9DQUNIRV9OT05FLCAwKTsKIH0KIAotc3RhdGljIHZvaWQgaW50ZWxfdWNfZndf
Z2d0dF91bmJpbmQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKK3N0YXRpYyB2b2lkIGludGVs
X3VjX2Z3X2dndHRfdW5iaW5kKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsCisJCQkJICAgIHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9
IHVjX2Z3LT5vYmo7Ci0Jc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZ0b19pOTE1KG9iai0+YmFz
ZS5kZXYpLT5nZ3R0OwotCXU2NCBzdGFydCA9IGludGVsX3VjX2Z3X2dndHRfb2Zmc2V0KHVjX2Z3
KTsKKwlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gZ3QtPmdndHQ7CisJdTY0IHN0YXJ0ID0gaW50
ZWxfdWNfZndfZ2d0dF9vZmZzZXQodWNfZncsIGdndHQpOwogCiAJZ2d0dC0+dm0uY2xlYXJfcmFu
Z2UoJmdndHQtPnZtLCBzdGFydCwgb2JqLT5iYXNlLnNpemUpOwogfQpAQCAtMzU3LDE0ICszNTks
MTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfdWNfZndfZ2d0dF91bmJpbmQoc3RydWN0IGludGVsX3Vj
X2Z3ICp1Y19mdykKIC8qKgogICogaW50ZWxfdWNfZndfdXBsb2FkIC0gbG9hZCB1QyBmaXJtd2Fy
ZSB1c2luZyBjdXN0b20gbG9hZGVyCiAgKiBAdWNfZnc6IHVDIGZpcm13YXJlCisgKiBAZ3Q6IHRo
ZSBpbnRlbF9ndCBzdHJ1Y3R1cmUKICAqIEB4ZmVyOiBjdXN0b20gdUMgZmlybXdhcmUgbG9hZGVy
IGZ1bmN0aW9uCiAgKgogICogTG9hZHMgdUMgZmlybXdhcmUgdXNpbmcgY3VzdG9tIGxvYWRlciBh
bmQgdXBkYXRlcyBpbnRlcm5hbCBmbGFncy4KICAqCiAgKiBSZXR1cm46IDAgb24gc3VjY2Vzcywg
bm9uLXplcm8gb24gZmFpbHVyZS4KICAqLwotaW50IGludGVsX3VjX2Z3X3VwbG9hZChzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LAotCQkgICAgICAgaW50ICgqeGZlcikoc3RydWN0IGludGVsX3Vj
X2Z3ICp1Y19mdykpCitpbnQgaW50ZWxfdWNfZndfdXBsb2FkKHN0cnVjdCBpbnRlbF91Y19mdyAq
dWNfZncsIHN0cnVjdCBpbnRlbF9ndCAqZ3QsCisJCSAgICAgICBpbnQgKCp4ZmVyKShzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KSkKIHsKIAlpbnQgZXJyOwog
CkBAIC0zNzcsOSArMzgwLDkgQEAgaW50IGludGVsX3VjX2Z3X3VwbG9hZChzdHJ1Y3QgaW50ZWxf
dWNfZncgKnVjX2Z3LAogCWlmICghaW50ZWxfdWNfZndfaXNfYXZhaWxhYmxlKHVjX2Z3KSkKIAkJ
cmV0dXJuIC1FTk9FWEVDOwogCS8qIENhbGwgY3VzdG9tIGxvYWRlciAqLwotCWludGVsX3VjX2Z3
X2dndHRfYmluZCh1Y19mdyk7Ci0JZXJyID0geGZlcih1Y19mdyk7Ci0JaW50ZWxfdWNfZndfZ2d0
dF91bmJpbmQodWNfZncpOworCWludGVsX3VjX2Z3X2dndHRfYmluZCh1Y19mdywgZ3QpOworCWVy
ciA9IHhmZXIodWNfZncsIGd0KTsKKwlpbnRlbF91Y19md19nZ3R0X3VuYmluZCh1Y19mdywgZ3Qp
OwogCWlmIChlcnIpCiAJCWdvdG8gZmFpbDsKIApAQCAtNDMxLDEwICs0MzQsOCBAQCB2b2lkIGlu
dGVsX3VjX2Z3X2Zpbmkoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIAlpOTE1X2dlbV9vYmpl
Y3RfdW5waW5fcGFnZXModWNfZnctPm9iaik7CiB9CiAKLXUzMiBpbnRlbF91Y19md19nZ3R0X29m
ZnNldChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3KQordTMyIGludGVsX3VjX2Z3X2dndHRfb2Zm
c2V0KHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiB7
Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHVjX2Z3LT5vYmotPmJh
c2UuZGV2KTsKLQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUtPmdndHQ7CiAJc3RydWN0
IGRybV9tbV9ub2RlICpub2RlID0gJmdndHQtPnVjX2Z3OwogCiAJR0VNX0JVR19PTighbm9kZS0+
YWxsb2NhdGVkKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCmluZGV4
IDU3MmI3ODczZmUxOS4uY2JkM2FhYzdhY2Y5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmgKQEAgLTMwLDYgKzMwLDggQEAKIAogc3RydWN0IGRybV9wcmludGVyOwog
c3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CitzdHJ1Y3QgaW50ZWxfZ3Q7CitzdHJ1Y3QgaTkxNV9n
Z3R0OwogCiAvKiBIb21lIG9mIEd1QywgSHVDIGFuZCBETUMgZmlybXdhcmVzICovCiAjZGVmaW5l
IElOVEVMX1VDX0ZJUk1XQVJFX1VSTCAiaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgtZmlybXdhcmUuZ2l0L3RyZWUvaTkxNSIKQEAg
LTE3MiwxMSArMTc0LDExIEBAIHZvaWQgaW50ZWxfdWNfZndfaW5pdF9lYXJseShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKIHZvaWQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJCSAgICAgICBzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3KTsK
IHZvaWQgaW50ZWxfdWNfZndfY2xlYW51cF9mZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3
KTsKLWludCBpbnRlbF91Y19md191cGxvYWQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywKLQkJ
ICAgICAgIGludCAoKnhmZXIpKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpKTsKK2ludCBpbnRl
bF91Y19md191cGxvYWQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGludGVsX2d0
ICpndCwKKwkJICAgICAgIGludCAoKnhmZXIpKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0
cnVjdCBpbnRlbF9ndCAqZ3QpKTsKIGludCBpbnRlbF91Y19md19pbml0KHN0cnVjdCBpbnRlbF91
Y19mdyAqdWNfZncpOwogdm9pZCBpbnRlbF91Y19md19maW5pKHN0cnVjdCBpbnRlbF91Y19mdyAq
dWNfZncpOwotdTMyIGludGVsX3VjX2Z3X2dndHRfb2Zmc2V0KHN0cnVjdCBpbnRlbF91Y19mdyAq
dWNfZncpOwordTMyIGludGVsX3VjX2Z3X2dndHRfb2Zmc2V0KHN0cnVjdCBpbnRlbF91Y19mdyAq
dWNfZncsIHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwogc2l6ZV90IGludGVsX3VjX2Z3X2NvcHlf
cnNhKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHZvaWQgKmRzdCwgdTMyIG1heF9sZW4pOwog
dm9pZCBpbnRlbF91Y19md19kdW1wKGNvbnN0IHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0
cnVjdCBkcm1fcHJpbnRlciAqcCk7CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
