Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D010801B
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 20:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78DA6E0E4;
	Sat, 23 Nov 2019 19:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BCCC6E0E4
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 19:15:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19314002-1500050 
 for multiple; Sat, 23 Nov 2019 19:15:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Nov 2019 19:15:47 +0000
Message-Id: <20191123191547.925360-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Include the subsubtest for
 live_parallel_engines
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

SW5jbHVkZSB0aGUgbmFtZSBvZiB0aGUgZmFpbGluZyBzdWJzdWJ0ZXN0LCBpZiBpdCBmYWlscy4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYyB8IDQgKysr
LQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYwppbmRleCA1MGNjN2Nh
OWFmYmEuLmMxNmQxZWZkMmFkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pOTE1X3JlcXVlc3QuYwpAQCAtMTIxNCwxMCArMTIxNCwxMiBAQCBzdGF0aWMgaW50IGxpdmVf
cGFyYWxsZWxfZW5naW5lcyh2b2lkICphcmcpCiAJCXJldHVybiAtRU5PTUVNOwogCiAJZm9yIChm
biA9IGZ1bmM7ICFlcnIgJiYgKmZuOyBmbisrKSB7CisJCWNoYXIgbmFtZVtLU1lNX05BTUVfTEVO
XTsKIAkJc3RydWN0IGlndF9saXZlX3Rlc3QgdDsKIAkJdW5zaWduZWQgaW50IGlkeDsKIAotCQll
cnIgPSBpZ3RfbGl2ZV90ZXN0X2JlZ2luKCZ0LCBpOTE1LCBfX2Z1bmNfXywgIiIpOworCQlzbnBy
aW50ZihuYW1lLCBzaXplb2YobmFtZSksICIlcFMiLCBmbik7CisJCWVyciA9IGlndF9saXZlX3Rl
c3RfYmVnaW4oJnQsIGk5MTUsIF9fZnVuY19fLCBuYW1lKTsKIAkJaWYgKGVycikKIAkJCWJyZWFr
OwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
