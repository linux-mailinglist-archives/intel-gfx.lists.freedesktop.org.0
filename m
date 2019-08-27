Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDED39EFF2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 18:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C49289B95;
	Tue, 27 Aug 2019 16:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C0489B8E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 16:17:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18280412-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 17:17:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 17:17:26 +0100
Message-Id: <20190827161726.3640-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190827161726.3640-1-chris@chris-wilson.co.uk>
References: <20190827161726.3640-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/selftests: Try to recycle context
 allocations
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

aWd0X2N0eF9leGVjIGFsbG9jYXRlcyBhIG5ldyBjb250ZXh0IGZvciBlYWNoIGl0ZXJhdGlvbiwg
a2VlcGluZyB0aGVtCmFsbCBhbGxvY2F0ZWQgdW50aWwgdGhlIGVuZC4gSW5zdGVhZCwgcmVsZWFz
ZSB0aGUgbG9jYWwgY3R4IHJlZmVyZW5jZSBhdAp0aGUgZW5kIG9mIGVhY2ggaXRlcmF0aW9uLCBh
bGxvd2luZyBvdXJzZWx2ZXMgdG8gcmVhcCB0aG9zZSBpZiB1bmRlcgptZW1wcmVzc3VyZS4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZp
ZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgNiArKysr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRl
eHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4
dC5jCmluZGV4IDYzMTE2YzRmYThiYS4uZGE1NGE3MThjNzEyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtNDI0
LDcgKzQyNCw3IEBAIHN0YXRpYyBpbnQgaWd0X2N0eF9leGVjKHZvaWQgKmFyZykKIAkJCXN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CiAJCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CiAK
LQkJCWN0eCA9IGxpdmVfY29udGV4dChpOTE1LCBmaWxlKTsKKwkJCWN0eCA9IGtlcm5lbF9jb250
ZXh0KGk5MTUpOwogCQkJaWYgKElTX0VSUihjdHgpKSB7CiAJCQkJZXJyID0gUFRSX0VSUihjdHgp
OwogCQkJCWdvdG8gb3V0X3VubG9jazsKQEAgLTQzOCw2ICs0MzgsNyBAQCBzdGF0aWMgaW50IGln
dF9jdHhfZXhlYyh2b2lkICphcmcpCiAJCQkJaWYgKElTX0VSUihvYmopKSB7CiAJCQkJCWVyciA9
IFBUUl9FUlIob2JqKTsKIAkJCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOworCQkJCQlrZXJuZWxf
Y29udGV4dF9jbG9zZShjdHgpOwogCQkJCQlnb3RvIG91dF91bmxvY2s7CiAJCQkJfQogCQkJfQpA
QCAtNDQ5LDEyICs0NTAsMTQgQEAgc3RhdGljIGludCBpZ3RfY3R4X2V4ZWModm9pZCAqYXJnKQog
CQkJCSAgICAgICBlbmdpbmUtPm5hbWUsIGN0eC0+aHdfaWQsCiAJCQkJICAgICAgIHllc25vKCEh
Y3R4LT52bSksIGVycik7CiAJCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOworCQkJCWtlcm5lbF9j
b250ZXh0X2Nsb3NlKGN0eCk7CiAJCQkJZ290byBvdXRfdW5sb2NrOwogCQkJfQogCiAJCQllcnIg
PSB0aHJvdHRsZShjZSwgdHEsIEFSUkFZX1NJWkUodHEpKTsKIAkJCWlmIChlcnIpIHsKIAkJCQlp
bnRlbF9jb250ZXh0X3B1dChjZSk7CisJCQkJa2VybmVsX2NvbnRleHRfY2xvc2UoY3R4KTsKIAkJ
CQlnb3RvIG91dF91bmxvY2s7CiAJCQl9CiAKQEAgLTQ2Nyw2ICs0NzAsNyBAQCBzdGF0aWMgaW50
IGlndF9jdHhfZXhlYyh2b2lkICphcmcpCiAJCQluY29udGV4dHMrKzsKIAogCQkJaW50ZWxfY29u
dGV4dF9wdXQoY2UpOworCQkJa2VybmVsX2NvbnRleHRfY2xvc2UoY3R4KTsKIAkJfQogCiAJCXBy
X2luZm8oIlN1Ym1pdHRlZCAlbHUgY29udGV4dHMgdG8gJXMsIGZpbGxpbmcgJWx1IGR3b3Jkc1xu
IiwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
