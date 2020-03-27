Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3732619606E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 22:32:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B00C6E046;
	Fri, 27 Mar 2020 21:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD5406E046
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 21:32:51 +0000 (UTC)
IronPort-SDR: 8JEDJncOg8Hfl89XbKkJo4xuhW4YUETds1hyVfbPShXPsh5YUp6Xo7avvd3e7jz4ksyran2hpS
 UKYHkwQYkBvg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 14:32:51 -0700
IronPort-SDR: YtRslnH1x6Iln6FgD3g/tToA7Jni+NSN0ME18nxzRK2AAEgPawJ79Y/mdEPoFXFzGzEcS91cdJ
 HvlgYd2z1K1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="271709627"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by fmsmga004.fm.intel.com with ESMTP; 27 Mar 2020 14:32:50 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 14:34:11 -0700
Message-Id: <20200327213413.166623-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/dp: Return the right vswing tables
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RERJIHBvcnRzIGhhdmUgaXRzIGVuY29kZXJzIGluaXRpYWxpemVkIHdpdGggSU5URUxfT1VUUFVU
X0RESSB0eXBlIGFuZApsYXRlciBlRFAgcG9ydHMgdGhhdCBoYXZlIHRoZSB0eXBlIGNoYW5nZWQg
dG8gSU5URUxfT1VUUFVUX0VEUC4KQnV0IGZvciBhbGwgb3RoZXIgRERJIHBvcnRzIGl0IGNhbiBk
cml2ZSBIRE1JIG9yIERQIGRlcGVuZGluZyBvbiB3aGF0CnVzZXIgY29ubmVjdHMgdG8gdGhlIHBv
cnRzLgoKZWhsX2dldF9jb21ib19idWZfdHJhbnMoKSBhbmQgdGdsX2dldF9jb21ib19idWZfdHJh
bnMoKSB3YXMgY2hlY2tpbmcKZm9yIElOVEVMX09VVFBVVF9EUCB0aGF0IHdhcyBuZXZlciB0cnVl
LCBjYXVzaW5nIGVEUCB2c3dpbmcgdGFibGVzCmJlaW5nIHVzZWQuCgpTbyBoZXJlIGNoYW5naW5n
IHRoZSBjaGVjayB0byBJTlRFTF9PVVRQVVRfRERJLCBIRE1JIGNhc2VzIHdpbGwgYmUKY29ycmVj
dGx5IGhhbmRsZWQgYXMgaXQgZG8gbm90IHVzZSBlbmNvZGVyLT50eXBlLCBpbnN0ZWFkIGl0IGNh
bGxzIHRoZQpmdW5jdGlvbnMgd2l0aCBJTlRFTF9PVVRQVVRfSERNSSBhcyB0eXBlIHBhcmFtZXRl
ciBhbmQgSERNSSBkb24ndCBoYXZlCnJldHJhaW5pbmcuCgpGaXhlczogYmQzY2Y2ZjdjZTIwICgi
ZHJtL2k5MTUvZHAvdGdsKzogVXBkYXRlIGNvbWJvIHBoeSB2c3dpbmcgdGFibGVzIikKQ2M6IENs
aW50b24gQSBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCA5MTZhODAyYWY3ODguLjdhZjE1NzJkNGYxZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC05NDcsNyArOTQ3LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqCiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAkJ
CWludCAqbl9lbnRyaWVzKQogewotCWlmICh0eXBlID09IElOVEVMX09VVFBVVF9EUCAmJiByYXRl
ID4gMjcwMDAwKSB7CisJaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0RESSAmJiByYXRlID4gMjcw
MDAwKSB7CiAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGVobF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19oYnIyX2hicjMpOwogCQlyZXR1cm4gZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2hicjJfaGJyMzsKIAl9CkBAIC05NTksNyArOTU5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBjbmxfZGRpX2J1Zl90cmFucyAqCiB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAkJCWludCAqbl9l
bnRyaWVzKQogewotCWlmICh0eXBlICE9IElOVEVMX09VVFBVVF9EUCkgeworCWlmICh0eXBlICE9
IElOVEVMX09VVFBVVF9EREkpIHsKIAkJcmV0dXJuIGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRl
dl9wcml2LCB0eXBlLCByYXRlLCBuX2VudHJpZXMpOwogCX0gZWxzZSBpZiAocmF0ZSA+IDI3MDAw
MCkgewogCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRSh0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xh
dGlvbnNfZHBfaGJyMik7Ci0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
