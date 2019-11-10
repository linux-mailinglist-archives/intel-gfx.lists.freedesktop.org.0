Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1679AF6AEE
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 19:58:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795346E0B9;
	Sun, 10 Nov 2019 18:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5CB6E25F
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 18:58:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19151883-1500050 
 for multiple; Sun, 10 Nov 2019 18:58:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Nov 2019 18:57:44 +0000
Message-Id: <20191110185806.17413-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191110185806.17413-1-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/25] drm/i915/gem: Update context name on
 closing
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
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDk4Mjc3MGU4MTYzZC4uNzJkMzg5YWZhMjhhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTQ2MSwxMSAr
NDYxLDI5IEBAIHN0YXRpYyB2b2lkIGtpbGxfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4KQogCX0KIH0KIAorc3RhdGljIHZvaWQgc2V0X2Nsb3NlZF9uYW1lKHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjdHgpCit7CisJY2hhciAqczsKKworCS8qIFJlcGxhY2UgJ1tdJyB3aXRo
ICc8PicgdG8gaW5kaWNhdGUgY2xvc2VkIGluIGRlYnVnIHByaW50cyAqLworCisJcyA9IHN0cnJj
aHIoY3R4LT5uYW1lLCAnWycpOworCWlmICghcykKKwkJcmV0dXJuOworCisJKnMgPSAnPCc7CisK
KwlzID0gc3RyY2hyKHMgKyAxLCAnXScpOworCWlmIChzKQorCQkqcyA9ICc+JzsKK30KKwogc3Rh
dGljIHZvaWQgY29udGV4dF9jbG9zZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogewog
CXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtOwogCiAJaTkxNV9nZW1fY29udGV4dF9zZXRf
Y2xvc2VkKGN0eCk7CisJc2V0X2Nsb3NlZF9uYW1lKGN0eCk7CiAKIAltdXRleF9sb2NrKCZjdHgt
Pm11dGV4KTsKIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
