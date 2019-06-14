Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9884554B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82F388F1E;
	Fri, 14 Jun 2019 07:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEFB189090
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:10:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16897521-1500050 
 for multiple; Fri, 14 Jun 2019 08:10:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 08:10:00 +0100
Message-Id: <20190614071023.17929-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/39] drm/i915: Execute signal callbacks from
 no-op i915_request_wait
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

SWYgd2UgZW50ZXIgaTkxNV9yZXF1ZXN0X3dhaXQoKSB3aXRoIGFuIGFscmVhZHkgY29tcGxldGVk
IHJlcXVlc3QsIGJ1dAp1bnNpZ25hbGVkIGRtYS1mZW5jZSwgc2lnbmFsIHRoZSBmZW5jZSBiZWZv
cmUgcmV0dXJuaW5nLiBUaGlzIGFsbG93cyB1cwp0byBleGVjdXRlIGFueSBvZiB0aGUgc2lnbmFs
IGNhbGxiYWNrcyBhdCB0aGUgZWFybGllc3Qgb3Bwb3J0dW5pdHkuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXgg
ZWFkNjhhMmZmZWFjLi5hODJmM2ZmODJiMzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCkBAIC0xMzkyLDcgKzEzOTIsNyBAQCBsb25nIGk5MTVfcmVxdWVzdF93YWl0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLAogCW1pZ2h0X3NsZWVwKCk7CiAJR0VNX0JVR19PTih0aW1lb3V0IDwg
MCk7CiAKLQlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCisJaWYgKGRtYV9mZW5jZV9p
c19zaWduYWxlZCgmcnEtPmZlbmNlKSkKIAkJcmV0dXJuIHRpbWVvdXQ7CiAKIAlpZiAoIXRpbWVv
dXQpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
