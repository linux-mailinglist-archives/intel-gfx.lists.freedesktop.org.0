Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 774BC3867A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 10:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4936F89C0A;
	Fri,  7 Jun 2019 08:45:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E88F889C0D
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 08:45:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 01:45:25 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga003.jf.intel.com with ESMTP; 07 Jun 2019 01:45:24 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 09:45:21 +0100
Message-Id: <20190607084521.16845-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607084521.16845-1-tvrtko.ursulin@linux.intel.com>
References: <20190607084521.16845-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Tidy intel_execlists_submission_init
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkdldCB0byB1
bmNvcmUgZnJvbSB0aGUgZW5naW5lIGZvciBiZXR0ZXIgbG9naWMgb3JnYW5pemF0aW9uIGFuZCB1
c2UKYWxyZWFkeSBhdmFpbGFibGUgaTkxNSBldmVyeXdoZXJlLgoKU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyB8IDExICsrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5k
ZXggZjI3YjZjMDAyNjI3Li40OTdhYzAzNmM0YTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCkBAIC0yNzM4LDggKzI3MzgsOSBAQCBpbnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Np
b25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiBpbnQgaW50ZWxfZXhl
Y2xpc3RzX3N1Ym1pc3Npb25faW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7
Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7CiAJc3RydWN0
IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBleGVjbGlzdHMgPSAmZW5naW5lLT5leGVj
bGlzdHM7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7CisJ
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZW5naW5lLT51bmNvcmU7CiAJdTMyIGJhc2Ug
PSBlbmdpbmUtPm1taW9fYmFzZTsKIAlpbnQgcmV0OwogCkBAIC0yNzU5LDEyICsyNzYwLDEyIEBA
IGludCBpbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbl9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIAkJRFJNX0VSUk9SKCJXQSBiYXRjaCBidWZmZXIgaW5pdGlhbGl6YXRpb24g
ZmFpbGVkXG4iKTsKIAogCWlmIChIQVNfTE9HSUNBTF9SSU5HX0VMU1EoaTkxNSkpIHsKLQkJZXhl
Y2xpc3RzLT5zdWJtaXRfcmVnID0gaTkxNS0+dW5jb3JlLnJlZ3MgKworCQlleGVjbGlzdHMtPnN1
Ym1pdF9yZWcgPSB1bmNvcmUtPnJlZ3MgKwogCQkJaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19F
WEVDTElTVF9TUV9DT05URU5UUyhiYXNlKSk7Ci0JCWV4ZWNsaXN0cy0+Y3RybF9yZWcgPSBpOTE1
LT51bmNvcmUucmVncyArCisJCWV4ZWNsaXN0cy0+Y3RybF9yZWcgPSB1bmNvcmUtPnJlZ3MgKwog
CQkJaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19FWEVDTElTVF9DT05UUk9MKGJhc2UpKTsKIAl9
IGVsc2UgewotCQlleGVjbGlzdHMtPnN1Ym1pdF9yZWcgPSBpOTE1LT51bmNvcmUucmVncyArCisJ
CWV4ZWNsaXN0cy0+c3VibWl0X3JlZyA9IHVuY29yZS0+cmVncyArCiAJCQlpOTE1X21taW9fcmVn
X29mZnNldChSSU5HX0VMU1AoYmFzZSkpOwogCX0KIApAQCAtMjc3OSw3ICsyNzgwLDcgQEAgaW50
IGludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogCWV4ZWNsaXN0cy0+Y3NiX3dyaXRlID0KIAkJJmVuZ2luZS0+c3RhdHVzX3BhZ2Uu
YWRkcltpbnRlbF9od3NfY3NiX3dyaXRlX2luZGV4KGk5MTUpXTsKIAotCWlmIChJTlRFTF9HRU4o
ZW5naW5lLT5pOTE1KSA8IDExKQorCWlmIChJTlRFTF9HRU4oaTkxNSkgPCAxMSkKIAkJZXhlY2xp
c3RzLT5jc2Jfc2l6ZSA9IEdFTjhfQ1NCX0VOVFJJRVM7CiAJZWxzZQogCQlleGVjbGlzdHMtPmNz
Yl9zaXplID0gR0VOMTFfQ1NCX0VOVFJJRVM7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
