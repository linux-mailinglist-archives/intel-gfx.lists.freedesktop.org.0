Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4A912F99
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 15:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD296E7A1;
	Fri,  3 May 2019 13:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8526E7A1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 13:52:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16442221-1500050 
 for multiple; Fri, 03 May 2019 14:52:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 14:52:29 +0100
Message-Id: <20190503135229.32039-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check the target has not already
 completed before waiting on it
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

V2hlbiB3ZSB3YW50IHRvIHdhaXQgZm9yIGEgcmVxdWVzdCB0byBiZSBleGVjdXRlZCwgd2UgZmly
c3QgYXNrIGlmIGl0IGlzCm5vdCBvbiB0aGUgR1BVICBhcyBpZiBpdCdzIG9uIHRoZSBncHUsIHRo
ZXJlJ3Mgbm8gbmVlZCB0byB3YWl0LiBIb3dldmVyLAp3ZSBoYXZlIHRvIHRha2UgaW50byBhY2Nv
dW50IHRoYXQgYSByZXF1ZXN0IG1heSBub3QgYmUgb24gdGhlIEdQVQpiZWNhdXNlIGl0IGhhcyBh
bHJlYWR5IGNvbXBsZXRlZCEKClRoZSB3aW5kb3cgaXMgc21hbGwgZHVlIHRvIHRoZSBudW1lcm91
cyBwcmVjZWRpbmcgY2hlY2tzIHRoYXQgb3VyIHRhcmdldApoYXMgbm90IHlldCBjb21wbGV0ZWQs
IHlldCB0aGVyZSBpcyBzdGlsbCBhIHZlcnkgc21hbGwgd2luZG93IGFjcm9zcyB0aGUKa21hbGxv
Yy4KCkZpeGVzOiBlODg2MTk2NDY5NzEgKCJkcm0vaTkxNTogVXNlIEhXIHNlbWFwaG9yZXMgZm9y
IGludGVyLWVuZ2luZSBzeW5jaHJvbmlzYXRpb24gb24gZ2VuOCsiKQpUZXN0Y2FzZTogaWd0L2dl
bV9jb25jdXJyZW50X2JsaXQKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYwppbmRleCBkMDZjNDUzMDViMDMuLjZkYmY4ZGM1Y2Q2YSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTM3Myw3ICszNzMsNyBAQCBpOTE1X3JlcXVl
c3RfYXdhaXRfZXhlY3V0aW9uKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCWluaXRfaXJxX3dv
cmsoJmNiLT53b3JrLCBpcnFfZXhlY3V0ZV9jYik7CiAKIAlzcGluX2xvY2tfaXJxKCZzaWduYWwt
PmxvY2spOwotCWlmIChpOTE1X3JlcXVlc3RfaXNfYWN0aXZlKHNpZ25hbCkpIHsKKwlpZiAoaTkx
NV9yZXF1ZXN0X2lzX2FjdGl2ZShzaWduYWwpIHx8IGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoc2ln
bmFsKSkgewogCQlpOTE1X3N3X2ZlbmNlX2NvbXBsZXRlKGNiLT5mZW5jZSk7CiAJCWttZW1fY2Fj
aGVfZnJlZShnbG9iYWwuc2xhYl9leGVjdXRlX2NicywgY2IpOwogCX0gZWxzZSB7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
