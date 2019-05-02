Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1961169A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 11:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8648915E;
	Thu,  2 May 2019 09:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 304F08915E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 09:41:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16426267-1500050 
 for multiple; Thu, 02 May 2019 10:41:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 10:41:19 +0100
Message-Id: <20190502094119.17416-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Unshadow MI_USER_INTERRUPT
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

R2l2ZW4gYW4gaW1tZWRpYXRlIHByZWVtcHRpb24gZXZlbnQgb24gcmUtZW5hYmxpbmcgYXJiaXRy
YXRpb24KKE1JX0FSQl9PTl9PRkYgfCBNSV9BUkJfRU5BQkxFKSBpdCBhcHBlYXJzIHRoYXQgdGhl
IEhXIG1heSBmb3JnZXQgYWJvdXQKdGhlIG9uZ29pbmcgTUlfVVNFUl9JTlRFUlJVUFQsIGxvc2lu
ZyB0aGUgaW50ZXJydXB0IGluIHRoZSBwcm9jZXNzLiBJZgp3ZSBoYXBwZW4gdG8gYmUgd2FpdGlu
ZyBvbiB0aGF0IGludGVycnVwdCBhdCB0aGUgdGltZSwgdGhlIHN5c3RlbSBtYXkKdGhlbiBncmlu
ZCB0byBhIGhhbHQuCgpNeSBwcmVzdW1wdGlvbiBpcyB0aGF0IHRoZXJlIGlzIGFuIGVmZmVjdGl2
ZSBzaGFkb3cgaW5zaWRlIHRoZSBDUyBhcyBpdApwYXJzZXMgYW5kIGJ1ZmZlcnMgdGhlIGNvbW1h
bmRzLCBhbmQgaWYgd2UgcHVzaCB0aGUgTUlfVVNFUl9JTlRFUlJVUFQKb3V0IG9mIHRoZSBpbW1l
ZGlhdGUgcGFyc2UgYnVmZmVyIGl0IGlzIG5vdCBsb3N0IGJ5IHRoZSBhcmJpdHJhdGlvbgpjaGVj
ay4KClRlc3RjYXNlOiBpZ3QvZ2VtX2NvbmN1cnJlbnRfYmxpdApTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tClBsYXVzaWJsZT8gSSBuZWVk
IGEgZmV3IGhvdXJzIHRvIGNvbmZpcm0gbXkgaHVuY2guCi1DaHJpcwotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CmluZGV4IDg1MWU2MmRkY2I4Ny4uNTI2Y2I5MjMxZDU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpAQCAtMjI3MSwxNCArMjI3MSwxMyBAQCBzdGF0aWMgdTMyICpnZW44X2VtaXRf
ZmluaV9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCiAJ
CQkJICByZXF1ZXN0LT5mZW5jZS5zZXFubywKIAkJCQkgIHJlcXVlc3QtPnRpbWVsaW5lLT5od3Nw
X29mZnNldCwKIAkJCQkgIDApOworCSpjcysrID0gTUlfVVNFUl9JTlRFUlJVUFQ7CiAKIAljcyA9
IGdlbjhfZW1pdF9nZ3R0X3dyaXRlKGNzLAogCQkJCSAgaW50ZWxfZW5naW5lX25leHRfaGFuZ2No
ZWNrX3NlcW5vKHJlcXVlc3QtPmVuZ2luZSksCiAJCQkJICBJOTE1X0dFTV9IV1NfSEFOR0NIRUNL
X0FERFIsCiAJCQkJICBNSV9GTFVTSF9EV19TVE9SRV9JTkRFWCk7CiAKLQotCSpjcysrID0gTUlf
VVNFUl9JTlRFUlJVUFQ7CiAJKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwgTUlfQVJCX0VOQUJMRTsK
IAogCXJlcXVlc3QtPnRhaWwgPSBpbnRlbF9yaW5nX29mZnNldChyZXF1ZXN0LCBjcyk7CkBAIC0y
Mjk3LDEzICsyMjk2LDEzIEBAIHN0YXRpYyB1MzIgKmdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJf
cmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCiAJCQkJICAgICAgUElQ
RV9DT05UUk9MX0RDX0ZMVVNIX0VOQUJMRSB8CiAJCQkJICAgICAgUElQRV9DT05UUk9MX0ZMVVNI
X0VOQUJMRSB8CiAJCQkJICAgICAgUElQRV9DT05UUk9MX0NTX1NUQUxMKTsKKwkqY3MrKyA9IE1J
X1VTRVJfSU5URVJSVVBUOwogCiAJY3MgPSBnZW44X2VtaXRfZ2d0dF93cml0ZV9yY3MoY3MsCiAJ
CQkJICAgICAgaW50ZWxfZW5naW5lX25leHRfaGFuZ2NoZWNrX3NlcW5vKHJlcXVlc3QtPmVuZ2lu
ZSksCiAJCQkJICAgICAgSTkxNV9HRU1fSFdTX0hBTkdDSEVDS19BRERSLAogCQkJCSAgICAgIFBJ
UEVfQ09OVFJPTF9TVE9SRV9EQVRBX0lOREVYKTsKIAotCSpjcysrID0gTUlfVVNFUl9JTlRFUlJV
UFQ7CiAJKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwgTUlfQVJCX0VOQUJMRTsKIAogCXJlcXVlc3Qt
PnRhaWwgPSBpbnRlbF9yaW5nX29mZnNldChyZXF1ZXN0LCBjcyk7Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
