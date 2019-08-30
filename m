Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E69A2F75
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 08:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123B56E247;
	Fri, 30 Aug 2019 06:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8CB6E247
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 06:12:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18312348-1500050 
 for multiple; Fri, 30 Aug 2019 07:12:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 07:12:04 +0100
Message-Id: <20190830061204.21206-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830061204.21206-1-chris@chris-wilson.co.uk>
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/21] drm/i915: Move global activity tracking
 from GEM to GT
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

QXMgb3VyIGdsb2JhbCB1bnBhcmsvcGFyayBrZWVwIHRyYWNrIG9mIHRoZSBudW1iZXIgb2YgYWN0
aXZlIHVzZXJzLCB3ZQpjYW4gc2ltcGx5IG1vdmUgdGhlIGFjY291bnRpbmcgZnJvbSB0aGUgR0VN
IGxheWVyIHRvIHRoZSBiYXNlIEdUIGxheWVyLgpJdCB3YXMgcGxhY2VkIG9yaWdpbmFsbHkgaW5z
aWRlIEdFTSB0byBiZW5lZml0IGZyb20gdGhlIDEwMG1zIGV4dHJhCmRlbGF5IG9uIGlkbGVuZXNz
LCBidXQgdGhhdCBoYXMgYmVlbiBlbGltaW5hdGVkIGFuZCBub3cgdGhlcmUgaXMgbm8Kc3Vic3Rh
bnRpdmUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBsYXllcnMuIEluIG1vdmluZyBpdCwgd2UgbW92
ZSBhbm90aGVyCnBpZWNlIG9mIHRoZSBwdXp6bGUgb3V0IGZyb20gdW5kZXJuZWF0aCBzdHJ1Y3Rf
bXV0ZXguCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgfCAxMSArLS0tLS0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgfCAgNSArKysrKwogMiBmaWxl
cyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggYjQ1OTcxOTM4NmUzLi41ODE2YmRiNWJmYTIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBAIC0xMCwxNCArMTAsNiBA
QAogI2luY2x1ZGUgImd0L2ludGVsX2d0X3JlcXVlc3RzLmgiCiAKICNpbmNsdWRlICJpOTE1X2Ry
di5oIgotI2luY2x1ZGUgImk5MTVfZ2xvYmFscy5oIgotCi1zdGF0aWMgdm9pZCBpOTE1X2dlbV9w
YXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQotewotCWk5MTVfdm1hX3BhcmtlZChp
OTE1KTsKLQotCWk5MTVfZ2xvYmFsc19wYXJrKCk7Ci19CiAKIHN0YXRpYyBpbnQgcG1fbm90aWZp
ZXIoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKIAkJICAgICAgIHVuc2lnbmVkIGxvbmcgYWN0
aW9uLApAQCAtMjgsMTEgKzIwLDEwIEBAIHN0YXRpYyBpbnQgcG1fbm90aWZpZXIoc3RydWN0IG5v
dGlmaWVyX2Jsb2NrICpuYiwKIAogCXN3aXRjaCAoYWN0aW9uKSB7CiAJY2FzZSBJTlRFTF9HVF9V
TlBBUks6Ci0JCWk5MTVfZ2xvYmFsc191bnBhcmsoKTsKIAkJYnJlYWs7CiAKIAljYXNlIElOVEVM
X0dUX1BBUks6Ci0JCWk5MTVfZ2VtX3BhcmsoaTkxNSk7CisJCWk5MTVfdm1hX3BhcmtlZChpOTE1
KTsKIAkJYnJlYWs7CiAJfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwppbmRl
eCAwZDU0YzQ4NzI0OWYuLmRkNDA1NzRlY2UwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCkBAIC01LDYgKzUsNyBAQAogICovCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgor
I2luY2x1ZGUgImk5MTVfZ2xvYmFscy5oIgogI2luY2x1ZGUgImk5MTVfcGFyYW1zLmgiCiAjaW5j
bHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKQEAgLTI1LDYg
KzI2LDggQEAgc3RhdGljIGludCBfX2d0X3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
CiAKIAlHRU1fVFJBQ0UoIlxuIik7CiAKKwlpOTE1X2dsb2JhbHNfdW5wYXJrKCk7CisKIAkvKgog
CSAqIEl0IHNlZW1zIHRoYXQgdGhlIERNQyBsaWtlcyB0byB0cmFuc2l0aW9uIGJldHdlZW4gdGhl
IERDIHN0YXRlcyBhIGxvdAogCSAqIHdoZW4gdGhlcmUgYXJlIG5vIGNvbm5lY3RlZCBkaXNwbGF5
cyAobm8gYWN0aXZlIHBvd2VyIGRvbWFpbnMpIGR1cmluZwpAQCAtNzYsNiArNzksOCBAQCBzdGF0
aWMgaW50IF9fZ3RfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJR0VNX0JVR19PTigh
d2FrZXJlZik7CiAJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgUE9XRVJfRE9NQUlOX0dU
X0lSUSwgd2FrZXJlZik7CiAKKwlpOTE1X2dsb2JhbHNfcGFyaygpOworCiAJcmV0dXJuIDA7CiB9
CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
