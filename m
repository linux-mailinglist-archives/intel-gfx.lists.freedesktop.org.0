Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEC55CF82
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 14:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182DC89949;
	Tue,  2 Jul 2019 12:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7502489949
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 12:33:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17099507-1500050 
 for multiple; Tue, 02 Jul 2019 13:33:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 13:33:26 +0100
Message-Id: <20190702123326.11454-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Exploratory patch for
 fi-icl-dsi
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

aWNsLWRzaSBpcyBkeWluZyBvbiBzdXNwZW5kL3Jlc3VtZSBhdAoKCVJJUDogMDAxMDppY2xfdXBk
YXRlX2FjdGl2ZV9kcGxsKzB4MmMvMHhhMCBbaTkxNV0KCnNvIHRha2UgYSBndWVzcyB0aGF0IGl0
IGlzIHRoZSBwcmltYXJ5X3BvcnQgaXMgTlVMTC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDEzICsrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IDc2YTJjODc5ZWZjMi4uZjk1Mzk3MWU3
YzNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
CkBAIC0yODgzLDIxICsyODgzLDE2IEBAIHN0YXRpYyB2b2lkIGljbF91cGRhdGVfYWN0aXZlX2Rw
bGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUgPQogCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0
YXRlLCBjcnRjKTsKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpwcmltYXJ5X3BvcnQ7Ci0J
ZW51bSBpY2xfcG9ydF9kcGxsX2lkIHBvcnRfZHBsbF9pZDsKKwllbnVtIGljbF9wb3J0X2RwbGxf
aWQgcG9ydF9kcGxsX2lkID0gSUNMX1BPUlRfRFBMTF9ERUZBVUxUOwogCiAJcHJpbWFyeV9wb3J0
ID0gZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRfRFBfTVNUID8KIAkJZW5jX3RvX21zdCgm
ZW5jb2Rlci0+YmFzZSktPnByaW1hcnkgOgogCQllbmNfdG9fZGlnX3BvcnQoJmVuY29kZXItPmJh
c2UpOwogCi0Jc3dpdGNoIChwcmltYXJ5X3BvcnQtPnRjX21vZGUpIHsKLQljYXNlIFRDX1BPUlRf
VEJUX0FMVDoKLQkJcG9ydF9kcGxsX2lkID0gSUNMX1BPUlRfRFBMTF9ERUZBVUxUOwotCQlicmVh
azsKLQljYXNlIFRDX1BPUlRfRFBfQUxUOgotCWNhc2UgVENfUE9SVF9MRUdBQ1k6CisJaWYgKHBy
aW1hcnlfcG9ydCAmJgorCSAgICAocHJpbWFyeV9wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfRFBf
QUxUIHx8CisJICAgICBwcmltYXJ5X3BvcnQtPnRjX21vZGUgPT0gVENfUE9SVF9MRUdBQ1kpKQog
CQlwb3J0X2RwbGxfaWQgPSBJQ0xfUE9SVF9EUExMX01HX1BIWTsKLQkJYnJlYWs7Ci0JfQogCiAJ
aWNsX3NldF9hY3RpdmVfcG9ydF9kcGxsKGNydGNfc3RhdGUsIHBvcnRfZHBsbF9pZCk7CiB9Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
