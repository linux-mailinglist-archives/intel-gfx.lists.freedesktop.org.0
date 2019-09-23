Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B89BB290
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 13:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E799C6E873;
	Mon, 23 Sep 2019 11:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959296E870
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 11:01:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18585096-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:00:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 12:00:54 +0100
Message-Id: <20190923110056.15176-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923110056.15176-1-chris@chris-wilson.co.uk>
References: <20190923110056.15176-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/execlists: Drop redundant
 list_del_init(&rq->sched.link)
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

U2luY2UgYW1hbGdhbWF0aW5nIHRoZSBxdWV1ZWQgYW5kIGFjdGl2ZSBsaXN0cyBpbiBjb21taXQg
NDIyZDdkZjRmMDkwCigiZHJtL2k5MTU6IFJlcGxhY2UgZW5naW5lLT50aW1lbGluZSB3aXRoIGEg
cGxhaW4gbGlzdCIpLCBwZXJmb3JtaW5nIGEKaTkxNV9yZXF1ZXN0X3N1Ym1pdCgpIHdpbGwgcmVt
b3ZlIHRoZSByZXF1ZXN0IGZyb20gdGhlIGV4ZWNsaXN0cwpwcmlvcml0eSBxdWV1ZS4KClJlZmVy
ZW5jZXM6IDQyMmQ3ZGY0ZjA5MCAoImRybS9pOTE1OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUg
d2l0aCBhIHBsYWluIGxpc3QiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMSAtCiAxIGZp
bGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
aW5kZXggODBkZWQ5OWJjYjE1Li4wYTQ4MTJlYmQxODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCkBAIC0yNTE0LDcgKzI1MTQsNiBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfY2Fu
Y2VsX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJaW50IGk7CiAK
IAkJcHJpb2xpc3RfZm9yX2VhY2hfcmVxdWVzdF9jb25zdW1lKHJxLCBybiwgcCwgaSkgewotCQkJ
bGlzdF9kZWxfaW5pdCgmcnEtPnNjaGVkLmxpbmspOwogCQkJX19pOTE1X3JlcXVlc3Rfc3VibWl0
KHJxKTsKIAkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7CiAJCQlpOTE1
X3JlcXVlc3RfbWFya19jb21wbGV0ZShycSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
