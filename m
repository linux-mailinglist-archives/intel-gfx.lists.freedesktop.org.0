Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC71B21AD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 16:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F016F3C7;
	Fri, 13 Sep 2019 14:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979D86F3C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 14:17:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 07:17:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="200969842"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2019 07:17:00 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 00607843D19; Fri, 13 Sep 2019 17:16:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 17:16:50 +0300
Message-Id: <20190913141652.27958-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Update Gen11 forcewake ranges
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGFuaWVsZSBub3RpY2VkIG5ldyByZW5kZXIgcmFuZ2VzIGluIEdlbjExIGZ3IHRhYmxlLgoKQnNw
ZWM6IDE4MzMxCkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUu
YyB8IDIzICsrKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCmlu
ZGV4IDllNTgzZjEzYTllNC4uNzMyMDgyYTcyMDIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91bmNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
bmNvcmUuYwpAQCAtODA1LDkgKzgwNSw2IEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZl
KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIC8qIFdlIGdpdmUgZmFzdCBwYXRocyBmb3Ig
dGhlIHJlYWxseSBjb29sIHJlZ2lzdGVycyAqLwogI2RlZmluZSBORUVEU19GT1JDRV9XQUtFKHJl
ZykgKChyZWcpIDwgMHg0MDAwMCkKIAotI2RlZmluZSBHRU4xMV9ORUVEU19GT1JDRV9XQUtFKHJl
ZykgXAotCSgocmVnKSA8IDB4NDAwMDAgfHwgKChyZWcpID49IDB4MWMwMDAwICYmIChyZWcpIDwg
MHgxZGMwMDApKQotCiAjZGVmaW5lIF9fZ2VuNl9yZWdfcmVhZF9md19kb21haW5zKHVuY29yZSwg
b2Zmc2V0KSBcCiAoeyBcCiAJZW51bSBmb3JjZXdha2VfZG9tYWlucyBfX2Z3ZDsgXApAQCAtOTAz
LDEyICs5MDAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2ZvcmNld2FrZV9yYW5nZSBf
X3Zsdl9md19yYW5nZXNbXSA9IHsKIH0pCiAKICNkZWZpbmUgX19nZW4xMV9md3RhYmxlX3JlZ19y
ZWFkX2Z3X2RvbWFpbnModW5jb3JlLCBvZmZzZXQpIFwKLSh7IFwKLQllbnVtIGZvcmNld2FrZV9k
b21haW5zIF9fZndkID0gMDsgXAotCWlmIChHRU4xMV9ORUVEU19GT1JDRV9XQUtFKChvZmZzZXQp
KSkgXAotCQlfX2Z3ZCA9IGZpbmRfZndfZG9tYWluKHVuY29yZSwgb2Zmc2V0KTsgXAotCV9fZndk
OyBcCi19KQorCWZpbmRfZndfZG9tYWluKHVuY29yZSwgb2Zmc2V0KQogCiAvKiAqTXVzdCogYmUg
c29ydGVkIGJ5IG9mZnNldCEgU2VlIGludGVsX3NoYWRvd190YWJsZV9jaGVjaygpLiAqLwogc3Rh
dGljIGNvbnN0IGk5MTVfcmVnX3QgZ2VuOF9zaGFkb3dlZF9yZWdzW10gPSB7CkBAIC0xMDA1LDgg
Kzk5Nyw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZm9yY2V3YWtlX3JhbmdlIF9fY2h2
X2Z3X3Jhbmdlc1tdID0gewogI2RlZmluZSBfX2dlbjExX2Z3dGFibGVfcmVnX3dyaXRlX2Z3X2Rv
bWFpbnModW5jb3JlLCBvZmZzZXQpIFwKICh7IFwKIAllbnVtIGZvcmNld2FrZV9kb21haW5zIF9f
ZndkID0gMDsgXAotCWlmIChHRU4xMV9ORUVEU19GT1JDRV9XQUtFKChvZmZzZXQpKSAmJiAhaXNf
Z2VuMTFfc2hhZG93ZWQob2Zmc2V0KSkgXAotCQlfX2Z3ZCA9IGZpbmRfZndfZG9tYWluKHVuY29y
ZSwgb2Zmc2V0KTsgXAorCWNvbnN0IHUzMiBfX29mZnNldCA9IChvZmZzZXQpOyBcCisJaWYgKCFp
c19nZW4xMV9zaGFkb3dlZChfX29mZnNldCkpIFwKKwkJX19md2QgPSBmaW5kX2Z3X2RvbWFpbih1
bmNvcmUsIF9fb2Zmc2V0KTsgXAogCV9fZndkOyBcCiB9KQogCkBAIC0xMDY1LDkgKzEwNTgsMTEg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9mb3JjZXdha2VfcmFuZ2UgX19nZW4xMV9md19y
YW5nZXNbXSA9IHsKIAlHRU5fRldfUkFOR0UoMHg5NDAwLCAweDk3ZmYsIEZPUkNFV0FLRV9BTEwp
LAogCUdFTl9GV19SQU5HRSgweDk4MDAsIDB4YWZmZiwgRk9SQ0VXQUtFX0JMSVRURVIpLAogCUdF
Tl9GV19SQU5HRSgweGIwMDAsIDB4YjQ3ZiwgRk9SQ0VXQUtFX1JFTkRFUiksCi0JR0VOX0ZXX1JB
TkdFKDB4YjQ4MCwgMHhkZmZmLCBGT1JDRVdBS0VfQkxJVFRFUiksCi0JR0VOX0ZXX1JBTkdFKDB4
ZTAwMCwgMHhlOGZmLCBGT1JDRVdBS0VfUkVOREVSKSwKLQlHRU5fRldfUkFOR0UoMHhlOTAwLCAw
eDI0M2ZmLCBGT1JDRVdBS0VfQkxJVFRFUiksCisJR0VOX0ZXX1JBTkdFKDB4YjQ4MCwgMHhkZWZm
LCBGT1JDRVdBS0VfQkxJVFRFUiksCisJR0VOX0ZXX1JBTkdFKDB4ZGYwMCwgMHhlOGZmLCBGT1JD
RVdBS0VfUkVOREVSKSwKKwlHRU5fRldfUkFOR0UoMHhlOTAwLCAweDE2ZGZmLCBGT1JDRVdBS0Vf
QkxJVFRFUiksCisJR0VOX0ZXX1JBTkdFKDB4MTZlMDAsIDB4MTlmZmYsIEZPUkNFV0FLRV9SRU5E
RVIpLAorCUdFTl9GV19SQU5HRSgweDFhMDAwLCAweDI0M2ZmLCBGT1JDRVdBS0VfQkxJVFRFUiks
CiAJR0VOX0ZXX1JBTkdFKDB4MjQ0MDAsIDB4MjQ3ZmYsIEZPUkNFV0FLRV9SRU5ERVIpLAogCUdF
Tl9GV19SQU5HRSgweDI0ODAwLCAweDNmZmZmLCBGT1JDRVdBS0VfQkxJVFRFUiksCiAJR0VOX0ZX
X1JBTkdFKDB4NDAwMDAsIDB4MWJmZmZmLCAwKSwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
