Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1F65D70A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 21:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5BE6E03C;
	Tue,  2 Jul 2019 19:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC9989FE3
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 19:42:10 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 21:42:02 +0200
Message-Id: <20190702194205.13366-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
References: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/7] drm/i915/dp: Allow big joiner modes in
 intel_dp_mode_valid()
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

U2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
fCAxMCArKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCBkNWM1
NmVhMDc5YTQuLmI0MWZmODhkMzI1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwpAQCAtNTA2LDYgKzUwNiw3IEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlpbnQgbWF4X2RvdGNsazsKIAl1MTYgZHNjX21heF9v
dXRwdXRfYnBwID0gMDsKIAl1OCBkc2Nfc2xpY2VfY291bnQgPSAwOworCWJvb2wgZHNjOwogCiAJ
aWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxTQ0FOKQogCQlyZXR1cm4gTU9ERV9O
T19EQkxFU0NBTjsKQEAgLTU1Myw4ICs1NTQsMTMgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQl9CiAJfQogCi0JaWYgKChtb2RlX3JhdGUg
PiBtYXhfcmF0ZSAmJiAhKGRzY19tYXhfb3V0cHV0X2JwcCAmJiBkc2Nfc2xpY2VfY291bnQpKSB8
fAotCSAgICB0YXJnZXRfY2xvY2sgPiBtYXhfZG90Y2xrKQorCWRzYyA9IGRzY19tYXhfb3V0cHV0
X2JwcCAmJiBkc2Nfc2xpY2VfY291bnQ7CisKKwkvKiBHZW4xMSBoYXMgYmlnIGpvaW5lciBmb3Ig
aGFuZGxpbmcgdGhpcyAqLworCWlmIChkc2MgJiYgZHNjX3NsaWNlX2NvdW50ID49IDIgJiYgSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwkJbWF4X2RvdGNsayAqPSAyOworCisJaWYgKChtb2Rl
X3JhdGUgPiBtYXhfcmF0ZSAmJiAhZHNjKSB8fCB0YXJnZXRfY2xvY2sgPiBtYXhfZG90Y2xrKQog
CQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOwogCiAJaWYgKG1vZGUtPmNsb2NrIDwgMTAwMDApCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
