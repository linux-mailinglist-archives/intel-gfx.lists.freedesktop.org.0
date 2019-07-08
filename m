Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4995C62C84
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A7789FF6;
	Mon,  8 Jul 2019 23:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31B189FBC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859666"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:29 -0700
Message-Id: <20190708231629.9296-26-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 25/25] drm/i915/tgl: Update DPLL clock
 reference register
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHJlZ2lzdGVyIGRlZmluaXRpb24gY2hhbmdlZCBmcm9tIElDTCBhbmQgaGFzIG5vdyBhbm90aGVy
IG1lYW5pbmcuClVzZSB0aGUgcmlnaHQgYml0cyBvbiBUR0wuCgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgOCArKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKaW5kZXggMzMwYjQyYTFmNTRlLi45Nzkz
MDM5NDg1ZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMKQEAgLTI1OTcsOCArMjU5NywxMiBAQCBzdGF0aWMgYm9vbCBpY2xfY2FsY19kcGxsX3N0
YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNmZ2NyMSA9IERQTExf
Q0ZHQ1IxX1FESVZfUkFUSU8ocGxsX3BhcmFtcy5xZGl2X3JhdGlvKSB8CiAJCSBEUExMX0NGR0NS
MV9RRElWX01PREUocGxsX3BhcmFtcy5xZGl2X21vZGUpIHwKIAkJIERQTExfQ0ZHQ1IxX0tESVYo
cGxsX3BhcmFtcy5rZGl2KSB8Ci0JCSBEUExMX0NGR0NSMV9QRElWKHBsbF9wYXJhbXMucGRpdikg
fAotCQkgRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDA7CisJCSBEUExMX0NGR0NSMV9QRElW
KHBsbF9wYXJhbXMucGRpdik7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJ
Y2ZnY3IxIHw9IFRHTF9EUExMX0NGR0NSMV9DRlNFTE9WUkRfTk9STUFMX1hUQUw7CisJZWxzZQor
CQljZmdjcjEgfD0gRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDA7CiAKIAltZW1zZXQocGxs
X3N0YXRlLCAwLCBzaXplb2YoKnBsbF9zdGF0ZSkpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApp
bmRleCA4NGMwNGVhNjdlYzguLmEyNDRlODE1OGFlZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CkBAIC05OTQ3LDYgKzk5NDcsNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgIERQ
TExfQ0ZHQ1IxX1BESVZfNwkJKDggPDwgMikKICNkZWZpbmUgIERQTExfQ0ZHQ1IxX0NFTlRSQUxf
RlJFUQkoMyA8PCAwKQogI2RlZmluZSAgRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDAJKDMg
PDwgMCkKKyNkZWZpbmUgIFRHTF9EUExMX0NGR0NSMV9DRlNFTE9WUkRfTk9STUFMX1hUQUwJKDAg
PDwgMCkKICNkZWZpbmUgQ05MX0RQTExfQ0ZHQ1IxKHBsbCkJCV9NTUlPX1BMTChwbGwsIF9DTkxf
RFBMTDBfQ0ZHQ1IxLCBfQ05MX0RQTEwxX0NGR0NSMSkKIAogI2RlZmluZSBfSUNMX0RQTEwwX0NG
R0NSMAkJMHgxNjQwMDAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
