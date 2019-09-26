Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1A7BF60A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F036ED92;
	Thu, 26 Sep 2019 15:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B7B6ED8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:37:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18629164-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 16:37:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 16:37:00 +0100
Message-Id: <20190926153700.19712-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926153700.19712-1-chris@chris-wilson.co.uk>
References: <20190926153700.19712-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Drop the IRQ-off asserts
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

RnJvbTogU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPgoK
VGhlIGxvY2tkZXBfYXNzZXJ0X2lycXNfZGlzYWJsZWQoKSBjaGVjayBpcyBuZWVkbGVzcy4gVGhl
IHByZXZpb3VzCmxvY2tkZXBfYXNzZXJ0X2hlbGQoKSBjaGVjayBlbnN1cmVzIHRoYXQgdGhlIGxv
Y2sgaXMgYWNxdWlyZWQgYW5kIHdoaWxlCnRoZSBsb2NrIGlzIGFjcXVpcmVkIGxvY2tkZXAgYWxz
byBwcmludHMgYSB3YXJuaW5nIGlmIHRoZSBpbnRlcnJ1cHRzIGFyZQpub3QgZGlzYWJsZWQgaWYg
dGhleSBoYXZlIHRvIGJlLgpUaGVzZSBJUlEtb2ZmIGFzc2VydHMgdHJpZ2dlciBvbiBQUkVFTVBU
X1JUIGJlY2F1c2UgdGhlIGxvY2tzIGJlY29tZQpzbGVlcGluZyBsb2NrcyBhbmQgZG8gbm90IHJl
YWxseSBkaXNhYmxlIGludGVycnVwdHMuCgpSZW1vdmUgbG9ja2RlcF9hc3NlcnRfaXJxc19kaXNh
YmxlZCgpLgoKUmVwb3J0ZWQtYnk6IENsYXJrIFdpbGxpYW1zIDx3aWxsaWFtc0ByZWRoYXQuY29t
PgpTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0
cm9uaXguZGU+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMu
YyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwppbmRleCBmNzUwMzc1MDU2ZGUuLjU1MzE3
MDgxZDQ4YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRj
cnVtYnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5j
CkBAIC0xMjAsNyArMTIwLDYgQEAgX19kbWFfZmVuY2Vfc2lnbmFsX19ub3RpZnkoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UsCiAJc3RydWN0IGRtYV9mZW5jZV9jYiAqY3VyLCAqdG1wOwogCiAJbG9j
a2RlcF9hc3NlcnRfaGVsZChmZW5jZS0+bG9jayk7Ci0JbG9ja2RlcF9hc3NlcnRfaXJxc19kaXNh
YmxlZCgpOwogCiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCBsaXN0LCBub2Rl
KSB7CiAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOwpAQCAtMjY5LDcgKzI2OCw2IEBAIHZv
aWQgaW50ZWxfZW5naW5lX2ZpbmlfYnJlYWRjcnVtYnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEpCiB7CiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmcnEtPmxvY2spOwotCWxvY2tk
ZXBfYXNzZXJ0X2lycXNfZGlzYWJsZWQoKTsKIAogCWlmICh0ZXN0X2JpdChJOTE1X0ZFTkNFX0ZM
QUdfQUNUSVZFLCAmcnEtPmZlbmNlLmZsYWdzKSkgewogCQlzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVt
YnMgKmIgPSAmcnEtPmVuZ2luZS0+YnJlYWRjcnVtYnM7CkBAIC0zMTksNyArMzE3LDYgQEAgdm9p
ZCBpOTE1X3JlcXVlc3RfY2FuY2VsX2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
CiAJc3RydWN0IGludGVsX2JyZWFkY3J1bWJzICpiID0gJnJxLT5lbmdpbmUtPmJyZWFkY3J1bWJz
OwogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmcnEtPmxvY2spOwotCWxvY2tkZXBfYXNzZXJ0X2ly
cXNfZGlzYWJsZWQoKTsKIAogCS8qCiAJICogV2UgbXVzdCB3YWl0IGZvciBiLT5pcnFfbG9jayBz
byB0aGF0IHdlIGtub3cgdGhlIGludGVycnVwdCBoYW5kbGVyCi0tIAoyLjIzLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
