Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE09FDD6A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:24:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FB9899C4;
	Fri, 15 Nov 2019 12:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87D3899C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:24:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19212004-1500050 
 for multiple; Fri, 15 Nov 2019 12:23:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 12:23:43 +0000
Message-Id: <20191115122343.821331-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Mention which device failed
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

V2hlbiB0ZWxsaW5nIHRoZSB1c2VyIHRoYXQgZGV2aWNlIHBvd2VyIG1hbmFnZW1lbnQgaXMgZGlz
YWJsZWQsIGl0IGlzCmhlbHBmdWwgdG8gc2F5IHdoaWNoIGRldmljZSB0aGF0IHdhcy4gQXQgdGhl
IHNhbWUgdGltZSwgd2hpbGUgaXQgaXMgYQptZXJlIGluY29udmVuaWVuY2UgdG8gdGhlIHVzZXIs
IGl0IGlzIGRldmFzdGF0aW5nIHRvIENJIGFzIHRoaXMgYW5kCmZ1dHVyZSB0ZXN0cyBtYXkgZmFp
bCBvdXQgb2YgdGhlIGJsdWUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmM2LmMKaW5kZXggNjAyYTAyZDAxODUwLi5iNTZhOTAzNDMxYjggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JjNi5jCkBAIC01NDAsNyArNTQwLDkgQEAgdm9pZCBpbnRlbF9yYzZfY3R4
X3dhX2NoZWNrKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKIAlpZiAoIWludGVsX3JjNl9jdHhfY29y
cnVwdGVkKHJjNikpCiAJCXJldHVybjsKIAotCURSTV9OT1RFKCJSQzYgY29udGV4dCBjb3JydXB0
aW9uLCBkaXNhYmxpbmcgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50XG4iKTsKKwlkZXZfbm90aWNl
KGk5MTUtPmRybS5kZXYsCisJCSAgICJSQzYgY29udGV4dCBjb3JydXB0aW9uLCBkaXNhYmxpbmcg
cnVudGltZSBwb3dlciBtYW5hZ2VtZW50XG4iKTsKKwlhZGRfdGFpbnRfZm9yX0NJKFRBSU5UX1dB
Uk4pOwogCiAJaW50ZWxfcmM2X2Rpc2FibGUocmM2KTsKIAlyYzYtPmN0eF9jb3JydXB0ZWQgPSB0
cnVlOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
