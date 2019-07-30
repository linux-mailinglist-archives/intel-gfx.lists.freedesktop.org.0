Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B137B0E2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 19:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF886E5F0;
	Tue, 30 Jul 2019 17:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0246E5F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 17:51:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 10:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="190928783"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.193])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 10:51:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 10:51:21 -0700
Message-Id: <20190730175121.16413-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Ungate DDIC and DDID
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

U3BlY2lmaWNhdGlvbiBzdGF0ZXMgdGhhdCBERElfQ0xLX1NFTCBuZWVkcyB0byBiZSBtYXBwZWQg
dG8gTUcgY2xvY2sKZXZlbiBpZiBNRyBkbyBub3QgZXhpc3Qgb24gRUhMLCB0aGlzIHdpbGwgdW5n
YXRlIHRob3NlIERESXMuCgpCU3BlYzogMjA4NDUKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+CkNjOiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
fCA5ICsrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGM2ZjM4
YzdiMzk3ZC4uZmI1ODg0NTAyMGRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKQEAgLTI5MjEsNiArMjkyMSwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xr
X3NlbGVjdChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJaWYgKCFpbnRlbF9waHlf
aXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpCiAJCQlJOTE1X1dSSVRFKERESV9DTEtfU0VMKHBvcnQp
LAogCQkJCSAgIGljbF9wbGxfdG9fZGRpX2Nsa19zZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSkpOwor
CQllbHNlIGlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYgcG9ydCA+PSBQT1JUX0MpCisJ
CQkvKgorCQkJICogTUcgZG9lcyBub3QgZXhpc3QgYnV0IHRoZSBwcm9ncmFtbWluZyBpcyByZXF1
aXJlZAorCQkJICogdG8gdW5nYXRlIERESUMgYW5kIERESUQKKwkJCSAqLworCQkJSTkxNV9XUklU
RShERElfQ0xLX1NFTChwb3J0KSwgRERJX0NMS19TRUxfTUcpOwogCX0gZWxzZSBpZiAoSVNfQ0FO
Tk9OTEFLRShkZXZfcHJpdikpIHsKIAkJLyogQ29uZmlndXJlIERQQ0xLQV9DRkdDUjAgdG8gbWFw
IHRoZSBEUExMIHRvIHRoZSBEREkuICovCiAJCXZhbCA9IEk5MTVfUkVBRChEUENMS0FfQ0ZHQ1Iw
KTsKQEAgLTI5NjEsNyArMjk2Nyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9jbGtfZGlzYWJs
ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9w
b3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSkgewotCQlpZiAoIWludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkKKwkJaWYg
KCFpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkgfHwKKwkJICAgIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikgJiYgcG9ydCA+PSBQT1JUX0MpKQogCQkJSTkxNV9XUklURShERElfQ0xL
X1NFTChwb3J0KSwgRERJX0NMS19TRUxfTk9ORSk7CiAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtF
KGRldl9wcml2KSkgewogCQlJOTE1X1dSSVRFKERQQ0xLQV9DRkdDUjAsIEk5MTVfUkVBRChEUENM
S0FfQ0ZHQ1IwKSB8Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
