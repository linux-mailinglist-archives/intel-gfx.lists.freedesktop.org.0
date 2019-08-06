Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CC383347
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 15:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789916E39B;
	Tue,  6 Aug 2019 13:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B4E6E39B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 13:49:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17906073-1500050 
 for multiple; Tue, 06 Aug 2019 14:47:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 14:47:21 +0100
Message-Id: <20190806134725.25321-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Only enqueue already completed
 requests
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

SWYgd2UgYXJlIGFza2VkIHRvIHN1Ym1pdCBhIGNvbXBsZXRlZCByZXF1ZXN0LCBqdXN0IG1vdmUg
aXQgb250byB0aGUKYWN0aXZlLWxpc3Qgd2l0aG91dCBtb2RpZnlpbmcgaXQncyBwYXlsb2FkLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCAxNCArKysrKysrKystLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IDhhYzdkMTRlYzhjOS4uNjlmYzY2YmQxMTI1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtMzk3LDYgKzM5Nyw5IEBAIHZv
aWQgX19pOTE1X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJ
R0VNX0JVR19PTighaXJxc19kaXNhYmxlZCgpKTsKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZlbmdp
bmUtPmFjdGl2ZS5sb2NrKTsKIAorCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJlcXVlc3Qp
KQorCQlnb3RvIHhmZXI7CisKIAlpZiAoaTkxNV9nZW1fY29udGV4dF9pc19iYW5uZWQocmVxdWVz
dC0+Z2VtX2NvbnRleHQpKQogCQlpOTE1X3JlcXVlc3Rfc2tpcChyZXF1ZXN0LCAtRUlPKTsKIApA
QCAtNDIwLDcgKzQyMywxMyBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3N1Ym1pdChzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpyZXF1ZXN0KQogCSAgICBpOTE1X3N3X2ZlbmNlX3NpZ25hbGVkKCZyZXF1ZXN0
LT5zZW1hcGhvcmUpKQogCQllbmdpbmUtPnNhdHVyYXRlZCB8PSByZXF1ZXN0LT5zY2hlZC5zZW1h
cGhvcmVzOwogCisJZW5naW5lLT5lbWl0X2ZpbmlfYnJlYWRjcnVtYihyZXF1ZXN0LAorCQkJCSAg
ICAgcmVxdWVzdC0+cmluZy0+dmFkZHIgKyByZXF1ZXN0LT5wb3N0Zml4KTsKKworCWVuZ2luZS0+
c2VyaWFsKys7CisKIAkvKiBXZSBtYXkgYmUgcmVjdXJzaW5nIGZyb20gdGhlIHNpZ25hbCBjYWxs
YmFjayBvZiBhbm90aGVyIGk5MTUgZmVuY2UgKi8KK3hmZXI6CiAJc3Bpbl9sb2NrX25lc3RlZCgm
cmVxdWVzdC0+bG9jaywgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwogCiAJbGlzdF9tb3ZlX3RhaWwo
JnJlcXVlc3QtPnNjaGVkLmxpbmssICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cyk7CkBAIC00Mzcs
MTEgKzQ0Niw2IEBAIHZvaWQgX19pOTE1X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJlcXVlc3QpCiAKIAlzcGluX3VubG9jaygmcmVxdWVzdC0+bG9jayk7CiAKLQllbmdpbmUt
PmVtaXRfZmluaV9icmVhZGNydW1iKHJlcXVlc3QsCi0JCQkJICAgICByZXF1ZXN0LT5yaW5nLT52
YWRkciArIHJlcXVlc3QtPnBvc3RmaXgpOwotCi0JZW5naW5lLT5zZXJpYWwrKzsKLQogCXRyYWNl
X2k5MTVfcmVxdWVzdF9leGVjdXRlKHJlcXVlc3QpOwogfQogCi0tIAoyLjIzLjAucmMxCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
