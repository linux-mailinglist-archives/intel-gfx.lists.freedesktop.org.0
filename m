Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF3E10D5D7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 13:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4776E8FC;
	Fri, 29 Nov 2019 12:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBDBD6E8FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 12:49:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19392723-1500050 
 for multiple; Fri, 29 Nov 2019 12:48:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 12:48:46 +0000
Message-Id: <20191129124846.949100-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: use a separate context for
 gpu relocs"
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

U2luY2UgY29tbWl0IGM0NWU3ODhkOTViNCAoImRybS9pOTE1L3RnbDogU3VzcGVuZCBwcmUtcGFy
c2VyIGFjcm9zcyBHVFQKaW52YWxpZGF0aW9ucyIpLCB3ZSBub3cgZGlzYWJsZSB0aGUgYWR2YW5j
ZWQgcHJlcGFyc2VyIG9uIFRpZ2VybGFrZSBmb3IgdGhlCmludmFsaWRhdGlvbiBwaGFzZSBhdCB0
aGUgc3RhcnQgb2YgdGhlIGJhdGNoLCB3ZSBubyBsb25nZXIgbmVlZCB0byBlbWl0CnRoZSBHUFUg
cmVsb2NhdGlvbnMgZnJvbSBhIHNlY29uZCBjb250ZXh0IGFzIHRoZXkgYXJlIG5vdyBmbHVzaGVk
IGlubGluZWQuCgpSZWZlcmVuY2VzOiA4YTlhOTgyNzY3YjcgKCJkcm0vaTkxNTogdXNlIGEgc2Vw
YXJhdGUgY29udGV4dCBmb3IgZ3B1IHJlbG9jcyIpClJlZmVyZW5jZXM6IGM0NWU3ODhkOTViNCAo
ImRybS9pOTE1L3RnbDogU3VzcGVuZCBwcmUtcGFyc2VyIGFjcm9zcyBHVFQgaW52YWxpZGF0aW9u
cyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgot
LS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDMwICst
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMjkgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMKaW5kZXggN2E4N2U4MjcwNDYwLi40NTlmNGQ0MGI2OWIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMjUzLDcgKzI1Myw2IEBA
IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgewogCQlib29sIGhhc19mZW5jZSA6IDE7CiAJCWJvb2wg
bmVlZHNfdW5mZW5jZWQgOiAxOwogCi0JCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKIAkJc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJCXUzMiAqcnFfY21kOwogCQl1bnNpZ25lZCBpbnQgcnFf
c2l6ZTsKQEAgLTg4Niw5ICs4ODUsNiBAQCBzdGF0aWMgdm9pZCBlYl9kZXN0cm95KGNvbnN0IHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogewogCUdFTV9CVUdfT04oZWItPnJlbG9jX2NhY2hl
LnJxKTsKIAotCWlmIChlYi0+cmVsb2NfY2FjaGUuY2UpCi0JCWludGVsX2NvbnRleHRfcHV0KGVi
LT5yZWxvY19jYWNoZS5jZSk7Ci0KIAlpZiAoZWItPmx1dF9zaXplID4gMCkKIAkJa2ZyZWUoZWIt
PmJ1Y2tldHMpOwogfQpAQCAtOTEyLDcgKzkwOCw2IEBAIHN0YXRpYyB2b2lkIHJlbG9jX2NhY2hl
X2luaXQoc3RydWN0IHJlbG9jX2NhY2hlICpjYWNoZSwKIAljYWNoZS0+aGFzX2ZlbmNlID0gY2Fj
aGUtPmdlbiA8IDQ7CiAJY2FjaGUtPm5lZWRzX3VuZmVuY2VkID0gSU5URUxfSU5GTyhpOTE1KS0+
dW5mZW5jZWRfbmVlZHNfYWxpZ25tZW50OwogCWNhY2hlLT5ub2RlLmZsYWdzID0gMDsKLQljYWNo
ZS0+Y2UgPSBOVUxMOwogCWNhY2hlLT5ycSA9IE5VTEw7CiAJY2FjaGUtPnJxX3NpemUgPSAwOwog
fQpAQCAtMTE4Miw3ICsxMTc3LDcgQEAgc3RhdGljIGludCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAlpZiAoZXJyKQogCQlnb3RvIGVycl91bm1hcDsKIAot
CXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChjYWNoZS0+Y2UpOworCXJxID0gaTkx
NV9yZXF1ZXN0X2NyZWF0ZShlYi0+Y29udGV4dCk7CiAJaWYgKElTX0VSUihycSkpIHsKIAkJZXJy
ID0gUFRSX0VSUihycSk7CiAJCWdvdG8gZXJyX3VucGluOwpAQCAtMTI1MywyOSArMTI0OCw2IEBA
IHN0YXRpYyB1MzIgKnJlbG9jX2dwdShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkJaWYg
KCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGViLT5lbmdpbmUpKQogCQkJcmV0dXJuIEVS
Ul9QVFIoLUVOT0RFVik7CiAKLQkJaWYgKCFjYWNoZS0+Y2UpIHsKLQkJCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZTsKLQotCQkJLyoKLQkJCSAqIFRoZSBDUyBwcmUtcGFyc2VyIGNhbiBwcmUtZmV0
Y2ggY29tbWFuZHMgYWNyb3NzCi0JCQkgKiBtZW1vcnkgc3luYyBwb2ludHMgYW5kIHN0YXJ0aW5n
IGdlbjEyIGl0IGlzIGFibGUgdG8KLQkJCSAqIHByZS1mZXRjaCBhY3Jvc3MgQkJfU1RBUlQgYW5k
IEJCX0VORCBib3VuZGFyaWVzCi0JCQkgKiAod2l0aGluIHRoZSBzYW1lIGNvbnRleHQpLiBXZSB0
aGVyZWZvcmUgdXNlIGEKLQkJCSAqIHNlcGFyYXRlIGNvbnRleHQgZ2VuMTIrIHRvIGd1YXJhbnRl
ZSB0aGF0IHRoZSByZWxvYwotCQkJICogd3JpdGVzIGxhbmQgYmVmb3JlIHRoZSBwYXJzZXIgZ2V0
cyB0byB0aGUgdGFyZ2V0Ci0JCQkgKiBtZW1vcnkgbG9jYXRpb24uCi0JCQkgKi8KLQkJCWlmIChj
YWNoZS0+Z2VuID49IDEyKQotCQkJCWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZWItPmNvbnRl
eHQtPmdlbV9jb250ZXh0LAotCQkJCQkJCSAgZWItPmVuZ2luZSk7Ci0JCQllbHNlCi0JCQkJY2Ug
PSBpbnRlbF9jb250ZXh0X2dldChlYi0+Y29udGV4dCk7Ci0JCQlpZiAoSVNfRVJSKGNlKSkKLQkJ
CQlyZXR1cm4gRVJSX0NBU1QoY2UpOwotCi0JCQljYWNoZS0+Y2UgPSBjZTsKLQkJfQotCiAJCWVy
ciA9IF9fcmVsb2NfZ3B1X2FsbG9jKGViLCB2bWEsIGxlbik7CiAJCWlmICh1bmxpa2VseShlcnIp
KQogCQkJcmV0dXJuIEVSUl9QVFIoZXJyKTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
