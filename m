Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E22A72B9AFB
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 461C26E7D3;
	Thu, 19 Nov 2020 18:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1A76E7D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:36 +0000 (UTC)
IronPort-SDR: zpa/4wJDIztcxxrMcL0QqDMB3iUU41H6YUoYIgJysKy+ZvodoHaXH9qXYHhJAcQ6bntoATOqOU
 9DFNtDFwLY1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="171512522"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="171512522"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:35 -0800
IronPort-SDR: TfCfEfEvrI/6UJ5ePudNl4jTEJOWPgL3D8RA5CTxk/V8VCIUHvu+79rPM07Hl8iM4DOx0vC3S1
 mOlYwpSjJqKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="431330551"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 19 Nov 2020 10:54:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:59 +0200
Message-Id: <20201119185401.31883-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/13] drm/i915: Pre-calculate plane relative
 data rate
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkhh
bmRsZSB0aGUgcGxhbmUgcmVsYXRpdmUgZGF0YSByYXRlIGluIGV4YWN0bHkgdGhlIHNhbWUKd2F5
IGFzIHdlIGFscmVhZHkgaGFuZGxlIHRoZSByZWFsIGRhdGEgcmF0ZS4gSWUuIHByZS1jYWxjdWxh
dGUKaXQgZHVyaW5nIGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKCksIGFuZCBh
c3NpZ24vY2xlYXIKaXQgZm9yIHRoZSBZIHBsYW5lIGFzIG5lZWRlZC4gVGhpcyBzaG91bGQgZ3Vh
cmFudGVlIHRoYXQgdGhlCnRyYWNraW5nIGlzIDEwMCUgY29uc2lzdGVudCwgYW5kIG1ha2VzIG1l
IGhhdmUgdG8gdGhpbmsgbGVzcwp3aGVuIHRoZSBzYW1lIGFwcG9yYWNoIGlzIHVzZWQgYnkgYm90
aCB0eXBlcyBvZiBkYXRhIHJhdGUuCgpXZSBtaWdodCBldmVuIHdhbnQgdG8gY29uc2lkZXIgcmVw
bGFjaW5nIHRoZSByZWxhdGl2ZQpkYXRhIHJhdGUgd2l0aCB0aGUgcmVhbCBkYXRhIHJhdGUgZW50
aXJlbHksIGJ1dCBpdCdzIG5vdApjbGVhciBpZiB0aGF0IHdpbGwgcHJvZHVjZSBsZXNzIG9wdGlt
YWwgcGxhbmUgZGRiCmFsbG9jYXRpb25zLiBTbyBmb3Igbm93IGxldHMga2VlcCB1c2luZyB0aGUg
Y3VycmVudCBhcHByb2FjaC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pY19wbGFuZS5jIHwgIDQ1ICsrKy0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuaCB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgIHwgICA2ICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyAgICAgICAgICAgICAgIHwgMjI5ICsrKy0tLS0tLS0tLS0tLS0tLQogNSBmaWxlcyBjaGFuZ2Vk
LCA4OSBpbnNlcnRpb25zKCspLCAyMDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKaW5kZXggOTk5YTA2MGFjOTUx
Li5kMWU0MjY5NDllMTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYwpAQCAtMTMzLDkgKzEzMyw5IEBAIGludGVsX3BsYW5lX2Rlc3Ry
b3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJa2ZyZWUocGxhbmVfc3RhdGUpOwog
fQogCi11bnNpZ25lZCBpbnQgaW50ZWxfYWRqdXN0ZWRfcmF0ZShjb25zdCBzdHJ1Y3QgZHJtX3Jl
Y3QgKnNyYywKLQkJCQkgY29uc3Qgc3RydWN0IGRybV9yZWN0ICpkc3QsCi0JCQkJIHVuc2lnbmVk
IGludCByYXRlKQordTY0IGludGVsX2FkanVzdGVkX3JhdGUoY29uc3Qgc3RydWN0IGRybV9yZWN0
ICpzcmMsCisJCQljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmRzdCwKKwkJCXVuc2lnbmVkIGludCBy
YXRlKQogewogCXVuc2lnbmVkIGludCBzcmNfdywgc3JjX2gsIGRzdF93LCBkc3RfaDsKIApAQCAt
MTc2LDYgKzE3NiwzNSBAQCB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfZGF0YV9yYXRlKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQlmYi0+Zm9ybWF0LT5jcHBb
Y29sb3JfcGxhbmVdOwogfQogCitzdGF0aWMgdTY0IGludGVsX3BsYW5lX3JlbGF0aXZlX2RhdGFf
cmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAorCQkJCQkg
IGludCBjb2xvcl9wbGFuZSkKK3sKKwljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9
IHBsYW5lX3N0YXRlLT5ody5mYjsKKwlpbnQgd2lkdGgsIGhlaWdodDsKKworCWlmICghcGxhbmVf
c3RhdGUtPnVhcGkudmlzaWJsZSkKKwkJcmV0dXJuIDA7CisKKwkvKgorCSAqIFNyYyBjb29yZGlu
YXRlcyBhcmUgYWxyZWFkeSByb3RhdGVkIGJ5IDI3MCBkZWdyZWVzIGZvcgorCSAqIHRoZSA5MC8y
NzAgZGVncmVlIHBsYW5lIHJvdGF0aW9uIGNhc2VzICh0byBtYXRjaCB0aGUKKwkgKiBHVFQgbWFw
cGluZyksIGhlbmNlIG5vIG5lZWQgdG8gYWNjb3VudCBmb3Igcm90YXRpb24gaGVyZS4KKwkgKi8K
Kwl3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2Owor
CWhlaWdodCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsK
KworCS8qIFVWIHBsYW5lIGRvZXMgMS8yIHBpeGVsIHN1Yi1zYW1wbGluZyAqLworCWlmIChjb2xv
cl9wbGFuZSA9PSAxKSB7CisJCXdpZHRoIC89IDI7CisJCWhlaWdodCAvPSAyOworCX0KKworCXJl
dHVybiBpbnRlbF9hZGp1c3RlZF9yYXRlKCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMsCisJCQkJICAg
JnBsYW5lX3N0YXRlLT51YXBpLmRzdCwKKwkJCQkgICB3aWR0aCAqIGhlaWdodCkgKgorCQlmYi0+
Zm9ybWF0LT5jcHBbY29sb3JfcGxhbmVdOworfQorCiBpbnQgaW50ZWxfcGxhbmVfY2FsY19taW5f
Y2RjbGsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkgICAgICAgc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCSAgICAgICBib29sICpuZWVkX2NkY2xrX2NhbGMpCkBA
IC0yOTYsNiArMzI1LDggQEAgdm9pZCBpbnRlbF9wbGFuZV9zZXRfaW52aXNpYmxlKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNydGNfc3RhdGUtPmM4X3BsYW5lcyAmPSB+
QklUKHBsYW5lLT5pZCk7CiAJY3J0Y19zdGF0ZS0+ZGF0YV9yYXRlW3BsYW5lLT5pZF0gPSAwOwog
CWNydGNfc3RhdGUtPmRhdGFfcmF0ZV95W3BsYW5lLT5pZF0gPSAwOworCWNydGNfc3RhdGUtPnJl
bF9kYXRhX3JhdGVbcGxhbmUtPmlkXSA9IDA7CisJY3J0Y19zdGF0ZS0+cmVsX2RhdGFfcmF0ZV95
W3BsYW5lLT5pZF0gPSAwOwogCWNydGNfc3RhdGUtPm1pbl9jZGNsa1twbGFuZS0+aWRdID0gMDsK
IAogCXBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUgPSBmYWxzZTsKQEAgLTM0MCw5ICszNzEsMTcg
QEAgaW50IGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y18KIAkJCWludGVsX3BsYW5lX2RhdGFfcmF0ZShuZXdf
Y3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlLCAwKTsKIAkJbmV3X2NydGNfc3RhdGUtPmRhdGFf
cmF0ZVtwbGFuZS0+aWRdID0KIAkJCWludGVsX3BsYW5lX2RhdGFfcmF0ZShuZXdfY3J0Y19zdGF0
ZSwgbmV3X3BsYW5lX3N0YXRlLCAxKTsKKworCQluZXdfY3J0Y19zdGF0ZS0+cmVsX2RhdGFfcmF0
ZV95W3BsYW5lLT5pZF0gPQorCQkJaW50ZWxfcGxhbmVfcmVsYXRpdmVfZGF0YV9yYXRlKG5ld19w
bGFuZV9zdGF0ZSwgMCk7CisJCW5ld19jcnRjX3N0YXRlLT5yZWxfZGF0YV9yYXRlW3BsYW5lLT5p
ZF0gPQorCQkJaW50ZWxfcGxhbmVfcmVsYXRpdmVfZGF0YV9yYXRlKG5ld19wbGFuZV9zdGF0ZSwg
MSk7CiAJfSBlbHNlIGlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkgewogCQluZXdf
Y3J0Y19zdGF0ZS0+ZGF0YV9yYXRlW3BsYW5lLT5pZF0gPQogCQkJaW50ZWxfcGxhbmVfZGF0YV9y
YXRlKG5ld19jcnRjX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUsIDApOworCisJCW5ld19jcnRjX3N0
YXRlLT5yZWxfZGF0YV9yYXRlW3BsYW5lLT5pZF0gPQorCQkJaW50ZWxfcGxhbmVfcmVsYXRpdmVf
ZGF0YV9yYXRlKG5ld19wbGFuZV9zdGF0ZSwgMCk7CiAJfQogCiAJcmV0dXJuIGludGVsX3BsYW5l
X2F0b21pY19jYWxjX2NoYW5nZXMob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKaW5k
ZXggYTI3YmMwOTFhY2M4Li43NmU1MjQzYmUyMDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaApAQCAtMTksMTIgKzE5LDExIEBAIHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsKIAogZXh0ZXJuIGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVf
aGVscGVyX2Z1bmNzIGludGVsX3BsYW5lX2hlbHBlcl9mdW5jczsKIAotdW5zaWduZWQgaW50IGlu
dGVsX2FkanVzdGVkX3JhdGUoY29uc3Qgc3RydWN0IGRybV9yZWN0ICpzcmMsCi0JCQkJIGNvbnN0
IHN0cnVjdCBkcm1fcmVjdCAqZHN0LAotCQkJCSB1bnNpZ25lZCBpbnQgcmF0ZSk7Cit1NjQgaW50
ZWxfYWRqdXN0ZWRfcmF0ZShjb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKnNyYywKKwkJCWNvbnN0IHN0
cnVjdCBkcm1fcmVjdCAqZHN0LAorCQkJdW5zaWduZWQgaW50IHJhdGUpOwogdW5zaWduZWQgaW50
IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCiAJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUpOwotCiB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfZGF0YV9yYXRlKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCiAJCQkJICAgaW50IGNvbG9yX3BsYW5lKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMjQ2ODQy
NzNiOGQ3Li5hNmJhMTU1ZWU4ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC0zNTg2LDYgKzM1ODYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9w
bGFuZV9kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWZpeHVwX2Fj
dGl2ZV9wbGFuZXMoY3J0Y19zdGF0ZSk7CiAJY3J0Y19zdGF0ZS0+ZGF0YV9yYXRlW3BsYW5lLT5p
ZF0gPSAwOwogCWNydGNfc3RhdGUtPmRhdGFfcmF0ZV95W3BsYW5lLT5pZF0gPSAwOworCWNydGNf
c3RhdGUtPnJlbF9kYXRhX3JhdGVbcGxhbmUtPmlkXSA9IDA7CisJY3J0Y19zdGF0ZS0+cmVsX2Rh
dGFfcmF0ZV95W3BsYW5lLT5pZF0gPSAwOwogCWNydGNfc3RhdGUtPm1pbl9jZGNsa1twbGFuZS0+
aWRdID0gMDsKIAogCWlmIChwbGFuZS0+aWQgPT0gUExBTkVfUFJJTUFSWSkKQEAgLTEyODM3LDYg
KzEyODM5LDcgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9wbGFuZXMoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCQljcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICY9
IH5CSVQocGxhbmUtPmlkKTsKIAkJCWNydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXMgfD0gQklUKHBs
YW5lLT5pZCk7CiAJCQljcnRjX3N0YXRlLT5kYXRhX3JhdGVbcGxhbmUtPmlkXSA9IDA7CisJCQlj
cnRjX3N0YXRlLT5yZWxfZGF0YV9yYXRlW3BsYW5lLT5pZF0gPSAwOwogCQl9CiAKIAkJcGxhbmVf
c3RhdGUtPnBsYW5hcl9zbGF2ZSA9IGZhbHNlOwpAQCAtMTI4ODIsNiArMTI4ODUsOCBAQCBzdGF0
aWMgaW50IGljbF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+dXBkYXRlX3BsYW5lcyB8PSBCSVQobGlua2VkLT5pZCk7
CiAJCWNydGNfc3RhdGUtPmRhdGFfcmF0ZVtsaW5rZWQtPmlkXSA9CiAJCQljcnRjX3N0YXRlLT5k
YXRhX3JhdGVfeVtwbGFuZS0+aWRdOworCQljcnRjX3N0YXRlLT5yZWxfZGF0YV9yYXRlW2xpbmtl
ZC0+aWRdID0KKwkJCWNydGNfc3RhdGUtPnJlbF9kYXRhX3JhdGVfeVtwbGFuZS0+aWRdOwogCQlk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlVzaW5nICVzIGFzIFkgcGxhbmUgZm9yICVzXG4i
LAogCQkJICAgIGxpbmtlZC0+YmFzZS5uYW1lLCBwbGFuZS0+YmFzZS5uYW1lKTsKIApAQCAtMTkz
MTksNiArMTkzMjQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3Rh
dGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJCWlmIChwbGFuZV9zdGF0ZS0+dWFwaS52aXNp
YmxlKQogCQkJCWNydGNfc3RhdGUtPmRhdGFfcmF0ZVtwbGFuZS0+aWRdID0KIAkJCQkJNCAqIGNy
dGNfc3RhdGUtPnBpeGVsX3JhdGU7CisKIAkJCS8qCiAJCQkgKiBGSVhNRSBkb24ndCBoYXZlIHRo
ZSBmYiB5ZXQsIHNvIGNhbid0CiAJCQkgKiB1c2UgcGxhbmUtPm1pbl9jZGNsaygpIDooCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmlu
ZGV4IGQwYjkxNDVkZDZmMC4uZDNhYjc1Yjk0NDJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTA0MCw5ICsxMDQwLDkg
QEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgewogCS8qIGZvciBwbGFuYXIgWSAqLwogCXUzMiBk
YXRhX3JhdGVfeVtJOTE1X01BWF9QTEFORVNdOwogCi0JLyogRklYTUUgdW5pZnkgd2l0aCBkYXRh
X3JhdGVbXSAqLwotCXU2NCBwbGFuZV9kYXRhX3JhdGVbSTkxNV9NQVhfUExBTkVTXTsKLQl1NjQg
dXZfcGxhbmVfZGF0YV9yYXRlW0k5MTVfTUFYX1BMQU5FU107CisJLyogRklYTUUgdW5pZnkgd2l0
aCBkYXRhX3JhdGVbXT8gKi8KKwl1NjQgcmVsX2RhdGFfcmF0ZVtJOTE1X01BWF9QTEFORVNdOwor
CXU2NCByZWxfZGF0YV9yYXRlX3lbSTkxNV9NQVhfUExBTkVTXTsKIAogCS8qIEdhbW1hIG1vZGUg
cHJvZ3JhbW1lZCBvbiB0aGUgcGlwZSAqLwogCXUzMiBnYW1tYV9tb2RlOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKaW5kZXggNTYwOGFlNWRjOTc3Li5hMGVjN2ExMDIyNzAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYwpAQCAtNDM0Miw1NSArNDM0Miw2IEBAIHZvaWQgc2tsX3BpcGVfZGRiX2dldF9o
d19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1
dChkZXZfcHJpdiwgcG93ZXJfZG9tYWluLCB3YWtlcmVmKTsKIH0KIAotLyoKLSAqIERldGVybWlu
ZXMgdGhlIGRvd25zY2FsZSBhbW91bnQgb2YgYSBwbGFuZSBmb3IgdGhlIHB1cnBvc2VzIG9mIHdh
dGVybWFyayBjYWxjdWxhdGlvbnMuCi0gKiBUaGUgYnNwZWMgZGVmaW5lcyBkb3duc2NhbGUgYW1v
dW50IGFzOgotICoKLSAqICIiIgotICogSG9yaXpvbnRhbCBkb3duIHNjYWxlIGFtb3VudCA9IG1h
eGltdW1bMSwgSG9yaXpvbnRhbCBzb3VyY2Ugc2l6ZSAvCi0gKiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBIb3Jpem9udGFsIGRlc3RpbmF0aW9uIHNpemVdCi0gKiBW
ZXJ0aWNhbCBkb3duIHNjYWxlIGFtb3VudCA9IG1heGltdW1bMSwgVmVydGljYWwgc291cmNlIHNp
emUgLwotICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFZlcnRpY2Fs
IGRlc3RpbmF0aW9uIHNpemVdCi0gKiBUb3RhbCBkb3duIHNjYWxlIGFtb3VudCA9IEhvcml6b250
YWwgZG93biBzY2FsZSBhbW91bnQgKgotICogICAgICAgICAgICAgICAgICAgICAgICAgICBWZXJ0
aWNhbCBkb3duIHNjYWxlIGFtb3VudAotICogIiIiCi0gKgotICogUmV0dXJuIHZhbHVlIGlzIHBy
b3ZpZGVkIGluIDE2LjE2IGZpeGVkIHBvaW50IGZvcm0gdG8gcmV0YWluIGZyYWN0aW9uYWwgcGFy
dC4KLSAqIENhbGxlciBzaG91bGQgdGFrZSBjYXJlIG9mIGRpdmlkaW5nICYgcm91bmRpbmcgb2Zm
IHRoZSB2YWx1ZS4KLSAqLwotc3RhdGljIHVpbnRfZml4ZWRfMTZfMTZfdAotc2tsX3BsYW5lX2Rv
d25zY2FsZV9hbW91bnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
Ci0JCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQotewot
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+
dWFwaS5jcnRjLT5kZXYpOwotCXUzMiBzcmNfdywgc3JjX2gsIGRzdF93LCBkc3RfaDsKLQl1aW50
X2ZpeGVkXzE2XzE2X3QgZnBfd19yYXRpbywgZnBfaF9yYXRpbzsKLQl1aW50X2ZpeGVkXzE2XzE2
X3QgZG93bnNjYWxlX2gsIGRvd25zY2FsZV93OwotCi0JaWYgKGRybV9XQVJOX09OKCZkZXZfcHJp
di0+ZHJtLAotCQkJIWludGVsX3dtX3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3Rh
dGUpKSkKLQkJcmV0dXJuIHUzMl90b19maXhlZDE2KDApOwotCi0JLyoKLQkgKiBTcmMgY29vcmRp
bmF0ZXMgYXJlIGFscmVhZHkgcm90YXRlZCBieSAyNzAgZGVncmVlcyBmb3IKLQkgKiB0aGUgOTAv
MjcwIGRlZ3JlZSBwbGFuZSByb3RhdGlvbiBjYXNlcyAodG8gbWF0Y2ggdGhlCi0JICogR1RUIG1h
cHBpbmcpLCBoZW5jZSBubyBuZWVkIHRvIGFjY291bnQgZm9yIHJvdGF0aW9uIGhlcmUuCi0JICoK
LQkgKiBuLmIuLCBzcmMgaXMgMTYuMTYgZml4ZWQgcG9pbnQsIGRzdCBpcyB3aG9sZSBpbnRlZ2Vy
LgotCSAqLwotCXNyY193ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykg
Pj4gMTY7Ci0Jc3JjX2ggPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykg
Pj4gMTY7Ci0JZHN0X3cgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsK
LQlkc3RfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsKLQotCWZw
X3dfcmF0aW8gPSBkaXZfZml4ZWQxNihzcmNfdywgZHN0X3cpOwotCWZwX2hfcmF0aW8gPSBkaXZf
Zml4ZWQxNihzcmNfaCwgZHN0X2gpOwotCWRvd25zY2FsZV93ID0gbWF4X2ZpeGVkMTYoZnBfd19y
YXRpbywgdTMyX3RvX2ZpeGVkMTYoMSkpOwotCWRvd25zY2FsZV9oID0gbWF4X2ZpeGVkMTYoZnBf
aF9yYXRpbywgdTMyX3RvX2ZpeGVkMTYoMSkpOwotCi0JcmV0dXJuIG11bF9maXhlZDE2KGRvd25z
Y2FsZV93LCBkb3duc2NhbGVfaCk7Ci19Ci0KIHN0cnVjdCBkYnVmX3NsaWNlX2NvbmZfZW50cnkg
ewogCXU4IGFjdGl2ZV9waXBlczsKIAl1OCBkYnVmX21hc2tbSTkxNV9NQVhfUElQRVNdOwpAQCAt
NDY0MCwxMzYgKzQ1OTEsMjQgQEAgc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogfQogCiBzdGF0aWMgdTY0
Ci1za2xfcGxhbmVfcmVsYXRpdmVfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAotCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
KnBsYW5lX3N0YXRlLAotCQkJICAgICBpbnQgY29sb3JfcGxhbmUpCitza2xfdG90YWxfcmVsYXRp
dmVfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
ewotCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0
ZS0+dWFwaS5wbGFuZSk7Ci0JY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFu
ZV9zdGF0ZS0+aHcuZmI7Ci0JdTMyIGRhdGFfcmF0ZTsKLQl1MzIgd2lkdGggPSAwLCBoZWlnaHQg
PSAwOwotCXVpbnRfZml4ZWRfMTZfMTZfdCBkb3duX3NjYWxlX2Ftb3VudDsKLQl1NjQgcmF0ZTsK
LQotCWlmICghcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkKLQkJcmV0dXJuIDA7Ci0KLQlpZiAo
cGxhbmUtPmlkID09IFBMQU5FX0NVUlNPUikKLQkJcmV0dXJuIDA7Ci0KLQlpZiAoY29sb3JfcGxh
bmUgPT0gMSAmJgotCSAgICAhaW50ZWxfZm9ybWF0X2luZm9faXNfeXV2X3NlbWlwbGFuYXIoZmIt
PmZvcm1hdCwgZmItPm1vZGlmaWVyKSkKLQkJcmV0dXJuIDA7Ci0KLQkvKgotCSAqIFNyYyBjb29y
ZGluYXRlcyBhcmUgYWxyZWFkeSByb3RhdGVkIGJ5IDI3MCBkZWdyZWVzIGZvcgotCSAqIHRoZSA5
MC8yNzAgZGVncmVlIHBsYW5lIHJvdGF0aW9uIGNhc2VzICh0byBtYXRjaCB0aGUKLQkgKiBHVFQg
bWFwcGluZyksIGhlbmNlIG5vIG5lZWQgdG8gYWNjb3VudCBmb3Igcm90YXRpb24gaGVyZS4KLQkg
Ki8KLQl3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2
OwotCWhlaWdodCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAx
NjsKLQotCS8qIFVWIHBsYW5lIGRvZXMgMS8yIHBpeGVsIHN1Yi1zYW1wbGluZyAqLwotCWlmIChj
b2xvcl9wbGFuZSA9PSAxKSB7Ci0JCXdpZHRoIC89IDI7Ci0JCWhlaWdodCAvPSAyOwotCX0KLQot
CWRhdGFfcmF0ZSA9IHdpZHRoICogaGVpZ2h0OwotCi0JZG93bl9zY2FsZV9hbW91bnQgPSBza2xf
cGxhbmVfZG93bnNjYWxlX2Ftb3VudChjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7Ci0KLQlyYXRl
ID0gbXVsX3JvdW5kX3VwX3UzMl9maXhlZDE2KGRhdGFfcmF0ZSwgZG93bl9zY2FsZV9hbW91bnQp
OwotCi0JcmF0ZSAqPSBmYi0+Zm9ybWF0LT5jcHBbY29sb3JfcGxhbmVdOwotCXJldHVybiByYXRl
OwotfQotCi1zdGF0aWMgdTY0Ci1za2xfZ2V0X3RvdGFsX3JlbGF0aXZlX2RhdGFfcmF0ZShzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKLQkJCQkgc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCi17Ci0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQotCQlpbnRlbF9h
dG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKLQljb25zdCBzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7
Ci0JdTY0IHRvdGFsX2RhdGFfcmF0ZSA9IDA7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0
b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAllbnVtIHBsYW5lX2lkIHBs
YW5lX2lkOwotCWludCBpOwotCi0JLyogQ2FsY3VsYXRlIGFuZCBjYWNoZSBkYXRhIHJhdGUgZm9y
IGVhY2ggcGxhbmUgKi8KLQlmb3JfZWFjaF9uZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3RhdGUs
IHBsYW5lLCBwbGFuZV9zdGF0ZSwgaSkgewotCQlpZiAocGxhbmUtPnBpcGUgIT0gY3J0Yy0+cGlw
ZSkKLQkJCWNvbnRpbnVlOwotCi0JCXBsYW5lX2lkID0gcGxhbmUtPmlkOwotCi0JCS8qIHBhY2tl
ZC95ICovCi0JCWNydGNfc3RhdGUtPnBsYW5lX2RhdGFfcmF0ZVtwbGFuZV9pZF0gPQotCQkJc2ts
X3BsYW5lX3JlbGF0aXZlX2RhdGFfcmF0ZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwgMCk7Ci0K
LQkJLyogdXYtcGxhbmUgKi8KLQkJY3J0Y19zdGF0ZS0+dXZfcGxhbmVfZGF0YV9yYXRlW3BsYW5l
X2lkXSA9Ci0JCQlza2xfcGxhbmVfcmVsYXRpdmVfZGF0YV9yYXRlKGNydGNfc3RhdGUsIHBsYW5l
X3N0YXRlLCAxKTsKLQl9CisJdTY0IGRhdGFfcmF0ZSA9IDA7CiAKIAlmb3JfZWFjaF9wbGFuZV9p
ZF9vbl9jcnRjKGNydGMsIHBsYW5lX2lkKSB7Ci0JCXRvdGFsX2RhdGFfcmF0ZSArPSBjcnRjX3N0
YXRlLT5wbGFuZV9kYXRhX3JhdGVbcGxhbmVfaWRdOwotCQl0b3RhbF9kYXRhX3JhdGUgKz0gY3J0
Y19zdGF0ZS0+dXZfcGxhbmVfZGF0YV9yYXRlW3BsYW5lX2lkXTsKLQl9Ci0KLQlyZXR1cm4gdG90
YWxfZGF0YV9yYXRlOwotfQotCi1zdGF0aWMgdTY0Ci1pY2xfZ2V0X3RvdGFsX3JlbGF0aXZlX2Rh
dGFfcmF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKLQkJCQkgc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpCi17Ci0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUg
PQotCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKLQljb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmU7Ci0JdTY0IHRvdGFsX2RhdGFfcmF0ZSA9IDA7Ci0JZW51bSBwbGFuZV9pZCBw
bGFuZV9pZDsKLQlpbnQgaTsKLQotCS8qIENhbGN1bGF0ZSBhbmQgY2FjaGUgZGF0YSByYXRlIGZv
ciBlYWNoIHBsYW5lICovCi0JZm9yX2VhY2hfbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRl
LCBwbGFuZSwgcGxhbmVfc3RhdGUsIGkpIHsKLQkJaWYgKHBsYW5lLT5waXBlICE9IGNydGMtPnBp
cGUpCisJCWlmIChwbGFuZV9pZCA9PSBQTEFORV9DVVJTT1IpCiAJCQljb250aW51ZTsKIAotCQlw
bGFuZV9pZCA9IHBsYW5lLT5pZDsKKwkJZGF0YV9yYXRlICs9IGNydGNfc3RhdGUtPnJlbF9kYXRh
X3JhdGVbcGxhbmVfaWRdOwogCi0JCWlmICghcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxh
bmUpIHsKLQkJCWNydGNfc3RhdGUtPnBsYW5lX2RhdGFfcmF0ZVtwbGFuZV9pZF0gPQotCQkJCXNr
bF9wbGFuZV9yZWxhdGl2ZV9kYXRhX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUsIDApOwot
CQl9IGVsc2UgewotCQkJZW51bSBwbGFuZV9pZCB5X3BsYW5lX2lkOwotCi0JCQkvKgotCQkJICog
VGhlIHNsYXZlIHBsYW5lIG1pZ2h0IG5vdCBpdGVyYXRlIGluCi0JCQkgKiBpbnRlbF9hdG9taWNf
Y3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZSgpLAotCQkJICogYW5kIG5lZWRzIHRoZSBt
YXN0ZXIgcGxhbmUgc3RhdGUgd2hpY2ggbWF5IGJlCi0JCQkgKiBOVUxMIGlmIHdlIHRyeSBnZXRf
bmV3X3BsYW5lX3N0YXRlKCksIHNvIHdlCi0JCQkgKiBhbHdheXMgY2FsY3VsYXRlIGZyb20gdGhl
IG1hc3Rlci4KLQkJCSAqLwotCQkJaWYgKHBsYW5lX3N0YXRlLT5wbGFuYXJfc2xhdmUpCi0JCQkJ
Y29udGludWU7Ci0KLQkJCS8qIFkgcGxhbmUgcmF0ZSBpcyBjYWxjdWxhdGVkIG9uIHRoZSBzbGF2
ZSAqLwotCQkJeV9wbGFuZV9pZCA9IHBsYW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lLT5p
ZDsKLQkJCWNydGNfc3RhdGUtPnBsYW5lX2RhdGFfcmF0ZVt5X3BsYW5lX2lkXSA9Ci0JCQkJc2ts
X3BsYW5lX3JlbGF0aXZlX2RhdGFfcmF0ZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwgMCk7Ci0K
LQkJCWNydGNfc3RhdGUtPnBsYW5lX2RhdGFfcmF0ZVtwbGFuZV9pZF0gPQotCQkJCXNrbF9wbGFu
ZV9yZWxhdGl2ZV9kYXRhX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUsIDEpOwotCQl9CisJ
CWlmIChJTlRFTF9HRU4oaTkxNSkgPCAxMSkKKwkJCWRhdGFfcmF0ZSArPSBjcnRjX3N0YXRlLT5y
ZWxfZGF0YV9yYXRlX3lbcGxhbmVfaWRdOwogCX0KIAotCWZvcl9lYWNoX3BsYW5lX2lkX29uX2Ny
dGMoY3J0YywgcGxhbmVfaWQpCi0JCXRvdGFsX2RhdGFfcmF0ZSArPSBjcnRjX3N0YXRlLT5wbGFu
ZV9kYXRhX3JhdGVbcGxhbmVfaWRdOwotCi0JcmV0dXJuIHRvdGFsX2RhdGFfcmF0ZTsKKwlyZXR1
cm4gZGF0YV9yYXRlOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqCkBA
IC00ODU3LDExICs0Njk2LDYgQEAgc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAogCQlyZXR1cm4gMDsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSkKLQkJaXRlci5kYXRhX3JhdGUgPSBpY2xfZ2V0X3RvdGFsX3JlbGF0aXZl
X2RhdGFfcmF0ZShzdGF0ZSwgY3J0Yyk7Ci0JZWxzZQotCQlpdGVyLmRhdGFfcmF0ZSA9IHNrbF9n
ZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9yYXRlKHN0YXRlLCBjcnRjKTsKLQogCXJldCA9IHNrbF9k
ZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoZGV2X3ByaXYsIGNydGNfc3RhdGUsCiAJCQkJ
CQkgYWxsb2MsICZudW1fYWN0aXZlKTsKIAlpZiAocmV0KQpAQCAtNDg3Nyw2ICs0NzExLDcgQEAg
c2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CXNrbF9kZGJfZW50cnlfaW5pdCgmY3J0Y19zdGF0ZS0+d20uc2tsLnBsYW5lX2RkYltQTEFORV9D
VVJTT1JdLAogCQkJICAgYWxsb2MtPmVuZCAtIGl0ZXIudG90YWxbUExBTkVfQ1VSU09SXSwgYWxs
b2MtPmVuZCk7CiAKKwlpdGVyLmRhdGFfcmF0ZSA9IHNrbF90b3RhbF9yZWxhdGl2ZV9kYXRhX3Jh
dGUoY3J0Y19zdGF0ZSk7CiAJaWYgKGl0ZXIuZGF0YV9yYXRlID09IDApCiAJCXJldHVybiAwOwog
CkBAIC00OTM3LDE2ICs0NzcyLDE5IEBAIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJaWYgKGl0ZXIuZGF0YV9yYXRlID09IDApCiAJCQli
cmVhazsKIAotCQlpdGVyLnRvdGFsW3BsYW5lX2lkXSA9Ci0JCQlza2xfYWxsb2NhdGVfcGxhbmVf
ZGRiKCZpdGVyLCAmd20tPndtW2xldmVsXSwKLQkJCQkJICAgICAgIGNydGNfc3RhdGUtPnBsYW5l
X2RhdGFfcmF0ZVtwbGFuZV9pZF0pOwotCi0JCWlmIChpdGVyLmRhdGFfcmF0ZSA9PSAwKQotCQkJ
YnJlYWs7Ci0KLQkJaXRlci51dl90b3RhbFtwbGFuZV9pZF0gPQotCQkJc2tsX2FsbG9jYXRlX3Bs
YW5lX2RkYigmaXRlciwgJndtLT51dl93bVtsZXZlbF0sCi0JCQkJCSAgICAgICBjcnRjX3N0YXRl
LT51dl9wbGFuZV9kYXRhX3JhdGVbcGxhbmVfaWRdKTsKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPCAxMSAmJgorCQkgICAgY3J0Y19zdGF0ZS0+bnYxMl9wbGFuZXMgJiBCSVQocGxhbmVfaWQp
KSB7CisJCQlpdGVyLnRvdGFsW3BsYW5lX2lkXSA9CisJCQkJc2tsX2FsbG9jYXRlX3BsYW5lX2Rk
YigmaXRlciwgJndtLT53bVtsZXZlbF0sCisJCQkJCQkgICAgICAgY3J0Y19zdGF0ZS0+cmVsX2Rh
dGFfcmF0ZV95W3BsYW5lX2lkXSk7CisJCQlpdGVyLnV2X3RvdGFsW3BsYW5lX2lkXSA9CisJCQkJ
c2tsX2FsbG9jYXRlX3BsYW5lX2RkYigmaXRlciwgJndtLT51dl93bVtsZXZlbF0sCisJCQkJCQkg
ICAgICAgY3J0Y19zdGF0ZS0+cmVsX2RhdGFfcmF0ZVtwbGFuZV9pZF0pOworCQl9IGVsc2Ugewor
CQkJaXRlci50b3RhbFtwbGFuZV9pZF0gPQorCQkJCXNrbF9hbGxvY2F0ZV9wbGFuZV9kZGIoJml0
ZXIsICZ3bS0+d21bbGV2ZWxdLAorCQkJCQkJICAgICAgIGNydGNfc3RhdGUtPnJlbF9kYXRhX3Jh
dGVbcGxhbmVfaWRdKTsKKwkJfQogCX0KIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaXRl
ci5zaXplICE9IDAgfHwgaXRlci5kYXRhX3JhdGUgIT0gMCk7CiAKQEAgLTQ5NjYsMTUgKzQ4MDQs
MTggQEAgc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLAogCQkJICAgIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgaXRlci51dl90b3RhbFtw
bGFuZV9pZF0pOwogCiAJCS8qIExlYXZlIGRpc2FibGVkIHBsYW5lcyBhdCAoMCwwKSAqLwotCQlp
ZiAoaXRlci50b3RhbFtwbGFuZV9pZF0pCi0JCQlpdGVyLnN0YXJ0ID0gc2tsX2RkYl9lbnRyeV9p
bml0KGRkYiwgaXRlci5zdGFydCwKLQkJCQkJCQlpdGVyLnN0YXJ0ICsgaXRlci50b3RhbFtwbGFu
ZV9pZF0pOwotCi0JCWlmIChpdGVyLnV2X3RvdGFsW3BsYW5lX2lkXSkgewotCQkJLyogaGFyZHdh
cmUgd2FudHMgdGhlc2Ugc3dhcHBlZCAqLwotCQkJKmRkYl95ID0gKmRkYjsKLQkJCWl0ZXIuc3Rh
cnQgPSBza2xfZGRiX2VudHJ5X2luaXQoZGRiLCBpdGVyLnN0YXJ0LAotCQkJCQkJCWl0ZXIuc3Rh
cnQgKyBpdGVyLnV2X3RvdGFsW3BsYW5lX2lkXSk7CisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
IDwgMTEgJiYKKwkJICAgIGNydGNfc3RhdGUtPm52MTJfcGxhbmVzICYgQklUKHBsYW5lX2lkKSkg
eworCQkJaWYgKGl0ZXIudG90YWxbcGxhbmVfaWRdKQorCQkJCWl0ZXIuc3RhcnQgPSBza2xfZGRi
X2VudHJ5X2luaXQoZGRiX3ksIGl0ZXIuc3RhcnQsCisJCQkJCQkJCWl0ZXIuc3RhcnQgKyBpdGVy
LnRvdGFsW3BsYW5lX2lkXSk7CisJCQlpZiAoaXRlci51dl90b3RhbFtwbGFuZV9pZF0pCisJCQkJ
aXRlci5zdGFydCA9IHNrbF9kZGJfZW50cnlfaW5pdChkZGIsIGl0ZXIuc3RhcnQsCisJCQkJCQkJ
CWl0ZXIuc3RhcnQgKyBpdGVyLnV2X3RvdGFsW3BsYW5lX2lkXSk7CisJCX0gZWxzZSB7CisJCQlp
ZiAoaXRlci50b3RhbFtwbGFuZV9pZF0pCisJCQkJaXRlci5zdGFydCA9IHNrbF9kZGJfZW50cnlf
aW5pdChkZGIsIGl0ZXIuc3RhcnQsCisJCQkJCQkJCWl0ZXIuc3RhcnQgKyBpdGVyLnRvdGFsW3Bs
YW5lX2lkXSk7CiAJCX0KIAl9CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
