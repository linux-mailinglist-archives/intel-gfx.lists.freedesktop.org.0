Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C60A3C79
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 18:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3876E375;
	Fri, 30 Aug 2019 16:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A3C6E375
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 16:48:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18320922-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 17:48:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 17:48:13 +0100
Message-Id: <20190830164813.18462-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/perf: Assert locking for
 i915_init_oa_perf_state()
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

V2UgdXNlIHRoZSBjb250ZXh0LT5waW5fbXV0ZXggdG8gc2VyaWFsaXNlIHVwZGF0ZXMgdG8gdGhl
IE9BIGNvbmZpZyBhbmQKdGhlIHJlZ2lzdGVycyB2YWx1ZXMgd3JpdHRlbiBpbnRvIGVhY2ggbmV3
IGNvbnRleHQuIERvY3VtZW50IHRoaXMKcmVsYXRpb25zaGlwIGFuZCBhc3NlcnQgd2UgZG8gaG9s
ZCB0aGUgY29udGV4dC0+cGluX211dGV4IGFzIHVzZWQgYnkKZ2VuOF9jb25maWd1cmVfYWxsX2Nv
bnRleHRzKCkgdG8gc2VyaWFsaXNlIHVwZGF0ZXMgdG8gdGhlIE9BIGNvbmZpZwppdHNlbGYuCgp2
MjogQWRkIGEgd2hpdGUtbGllIGZvciB3aGVuIHdlIGNhbGwgaW50ZWxfZ3RfcmVzdW1lKCkgZnJv
bSBpbml0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBp
bnRlbC5jb20+ICN2MQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMg
fCA1ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgIHwgMyArKysK
IDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKaW5kZXggMTM2M2UwNjllYzgzLi5jNzY1YTMxZjVj
OTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwpAQCAtMTQyLDggKzE0Miwx
MSBAQCBpbnQgaW50ZWxfZ3RfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCWludGVsX2Vu
Z2luZV9wbV9nZXQoZW5naW5lKTsKIAogCQljZSA9IGVuZ2luZS0+a2VybmVsX2NvbnRleHQ7Ci0J
CWlmIChjZSkKKwkJaWYgKGNlKSB7CisJCQltdXRleF9hY3F1aXJlKCZjZS0+cGluX211dGV4LmRl
cF9tYXAsIDAsIDAsIF9USElTX0lQXyk7CiAJCQljZS0+b3BzLT5yZXNldChjZSk7CisJCQltdXRl
eF9yZWxlYXNlKCZjZS0+cGluX211dGV4LmRlcF9tYXAsIDAsIF9USElTX0lQXyk7CisJCX0KIAog
CQllbmdpbmUtPnNlcmlhbCsrOyAvKiBrZXJuZWwgY29udGV4dCBsb3N0ICovCiAJCWVyciA9IGVu
Z2luZS0+cmVzdW1lKGVuZ2luZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDJjOWY0
NmUxMjYyMi4uYzFiNzY0MjMzNzYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMjMw
NSw2ICsyMzA1LDkgQEAgdm9pZCBpOTE1X29hX2luaXRfcmVnX3N0YXRlKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKIHsKIAlzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtOwog
CisJLyogcGVyZi5leGNsdXNpdmVfc3RyZWFtIHNlcmlhbGlzZWQgYnkgZ2VuOF9jb25maWd1cmVf
YWxsX2NvbnRleHRzKCkgKi8KKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjZS0+cGluX211dGV4KTsK
KwogCWlmIChlbmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFTUykKIAkJcmV0dXJuOwogCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
