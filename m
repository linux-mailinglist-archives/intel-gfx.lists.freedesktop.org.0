Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0427C1B567
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 14:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040FB89C52;
	Mon, 13 May 2019 12:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8787E89C33
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 12:01:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16540114-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 13:01:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2019 13:01:02 +0100
Message-Id: <20190513120102.29660-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513120102.29660-1-chris@chris-wilson.co.uk>
References: <20190513120102.29660-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Check for no-op priority changes
 first
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

SW4gYWxsIGxpa2VsaWhvb2QsIHRoZSBwcmlvcml0eSBhbmQgbm9kZSBhcmUgYWxyZWFkeSBpbiB0
aGUgQ1BVIGNhY2hlCmFuZCBieSBjaGVja2luZyB0aGVtIGZpcnN0LCB3ZSBjYW4gYXZvaWQgaGF2
aW5nIHRvIGNoYXNlIHRoZQoqcmVxdWVzdC0+aHdzcCBmb3IgdGhlIGN1cnJlbnQgYnJlYWRjcnVt
Yi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
Y2hlZHVsZXIuYwppbmRleCBmMzJkMGVlNmQ1OGMuLjU1ODFjNTAwNGZmMCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCkBAIC0yMDAsMTAgKzIwMCwxMCBAQCBzdGF0aWMgdm9p
ZCBfX2k5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfc2NoZWRfbm9kZSAqbm9kZSwKIAlsb2NrZGVw
X2Fzc2VydF9oZWxkKCZzY2hlZHVsZV9sb2NrKTsKIAlHRU1fQlVHX09OKHByaW8gPT0gSTkxNV9Q
UklPUklUWV9JTlZBTElEKTsKIAotCWlmIChub2RlX3NpZ25hbGVkKG5vZGUpKQorCWlmIChwcmlv
IDw9IFJFQURfT05DRShub2RlLT5hdHRyLnByaW9yaXR5KSkKIAkJcmV0dXJuOwogCi0JaWYgKHBy
aW8gPD0gUkVBRF9PTkNFKG5vZGUtPmF0dHIucHJpb3JpdHkpKQorCWlmIChub2RlX3NpZ25hbGVk
KG5vZGUpKQogCQlyZXR1cm47CiAKIAlzdGFjay5zaWduYWxlciA9IG5vZGU7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
