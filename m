Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99712F731D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E766E8B6;
	Mon, 11 Nov 2019 11:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821BB6E8B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:32:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19158297-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:32:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 11:32:25 +0000
Message-Id: <20191111113226.23015-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111113226.23015-1-chris@chris-wilson.co.uk>
References: <20191111113226.23015-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915/gem: Update context name on closing
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

VXBkYXRlIHRoZSBjb250ZXh0Lm5hbWUgb24gY2xvc2luZyBzbyB0aGF0IHRoZSBwZXJzaXN0ZW50
IHJlcXVlc3RzIGFyZQpjbGVhciBpbiBkZWJ1ZyBwcmludHMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCAxOCArKysrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggOTgyNzcwZTgxNjNkLi43MmQzODlhZmEyOGEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtNDYxLDEx
ICs0NjEsMjkgQEAgc3RhdGljIHZvaWQga2lsbF9jb250ZXh0KHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHgpCiAJfQogfQogCitzdGF0aWMgdm9pZCBzZXRfY2xvc2VkX25hbWUoc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKmN0eCkKK3sKKwljaGFyICpzOworCisJLyogUmVwbGFjZSAnW10nIHdp
dGggJzw+JyB0byBpbmRpY2F0ZSBjbG9zZWQgaW4gZGVidWcgcHJpbnRzICovCisKKwlzID0gc3Ry
cmNocihjdHgtPm5hbWUsICdbJyk7CisJaWYgKCFzKQorCQlyZXR1cm47CisKKwkqcyA9ICc8JzsK
KworCXMgPSBzdHJjaHIocyArIDEsICddJyk7CisJaWYgKHMpCisJCSpzID0gJz4nOworfQorCiBz
dGF0aWMgdm9pZCBjb250ZXh0X2Nsb3NlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCiB7
CiAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07CiAKIAlpOTE1X2dlbV9jb250ZXh0X3Nl
dF9jbG9zZWQoY3R4KTsKKwlzZXRfY2xvc2VkX25hbWUoY3R4KTsKIAogCW11dGV4X2xvY2soJmN0
eC0+bXV0ZXgpOwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
