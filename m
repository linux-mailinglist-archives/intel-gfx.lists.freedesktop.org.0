Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A73D65B72
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 18:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7816E162;
	Thu, 11 Jul 2019 16:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA1A6E162
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 16:24:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17227883-1500050 
 for multiple; Thu, 11 Jul 2019 17:24:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 17:24:15 +0100
Message-Id: <20190711162415.2938-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Drop redundant ctx param from
 kerenldoc
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

ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYzo3OTk6IHdhcm5pbmc6
IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0ZXIgJ2N0eCcgZGVzY3JpcHRpb24gaW4gJ2d1Y19jbGll
bnRfYWxsb2MnCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Np
b24uYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCmluZGV4IDMwNjkyZjgyODliZC4uYjY2
M2I1ZmU1MWE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3Vi
bWlzc2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9u
LmMKQEAgLTc4OSw4ICs3ODksNiBAQCBzdGF0aWMgYm9vbCBndWNfdmVyaWZ5X2Rvb3JiZWxscyhz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiAgKgkJVGhlIGtlcm5lbCBjbGllbnQgdG8gcmVwbGFjZSBF
eGVjTGlzdCBzdWJtaXNzaW9uIGlzIGNyZWF0ZWQgd2l0aAogICoJCU5PUk1BTCBwcmlvcml0eS4g
UHJpb3JpdHkgb2YgYSBjbGllbnQgZm9yIHNjaGVkdWxlciBjYW4gYmUgSElHSCwKICAqCQl3aGls
ZSBhIHByZWVtcHRpb24gY29udGV4dCBjYW4gdXNlIENSSVRJQ0FMLgotICogQGN0eDoJdGhlIGNv
bnRleHQgdGhhdCBvd25zIHRoZSBjbGllbnQgKHdlIHVzZSB0aGUgZGVmYXVsdCByZW5kZXIKLSAq
CQljb250ZXh0KQogICoKICAqIFJldHVybjoJQW4gaW50ZWxfZ3VjX2NsaWVudCBvYmplY3QgaWYg
c3VjY2VzcywgZWxzZSBOVUxMLgogICovCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
