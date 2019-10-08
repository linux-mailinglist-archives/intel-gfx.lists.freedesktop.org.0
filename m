Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 801D0CF329
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 09:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D186E1B3;
	Tue,  8 Oct 2019 07:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB266E1B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 07:03:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18759339-1500050 
 for multiple; Tue, 08 Oct 2019 08:03:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 08:03:42 +0100
Message-Id: <20191008070342.4045-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Assign
 virtual_engine->uncore from first sibling
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

Q29weSBhY3Jvc3MgdGhlIGVuZ2luZS0+dW5jb3JlIHNob3J0Y3V0IHRvIHRoZSB2aXJ0dWFsX2Vu
Z2luZSBmcm9tIGl0cwpmaXJzdCBwaHlzaWNhbCBlbmdpbmUsIHNpbWlsYXIgdG8gdGhlIGhhbmRs
aW5nIG9mIHRoZSBlbmdpbmUtPmd0CmJhY2twb2ludGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggNDMyYjhiNjBjNGMwLi42ZGI3NjJj
NTA5YjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC00MTcwLDYgKzQxNzAs
NyBAQCBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCwKIAogCXZlLT5iYXNlLmk5MTUgPSBjdHgtPmk5MTU7CiAJdmUtPmJhc2UuZ3QgPSBz
aWJsaW5nc1swXS0+Z3Q7CisJdmUtPmJhc2UudW5jb3JlID0gc2libGluZ3NbMF0tPnVuY29yZTsK
IAl2ZS0+YmFzZS5pZCA9IC0xOwogCXZlLT5iYXNlLmNsYXNzID0gT1RIRVJfQ0xBU1M7CiAJdmUt
PmJhc2UudWFiaV9jbGFzcyA9IEk5MTVfRU5HSU5FX0NMQVNTX0lOVkFMSUQ7Ci0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
