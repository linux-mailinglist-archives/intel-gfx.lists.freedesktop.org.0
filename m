Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AF3EC8FE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 20:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30576E2B6;
	Fri,  1 Nov 2019 19:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4BD6E2B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 19:21:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19052209-1500050 
 for multiple; Fri, 01 Nov 2019 19:21:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 19:21:16 +0000
Message-Id: <20191101192116.12647-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
In-Reply-To: <20191101181820.12932-1-chris@chris-wilson.co.uk>
References: <20191101181820.12932-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/perf: Reverse a ternary to make
 sparse happy
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

QXZvaWQKCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjI0NDI6ODU6IHdhcm5pbmc6
IGR1YmlvdXM6IHggfCAheQoKc2ltcGx5IGJ5IGludmVydGluZyB0aGUgcHJlZGljYXRlIGFuZCBy
ZXZlcnNpbmcgdGhlIHRlcm5hcnkuCgp2MjogTW9yZSB0aGUgbG9uZyBsaW5lcyBpbnRvIHRoZWly
IG93biBmdW5jdGlvbiBzbyB0aGVyZSBpcyBubyBjb25mdXNpb24Kb24gb3BlcmF0b3IgcHJlY2Vk
ZW5jZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpDYzogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50
ZWwuY29tPgpDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMTUgKysrKysrKysr
Ky0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IGE4YzIzMThkM2Q1ZS4uMWZkNmJhYzhhNGZl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMjQyOCw2ICsyNDI4LDEzIEBAIHN0YXRp
YyBpbnQgZ2VuOF9lbmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3Ry
ZWFtKQogCXJldHVybiBlbWl0X29hX2NvbmZpZyhzdHJlYW0sIG9hX2NvbmZpZywgb2FfY29udGV4
dChzdHJlYW0pKTsKIH0KIAorc3RhdGljIHUzMiByZXBvcnRfY3R4X3N3aXRjaGVzKGNvbnN0IHN0
cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCit7CisJcmV0dXJuIF9NQVNLRURfRklFTEQo
R0VOMTJfT0FHX09BX0RFQlVHX0RJU0FCTEVfQ1RYX1NXSVRDSF9SRVBPUlRTLAorCQkJICAgICAo
c3RyZWFtLT5zYW1wbGVfZmxhZ3MgJiBTQU1QTEVfT0FfUkVQT1JUKSA/CisJCQkgICAgIDAgOiBH
RU4xMl9PQUdfT0FfREVCVUdfRElTQUJMRV9DVFhfU1dJVENIX1JFUE9SVFMpOworfQorCiBzdGF0
aWMgaW50IGdlbjEyX2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpz
dHJlYW0pCiB7CiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gc3RyZWFtLT51bmNvcmU7
CkBAIC0yNDQxLDEyICsyNDQ4LDEwIEBAIHN0YXRpYyBpbnQgZ2VuMTJfZW5hYmxlX21ldHJpY19z
ZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIAkJCSAgIF9NQVNLRURfQklUX0VO
QUJMRShHRU4xMl9PQUdfT0FfREVCVUdfRElTQUJMRV9DTEtfUkFUSU9fUkVQT1JUUyB8CiAJCQkJ
CSAgICAgIEdFTjEyX09BR19PQV9ERUJVR19JTkNMVURFX0NMS19SQVRJTykgfAogCQkJICAgLyoK
LQkJCSAgICAqIElmIHRoZSB1c2VyIGRpZG4ndCByZXF1aXJlIE9BIHJlcG9ydHMsIGluc3RydWN0
IHRoZQotCQkJICAgICogaGFyZHdhcmUgbm90IHRvIGVtaXQgY3R4IHN3aXRjaCByZXBvcnRzLgor
CQkJICAgICogSWYgdGhlIHVzZXIgZGlkbid0IHJlcXVpcmUgT0EgcmVwb3J0cywgaW5zdHJ1Y3QK
KwkJCSAgICAqIHRoZSBoYXJkd2FyZSBub3QgdG8gZW1pdCBjdHggc3dpdGNoIHJlcG9ydHMuCiAJ
CQkgICAgKi8KLQkJCSAgICEoc3RyZWFtLT5zYW1wbGVfZmxhZ3MgJiBTQU1QTEVfT0FfUkVQT1JU
KSA/Ci0JCQkgICBfTUFTS0VEX0JJVF9FTkFCTEUoR0VOMTJfT0FHX09BX0RFQlVHX0RJU0FCTEVf
Q1RYX1NXSVRDSF9SRVBPUlRTKSA6Ci0JCQkgICBfTUFTS0VEX0JJVF9ESVNBQkxFKEdFTjEyX09B
R19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUykpOworCQkJICAgcmVwb3J0X2N0
eF9zd2l0Y2hlcyhzdHJlYW0pKTsKIAogCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjEy
X09BR19PQUdMQkNUWENUUkwsIHBlcmlvZGljID8KIAkJCSAgIChHRU4xMl9PQUdfT0FHTEJDVFhD
VFJMX0NPVU5URVJfUkVTVU1FIHwKLS0gCjIuMjQuMC5yYzIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
