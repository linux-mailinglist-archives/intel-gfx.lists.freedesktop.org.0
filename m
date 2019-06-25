Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386F455672
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7386E1BE;
	Tue, 25 Jun 2019 17:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2185B6E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469357"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:37 -0700
Message-Id: <20190625175437.14840-29-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/28] drm/i915/tgl: Update DPLL clock reference
 register
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHJlZ2lzdGVyIGRlZmluaXRpb24gY2hhbmdlZCBmcm9tIElDTCBhbmQgaGFzIG5vdyBhbm90aGVy
IG1lYW5pbmcuClVzZSB0aGUgcmlnaHQgYml0cyBvbiBUR0wuCgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgOCArKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKaW5kZXggMjk1NjYxYTNmNjk3Li4xZThm
ZDBlMmYzN2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMKQEAgLTI1MzAsOCArMjUzMCwxMiBAQCBzdGF0aWMgYm9vbCBpY2xfY2FsY19kcGxsX3N0
YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNmZ2NyMSA9IERQTExf
Q0ZHQ1IxX1FESVZfUkFUSU8ocGxsX3BhcmFtcy5xZGl2X3JhdGlvKSB8CiAJCSBEUExMX0NGR0NS
MV9RRElWX01PREUocGxsX3BhcmFtcy5xZGl2X21vZGUpIHwKIAkJIERQTExfQ0ZHQ1IxX0tESVYo
cGxsX3BhcmFtcy5rZGl2KSB8Ci0JCSBEUExMX0NGR0NSMV9QRElWKHBsbF9wYXJhbXMucGRpdikg
fAotCQkgRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDA7CisJCSBEUExMX0NGR0NSMV9QRElW
KHBsbF9wYXJhbXMucGRpdik7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJ
Y2ZnY3IxIHw9IFRHTF9EUExMX0NGR0NSMV9DRlNFTE9WUkRfTk9STUFMX1hUQUw7CisJZWxzZQor
CQljZmdjcjEgfD0gRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDA7CiAKIAltZW1zZXQoJmNy
dGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUsIDAsCiAJICAgICAgIHNpemVvZihjcnRjX3N0YXRlLT5k
cGxsX2h3X3N0YXRlKSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA5NjAxNzIwN2U4MDku
LjM3NDRhN2IzYTA0NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05OTM0LDYgKzk5MzQs
NyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgIERQTExfQ0ZHQ1IxX1BESVZfNwkJ
KDggPDwgMikKICNkZWZpbmUgIERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUQkoMyA8PCAwKQogI2Rl
ZmluZSAgRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDAJKDMgPDwgMCkKKyNkZWZpbmUgIFRH
TF9EUExMX0NGR0NSMV9DRlNFTE9WUkRfTk9STUFMX1hUQUwJKDAgPDwgMCkKICNkZWZpbmUgQ05M
X0RQTExfQ0ZHQ1IxKHBsbCkJCV9NTUlPX1BMTChwbGwsIF9DTkxfRFBMTDBfQ0ZHQ1IxLCBfQ05M
X0RQTEwxX0NGR0NSMSkKIAogI2RlZmluZSBfSUNMX0RQTEwwX0NGR0NSMAkJMHgxNjQwMDAKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
