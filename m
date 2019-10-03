Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B7FC9AD8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 11:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 519F76E98E;
	Thu,  3 Oct 2019 09:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86836E98C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 09:36:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18704189-1500050 
 for multiple; Thu, 03 Oct 2019 10:36:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 10:36:31 +0100
Message-Id: <20191003093639.10186-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003093639.10186-1-chris@chris-wilson.co.uk>
References: <20191003093639.10186-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/22] drm/i915: Move global activity tracking
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
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIHwgMTEgKy0tLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgIHwgIDUgKysrKysKIDIgZmlsZXMg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IDkxOTRkODQ2NGJmNy4uN2MzMTZkNDYzM2RiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwpAQCAtMTAsMTQgKzEwLDYgQEAK
ICNpbmNsdWRlICJndC9pbnRlbF9ndF9yZXF1ZXN0cy5oIgogCiAjaW5jbHVkZSAiaTkxNV9kcnYu
aCIKLSNpbmNsdWRlICJpOTE1X2dsb2JhbHMuaCIKLQotc3RhdGljIHZvaWQgaTkxNV9nZW1fcGFy
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKLXsKLQlpOTE1X3ZtYV9wYXJrZWQoaTkx
NSk7Ci0KLQlpOTE1X2dsb2JhbHNfcGFyaygpOwotfQogCiBzdGF0aWMgaW50IHBtX25vdGlmaWVy
KHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCiAJCSAgICAgICB1bnNpZ25lZCBsb25nIGFjdGlv
biwKQEAgLTI4LDExICsyMCwxMCBAQCBzdGF0aWMgaW50IHBtX25vdGlmaWVyKHN0cnVjdCBub3Rp
Zmllcl9ibG9jayAqbmIsCiAKIAlzd2l0Y2ggKGFjdGlvbikgewogCWNhc2UgSU5URUxfR1RfVU5Q
QVJLOgotCQlpOTE1X2dsb2JhbHNfdW5wYXJrKCk7CiAJCWJyZWFrOwogCiAJY2FzZSBJTlRFTF9H
VF9QQVJLOgotCQlpOTE1X2dlbV9wYXJrKGk5MTUpOworCQlpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7
CiAJCWJyZWFrOwogCX0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKaW5kZXgg
ZDJlODBiYTY0ZDY5Li5iNTJlMmJhM2QwOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYwpAQCAtNSw2ICs1LDcgQEAKICAqLwogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNp
bmNsdWRlICJpOTE1X2dsb2JhbHMuaCIKICNpbmNsdWRlICJpOTE1X3BhcmFtcy5oIgogI2luY2x1
ZGUgImludGVsX2NvbnRleHQuaCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKQEAgLTI3
LDYgKzI4LDggQEAgc3RhdGljIGludCBfX2d0X3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAq
d2YpCiAKIAlHRU1fVFJBQ0UoIlxuIik7CiAKKwlpOTE1X2dsb2JhbHNfdW5wYXJrKCk7CisKIAkv
KgogCSAqIEl0IHNlZW1zIHRoYXQgdGhlIERNQyBsaWtlcyB0byB0cmFuc2l0aW9uIGJldHdlZW4g
dGhlIERDIHN0YXRlcyBhIGxvdAogCSAqIHdoZW4gdGhlcmUgYXJlIG5vIGNvbm5lY3RlZCBkaXNw
bGF5cyAobm8gYWN0aXZlIHBvd2VyIGRvbWFpbnMpIGR1cmluZwpAQCAtNzgsNiArODEsOCBAQCBz
dGF0aWMgaW50IF9fZ3RfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJR0VNX0JVR19P
Tighd2FrZXJlZik7CiAJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgUE9XRVJfRE9NQUlO
X0dUX0lSUSwgd2FrZXJlZik7CiAKKwlpOTE1X2dsb2JhbHNfcGFyaygpOworCiAJcmV0dXJuIDA7
CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
