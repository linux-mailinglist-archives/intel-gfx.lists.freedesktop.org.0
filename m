Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC9138991
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 13:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2DC89D8A;
	Fri,  7 Jun 2019 11:59:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63CC689D8A
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 11:59:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 04:59:36 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga003.jf.intel.com with ESMTP; 07 Jun 2019 04:59:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 12:59:32 +0100
Message-Id: <20190607115932.20271-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move i915_check_and_clear_faults to
 intel_reset.c
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZSBjb2Rl
IGlzIGxvZ2ljYWxseSBhYm91dCByZXNldCBzbyBpdCBtYWtlcyBzZW5zZS4KCkl0IGFsc28gZW5h
YmxlcyBtYWtpbmcgaTkxNV9jbGVhcl9lcnJvcl9yZWdpc3RlcnMgc3RhdGljLgoKU2lnbmVkLW9m
Zi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KU3VnZ2VzdGVk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIHwgNjkgKysrKysrKysrKysrKysrKysrKysr
KysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oIHwgIDMgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgfCA2MyAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAgfCAgMSAtCiA0
IGZpbGVzIGNoYW5nZWQsIDY3IGluc2VydGlvbnMoKyksIDY5IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IGE2ZWNmZGM3MzVjNC4uNjBkMjQxMTBh
ZjgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKQEAgLTExNjYsOCArMTE2
Niw4IEBAIHN0YXRpYyB2b2lkIGdlbjhfY2xlYXJfZW5naW5lX2Vycm9yX3JlZ2lzdGVyKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlHRU42X1JJTkdfRkFVTFRfUkVHX1BPU1RJTkdf
UkVBRChlbmdpbmUpOwogfQogCi12b2lkIGk5MTVfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotCQkJCWludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5l
X21hc2spCitzdGF0aWMgdm9pZCBjbGVhcl9lcnJvcl9yZWdpc3RlcnMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCisJCQkJICBpbnRlbF9lbmdpbmVfbWFza190IGVuZ2luZV9tYXNrKQog
ewogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CiAJdTMyIGVp
cjsKQEAgLTEyMDUsNiArMTIwNSw2OSBAQCB2b2lkIGk5MTVfY2xlYXJfZXJyb3JfcmVnaXN0ZXJz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCX0KIH0KIAorc3RhdGljIHZvaWQgZ2Vu
Nl9jaGVja19mYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsK
Kwl1MzIgZmF1bHQ7CisKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsK
KwkJZmF1bHQgPSBHRU42X1JJTkdfRkFVTFRfUkVHX1JFQUQoZW5naW5lKTsKKwkJaWYgKGZhdWx0
ICYgUklOR19GQVVMVF9WQUxJRCkgeworCQkJRFJNX0RFQlVHX0RSSVZFUigiVW5leHBlY3RlZCBm
YXVsdFxuIgorCQkJCQkgIlx0QWRkcjogMHglMDhseFxuIgorCQkJCQkgIlx0QWRkcmVzcyBzcGFj
ZTogJXNcbiIKKwkJCQkJICJcdFNvdXJjZSBJRDogJWRcbiIKKwkJCQkJICJcdFR5cGU6ICVkXG4i
LAorCQkJCQkgZmF1bHQgJiBQQUdFX01BU0ssCisJCQkJCSBmYXVsdCAmIFJJTkdfRkFVTFRfR1RU
U0VMX01BU0sgPyAiR0dUVCIgOiAiUFBHVFQiLAorCQkJCQkgUklOR19GQVVMVF9TUkNJRChmYXVs
dCksCisJCQkJCSBSSU5HX0ZBVUxUX0ZBVUxUX1RZUEUoZmF1bHQpKTsKKwkJfQorCX0KK30KKwor
c3RhdGljIHZvaWQgZ2VuOF9jaGVja19mYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQoreworCXUzMiBmYXVsdCA9IEk5MTVfUkVBRChHRU44X1JJTkdfRkFVTFRfUkVHKTsK
KworCWlmIChmYXVsdCAmIFJJTkdfRkFVTFRfVkFMSUQpIHsKKwkJdTMyIGZhdWx0X2RhdGEwLCBm
YXVsdF9kYXRhMTsKKwkJdTY0IGZhdWx0X2FkZHI7CisKKwkJZmF1bHRfZGF0YTAgPSBJOTE1X1JF
QUQoR0VOOF9GQVVMVF9UTEJfREFUQTApOworCQlmYXVsdF9kYXRhMSA9IEk5MTVfUkVBRChHRU44
X0ZBVUxUX1RMQl9EQVRBMSk7CisJCWZhdWx0X2FkZHIgPSAoKHU2NCkoZmF1bHRfZGF0YTEgJiBG
QVVMVF9WQV9ISUdIX0JJVFMpIDw8IDQ0KSB8CisJCQkgICAgICgodTY0KWZhdWx0X2RhdGEwIDw8
IDEyKTsKKworCQlEUk1fREVCVUdfRFJJVkVSKCJVbmV4cGVjdGVkIGZhdWx0XG4iCisJCQkJICJc
dEFkZHI6IDB4JTA4eF8lMDh4XG4iCisJCQkJICJcdEFkZHJlc3Mgc3BhY2U6ICVzXG4iCisJCQkJ
ICJcdEVuZ2luZSBJRDogJWRcbiIKKwkJCQkgIlx0U291cmNlIElEOiAlZFxuIgorCQkJCSAiXHRU
eXBlOiAlZFxuIiwKKwkJCQkgdXBwZXJfMzJfYml0cyhmYXVsdF9hZGRyKSwKKwkJCQkgbG93ZXJf
MzJfYml0cyhmYXVsdF9hZGRyKSwKKwkJCQkgZmF1bHRfZGF0YTEgJiBGQVVMVF9HVFRfU0VMID8g
IkdHVFQiIDogIlBQR1RUIiwKKwkJCQkgR0VOOF9SSU5HX0ZBVUxUX0VOR0lORV9JRChmYXVsdCks
CisJCQkJIFJJTkdfRkFVTFRfU1JDSUQoZmF1bHQpLAorCQkJCSBSSU5HX0ZBVUxUX0ZBVUxUX1RZ
UEUoZmF1bHQpKTsKKwl9Cit9CisKK3ZvaWQgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCS8qIEZyb20gR0VOOCBvbndhcmRzIHdl
IG9ubHkgaGF2ZSBvbmUgJ0FsbCBFbmdpbmUgRmF1bHQgUmVnaXN0ZXInICovCisJaWYgKElOVEVM
X0dFTihpOTE1KSA+PSA4KQorCQlnZW44X2NoZWNrX2ZhdWx0cyhpOTE1KTsKKwllbHNlIGlmIChJ
TlRFTF9HRU4oaTkxNSkgPj0gNikKKwkJZ2VuNl9jaGVja19mYXVsdHMoaTkxNSk7CisJZWxzZQor
CQlyZXR1cm47CisKKwljbGVhcl9lcnJvcl9yZWdpc3RlcnMoaTkxNSwgQUxMX0VOR0lORVMpOwor
fQorCiAvKioKICAqIGk5MTVfaGFuZGxlX2Vycm9yIC0gaGFuZGxlIGEgZ3B1IGVycm9yCiAgKiBA
aTkxNTogaTkxNSBkZXZpY2UgcHJpdmF0ZQpAQCAtMTI1Myw3ICsxMzE2LDcgQEAgdm9pZCBpOTE1
X2hhbmRsZV9lcnJvcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogCWlmIChmbGFn
cyAmIEk5MTVfRVJST1JfQ0FQVFVSRSkgewogCQlpOTE1X2NhcHR1cmVfZXJyb3Jfc3RhdGUoaTkx
NSwgZW5naW5lX21hc2ssIG1zZyk7Ci0JCWk5MTVfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKGk5MTUs
IGVuZ2luZV9tYXNrKTsKKwkJY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKGk5MTUsIGVuZ2luZV9tYXNr
KTsKIAl9CiAKIAkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgKaW5kZXggNGYz
YzFhY2FjMWEzLi41ODBlYmRiNTllY2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuaApAQCAtMjUsOCArMjUsNyBAQCB2b2lkIGk5MTVfaGFuZGxlX2Vycm9yKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogCQkgICAgICAgY29uc3QgY2hhciAqZm10LCAuLi4pOwogI2Rl
ZmluZSBJOTE1X0VSUk9SX0NBUFRVUkUgQklUKDApCiAKLXZvaWQgaTkxNV9jbGVhcl9lcnJvcl9y
ZWdpc3RlcnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCi0JCQkJaW50ZWxfZW5naW5l
X21hc2tfdCBlbmdpbmVfbWFzayk7Cit2b2lkIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiAKIHZvaWQgaTkxNV9yZXNldChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJaW50ZWxfZW5naW5lX21hc2tfdCBzdGFsbGVkX21h
c2ssCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDg3YmU5YzFiNjAyMS4uMmUx
NTg1MGJkOTg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMjMwMCw2OSAr
MjMwMCw2IEBAIHN0YXRpYyBib29sIG5lZWRzX2lkbGVfbWFwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIElTX0dFTihkZXZfcHJpdiwgNSkgJiYgSVNfTU9CSUxF
KGRldl9wcml2KSAmJiBpbnRlbF92dGRfYWN0aXZlKCk7CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjZf
Y2hlY2tfZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0J
dTMyIGZhdWx0OwotCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZGV2X3ByaXYsIGlkKSB7Ci0J
CWZhdWx0ID0gR0VONl9SSU5HX0ZBVUxUX1JFR19SRUFEKGVuZ2luZSk7Ci0JCWlmIChmYXVsdCAm
IFJJTkdfRkFVTFRfVkFMSUQpIHsKLQkJCURSTV9ERUJVR19EUklWRVIoIlVuZXhwZWN0ZWQgZmF1
bHRcbiIKLQkJCQkJICJcdEFkZHI6IDB4JTA4bHhcbiIKLQkJCQkJICJcdEFkZHJlc3Mgc3BhY2U6
ICVzXG4iCi0JCQkJCSAiXHRTb3VyY2UgSUQ6ICVkXG4iCi0JCQkJCSAiXHRUeXBlOiAlZFxuIiwK
LQkJCQkJIGZhdWx0ICYgUEFHRV9NQVNLLAotCQkJCQkgZmF1bHQgJiBSSU5HX0ZBVUxUX0dUVFNF
TF9NQVNLID8gIkdHVFQiIDogIlBQR1RUIiwKLQkJCQkJIFJJTkdfRkFVTFRfU1JDSUQoZmF1bHQp
LAotCQkJCQkgUklOR19GQVVMVF9GQVVMVF9UWVBFKGZhdWx0KSk7Ci0JCX0KLQl9Ci19Ci0KLXN0
YXRpYyB2b2lkIGdlbjhfY2hlY2tfZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKLXsKLQl1MzIgZmF1bHQgPSBJOTE1X1JFQUQoR0VOOF9SSU5HX0ZBVUxUX1JFRyk7Ci0K
LQlpZiAoZmF1bHQgJiBSSU5HX0ZBVUxUX1ZBTElEKSB7Ci0JCXUzMiBmYXVsdF9kYXRhMCwgZmF1
bHRfZGF0YTE7Ci0JCXU2NCBmYXVsdF9hZGRyOwotCi0JCWZhdWx0X2RhdGEwID0gSTkxNV9SRUFE
KEdFTjhfRkFVTFRfVExCX0RBVEEwKTsKLQkJZmF1bHRfZGF0YTEgPSBJOTE1X1JFQUQoR0VOOF9G
QVVMVF9UTEJfREFUQTEpOwotCQlmYXVsdF9hZGRyID0gKCh1NjQpKGZhdWx0X2RhdGExICYgRkFV
TFRfVkFfSElHSF9CSVRTKSA8PCA0NCkgfAotCQkJICAgICAoKHU2NClmYXVsdF9kYXRhMCA8PCAx
Mik7Ci0KLQkJRFJNX0RFQlVHX0RSSVZFUigiVW5leHBlY3RlZCBmYXVsdFxuIgotCQkJCSAiXHRB
ZGRyOiAweCUwOHhfJTA4eFxuIgotCQkJCSAiXHRBZGRyZXNzIHNwYWNlOiAlc1xuIgotCQkJCSAi
XHRFbmdpbmUgSUQ6ICVkXG4iCi0JCQkJICJcdFNvdXJjZSBJRDogJWRcbiIKLQkJCQkgIlx0VHlw
ZTogJWRcbiIsCi0JCQkJIHVwcGVyXzMyX2JpdHMoZmF1bHRfYWRkciksCi0JCQkJIGxvd2VyXzMy
X2JpdHMoZmF1bHRfYWRkciksCi0JCQkJIGZhdWx0X2RhdGExICYgRkFVTFRfR1RUX1NFTCA/ICJH
R1RUIiA6ICJQUEdUVCIsCi0JCQkJIEdFTjhfUklOR19GQVVMVF9FTkdJTkVfSUQoZmF1bHQpLAot
CQkJCSBSSU5HX0ZBVUxUX1NSQ0lEKGZhdWx0KSwKLQkJCQkgUklOR19GQVVMVF9GQVVMVF9UWVBF
KGZhdWx0KSk7Ci0JfQotfQotCi12b2lkIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi17Ci0JLyogRnJvbSBHRU44IG9ud2FyZHMg
d2Ugb25seSBoYXZlIG9uZSAnQWxsIEVuZ2luZSBGYXVsdCBSZWdpc3RlcicgKi8KLQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA4KQotCQlnZW44X2NoZWNrX2ZhdWx0cyhkZXZfcHJpdik7Ci0J
ZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA2KQotCQlnZW42X2NoZWNrX2ZhdWx0cyhk
ZXZfcHJpdik7Ci0JZWxzZQotCQlyZXR1cm47Ci0KLQlpOTE1X2NsZWFyX2Vycm9yX3JlZ2lzdGVy
cyhkZXZfcHJpdiwgQUxMX0VOR0lORVMpOwotfQotCiB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfZ3R0
X21hcHBpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3Qg
aTkxNV9nZ3R0ICpnZ3R0ID0gJmRldl9wcml2LT5nZ3R0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuaAppbmRleCAxMjg1NmY5ZGQxZDEuLjk3NzAwYTM3YzEyYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTY0Niw3ICs2NDYsNiBAQCBpbnQgZ2VuNl9wcGd0dF9waW4o
c3RydWN0IGk5MTVfaHdfcHBndHQgKmJhc2UpOwogdm9pZCBnZW42X3BwZ3R0X3VucGluKHN0cnVj
dCBpOTE1X2h3X3BwZ3R0ICpiYXNlKTsKIHZvaWQgZ2VuNl9wcGd0dF91bnBpbl9hbGwoc3RydWN0
IGk5MTVfaHdfcHBndHQgKmJhc2UpOwogCi12b2lkIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dlbV9zdXNw
ZW5kX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9p
ZCBpOTE1X2dlbV9yZXN0b3JlX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
