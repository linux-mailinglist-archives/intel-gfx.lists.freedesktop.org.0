Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3638D96CA8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 01:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7407E6E8AC;
	Tue, 20 Aug 2019 23:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767016E8A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 23:04:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 16:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="377944616"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga005.fm.intel.com with ESMTP; 20 Aug 2019 16:04:54 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:05:40 -0700
Message-Id: <20190820230544.170010-8-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820230544.170010-1-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Use subslice stride to set
 subslices for a given slice
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

QWRkIGEgc3Vic2xpY2Ugc3RyaWRlIGNhbGN1bGF0aW9uIHdoZW4gc2V0dGluZyBzdWJzbGljZXMu
IFRoaXMKYWxpZ25zIG1vcmUgY2xvc2VseSB3aXRoIHRoZSB1c2Vyc3BhY2UgZXhwZWN0YXRpb24g
b2YgdGhlIHN1YnNsaWNlCm1hc2sgc3RydWN0dXJlLgoKdjI6IFVzZSBsb2NhbCB2YXJpYWJsZSBm
b3Igc3Vic2xpY2VfbWFzayBvbiBIU1cgYW5kCiAgICBjbGVhbiB1cCBhIGZldyBvdGhlciBzdWJz
bGljZV9tYXNrIGxvY2FsIHZhcmlhYmxlCiAgICBjaGFuZ2VzCnYzOiBBZGQgR0VNX0JVR19PTiBm
b3Igc3Nfc3RyaWRlIHRvIHByZXZlbnQgYXJyYXkgb3ZlcmZsb3cgKENocmlzKQogICAgU3BsaXQg
bWFpbiBzZXQgZnVuY3Rpb24gYW5kIHJlZmFjdG9ycyBpbiBpbnRlbF9kZXZpY2VfaW5mby5jCiAg
ICBpbnRvIHNlcGFyYXRlIHBhdGNoZXMgKENocmlzKQoKU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1
bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9zc2V1LmMgfCAxMiArKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3NzZXUuaCB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCmluZGV4
IDc5YTliNWYxODZmOS4uNWQ1MzdlYzk3ZmNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9zc2V1LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
c3NldS5jCkBAIC0zMSw5ICszMSwxNyBAQCBpbnRlbF9zc2V1X3N1YnNsaWNlX3RvdGFsKGNvbnN0
IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1KQogfQogCiB2b2lkIGludGVsX3NzZXVfc2V0X3N1
YnNsaWNlcyhzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50IHNsaWNlLAotCQkJICAgICAg
dTggc3NfbWFzaykKKwkJCSAgICAgIHUzMiBzc19tYXNrKQogewotCXNzZXUtPnN1YnNsaWNlX21h
c2tbaV0gPSBzc19tYXNrICYgMHhmZjsKKwlpbnQgaSwgb2Zmc2V0OworCisJR0VNX0JVR19PTihz
c2V1LT5zc19zdHJpZGUgPiAzMik7CisKKwlvZmZzZXQgPSBzbGljZSAqIHNzZXUtPnNzX3N0cmlk
ZTsKKworCWZvciAoaSA9IDA7IGkgPCBzc2V1LT5zc19zdHJpZGU7IGkrKykKKwkJc3NldS0+c3Vi
c2xpY2VfbWFza1tvZmZzZXQgKyBpXSA9CisJCQkoc3NfbWFzayA+PiAoQklUU19QRVJfQllURSAq
IGkpKSAmIDB4ZmY7CiB9CiAKIHVuc2lnbmVkIGludApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
c3NldS5oCmluZGV4IDMwOTllMDQ2MTFjZS4uMjI2MWQ0ZTdkOThiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfc3NldS5oCkBAIC03Niw3ICs3Niw3IEBAIHVuc2lnbmVkIGludAogaW50ZWxf
c3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1
LCB1OCBzbGljZSk7CiAKIHZvaWQgaW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHN0cnVjdCBzc2V1
X2Rldl9pbmZvICpzc2V1LCBpbnQgc2xpY2UsCi0JCQkgICAgICB1OCBzc19tYXNrKTsKKwkJCSAg
ICAgIHUzMiBzc19tYXNrKTsKIAogdTMyIGludGVsX3NzZXVfbWFrZV9ycGNzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9zc2V1ICpyZXFfc3Nl
dSk7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
