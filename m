Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB8F6D083
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428706E3EC;
	Thu, 18 Jul 2019 14:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24ECF6E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 14:54:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17402283-1500050 
 for multiple; Thu, 18 Jul 2019 15:54:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 15:54:07 +0100
Message-Id: <20190718145407.21352-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718145407.21352-1-chris@chris-wilson.co.uk>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Flush stale cachelines on
 set-cache-level
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5zdXJlIHRoYXQgd2UgZmx1c2ggYW55IGNhY2hlIGRpcnQgb3V0IHRvIG1haW4gbWVtb3J5IGJl
Zm9yZSB0aGUgdXNlcgpjaGFuZ2VzIHRoZSBjYWNoZS1sZXZlbCBhcyB0aGV5IG1heSBlbGVjdCB0
byBieXBhc3MgdGhlIGNhY2hlIChldmVuIGFmdGVyCmRlY2xhcmluZyB0aGVpciBhY2Nlc3MgY2Fj
aGUtY29oZXJlbnQpIHZpYSB1c2Ugb2YgdW5wcml2aWxlZ2VkIE1PQ1MuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMg
fCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCmluZGV4IDJlM2NlMmE2OTY1My4uNWQ0MWU3
NjlhNDI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9t
YWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBA
IC0yNzcsNiArMjc3LDExIEBAIGludCBpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2xldmVsKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KHZt
YSwgJm9iai0+dm1hLmxpc3QsIG9ial9saW5rKQogCQl2bWEtPm5vZGUuY29sb3IgPSBjYWNoZV9s
ZXZlbDsKKworCS8qIEZsdXNoIGFueSBwcmV2aW91cyBjYWNoZSBkaXJ0IGluIGNhc2Ugb2YgY2Fj
aGUgYnlwYXNzICovCisJaWYgKG9iai0+Y2FjaGVfZGlydHkgJiB+b2JqLT5jYWNoZV9jb2hlcmVu
dCkKKwkJaTkxNV9nZW1fY2xmbHVzaF9vYmplY3Qob2JqLCBJOTE1X0NMRkxVU0hfU1lOQyk7CisK
IAlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIGNhY2hlX2xldmVsKTsK
IAlvYmotPmNhY2hlX2RpcnR5ID0gdHJ1ZTsgLyogQWx3YXlzIGludmFsaWRhdGUgc3RhbGUgY2Fj
aGVsaW5lcyAqLwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
