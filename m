Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F24CAE50B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 10:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE20A6E85F;
	Tue, 10 Sep 2019 08:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 927A76E85F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 08:02:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18434014-1500050 
 for multiple; Tue, 10 Sep 2019 09:02:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 09:02:08 +0100
Message-Id: <20190910080208.4223-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190910075738.26919-1-chris@chris-wilson.co.uk>
References: <20190910075738.26919-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/execlists: Clear STOP_RING bit on
 reset
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

RHVyaW5nIHJlc2V0LCB3ZSB0cnkgdG8gZW5zdXJlIG5vIGZvcndhcmQgcHJvZ3Jlc3Mgb2YgdGhl
IENTIHByaW9yIHRvCnRoZSByZXNldCBieSBzZXR0aW5nIHRoZSBTVE9QX1JJTkcgYml0IGluIFJJ
TkdfTUlfTU9ERS4gU2luY2UgZ2VuOSwgdGhpcwpyZWdpc3RlciBpcyBjb250ZXh0IHNhdmVkIGFu
ZCBkbyB3ZSBlbmQgdXAgaW4gdGhlIG9kZCBzaXR1YXRpb24gd2hlcmUgd2UKc2F2ZSB0aGUgU1RP
UF9SSU5HIGJpdCBhbmQgc28gdHJ5IHRvIHN0b3AgdGhlIGVuZ2luZSBhZ2FpbiBpbW1lZGlhdGVs
eQp1cG9uIHJlc3VtZS4gVGhpcyBpcyBxdWl0ZSB1bmV4cGVjdGVkIGFuZCBjYXVzZXMgdXMgdG8g
Y29tcGxhaW4gYWJvdXQgYW4KZWFybHkgQ1MgY29tcGxldGlvbiBldmVudCEKCkJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1MTQKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgfCAxMiArKysrKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaCB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGYw
NzNhZWE2YTFmZS4uNjQxNzBjZTBjOTFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwpAQCAtMjM2OCw2ICsyMzY4LDE3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICphY3Rp
dmVfcmVxdWVzdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlyZXR1cm4gYWN0aXZlOwogfQog
CitzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldF9yZWdfc3RhdGUoY29uc3Qgc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLAorCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCit7CisJdTMyICpyZWdzID0gY2UtPmxyY19yZWdfc3RhdGU7CisKKwlpZiAoSU5URUxfR0VO
KGVuZ2luZS0+aTkxNSkgPj0gOSkgeworCQlyZWdzW0dFTjlfQ1RYX1JJTkdfTUlfTU9ERSArIDFd
ICY9IH5TVE9QX1JJTkc7CisJCXJlZ3NbR0VOOV9DVFhfUklOR19NSV9NT0RFICsgMV0gfD0gU1RP
UF9SSU5HIDw8IDE2OworCX0KK30KKwogc3RhdGljIHZvaWQgX19leGVjbGlzdHNfcmVzZXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29sIHN0YWxsZWQpCiB7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBleGVjbGlzdHMgPSAmZW5naW5lLT5leGVjbGlz
dHM7CkBAIC0yNDU1LDYgKzI0NjYsNyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAlHRU1fVFJBQ0Uo
IiVzIHJlcGxheSB7aGVhZDolMDR4LCB0YWlsOiUwNHhcbiIsCiAJCSAgZW5naW5lLT5uYW1lLCBj
ZS0+cmluZy0+aGVhZCwgY2UtPnJpbmctPnRhaWwpOwogCWludGVsX3JpbmdfdXBkYXRlX3NwYWNl
KGNlLT5yaW5nKTsKKwlfX2V4ZWNsaXN0c19yZXNldF9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7CiAJ
X19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKIAltdXRleF9yZWxlYXNl
KCZjZS0+cGluX211dGV4LmRlcF9tYXAsIDAsIF9USElTX0lQXyk7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyY19yZWcuaAppbmRleCA2OGNhZjg1NDE4NjYuLjdlNzczZTc0YTNmZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3JlZy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaApAQCAtMzksNiArMzksOCBA
QAogI2RlZmluZSBDVFhfUl9QV1JfQ0xLX1NUQVRFCQkweDQyCiAjZGVmaW5lIENUWF9FTkQJCQkJ
MHg0NAogCisjZGVmaW5lIEdFTjlfQ1RYX1JJTkdfTUlfTU9ERQkJMHg1NAorCiAvKiBHRU4xMisg
UmVnIFN0YXRlIENvbnRleHQgKi8KICNkZWZpbmUgR0VOMTJfQ1RYX0JCX1BFUl9DVFhfUFRSCQkw
eDEyCiAjZGVmaW5lIEdFTjEyX0NUWF9MUklfSEVBREVSXzMJCQkweDQxCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
