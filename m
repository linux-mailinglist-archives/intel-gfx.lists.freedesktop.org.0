Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F272B68D7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4051489E8C;
	Tue, 17 Nov 2020 15:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A2FE89E8C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:40:32 +0000 (UTC)
IronPort-SDR: CVOcce28UNFCeE1LQ7ddvNdittLnk9iKTRN/Lq0lfyx+ilpbGV/e+CU+/V1VoRCnB+M1tmfO6L
 sD5COydlMK1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="157975203"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="157975203"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:40:31 -0800
IronPort-SDR: spQ2LOl2PRUkN+kfrikm3h6KSBlED7GOG0aYZ9NzTflhTQTfHOXGK5rBDu/p4CWLWTo2+X0IRR
 jDLLOFvzdyiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="340934235"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 Nov 2020 07:40:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Nov 2020 17:40:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 17:40:28 +0200
Message-Id: <20201117154028.8516-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the DDI encoder names
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
dG90YWxseSBmdW1ibGVkIHRoZSA/OiB1c2FnZSB3aGVuIGdlbmVyYXRpbmcgdGhlIERESSBlbmNv
ZGVyCm5hbWVzLiBSZXZlcnNlIHRoZSB0aGluZ3MgdGhhdCBuZWVkIHJldmVyc2luZywgYW5kIHRv
IG1ha2UgaXQKYSBiaXQgbGVzcyBtZXNzeSBhZGQgYSBmZXcgbWFjcm9zIHRvIGhpZGUgdGhlIGFy
aXRobWV0aWMgb24gdGhlCnBvcnQgZW51bXMuCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGxpbnV4LmludGVsLmNvbT4KRml4ZXM6IDJkNzA5YTVhNjI0YyAoImRybS9pOTE1OiBHaXZlIERE
SSBlbmNvZGVycyBldmVuIGJldHRlciBuYW1lcyIpClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IDlkODBlNDdlOTU1OC4uMmRlMmM2OWRiN2YyIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTUyOTUsNiArNTI5NSw5IEBA
IHN0YXRpYyBlbnVtIGhwZF9waW4gY25sX2hwZF9waW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCXJldHVybiBIUERfUE9SVF9BICsgcG9ydCAtIFBPUlRfQTsKIH0KIAorI2Rl
ZmluZSBwb3J0X3RjX25hbWUocG9ydCkgKChwb3J0KSAtIFBPUlRfVEMxICsgJzEnKQorI2RlZmlu
ZSB0Y19wb3J0X25hbWUodGNfcG9ydCkgKCh0Y19wb3J0KSAtIFRDX1BPUlRfMSArICcxJykKKwog
dm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVu
dW0gcG9ydCBwb3J0KQogewogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0OwpA
QCAtNTM1MCw5ICs1MzUzLDkgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQogCQkJCSBEUk1fTU9ERV9FTkNPREVS
X1RNRFMsCiAJCQkJICJEREkgJXMlYy9QSFkgJXMlYyIsCiAJCQkJIHBvcnQgPj0gUE9SVF9UQzEg
PyAiVEMiIDogIiIsCi0JCQkJIHBvcnQgPj0gUE9SVF9UQzEgPyBwb3J0X25hbWUocG9ydCkgOiBw
b3J0IC0gUE9SVF9UQzEgKyAnMScsCisJCQkJIHBvcnQgPj0gUE9SVF9UQzEgPyBwb3J0X3RjX25h
bWUocG9ydCkgOiBwb3J0X25hbWUocG9ydCksCiAJCQkJIHRjX3BvcnQgIT0gVENfUE9SVF9OT05F
ID8gIlRDIiA6ICIiLAotCQkJCSB0Y19wb3J0ICE9IFRDX1BPUlRfTk9ORSA/IHBoeV9uYW1lKHBo
eSkgOiB0Y19wb3J0IC0gVENfUE9SVF8xICsgJzEnKTsKKwkJCQkgdGNfcG9ydCAhPSBUQ19QT1JU
X05PTkUgPyB0Y19wb3J0X25hbWUodGNfcG9ydCkgOiBwaHlfbmFtZShwaHkpKTsKIAl9IGVsc2Ug
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKIAkJZW51bSB0Y19wb3J0IHRjX3BvcnQg
PSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0KTsKIApAQCAtNTM2Miw3ICs1MzY1LDcg
QEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGVudW0gcG9ydCBwb3J0KQogCQkJCSBwb3J0X25hbWUocG9ydCksCiAJCQkJIHBvcnQgPj0gUE9S
VF9DID8gIiAoVEMpIiA6ICIiLAogCQkJCSB0Y19wb3J0ICE9IFRDX1BPUlRfTk9ORSA/ICJUQyIg
OiAiIiwKLQkJCQkgdGNfcG9ydCAhPSBUQ19QT1JUX05PTkUgPyBwaHlfbmFtZShwaHkpIDogdGNf
cG9ydCAtIFRDX1BPUlRfMSArICcxJyk7CisJCQkJIHRjX3BvcnQgIT0gVENfUE9SVF9OT05FID8g
dGNfcG9ydF9uYW1lKHRjX3BvcnQpIDogcGh5X25hbWUocGh5KSk7CiAJfSBlbHNlIHsKIAkJZHJt
X2VuY29kZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwgJmVuY29kZXItPmJhc2UsICZpbnRlbF9kZGlf
ZnVuY3MsCiAJCQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
