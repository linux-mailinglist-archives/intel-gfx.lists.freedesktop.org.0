Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE6634B2C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA98889935;
	Tue,  4 Jun 2019 14:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930B489938
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:28 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:12 +0300
Message-Id: <20190604145826.16424-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/23] drm/i915: Factor out common parts from
 TypeC port handling functions
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RmFjdG9yIG91dCBoZWxwZXJzIHJlYWRpbmcvcGFyc2luZyB0aGUgVHlwZUMgc3BlY2lmaWMgcmVn
aXN0ZXJzLCBtYWtpbmcKY3VycmVudCB1c2VycyBvZiB0aGVtIGNsZWFyZXIgYW5kIGxldHRpbmcg
dXMgdXNlIHRoZW0gbGF0ZXIuCgpXaGlsZSBhdCBpdCBhbHNvOgotIFNpbXBsaWZ5IGljbF90Y19w
aHlfY29ubmVjdCgpIHdpdGggYW4gZWFybHkgcmV0dXJuIGluIGxlZ2FjeSBtb2RlLgotIFNpbXBs
aWZ5IHRoZSBsaXZlIHN0YXR1cyBjaGVjayB1c2luZyBvbmUgYml0bWFzayBmb3IgYWxsIEhQRCBi
aXRzLgotIFJlbW92ZSBhIG1pY3JvLW9wdGltaXNhdGlvbiBvZiB0aGUgcmVwZWF0ZWQgc2FmZS1t
b2RlIGNsZWFyaW5nLgotIE1ha2Ugc3VyZSB3ZSBmaXggdGhlIGxlZ2FjeSBwb3J0IGZsYWcgaW4g
YWxsIGNhc2VzLgoKRXhjZXB0IGZvciB0aGUgbGFzdCB0d28sIG5vIGZ1bmN0aW9uYWwgY2hhbmdl
cy4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IFBhdWxvIFphbm9uaSA8
cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgfCAg
IDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMgIHwgMTY2ICsrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmggIHwg
ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwgMTAzIGluc2VydGlvbnMoKyksIDY5IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMKaW5kZXggOGYyMjNkNDhkNTYyLi5kMjM2ODM5YmVl
MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jCkBAIC0yOTgzLDcgKzI5ODMsNiBAQCBzdGF0
aWMgdm9pZCBpY2xfcHJvZ3JhbV9tZ19kcF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmludGVsX2RpZ19wb3J0KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwogCWVudW0gcG9ydCBwb3J0
ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKLQllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGlu
dGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIHBvcnQpOwogCXUzMiBsbjAsIGxuMSwgbGFuZV9pbmZv
OwogCiAJaWYgKGludGVsX2RpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkKQEAg
LTI5OTcsOSArMjk5Niw3IEBAIHN0YXRpYyB2b2lkIGljbF9wcm9ncmFtX21nX2RwX21vZGUoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiAJCWxuMCAmPSB+KE1HX0RQ
X01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFKTsKIAkJbG4x
ICY9IH4oTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8IE1HX0RQX01PREVfQ0ZHX0RQX1gyX01P
REUpOwogCi0JCWxhbmVfaW5mbyA9IChJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQU1ApICYKLQkJ
CSAgICAgRFBfTEFORV9BU1NJR05NRU5UX01BU0sodGNfcG9ydCkpID4+Ci0JCQkgICAgRFBfTEFO
RV9BU1NJR05NRU5UX1NISUZUKHRjX3BvcnQpOworCQlsYW5lX2luZm8gPSBpbnRlbF90Y19wb3J0
X2dldF9sYW5lX2luZm8oaW50ZWxfZGlnX3BvcnQpOwogCiAJCXN3aXRjaCAobGFuZV9pbmZvKSB7
CiAJCWNhc2UgMHgxOgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMKaW5kZXggMDc0ODgyMzViNjdhLi4z
ZmRjZmEyYmJhZWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYwpAQCAtNDMsMTAgKzQzLDE5IEBA
IHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFtZShlbnVtIHRjX3BvcnRfbW9kZSBt
b2RlKQogCXJldHVybiBuYW1lc1ttb2RlXTsKIH0KIAotaW50IGludGVsX3RjX3BvcnRfZmlhX21h
eF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQordTMyIGlu
dGVsX3RjX3BvcnRfZ2V0X2xhbmVfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRp
Z19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3Bv
cnRfdG9fdGMoZGV2X3ByaXYsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOworCXUzMiBsYW5lX2luZm8g
PSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQU1ApOworCisJcmV0dXJuIChsYW5lX2luZm8gJiBE
UF9MQU5FX0FTU0lHTk1FTlRfTUFTSyh0Y19wb3J0KSkgPj4KKwkgICAgICAgRFBfTEFORV9BU1NJ
R05NRU5UX1NISUZUKHRjX3BvcnQpOworfQorCitpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xh
bmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNl
LmRldik7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJdTMyIGxhbmVfaW5mbzsKIApAQCAt
NTUsOSArNjQsNyBAQCBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiAKIAlsYW5lX2luZm8gPSAwOwogCXdpdGhf
aW50ZWxfZGlzcGxheV9wb3dlcihkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwg
d2FrZXJlZikKLQkJbGFuZV9pbmZvID0gKEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBTUCkgJgot
CQkJICAgICBEUF9MQU5FX0FTU0lHTk1FTlRfTUFTSyh0Y19wb3J0KSkgPj4KLQkJCQlEUF9MQU5F
X0FTU0lHTk1FTlRfU0hJRlQodGNfcG9ydCk7CisJCWxhbmVfaW5mbyA9IGludGVsX3RjX3BvcnRf
Z2V0X2xhbmVfaW5mbyhkaWdfcG9ydCk7CiAKIAlzd2l0Y2ggKGxhbmVfaW5mbykgewogCWRlZmF1
bHQ6CkBAIC03NSw2ICs4Miw2OSBAQCBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291
bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiAJfQogfQogCitzdGF0aWMg
dm9pZCB0Y19wb3J0X2ZpeHVwX2xlZ2FjeV9mbGFnKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0LAorCQkJCSAgICAgIHUzMiBsaXZlX3N0YXR1c19tYXNrKQoreworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5k
ZXYpOworCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwg
ZGlnX3BvcnQtPmJhc2UucG9ydCk7CisJdTMyIHZhbGlkX2hwZF9tYXNrID0gZGlnX3BvcnQtPnRj
X2xlZ2FjeV9wb3J0ID8gQklUKFRDX1BPUlRfTEVHQUNZKSA6CisJCQkJCQkJfkJJVChUQ19QT1JU
X0xFR0FDWSk7CisKKwlpZiAoIShsaXZlX3N0YXR1c19tYXNrICYgfnZhbGlkX2hwZF9tYXNrKSkK
KwkJcmV0dXJuOworCisJLyogSWYgbGl2ZSBzdGF0dXMgbWlzbWF0Y2hlcyB0aGUgVkJUIGZsYWcs
IHRydXN0IHRoZSBsaXZlIHN0YXR1cy4gKi8KKwlEUk1fRVJST1IoIlBvcnQgJXM6IGxpdmUgc3Rh
dHVzICUwOHggbWlzbWF0Y2hlcyB0aGUgbGVnYWN5IHBvcnQgZmxhZywgZml4IGZsYWdcbiIsCisJ
CSAgdGNfcG9ydF9uYW1lKGRldl9wcml2LCB0Y19wb3J0KSwgbGl2ZV9zdGF0dXNfbWFzayk7CisK
KwlkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgPSAhZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0Owor
fQorCitzdGF0aWMgdTMyIHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKKwllbnVtIHRjX3BvcnQgdGNf
cG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOwor
CXUzMiB2YWwgPSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQU1ApOworCXUzMiBtYXNrID0gMDsK
KworCWlmICh2YWwgJiBUQ19MSVZFX1NUQVRFX1RCVCh0Y19wb3J0KSkKKwkJbWFzayB8PSBCSVQo
VENfUE9SVF9UQlRfQUxUKTsKKwlpZiAodmFsICYgVENfTElWRV9TVEFURV9UQyh0Y19wb3J0KSkK
KwkJbWFzayB8PSBCSVQoVENfUE9SVF9EUF9BTFQpOworCisJaWYgKEk5MTVfUkVBRChTREVJU1Ip
ICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3BvcnQpKQorCQltYXNrIHw9IEJJVChUQ19QT1JUX0xF
R0FDWSk7CisKKwkvKiBUaGUgc2luayBjYW4gYmUgY29ubmVjdGVkIG9ubHkgaW4gYSBzaW5nbGUg
bW9kZS4gKi8KKwlpZiAoIVdBUk5fT04oaHdlaWdodDMyKG1hc2spID4gMSkpCisJCXRjX3BvcnRf
Zml4dXBfbGVnYWN5X2ZsYWcoZGlnX3BvcnQsIG1hc2spOworCisJcmV0dXJuIG1hc2s7Cit9CisK
K3N0YXRpYyBib29sIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOworCWVudW0gdGNfcG9ydCB0Y19w
b3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2UucG9ydCk7CisK
KwlyZXR1cm4gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFBNUykgJgorCSAgICAgICBEUF9QSFlf
TU9ERV9TVEFUVVNfQ09NUExFVEVEKHRjX3BvcnQpOworfQorCitzdGF0aWMgdm9pZCBpY2xfdGNf
cGh5X3NldF9zYWZlX21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCisJ
CQkJICAgICBib29sIGVuYWJsZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKKwllbnVtIHRjX3BvcnQgdGNf
cG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOwor
CXUzMiB2YWwgPSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQQ1NTUyk7CisKKwl2YWwgJj0gfkRQ
X1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsKKwlpZiAoIWVuYWJsZSkKKwkJdmFs
IHw9IERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsKKworCUk5MTVfV1JJVEUo
UE9SVF9UWF9ERkxFWERQQ1NTUywgdmFsKTsKK30KKwogLyoKICAqIFRoaXMgZnVuY3Rpb24gaW1w
bGVtZW50cyB0aGUgZmlyc3QgcGFydCBvZiB0aGUgQ29ubmVjdCBGbG93IGRlc2NyaWJlZCBieSBv
dXIKICAqIHNwZWNpZmljYXRpb24sIEdlbjExIFR5cGVDIFByb2dyYW1taW5nIGNoYXB0ZXIuIFRo
ZSByZXN0IG9mIHRoZSBmbG93IChyZWFkaW5nCkBAIC0xMDAsMzYgKzE3MCwzMSBAQCBzdGF0aWMg
Ym9vbCBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdf
cG9ydC0+YmFzZS5iYXNlLmRldik7CiAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0
X3RvX3RjKGRldl9wcml2LCBkaWdfcG9ydC0+YmFzZS5wb3J0KTsKLQl1MzIgdmFsOworCXUzMiBs
aXZlX3N0YXR1c19tYXNrOwogCiAJaWYgKGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfTEVH
QUNZICYmCiAJICAgIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfRFBfQUxUKQogCQlyZXR1
cm4gdHJ1ZTsKIAotCXZhbCA9IEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBQTVMpOwotCWlmICgh
KHZhbCAmIERQX1BIWV9NT0RFX1NUQVRVU19DT01QTEVURUQodGNfcG9ydCkpKSB7CisJaWYgKCFp
Y2xfdGNfcGh5X3N0YXR1c19jb21wbGV0ZShkaWdfcG9ydCkpIHsKIAkJRFJNX0RFQlVHX0tNUygi
UG9ydCAlczogUEhZIG5vdCByZWFkeVxuIiwKIAkJCSAgICAgIHRjX3BvcnRfbmFtZShkZXZfcHJp
diwgdGNfcG9ydCkpOwogCQlXQVJOX09OKGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCk7CiAJCXJl
dHVybiBmYWxzZTsKIAl9CiAKLQkvKgotCSAqIFRoaXMgZnVuY3Rpb24gbWF5IGJlIGNhbGxlZCBt
YW55IHRpbWVzIGluIGEgcm93IHdpdGhvdXQgYW4gSFBEIGV2ZW50Ci0JICogaW4gYmV0d2Vlbiwg
c28gdHJ5IHRvIGF2b2lkIHRoZSB3cml0ZSB3aGVuIHdlIGNhbi4KLQkgKi8KLQl2YWwgPSBJOTE1
X1JFQUQoUE9SVF9UWF9ERkxFWERQQ1NTUyk7Ci0JaWYgKCEodmFsICYgRFBfUEhZX01PREVfU1RB
VFVTX05PVF9TQUZFKHRjX3BvcnQpKSkgewotCQl2YWwgfD0gRFBfUEhZX01PREVfU1RBVFVTX05P
VF9TQUZFKHRjX3BvcnQpOwotCQlJOTE1X1dSSVRFKFBPUlRfVFhfREZMRVhEUENTU1MsIHZhbCk7
Ci0JfQorCWljbF90Y19waHlfc2V0X3NhZmVfbW9kZShkaWdfcG9ydCwgZmFsc2UpOworCisJaWYg
KGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfTEVHQUNZKQorCQlyZXR1cm4gdHJ1ZTsKKwor
CWxpdmVfc3RhdHVzX21hc2sgPSB0Y19wb3J0X2xpdmVfc3RhdHVzX21hc2soZGlnX3BvcnQpOwog
CiAJLyoKIAkgKiBOb3cgd2UgaGF2ZSB0byByZS1jaGVjayB0aGUgbGl2ZSBzdGF0ZSwgaW4gY2Fz
ZSB0aGUgcG9ydCByZWNlbnRseQogCSAqIGJlY2FtZSBkaXNjb25uZWN0ZWQuIE5vdCBuZWNlc3Nh
cnkgZm9yIGxlZ2FjeSBtb2RlLgogCSAqLwotCWlmIChkaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19Q
T1JUX0RQX0FMVCAmJgotCSAgICAhKEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBTUCkgJiBUQ19M
SVZFX1NUQVRFX1RDKHRjX3BvcnQpKSkgeworCWlmICghKGxpdmVfc3RhdHVzX21hc2sgJiBCSVQo
VENfUE9SVF9EUF9BTFQpKSkgewogCQlEUk1fREVCVUdfS01TKCJQb3J0ICVzOiBQSFkgc3VkZGVu
IGRpc2Nvbm5lY3RcbiIsCiAJCQkgICAgICB0Y19wb3J0X25hbWUoZGV2X3ByaXYsIHRjX3BvcnQp
KTsKIAkJaWNsX3RjX3BoeV9kaXNjb25uZWN0KGRpZ19wb3J0KTsKQEAgLTE0OCw0NCArMjEzLDM2
IEBAIHZvaWQgaWNsX3RjX3BoeV9kaXNjb25uZWN0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
ZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwogCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxf
cG9ydF90b190YyhkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2UucG9ydCk7CiAKLQkvKgotCSAqIFRC
VCBkaXNjb25uZWN0aW9uIGZsb3cgaXMgcmVhZCB0aGUgbGl2ZSBzdGF0dXMsIHdoYXQgd2FzIGRv
bmUgaW4KLQkgKiBjYWxsZXIuCi0JICovCi0JaWYgKGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BP
UlRfRFBfQUxUIHx8Ci0JICAgIGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfTEVHQUNZKSB7
Ci0JCXUzMiB2YWw7Ci0KLQkJdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUENTU1MpOwot
CQl2YWwgJj0gfkRQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsKLQkJSTkxNV9X
UklURShQT1JUX1RYX0RGTEVYRFBDU1NTLCB2YWwpOworCXN3aXRjaCAoZGlnX3BvcnQtPnRjX21v
ZGUpIHsKKwljYXNlIFRDX1BPUlRfTEVHQUNZOgorCWNhc2UgVENfUE9SVF9EUF9BTFQ6CisJCWlj
bF90Y19waHlfc2V0X3NhZmVfbW9kZShkaWdfcG9ydCwgdHJ1ZSk7CisJCWRpZ19wb3J0LT50Y19t
b2RlID0gVENfUE9SVF9UQlRfQUxUOworCQlicmVhazsKKwljYXNlIFRDX1BPUlRfVEJUX0FMVDoK
KwkJLyogTm90aGluZyB0byBkbywgd2Ugc3RheSBpbiBUQlQtYWx0IG1vZGUgKi8KKwkJYnJlYWs7
CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKGRpZ19wb3J0LT50Y19tb2RlKTsKIAl9CiAKIAlE
Uk1fREVCVUdfS01TKCJQb3J0ICVzOiBtb2RlICVzIGRpc2Nvbm5lY3RlZFxuIiwKIAkJICAgICAg
dGNfcG9ydF9uYW1lKGRldl9wcml2LCB0Y19wb3J0KSwKIAkJICAgICAgdGNfcG9ydF9tb2RlX25h
bWUoZGlnX3BvcnQtPnRjX21vZGUpKTsKLQotCWRpZ19wb3J0LT50Y19tb2RlID0gVENfUE9SVF9U
QlRfQUxUOwogfQogCiBzdGF0aWMgdm9pZCBpY2xfdXBkYXRlX3RjX3BvcnRfdHlwZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJICAgIHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmludGVsX2RpZ19wb3J0LAotCQkJCSAgICBib29sIGlzX2xlZ2FjeSwgYm9vbCBpc190
eXBlYywgYm9vbCBpc190YnQpCisJCQkJICAgIHUzMiBsaXZlX3N0YXR1c19tYXNrKQogewogCWVu
dW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKIAllbnVtIHRjX3BvcnRf
bW9kZSBvbGRfbW9kZSA9IGludGVsX2RpZ19wb3J0LT50Y19tb2RlOwogCi0JV0FSTl9PTihpc19s
ZWdhY3kgKyBpc190eXBlYyArIGlzX3RidCAhPSAxKTsKLQotCWlmIChpc19sZWdhY3kpCi0JCWlu
dGVsX2RpZ19wb3J0LT50Y19tb2RlID0gVENfUE9SVF9MRUdBQ1k7Ci0JZWxzZSBpZiAoaXNfdHlw
ZWMpCi0JCWludGVsX2RpZ19wb3J0LT50Y19tb2RlID0gVENfUE9SVF9EUF9BTFQ7Ci0JZWxzZSBp
ZiAoaXNfdGJ0KQotCQlpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSA9IFRDX1BPUlRfVEJUX0FMVDsK
LQllbHNlCisJaWYgKCFsaXZlX3N0YXR1c19tYXNrKQogCQlyZXR1cm47CiAKKwlpbnRlbF9kaWdf
cG9ydC0+dGNfbW9kZSA9IGZscyhsaXZlX3N0YXR1c19tYXNrKSAtIDE7CisKIAlpZiAob2xkX21v
ZGUgIT0gaW50ZWxfZGlnX3BvcnQtPnRjX21vZGUpCiAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6
IHBvcnQgaGFzIG1vZGUgJXNcbiIsCiAJCQkgICAgICB0Y19wb3J0X25hbWUoZGV2X3ByaXYsCkBA
IC0yMDcsNDAgKzI2NCwxOSBAQCBzdGF0aWMgdm9pZCBpY2xfdXBkYXRlX3RjX3BvcnRfdHlwZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiBib29sIGludGVsX3RjX3BvcnRfY29u
bmVjdGVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogewogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5k
ZXYpOwotCWVudW0gcG9ydCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsKLQllbnVtIHRjX3Bv
cnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIHBvcnQpOwotCWJvb2wgaXNf
bGVnYWN5LCBpc190eXBlYywgaXNfdGJ0OwotCXUzMiBkcHNwOwotCi0JLyoKLQkgKiBDb21wbGFp
biBpZiB3ZSBnb3QgYSBsZWdhY3kgcG9ydCBIUEQsIGJ1dCBWQlQgZGlkbid0IG1hcmsgdGhlIHBv
cnQgYXMKLQkgKiBsZWdhY3kuIFRyZWF0IHRoZSBwb3J0IGFzIGxlZ2FjeSBmcm9tIG5vdyBvbi4K
LQkgKi8KLQlpZiAoIWRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCAmJgotCSAgICBJOTE1X1JFQUQo
U0RFSVNSKSAmIFNERV9UQ19IT1RQTFVHX0lDUCh0Y19wb3J0KSkgewotCQlEUk1fRVJST1IoIlBv
cnQgJXM6IFZCVCBpbmNvcnJlY3RseSBjbGFpbXMgcG9ydCBpcyBub3QgVHlwZUMgbGVnYWN5XG4i
LAotCQkJICB0Y19wb3J0X25hbWUoZGV2X3ByaXYsIHRjX3BvcnQpKTsKLQkJZGlnX3BvcnQtPnRj
X2xlZ2FjeV9wb3J0ID0gdHJ1ZTsKLQl9Ci0JaXNfbGVnYWN5ID0gZGlnX3BvcnQtPnRjX2xlZ2Fj
eV9wb3J0OworCXUzMiBsaXZlX3N0YXR1c19tYXNrID0gdGNfcG9ydF9saXZlX3N0YXR1c19tYXNr
KGRpZ19wb3J0KTsKIAogCS8qCiAJICogVGhlIHNwZWMgc2F5cyB3ZSBzaG91bGRuJ3QgYmUgdXNp
bmcgdGhlIElTUiBiaXRzIGZvciBkZXRlY3RpbmcKIAkgKiBiZXR3ZWVuIFRDIGFuZCBUQlQuIFdl
IHNob3VsZCB1c2UgREZMRVhEUFNQLgogCSAqLwotCWRwc3AgPSBJOTE1X1JFQUQoUE9SVF9UWF9E
RkxFWERQU1ApOwotCWlzX3R5cGVjID0gZHBzcCAmIFRDX0xJVkVfU1RBVEVfVEModGNfcG9ydCk7
Ci0JaXNfdGJ0ID0gZHBzcCAmIFRDX0xJVkVfU1RBVEVfVEJUKHRjX3BvcnQpOwotCi0JaWYgKCFp
c19sZWdhY3kgJiYgIWlzX3R5cGVjICYmICFpc190YnQpIHsKKwlpZiAoIWxpdmVfc3RhdHVzX21h
c2sgJiYgIWRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCkgewogCQlpY2xfdGNfcGh5X2Rpc2Nvbm5l
Y3QoZGlnX3BvcnQpOwogCiAJCXJldHVybiBmYWxzZTsKIAl9CiAKLQlpY2xfdXBkYXRlX3RjX3Bv
cnRfdHlwZShkZXZfcHJpdiwgZGlnX3BvcnQsIGlzX2xlZ2FjeSwgaXNfdHlwZWMsCi0JCQkJaXNf
dGJ0KTsKLQorCWljbF91cGRhdGVfdGNfcG9ydF90eXBlKGRldl9wcml2LCBkaWdfcG9ydCwgbGl2
ZV9zdGF0dXNfbWFzayk7CiAJaWYgKCFpY2xfdGNfcGh5X2Nvbm5lY3QoZGlnX3BvcnQpKQogCQly
ZXR1cm4gZmFsc2U7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Rj
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5oCmluZGV4IDk0YzYyYWM0YTE2Mi4u
ZTkzN2Y1MzI2OTU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmgKQEAgLTgsNiArOCw3IEBAIHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQ7CiB2b2lkIGljbF90Y19waHlfZGlzY29ubmVjdChzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7CiAKIGJvb2wgaW50ZWxfdGNfcG9ydF9j
b25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwordTMyIGludGVs
X3RjX3BvcnRfZ2V0X2xhbmVfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCk7CiBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogCiAjZW5kaWYgLyogX19JTlRFTF9UQ19IX18gKi8KLS0g
CjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
