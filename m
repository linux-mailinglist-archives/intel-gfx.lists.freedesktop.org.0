Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B31904908D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 21:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B63289E1A;
	Mon, 17 Jun 2019 19:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D521689E1A
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 19:52:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 12:52:00 -0700
X-ExtLoop1: 1
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by orsmga007.jf.intel.com with ESMTP; 17 Jun 2019 12:51:59 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:54 -0700
Message-Id: <20190617195154.30292-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Force manual PSR exit in older
 gens
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gZG8gZnJvbnRidWZmZXIgdHJhY2tpbmcgd2UgYXJlIGRlcGVuZGluZyBvbiBEaXNwbGF5IFdB
ICMwODg0IHRvCmV4aXQgUFNSIHdoZW4gdGhlcmUgaXMgYSBmcm9udGJ1ZmZlciBtb2RpZmljYXRp
b24gYnV0IGFjY29yZGluZyB0bwp1c2VyIHJlcG9ydHMgYSB3cml0ZSB0byBDVVJTVVJGTElWRSBk
byBub3QgY2F1c2UgUFNSIHRvIGV4aXQgaW4gb2xkZXIKZ2VucyBzbyBsZXRzIGZvcmNlIGEgUFNS
IGV4aXQuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEwNzk5CkNjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFu
QGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDM2ICsrKysr
KysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmlu
ZGV4IDY5NzA5ZGY0YTY0OC4uNjlkOTA4ZTZhMDUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKQEAgLTg2MywxNiArODYzLDIzIEBAIHZvaWQgaW50ZWxfcHNyX2Rp
c2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAogc3RhdGljIHZvaWQgcHNyX2ZvcmNl
X2h3X3RyYWNraW5nX2V4aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewot
CS8qCi0JICogRGlzcGxheSBXQSAjMDg4NDogYWxsCi0JICogVGhpcyBkb2N1bWVudGVkIFdBIGZv
ciBieHQgY2FuIGJlIHNhZmVseSBhcHBsaWVkCi0JICogYnJvYWRseSBzbyB3ZSBjYW4gZm9yY2Ug
SFcgdHJhY2tpbmcgdG8gZXhpdCBQU1IKLQkgKiBpbnN0ZWFkIG9mIGRpc2FibGluZyBhbmQgcmUt
ZW5hYmxpbmcuCi0JICogV29ya2Fyb3VuZCB0ZWxscyB1cyB0byB3cml0ZSAwIHRvIENVUl9TVVJG
TElWRV9BLAotCSAqIGJ1dCBpdCBtYWtlcyBtb3JlIHNlbnNlIHdyaXRlIHRvIHRoZSBjdXJyZW50
IGFjdGl2ZQotCSAqIHBpcGUuCi0JICovCi0JSTkxNV9XUklURShDVVJTVVJGTElWRShkZXZfcHJp
di0+cHNyLnBpcGUpLCAwKTsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQorCQkvKgor
CQkgKiBEaXNwbGF5IFdBICMwODg0OiBza2wrCisJCSAqIFRoaXMgZG9jdW1lbnRlZCBXQSBmb3Ig
Ynh0IGNhbiBiZSBzYWZlbHkgYXBwbGllZAorCQkgKiBicm9hZGx5IHNvIHdlIGNhbiBmb3JjZSBI
VyB0cmFja2luZyB0byBleGl0IFBTUgorCQkgKiBpbnN0ZWFkIG9mIGRpc2FibGluZyBhbmQgcmUt
ZW5hYmxpbmcuCisJCSAqIFdvcmthcm91bmQgdGVsbHMgdXMgdG8gd3JpdGUgMCB0byBDVVJfU1VS
RkxJVkVfQSwKKwkJICogYnV0IGl0IG1ha2VzIG1vcmUgc2Vuc2Ugd3JpdGUgdG8gdGhlIGN1cnJl
bnQgYWN0aXZlCisJCSAqIHBpcGUuCisJCSAqLworCQlJOTE1X1dSSVRFKENVUlNVUkZMSVZFKGRl
dl9wcml2LT5wc3IucGlwZSksIDApOworCWVsc2UKKwkJLyoKKwkJICogQSB3cml0ZSB0byBDVVJT
VVJGTElWRSBkbyBub3QgY2F1c2UgSFcgdHJhY2tpbmcgdG8gZXhpdCBQU1IKKwkJICogb24gb2xk
ZXIgZ2VucyBzbyBkb2luZyB0aGUgbWFudWFsIGV4aXQgaW5zdGVhZC4KKwkJICovCisJCWludGVs
X3Bzcl9leGl0KGRldl9wcml2KTsKIH0KIAogLyoqCkBAIC05MDMsNiArOTEwLDE1IEBAIHZvaWQg
aW50ZWxfcHNyX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkvKiBGb3JjZSBh
IFBTUiBleGl0IHdoZW4gZW5hYmxpbmcgQ1JDIHRvIGF2b2lkIENSQyB0aW1lb3V0cyAqLwogCQlp
ZiAoY3J0Y19zdGF0ZS0+Y3JjX2VuYWJsZWQgJiYgcHNyLT5lbmFibGVkKQogCQkJcHNyX2ZvcmNl
X2h3X3RyYWNraW5nX2V4aXQoZGV2X3ByaXYpOworCQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3By
aXYpIDwgOSAmJiBwc3ItPmVuYWJsZWQpIHsKKwkJCS8qCisJCQkgKiBBY3RpdmF0ZSBQU1IgYWdh
aW4gYWZ0ZXIgYSBmb3JjZSBleGl0IHdoZW4gZW5hYmxpbmcKKwkJCSAqIENSQyBpbiBvbGRlciBn
ZW5zCisJCQkgKi8KKwkJCWlmICghZGV2X3ByaXYtPnBzci5hY3RpdmUgJiYKKwkJCSAgICAhZGV2
X3ByaXYtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMpCisJCQkJc2NoZWR1bGVfd29yaygmZGV2
X3ByaXYtPnBzci53b3JrKTsKKwkJfQogCiAJCWdvdG8gdW5sb2NrOwogCX0KLS0gCjIuMjIuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
