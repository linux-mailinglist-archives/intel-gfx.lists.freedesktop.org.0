Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697DF193AD4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 09:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140AA6E890;
	Thu, 26 Mar 2020 08:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADA36E890
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 08:29:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20696667-1500050 
 for multiple; Thu, 26 Mar 2020 08:28:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 08:28:38 +0000
Message-Id: <20200326082838.16357-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Remove useless but deadly
 local
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmV3YXJlIGRlcmVmZXJlbmNpbmcgdGhlIE5VTEwgcG9pbnRlciBwcmlvciB0byBjaGVja2luZyBm
b3IgaXRzCmV4aXN0ZW5jZS4KCkZpeGVzOiA0MTkxOTA0MjljZDEgKCJkcm0vaTkxNS9oZG1pOiB1
c2Ugc3RydWN0IGRybV9kZXZpY2UgYmFzZWQgbG9nZ2luZyIpClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogV2FtYnVpIEthcnVnYSA8d2Ft
YnVpLmthcnVnYXhAZ21haWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KQ2M6ICJWaWxsZSBTeXJqw6Rsw6QiIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDUgKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCAzOTVkYzE5MmJhYTAu
LjAwNzZhYmM2Mzg1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKQEAgLTY5MSw3ICs2OTEsNiBAQCB2b2lkIGludGVsX3JlYWRfaW5mb2ZyYW1lKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICB1bmlvbiBoZG1pX2luZm9mcmFtZSAqZnJhbWUp
CiB7CiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBlbmNfdG9f
ZGlnX3BvcnQoZW5jb2Rlcik7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAl1OCBidWZmZXJbVklERU9fRElQ
X0RBVEFfU0laRV07CiAJaW50IHJldDsKIApAQCAtNzA4LDEzICs3MDcsMTMgQEAgdm9pZCBpbnRl
bF9yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkvKiBzZWUg
Y29tbWVudCBhYm92ZSBmb3IgdGhlIHJlYXNvbiBmb3IgdGhpcyBvZmZzZXQgKi8KIAlyZXQgPSBo
ZG1pX2luZm9mcmFtZV91bnBhY2soZnJhbWUsIGJ1ZmZlciArIDEsIHNpemVvZihidWZmZXIpIC0g
MSk7CiAJaWYgKHJldCkgewotCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAorCQlkcm1fZGJnX2tt
cyhlbmNvZGVyLT5iYXNlLmRldiwKIAkJCSAgICAiRmFpbGVkIHRvIHVucGFjayBpbmZvZnJhbWUg
dHlwZSAweCUwMnhcbiIsIHR5cGUpOwogCQlyZXR1cm47CiAJfQogCiAJaWYgKGZyYW1lLT5hbnku
dHlwZSAhPSB0eXBlKQotCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAorCQlkcm1fZGJnX2ttcyhl
bmNvZGVyLT5iYXNlLmRldiwKIAkJCSAgICAiRm91bmQgdGhlIHdyb25nIGluZm9mcmFtZSB0eXBl
IDB4JXggKGV4cGVjdGVkIDB4JTAyeClcbiIsCiAJCQkgICAgZnJhbWUtPmFueS50eXBlLCB0eXBl
KTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
