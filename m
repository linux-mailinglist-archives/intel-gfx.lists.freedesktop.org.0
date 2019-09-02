Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D51A4E15
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 06:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD41D89A83;
	Mon,  2 Sep 2019 04:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45D389A83
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 04:03:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18339026-1500050 
 for multiple; Mon, 02 Sep 2019 05:03:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 05:03:03 +0100
Message-Id: <20190902040303.14195-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902040303.14195-1-chris@chris-wilson.co.uk>
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
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
eCBmYTk2ZTFhZDdiZDguLmQzMWFkMmQ2MzE3NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCkBAIC01LDYgKzUsNyBAQAogICovCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgor
I2luY2x1ZGUgImk5MTVfZ2xvYmFscy5oIgogI2luY2x1ZGUgImk5MTVfcGFyYW1zLmgiCiAjaW5j
bHVkZSAiaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgpAQCAt
MjYsNiArMjcsOCBAQCBzdGF0aWMgaW50IF9fZ3RfdW5wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVm
ICp3ZikKIAogCUdFTV9UUkFDRSgiXG4iKTsKIAorCWk5MTVfZ2xvYmFsc191bnBhcmsoKTsKKwog
CS8qCiAJICogSXQgc2VlbXMgdGhhdCB0aGUgRE1DIGxpa2VzIHRvIHRyYW5zaXRpb24gYmV0d2Vl
biB0aGUgREMgc3RhdGVzIGEgbG90CiAJICogd2hlbiB0aGVyZSBhcmUgbm8gY29ubmVjdGVkIGRp
c3BsYXlzIChubyBhY3RpdmUgcG93ZXIgZG9tYWlucykgZHVyaW5nCkBAIC03Nyw2ICs4MCw4IEBA
IHN0YXRpYyBpbnQgX19ndF9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAlHRU1fQlVH
X09OKCF3YWtlcmVmKTsKIAlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChpOTE1LCBQT1dFUl9ET01B
SU5fR1RfSVJRLCB3YWtlcmVmKTsKIAorCWk5MTVfZ2xvYmFsc19wYXJrKCk7CisKIAlyZXR1cm4g
MDsKIH0KIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
