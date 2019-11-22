Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D8C105DCE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 01:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE31D6E23B;
	Fri, 22 Nov 2019 00:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F9C6E23B;
 Fri, 22 Nov 2019 00:44:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19293100-1500050 
 for multiple; Fri, 22 Nov 2019 00:44:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 00:44:16 +0000
Message-Id: <20191122004416.546742-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Double the fput
 hammer!
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVmZXJyZWQgcmN1IHdvcmsgaXMgdHJpY2t5IHRvIHBpbiBkb3duIGFuZCBlbmNvdXJhZ2UgdG8g
cnVuLCBzbyB0cnkKYWdhaW4uLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMjI3NwpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9jdHhfcGVyc2lzdGVu
Y2UuYyB8IDIxICsrKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3R4
X3BlcnNpc3RlbmNlLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfcGVyc2lzdGVuY2UuYwppbmRleCAy
NTI1YTg1ZTMuLmMyMzJkZGQ1NSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X3BlcnNp
c3RlbmNlLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4X3BlcnNpc3RlbmNlLmMKQEAgLTc3LDYg
Kzc3LDEzIEBAIHN0YXRpYyB2b2lkIGVuYWJsZV9oYW5nY2hlY2soaW50IGk5MTUpCiAJY2xvc2Uo
ZGlyKTsKIH0KIAorc3RhdGljIHZvaWQgZmx1c2hfZGVsYXllZF9mcHV0KGludCBpOTE1KQorewor
CXJjdV9iYXJyaWVyKGk5MTUpOyAvKiBmbHVzaCB0aGUgZGVsYXllZCBmcHV0ICovCisJc2NoZWRf
eWllbGQoKTsKKwlyY3VfYmFycmllcihpOTE1KTsgLyogYWdhaW4sIGluIGNhc2UgaXQgd2FzIGFk
ZGVkIGFmdGVyIHdlIHdhaXRlZCEgKi8KK30KKwogc3RhdGljIHZvaWQgdGVzdF9pZGVtcG90ZW50
KGludCBpOTE1KQogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSBwID0gewpA
QCAtMzUyLDggKzM1OSw3IEBAIHN0YXRpYyB2b2lkIHRlc3Rfbm9ucGVyc2lzdGVudF9maWxlKGlu
dCBpOTE1KQogCXNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkxNSwgLmZsYWdzID0gSUdUX1NQSU5fRkVO
Q0VfT1VUKTsKIAogCWNsb3NlKGk5MTUpOwotCXNjaGVkX3lpZWxkKCk7Ci0JcmN1X2JhcnJpZXIo
ZGVidWdmcyk7IC8qIGZvcmNlIHRoZSBkZWxheWVkIGZwdXQoKSAqLworCWZsdXNoX2RlbGF5ZWRf
ZnB1dChpOTE1KTsKIAogCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV93YWl0KHNwaW4tPm91dF9m
ZW5jZSwgTVNFQ19QRVJfU0VDIC8gNSksIDApOwogCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV9z
dGF0dXMoc3Bpbi0+b3V0X2ZlbmNlKSwgLUVJTyk7CkBAIC00NjgsNyArNDc0LDcgQEAgc3RhdGlj
IHZvaWQgdGVzdF9wcm9jZXNzKGludCBpOTE1KQogCX0KIAljbG9zZShzdlswXSk7CiAJaWd0X3dh
aXRjaGlsZHJlbigpOwotCXJjdV9iYXJyaWVyKGk5MTUpOyAvKiBmb3JjZSB0aGUgZGVsYXllZCBm
cHV0KCkgKi8KKwlmbHVzaF9kZWxheWVkX2ZwdXQoaTkxNSk7CiAKIAlmZW5jZSA9IHJlY3ZmZChz
dlsxXSk7CiAJY2xvc2Uoc3ZbMV0pOwpAQCAtNTE3LDcgKzUyMyw3IEBAIHN0YXRpYyB2b2lkIHRl
c3RfcHJvY2Vzc19taXhlZChpbnQgaTkxNSwgdW5zaWduZWQgaW50IGVuZ2luZSkKIAl9CiAJY2xv
c2Uoc3ZbMF0pOwogCWlndF93YWl0Y2hpbGRyZW4oKTsKLQlyY3VfYmFycmllcihpOTE1KTsgLyog
Zm9yY2UgdGhlIGRlbGF5ZWQgZnB1dCgpICovCisJZmx1c2hfZGVsYXllZF9mcHV0KGk5MTUpOwog
CiAJZmVuY2VbMF0gPSByZWN2ZmQoc3ZbMV0pOwogCWZlbmNlWzFdID0gcmVjdmZkKHN2WzFdKTsK
QEAgLTU5NCw3ICs2MDAsNyBAQCBzdGF0aWMgdm9pZCB0ZXN0X3Byb2Nlc3NlcyhpbnQgaTkxNSkK
IAkJc2NoZWRfeWllbGQoKTsKIAkJY2xvc2UocFtpXS5zdlswXSk7CiAJCWNsb3NlKHBbaV0uc3Zb
MV0pOwotCQlyY3VfYmFycmllcihpOTE1KTsKKwkJZmx1c2hfZGVsYXllZF9mcHV0KGk5MTUpOwog
CiAJCWlmIChpID09IDApIHsKIAkJCS8qIEZpcnN0IGZlbmNlIGlzIG5vbi1wZXJzaXN0ZW50LCBz
byBzaG91bGQgYmUgcmVzZXQgKi8KQEAgLTYzNSwxMCArNjQxLDcgQEAgc3RhdGljIHZvaWQgX19z
bW9rZXIoaW50IGk5MTUsIHVuc2lnbmVkIGludCBlbmdpbmUsIGludCBleHBlY3RlZCkKIAl9CiAK
IAljbG9zZShmZCk7Ci0KLQlyY3VfYmFycmllcihpOTE1KTsgLyogZmx1c2ggdGhlIGRlbGF5ZWQg
ZnB1dCAqLwotCXNjaGVkX3lpZWxkKCk7Ci0JcmN1X2JhcnJpZXIoaTkxNSk7IC8qIGFnYWluLCBp
biBjYXNlIGl0IHdhcyBhZGRlZCBhZnRlciB3ZSB3YWl0ZWQhICovCisJZmx1c2hfZGVsYXllZF9m
cHV0KGk5MTUpOwogCiAJaWd0X3NwaW5fZW5kKHNwaW4pOwogCi0tIAoyLjI0LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
