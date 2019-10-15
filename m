Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2CBD8143
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09478908C;
	Tue, 15 Oct 2019 20:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77026E098
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:45:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849360-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:45 +0100
Message-Id: <20191015204451.19372-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 06/12] drm/i915/tgl: Keep FF dop clock enabled for
 A0
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpUbyBl
bnN1cmUgY29ycmVjdCBzdGF0ZSBkYXRhIGZvciBjb21wdXRlIHdvcmtsb2Fkcywgd2UKbmVlZCB0
byBrZWVwIHRoZSBmZiBkb3AgY2xvY2sgZW5hYmxlZC4KClJlZmVyZW5jZXM6IEhTREVTIzE2MDY3
MDA2MTcKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDE5MTAxNTE1NDQ0OS4xMDMzOC01LW1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDkgKysrKysrKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArCiAyIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDgxZDI5OWIyN2ZiYy4uYmM1
ZmRiNGU0N2IxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKQEAgLTU2Nyw3ICs1NjcsNyBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2lu
aXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogc3RhdGljIHZvaWQgdGdsX2N0eF93
b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCQkgICAg
IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHsKLQkvKiBXYV8xNDA5MTQyMjU5ICovCisJLyog
V2FfMTQwOTE0MjI1OTp0Z2wgKi8KIAlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJ
Q0VfQ0hJQ0tFTjMsCiAJCQkgIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUpOwog
fQpAQCAtMTI2NSw2ICsxMjY1LDEzIEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKIAorCWlmIChJU19UR0xfUkVW
SUQoaTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKSB7CisJCS8qIFdhXzE2MDY3MDA2
MTc6dGdsICovCisJCXdhX21hc2tlZF9lbih3YWwsCisJCQkgICAgIEdFTjlfQ1NfREVCVUdfTU9E
RTEsCisJCQkgICAgIEZGX0RPUF9DTE9DS19HQVRFX0RJU0FCTEUpOworCX0KKwogCWlmIChJU19H
RU4oaTkxNSwgMTEpKSB7CiAJCS8qIFRoaXMgaXMgbm90IGFuIFdhLiBFbmFibGUgZm9yIGJldHRl
ciBpbWFnZSBxdWFsaXR5ICovCiAJCXdhX21hc2tlZF9lbih3YWwsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAppbmRleCA4MjExNTljNGNkMzIuLjRiNTg4NjFiNTExNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCkBAIC03NjczLDYgKzc2NzMsNyBAQCBlbnVtIHsKICNkZWZpbmUgIEdFTjlfUE9PTEVE
X0VVX0xPQURfQkFMQU5DSU5HX0ZJWF9ESVNBQkxFICAoMSA8PCAxMCkKIAogI2RlZmluZSBHRU45
X0NTX0RFQlVHX01PREUxCQlfTU1JTygweDIwZWMpCisjZGVmaW5lICAgRkZfRE9QX0NMT0NLX0dB
VEVfRElTQUJMRQlSRUdfQklUKDEpCiAjZGVmaW5lIEdFTjlfQ1RYX1BSRUVNUFRfUkVHCQlfTU1J
TygweDIyNDgpCiAjZGVmaW5lIEdFTjhfQ1NfQ0hJQ0tFTjEJCV9NTUlPKDB4MjU4MCkKICNkZWZp
bmUgR0VOOV9QUkVFTVBUXzNEX09CSkVDVF9MRVZFTAkJKDEgPDwgMCkKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
