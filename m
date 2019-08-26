Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 273A09CA1B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 09:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8B86E1D2;
	Mon, 26 Aug 2019 07:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B22866E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 07:22:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18262681-1500050 
 for multiple; Mon, 26 Aug 2019 08:21:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 08:21:27 +0100
Message-Id: <20190826072149.9447-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826072149.9447-1-chris@chris-wilson.co.uk>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/28] drm/i915: Protect our local workers
 against I915_FENCE_TIMEOUT
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

VHJ1c3Qgb3VyIG93biB3b3JrZXJzIHRvIG5vdCBjYXVzZSB1bm5lY2Vzc2FyeSBkZWxheXMgYW5k
IGRpc2FibGUgdGhlCmF1dG9tYXRpYyB0aW1lb3V0IG9uIHRoZWlyIGFzeW5jaHJvbm91cyBmZW5j
ZSB3YWl0cy4gKEFsb25nIHRoZSBzYW1lCmxpbmVzIHRoYXQgd2UgdHJ1c3Qgb3VyIG93biByZXF1
ZXN0cyB0byBjb21wbGV0ZSBldmVudHVhbGx5LCBpZgpuZWNlc3NhcnkgYnkgZm9yY2UuKQoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5jCmluZGV4IDE4ODY1Y2UwNGUxMy4uNzU0YTc4MzY0YTYzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYwpAQCAtOTI0LDcgKzkyNCw3IEBAIGk5MTVfcmVxdWVzdF9hd2FpdF9k
bWFfZmVuY2Uoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KQogCQkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X3JlcXVlc3QocnEsIHRvX3JlcXVlc3QoZmVu
Y2UpKTsKIAkJZWxzZQogCQkJcmV0ID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoJnJx
LT5zdWJtaXQsIGZlbmNlLAotCQkJCQkJCSAgICBJOTE1X0ZFTkNFX1RJTUVPVVQsCisJCQkJCQkJ
ICAgIGZlbmNlLT5jb250ZXh0ID8gSTkxNV9GRU5DRV9USU1FT1VUIDogMCwKIAkJCQkJCQkgICAg
STkxNV9GRU5DRV9HRlApOwogCQlpZiAocmV0IDwgMCkKIAkJCXJldHVybiByZXQ7Ci0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
