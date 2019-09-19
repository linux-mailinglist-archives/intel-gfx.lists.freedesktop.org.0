Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A08C8B7B84
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8E56F7D1;
	Thu, 19 Sep 2019 14:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D99E86F7D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:04:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:24 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="192054894"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 17:03:49 +0300
Message-Id: <352df9a0ad06cba549328e574708170086409fbb.1568901239.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: pass i915 to
 i915_driver_modeset_probe()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gZ2VuZXJhbCwgcHJlZmVyIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogb3ZlciBzdHJ1Y3Qg
ZHJtX2RldmljZSAqCndoZW4gZWl0aGVyIHdpbGwgZG8uIFJlbmFtZSB0aGUgbG9jYWwgdmFyaWFi
bGUgdG8gaTkxNS4gTm8gZnVuY3Rpb25hbApjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jIHwgNTkgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKaW5kZXggNGNiOTVmZDliMzVkLi4zZTRlYTVkNmZjYzIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwpAQCAtMzI5LDIzICszMjksMjIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2Z2Ff
c3dpdGNoZXJvb19jbGllbnRfb3BzIGk5MTVfc3dpdGNoZXJvb19vcHMgPSB7CiAJLmNhbl9zd2l0
Y2ggPSBpOTE1X3N3aXRjaGVyb29fY2FuX3N3aXRjaCwKIH07CiAKLXN0YXRpYyBpbnQgaTkxNV9k
cml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQorc3RhdGljIGludCBp
OTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQog
ewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKLQlz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKKwlzdHJ1Y3QgcGNpX2Rl
diAqcGRldiA9IGk5MTUtPmRybS5wZGV2OwogCWludCByZXQ7CiAKLQlpZiAoaTkxNV9pbmplY3Rf
cHJvYmVfZmFpbHVyZShkZXZfcHJpdikpCisJaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUo
aTkxNSkpCiAJCXJldHVybiAtRU5PREVWOwogCi0JaWYgKEhBU19ESVNQTEFZKGRldl9wcml2KSAm
JiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKSB7Ci0JCXJldCA9IGRybV92Ymxhbmtf
aW5pdCgmZGV2X3ByaXYtPmRybSwKLQkJCQkgICAgICBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYp
KTsKKwlpZiAoSEFTX0RJU1BMQVkoaTkxNSkgJiYgSU5URUxfRElTUExBWV9FTkFCTEVEKGk5MTUp
KSB7CisJCXJldCA9IGRybV92YmxhbmtfaW5pdCgmaTkxNS0+ZHJtLAorCQkJCSAgICAgIElOVEVM
X05VTV9QSVBFUyhpOTE1KSk7CiAJCWlmIChyZXQpCiAJCQlnb3RvIG91dDsKIAl9CiAKLQlpbnRl
bF9iaW9zX2luaXQoZGV2X3ByaXYpOworCWludGVsX2Jpb3NfaW5pdChpOTE1KTsKIAogCS8qIElm
IHdlIGhhdmUgPiAxIFZHQSBjYXJkcywgdGhlbiB3ZSBuZWVkIHRvIGFyYml0cmF0ZSBhY2Nlc3MK
IAkgKiB0byB0aGUgY29tbW9uIFZHQSByZXNvdXJjZXMuCkBAIC0zNTQsNyArMzUzLDcgQEAgc3Rh
dGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAJICogdGhlbiB3ZSBkbyBub3QgdGFrZSBwYXJ0IGluIFZHQSBhcmJpdHJhdGlvbiBhbmQgdGhl
CiAJICogdmdhX2NsaWVudF9yZWdpc3RlcigpIGZhaWxzIHdpdGggLUVOT0RFVi4KIAkgKi8KLQly
ZXQgPSB2Z2FfY2xpZW50X3JlZ2lzdGVyKHBkZXYsIGRldl9wcml2LCBOVUxMLCBpOTE1X3ZnYV9z
ZXRfZGVjb2RlKTsKKwlyZXQgPSB2Z2FfY2xpZW50X3JlZ2lzdGVyKHBkZXYsIGk5MTUsIE5VTEws
IGk5MTVfdmdhX3NldF9kZWNvZGUpOwogCWlmIChyZXQgJiYgcmV0ICE9IC1FTk9ERVYpCiAJCWdv
dG8gb3V0OwogCkBAIC0zNjUsNTYgKzM2NCw1NiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21v
ZGVzZXRfcHJvYmUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJZ290byBjbGVhbnVwX3ZnYV9j
bGllbnQ7CiAKIAkvKiBtdXN0IGhhcHBlbiBiZWZvcmUgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0
X2h3KCkgb24gVkxWL0NIViAqLwotCWludGVsX3VwZGF0ZV9yYXdjbGsoZGV2X3ByaXYpOworCWlu
dGVsX3VwZGF0ZV9yYXdjbGsoaTkxNSk7CiAKLQlpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHco
ZGV2X3ByaXYsIGZhbHNlKTsKKwlpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoaTkxNSwgZmFs
c2UpOwogCi0JaW50ZWxfY3NyX3Vjb2RlX2luaXQoZGV2X3ByaXYpOworCWludGVsX2Nzcl91Y29k
ZV9pbml0KGk5MTUpOwogCi0JcmV0ID0gaW50ZWxfaXJxX2luc3RhbGwoZGV2X3ByaXYpOworCXJl
dCA9IGludGVsX2lycV9pbnN0YWxsKGk5MTUpOwogCWlmIChyZXQpCiAJCWdvdG8gY2xlYW51cF9j
c3I7CiAKLQlpbnRlbF9nbWJ1c19zZXR1cChkZXZfcHJpdik7CisJaW50ZWxfZ21idXNfc2V0dXAo
aTkxNSk7CiAKIAkvKiBJbXBvcnRhbnQ6IFRoZSBvdXRwdXQgc2V0dXAgZnVuY3Rpb25zIGNhbGxl
ZCBieSBtb2Rlc2V0X2luaXQgbmVlZAogCSAqIHdvcmtpbmcgaXJxcyBmb3IgZS5nLiBnbWJ1cyBh
bmQgZHAgYXV4IHRyYW5zZmVycy4gKi8KLQlyZXQgPSBpbnRlbF9tb2Rlc2V0X2luaXQoZGV2KTsK
KwlyZXQgPSBpbnRlbF9tb2Rlc2V0X2luaXQoJmk5MTUtPmRybSk7CiAJaWYgKHJldCkKIAkJZ290
byBjbGVhbnVwX2lycTsKIAotCXJldCA9IGk5MTVfZ2VtX2luaXQoZGV2X3ByaXYpOworCXJldCA9
IGk5MTVfZ2VtX2luaXQoaTkxNSk7CiAJaWYgKHJldCkKIAkJZ290byBjbGVhbnVwX21vZGVzZXQ7
CiAKLQlpbnRlbF9vdmVybGF5X3NldHVwKGRldl9wcml2KTsKKwlpbnRlbF9vdmVybGF5X3NldHVw
KGk5MTUpOwogCi0JaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikgfHwgIUlOVEVMX0RJU1BMQVlf
RU5BQkxFRChkZXZfcHJpdikpCisJaWYgKCFIQVNfRElTUExBWShpOTE1KSB8fCAhSU5URUxfRElT
UExBWV9FTkFCTEVEKGk5MTUpKQogCQlyZXR1cm4gMDsKIAotCXJldCA9IGludGVsX2ZiZGV2X2lu
aXQoZGV2KTsKKwlyZXQgPSBpbnRlbF9mYmRldl9pbml0KCZpOTE1LT5kcm0pOwogCWlmIChyZXQp
CiAJCWdvdG8gY2xlYW51cF9nZW07CiAKIAkvKiBPbmx5IGVuYWJsZSBob3RwbHVnIGhhbmRsaW5n
IG9uY2UgdGhlIGZiZGV2IGlzIGZ1bGx5IHNldCB1cC4gKi8KLQlpbnRlbF9ocGRfaW5pdChkZXZf
cHJpdik7CisJaW50ZWxfaHBkX2luaXQoaTkxNSk7CiAKLQlpbnRlbF9pbml0X2lwYyhkZXZfcHJp
dik7CisJaW50ZWxfaW5pdF9pcGMoaTkxNSk7CiAKIAlyZXR1cm4gMDsKIAogY2xlYW51cF9nZW06
Ci0JaTkxNV9nZW1fc3VzcGVuZChkZXZfcHJpdik7Ci0JaTkxNV9nZW1fZHJpdmVyX3JlbW92ZShk
ZXZfcHJpdik7Ci0JaTkxNV9nZW1fZHJpdmVyX3JlbGVhc2UoZGV2X3ByaXYpOworCWk5MTVfZ2Vt
X3N1c3BlbmQoaTkxNSk7CisJaTkxNV9nZW1fZHJpdmVyX3JlbW92ZShpOTE1KTsKKwlpOTE1X2dl
bV9kcml2ZXJfcmVsZWFzZShpOTE1KTsKIGNsZWFudXBfbW9kZXNldDoKLQlpbnRlbF9tb2Rlc2V0
X2RyaXZlcl9yZW1vdmUoZGV2KTsKKwlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoJmk5MTUt
PmRybSk7CiBjbGVhbnVwX2lycToKLQlpbnRlbF9pcnFfdW5pbnN0YWxsKGRldl9wcml2KTsKLQlp
bnRlbF9nbWJ1c190ZWFyZG93bihkZXZfcHJpdik7CisJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1
KTsKKwlpbnRlbF9nbWJ1c190ZWFyZG93bihpOTE1KTsKIGNsZWFudXBfY3NyOgotCWludGVsX2Nz
cl91Y29kZV9maW5pKGRldl9wcml2KTsKLQlpbnRlbF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1v
dmUoZGV2X3ByaXYpOworCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUpOworCWludGVsX3Bvd2Vy
X2RvbWFpbnNfZHJpdmVyX3JlbW92ZShpOTE1KTsKIAl2Z2Ffc3dpdGNoZXJvb191bnJlZ2lzdGVy
X2NsaWVudChwZGV2KTsKIGNsZWFudXBfdmdhX2NsaWVudDoKIAl2Z2FfY2xpZW50X3JlZ2lzdGVy
KHBkZXYsIE5VTEwsIE5VTEwsIE5VTEwpOwpAQCAtMTU3MCw3ICsxNTY5LDcgQEAgaW50IGk5MTVf
ZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2Rldmlj
ZV9pZCAqZW50KQogCWlmIChyZXQgPCAwKQogCQlnb3RvIG91dF9jbGVhbnVwX21taW87CiAKLQly
ZXQgPSBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCZkZXZfcHJpdi0+ZHJtKTsKKwlyZXQgPSBp
OTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKGRldl9wcml2KTsKIAlpZiAocmV0IDwgMCkKIAkJZ290
byBvdXRfY2xlYW51cF9odzsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
