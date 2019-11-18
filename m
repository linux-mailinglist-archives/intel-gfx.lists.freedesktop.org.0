Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B119100921
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF9589CA0;
	Mon, 18 Nov 2019 16:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1061C89CA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:24:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19244584-1500050 
 for multiple; Mon, 18 Nov 2019 16:23:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 16:23:42 +0000
Message-Id: <20191118162342.2452211-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Unlock engine-pm after queuing the
 kernel context switch
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

SW4gY29tbWl0IGE3OWNhNjU2YjY0OCAoImRybS9pOTE1OiBQdXNoIHRoZSB3YWtlcmVmLT5jb3Vu
dCBkZWZlcnJhbCB0bwp0aGUgYmFja2VuZCIpLCBJIGVycm9uZW91c2x5IGNvbmNsdWRlZCB0aGF0
IHdlIGxhc3QgbW9kaWZ5IHRoZSBlbmdpbmUKaW5zaWRlIF9faTkxNV9yZXF1ZXN0X2NvbW1pdCgp
IG1lYW5pbmcgdGhhdCB3ZSBjb3VsZCBlbmFibGUgY29uY3VycmVudApzdWJtaXNzaW9uIGZvciB1
c2Vyc3BhY2UgYXMgd2UgZW5xdWV1ZWQgdGhpcyByZXF1ZXN0LiBIb3dldmVyLCB0aGlzCmZhbGxz
IGludG8gYSB0cmFwIHdpdGggb3RoZXIgdXNlcnMgb2YgdGhlIGVuZ2luZS0+a2VybmVsX2NvbnRl
eHQgd2FraW5nCnVwIGFuZCBzdWJtaXR0aW5nIHRoZWlyIHJlcXVlc3QgYmVmb3JlIHRoZSBpZGxl
LXN3aXRjaCBpcyBxdWV1ZWQsIHdpdGgKdGhlIHJlc3VsdCB0aGF0IHRoZSBrZXJuZWxfY29udGV4
dCBpcyBleGVjdXRlZCBvdXQtb2Ytc2VxdWVuY2UgbW9zdApsaWtlbHkgdXBzZXR0aW5nIHRoZSBH
UFUgYW5kIGNlcnRhaW5seSBvdXJzZWx2ZXMgd2hlbiB3ZSB0cnkgdG8gcmV0aXJlCnRoZSBvdXQt
b2Ytc2VxdWVuY2UgcmVxdWVzdHMuCgpBcyBzdWNoIHdlIG5lZWQgdG8gaG9sZCBvbnRvIHRoZSBl
ZmZlY3RpdmUgZW5naW5lLT5rZXJuZWxfY29udGV4dCBtdXRleApsb2NrICh2aWEgdGhlIGVuZ2lu
ZSBwbSBtdXRleCBwcm94eSkgdW50aWwgd2UgaGF2ZSBmaW5pc2ggcXVldWluZyB0aGUKcmVxdWVz
dCB0byB0aGUgZW5naW5lLgoKRml4ZXM6IGE3OWNhNjU2YjY0OCAoImRybS9pOTE1OiBQdXNoIHRo
ZSB3YWtlcmVmLT5jb3VudCBkZWZlcnJhbCB0byB0aGUgYmFja2VuZCIpClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9wbS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5j
CmluZGV4IDNjMGY0OTBmZjJjNy4uMmQyYTIxNzUyYWU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtMTE2LDExICsxMTYsMTIgQEAgc3RhdGljIGJvb2wg
c3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IAlycS0+c2NoZWQuYXR0ci5wcmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfQkFSUklFUjsKIAlfX2k5
MTVfcmVxdWVzdF9jb21taXQocnEpOwogCi0JLyogUmVsZWFzZSBvdXIgZXhjbHVzaXZlIGhvbGQg
b24gdGhlIGVuZ2luZSAqLwotCV9faW50ZWxfd2FrZXJlZl9kZWZlcl9wYXJrKCZlbmdpbmUtPndh
a2VyZWYpOwogCV9faTkxNV9yZXF1ZXN0X3F1ZXVlKHJxLCBOVUxMKTsKIAorCS8qIFJlbGVhc2Ug
b3VyIGV4Y2x1c2l2ZSBob2xkIG9uIHRoZSBlbmdpbmUgKi8KKwlfX2ludGVsX3dha2VyZWZfZGVm
ZXJfcGFyaygmZW5naW5lLT53YWtlcmVmKTsKIAlyZXN1bHQgPSBmYWxzZTsKKwogb3V0X3VubG9j
azoKIAlfX3RpbWVsaW5lX21hcmtfdW5sb2NrKGVuZ2luZS0+a2VybmVsX2NvbnRleHQsIGZsYWdz
KTsKIAlyZXR1cm4gcmVzdWx0OwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
