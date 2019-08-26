Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 185A59CA22
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 09:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00666E1EC;
	Mon, 26 Aug 2019 07:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2456E1D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 07:22:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18262678-1500050 
 for multiple; Mon, 26 Aug 2019 08:21:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 08:21:24 +0100
Message-Id: <20190826072149.9447-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826072149.9447-1-chris@chris-wilson.co.uk>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/28] drm/i915/selftests: Try to recycle
 context allocations
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
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwg
NiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
Y29udGV4dC5jCmluZGV4IDc1ODQxN2Q5ZjNjMS4uMDY1ZjViYWQ0NjZiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpA
QCAtNDI0LDcgKzQyNCw3IEBAIHN0YXRpYyBpbnQgaWd0X2N0eF9leGVjKHZvaWQgKmFyZykKIAkJ
CXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CiAJCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2U7CiAKLQkJCWN0eCA9IGxpdmVfY29udGV4dChpOTE1LCBmaWxlKTsKKwkJCWN0eCA9IGtlcm5l
bF9jb250ZXh0KGk5MTUpOwogCQkJaWYgKElTX0VSUihjdHgpKSB7CiAJCQkJZXJyID0gUFRSX0VS
UihjdHgpOwogCQkJCWdvdG8gb3V0X3VubG9jazsKQEAgLTQzNyw2ICs0MzcsNyBAQCBzdGF0aWMg
aW50IGlndF9jdHhfZXhlYyh2b2lkICphcmcpCiAJCQkJaWYgKElTX0VSUihvYmopKSB7CiAJCQkJ
CWVyciA9IFBUUl9FUlIob2JqKTsKIAkJCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOworCQkJCQlr
ZXJuZWxfY29udGV4dF9jbG9zZShjdHgpOwogCQkJCQlnb3RvIG91dF91bmxvY2s7CiAJCQkJfQog
CQkJfQpAQCAtNDQ4LDEyICs0NDksMTQgQEAgc3RhdGljIGludCBpZ3RfY3R4X2V4ZWModm9pZCAq
YXJnKQogCQkJCSAgICAgICBlbmdpbmUtPm5hbWUsIGN0eC0+aHdfaWQsCiAJCQkJICAgICAgIHll
c25vKCEhY3R4LT52bSksIGVycik7CiAJCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOworCQkJCWtl
cm5lbF9jb250ZXh0X2Nsb3NlKGN0eCk7CiAJCQkJZ290byBvdXRfdW5sb2NrOwogCQkJfQogCiAJ
CQllcnIgPSB0aHJvdHRsZShjZSwgdHEsIEFSUkFZX1NJWkUodHEpKTsKIAkJCWlmIChlcnIpIHsK
IAkJCQlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJCQkJa2VybmVsX2NvbnRleHRfY2xvc2UoY3R4
KTsKIAkJCQlnb3RvIG91dF91bmxvY2s7CiAJCQl9CiAKQEAgLTQ2Niw2ICs0NjksNyBAQCBzdGF0
aWMgaW50IGlndF9jdHhfZXhlYyh2b2lkICphcmcpCiAJCQluY29udGV4dHMrKzsKIAogCQkJaW50
ZWxfY29udGV4dF9wdXQoY2UpOworCQkJa2VybmVsX2NvbnRleHRfY2xvc2UoY3R4KTsKIAkJfQog
CiAJCXByX2luZm8oIlN1Ym1pdHRlZCAlbHUgY29udGV4dHMgdG8gJXMsIGZpbGxpbmcgJWx1IGR3
b3Jkc1xuIiwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
