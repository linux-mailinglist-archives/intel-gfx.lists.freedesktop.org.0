Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F99389CD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C75D89B69;
	Fri,  7 Jun 2019 12:08:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C015089B69
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:44 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:28 +0100
Message-Id: <20190607120838.20514-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 02/12] drm/i915: Convert i915_reg_read_ioctl to
 use explicit mmio accessors
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk5vIGV4Y3Vz
ZSBmb3IgY29kZSBsb2NhdGVkIGluIGludGVsX3VuY29yZS5jIHRvIG5vdCB1c2UgaW50ZWxfdW5j
b3JlXwpoZWxwZXJzLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMjMgKysr
KysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Vu
Y29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKaW5kZXggZjc4NjY4
MTIzZjAyLi44NTE3MWE4Yjg2NmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCkBA
IC0xNjcyLDcgKzE2NzIsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ193aGl0ZWxpc3Qgewog
aW50IGk5MTVfcmVnX3JlYWRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCXZvaWQg
KmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGRldik7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUt
PnVuY29yZTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcmVnX3JlYWQgKnJlZyA9IGRhdGE7CiAJc3RydWN0
IHJlZ193aGl0ZWxpc3QgY29uc3QgKmVudHJ5OwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwpA
QCAtMTY4OSw3ICsxNjkwLDcgQEAgaW50IGk5MTVfcmVnX3JlYWRfaW9jdGwoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwKIAkJR0VNX0JVR19PTihlbnRyeS0+c2l6ZSA+IDgpOwogCQlHRU1fQlVHX09O
KGVudHJ5X29mZnNldCAmIChlbnRyeS0+c2l6ZSAtIDEpKTsKIAotCQlpZiAoSU5URUxfSU5GTyhk
ZXZfcHJpdiktPmdlbl9tYXNrICYgZW50cnktPmdlbl9tYXNrICYmCisJCWlmIChJTlRFTF9JTkZP
KGk5MTUpLT5nZW5fbWFzayAmIGVudHJ5LT5nZW5fbWFzayAmJgogCQkgICAgZW50cnlfb2Zmc2V0
ID09IChyZWctPm9mZnNldCAmIC1lbnRyeS0+c2l6ZSkpCiAJCQlicmVhazsKIAkJZW50cnkrKzsK
QEAgLTE3MDEsMTggKzE3MDIsMjIgQEAgaW50IGk5MTVfcmVnX3JlYWRfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKIAogCWZsYWdzID0gcmVnLT5vZmZzZXQgJiAoZW50cnktPnNpemUgLSAx
KTsKIAotCXdpdGhfaW50ZWxfcnVudGltZV9wbShkZXZfcHJpdiwgd2FrZXJlZikgeworCXdpdGhf
aW50ZWxfcnVudGltZV9wbShpOTE1LCB3YWtlcmVmKSB7CiAJCWlmIChlbnRyeS0+c2l6ZSA9PSA4
ICYmIGZsYWdzID09IEk5MTVfUkVHX1JFQURfOEJfV0EpCi0JCQlyZWctPnZhbCA9IEk5MTVfUkVB
RDY0XzJ4MzIoZW50cnktPm9mZnNldF9sZHcsCi0JCQkJCQkgICAgZW50cnktPm9mZnNldF91ZHcp
OworCQkJcmVnLT52YWwgPSBpbnRlbF91bmNvcmVfcmVhZDY0XzJ4MzIodW5jb3JlLAorCQkJCQkJ
CSAgICBlbnRyeS0+b2Zmc2V0X2xkdywKKwkJCQkJCQkgICAgZW50cnktPm9mZnNldF91ZHcpOwog
CQllbHNlIGlmIChlbnRyeS0+c2l6ZSA9PSA4ICYmIGZsYWdzID09IDApCi0JCQlyZWctPnZhbCA9
IEk5MTVfUkVBRDY0KGVudHJ5LT5vZmZzZXRfbGR3KTsKKwkJCXJlZy0+dmFsID0gaW50ZWxfdW5j
b3JlX3JlYWQ2NCh1bmNvcmUsCisJCQkJCQkgICAgICAgZW50cnktPm9mZnNldF9sZHcpOwogCQll
bHNlIGlmIChlbnRyeS0+c2l6ZSA9PSA0ICYmIGZsYWdzID09IDApCi0JCQlyZWctPnZhbCA9IEk5
MTVfUkVBRChlbnRyeS0+b2Zmc2V0X2xkdyk7CisJCQlyZWctPnZhbCA9IGludGVsX3VuY29yZV9y
ZWFkKHVuY29yZSwgZW50cnktPm9mZnNldF9sZHcpOwogCQllbHNlIGlmIChlbnRyeS0+c2l6ZSA9
PSAyICYmIGZsYWdzID09IDApCi0JCQlyZWctPnZhbCA9IEk5MTVfUkVBRDE2KGVudHJ5LT5vZmZz
ZXRfbGR3KTsKKwkJCXJlZy0+dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNvcmUsCisJCQkJ
CQkgICAgICAgZW50cnktPm9mZnNldF9sZHcpOwogCQllbHNlIGlmIChlbnRyeS0+c2l6ZSA9PSAx
ICYmIGZsYWdzID09IDApCi0JCQlyZWctPnZhbCA9IEk5MTVfUkVBRDgoZW50cnktPm9mZnNldF9s
ZHcpOworCQkJcmVnLT52YWwgPSBpbnRlbF91bmNvcmVfcmVhZDgodW5jb3JlLAorCQkJCQkJICAg
ICAgZW50cnktPm9mZnNldF9sZHcpOwogCQllbHNlCiAJCQlyZXQgPSAtRUlOVkFMOwogCX0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
