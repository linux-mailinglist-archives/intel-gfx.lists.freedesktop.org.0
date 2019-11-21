Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB980105913
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 19:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5256F4B3;
	Thu, 21 Nov 2019 18:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2716F4B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 18:11:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19290055-1500050 
 for multiple; Thu, 21 Nov 2019 18:11:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 18:11:01 +0000
Message-Id: <20191121181101.401609-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: disable set/get_tiling ioctl
 on gen12+"
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

UmVzdG9yZSB0aGUgRFJJMi9EUkkzIHVBQkkgYmFja2NoYW5uZWwgdGhhdCB3YXMgcmVtb3ZlZCBi
eSBhYjAxNjkxNDk4NGUKKCJkcm0vaTkxNTogZGlzYWJsZSBzZXQvZ2V0X3RpbGluZyBpb2N0bCBv
biBnZW4xMisiKSBiZWZvcmUgdGhlIEFCSQpjaGFuZ2Ugd2FzIGFncmVlZCB1cG9uLgoKRml4ZXM6
IGFiMDE2OTE0OTg0ZSAoImRybS9pOTE1OiBkaXNhYmxlIHNldC9nZXRfdGlsaW5nIGlvY3RsIG9u
IGdlbjEyKyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYyB8IDcg
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCmluZGV4IDFmYTU5MmQ4MmFmNS4uMzlmM2JkNWRl
ZmQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5n
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCkBAIC0z
MTcsMTQgKzMxNywxMCBAQCBpbnQKIGk5MTVfZ2VtX3NldF90aWxpbmdfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJCSAgc3RydWN0IGRybV9maWxlICpmaWxlKQog
ewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX3NldF90aWxpbmcgKmFyZ3MgPSBkYXRhOwogCXN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJaW50IGVycjsKIAotCWlmICghZGV2X3ByaXYtPmdndHQu
bnVtX2ZlbmNlcykKLQkJcmV0dXJuIC1FT1BOT1RTVVBQOwotCiAJb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2xvb2t1cChmaWxlLCBhcmdzLT5oYW5kbGUpOwogCWlmICghb2JqKQogCQlyZXR1cm4gLUVO
T0VOVDsKQEAgLTQwNSw5ICs0MDEsNiBAQCBpOTE1X2dlbV9nZXRfdGlsaW5nX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKIAlpbnQgZXJyID0gLUVOT0VOVDsKIAotCWlmICghZGV2X3ByaXYtPmdndHQubnVt
X2ZlbmNlcykKLQkJcmV0dXJuIC1FT1BOT1RTVVBQOwotCiAJcmN1X3JlYWRfbG9jaygpOwogCW9i
aiA9IGk5MTVfZ2VtX29iamVjdF9sb29rdXBfcmN1KGZpbGUsIGFyZ3MtPmhhbmRsZSk7CiAJaWYg
KG9iaikgewotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
