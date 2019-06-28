Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A3E5951B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 09:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820946E891;
	Fri, 28 Jun 2019 07:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541B26E88B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 07:37:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 00:37:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="170676382"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2019 00:37:04 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 13:32:28 +0530
Message-Id: <20190628080230.27492-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190628080230.27492-1-uma.shankar@intel.com>
References: <20190628080230.27492-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 1/3] drm/i915/icl: Handle YCbCr to RGB conversion
 for BT2020 case
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

Q3VycmVudGx5IGlucHV0IGNzYyBmb3IgWUNiQ1IgdG8gUkdCIGNvbnZlcnNpb24gaGFuZGxlcyBv
bmx5CkJUNjAxIGFuZCBCdDcwOS4gRXh0ZW5kaW5nIGl0IHRvIHN1cHBvcnQgQlQyMDIwIGFzIHdl
bGwuCgp2MjogRml4ZWQgdGhlIGNvLWVmZmljaWVudHMgZm9yIExSIHRvIEZSIGNvbnZlcnNpb24s
CmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KCnYzOiBGaXhlZCBZIFByZS1vZmZzZXQgaW4gY2FzZSBv
ZiBGdWxsIFJhbmdlIFlDYkNyIGFzIHN1Z2dlc3RlZApieSBWaWxsZS4KCnY0OiBTcGxpdCB0aGUg
djIgYW5kIHYzIGNoYW5nZXMuCgp2NTogUmViYXNlCgp2NjogRml4IGEgcmViYXNlIGZ1bWJsZS4K
ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDI0ICsr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCAwMDRiNTIw
MjdhZTguLjFiNzZhNTRhOTFhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jCkBAIC00NDQsNiArNDQ0LDE4IEBAIGljbF9wcm9ncmFtX2lucHV0X2NzYyhz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkJMHg5RUY4LCAweDc4MDAsIDB4QUJGOCwKIAkJ
CTB4MCwgMHg3ODAwLCAgMHg3RUQ4LAogCQl9LAorCQkvKgorCQkgKiBCVC4yMDIwIGZ1bGwgcmFu
Z2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKKwkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6
CisJCSAqIFsxLjAwMCwgMC4wMDAsIDEuNDc0LAorCQkgKiAgMS4wMDAsIC0wLjE2NDUsIC0wLjU3
MTMsCisJCSAqICAxLjAwMCwgMS44ODE0LCAwLjAwMDBdCisJCSAqLworCQlbRFJNX0NPTE9SX1lD
QkNSX0JUMjAyMF0gPSB7CisJCQkweDdCQzgsIDB4NzgwMCwgMHgwLAorCQkJMHg4OTI4LCAweDc4
MDAsIDB4QUE4OCwKKwkJCTB4MCwgMHg3ODAwLCAweDdGMTAsCisJCX0sCiAJfTsKIAogCS8qIE1h
dHJpeCBmb3IgTGltaXRlZCBSYW5nZSB0byBGdWxsIFJhbmdlIENvbnZlcnNpb24gKi8KQEAgLTQ3
Miw2ICs0ODQsMTggQEAgaWNsX3Byb2dyYW1faW5wdXRfY3NjKHN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmUsCiAJCQkweDg4ODgsIDB4NzkxOCwgMHhBREE4LAogCQkJMHgwLCAweDc5MTgsICAweDY4
NzAsCiAJCX0sCisJCS8qCisJCSAqIEJULjIwMjAgTGltaXRlZCByYW5nZSBZQ2JDciAtPiBmdWxs
IHJhbmdlIFJHQgorCQkgKiBUaGUgbWF0cml4IHJlcXVpcmVkIGlzIDoKKwkJICogWzEuMTY0LCAw
LjAwMCwgMS42NzgsCisJCSAqICAxLjE2NCwgLTAuMTg3MywgLTAuNjUwNCwKKwkJICogIDEuMTY0
LCAyLjE0MTcsIDAuMDAwMF0KKwkJICovCisJCVtEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwXSA9IHsK
KwkJCTB4N0Q3MCwgMHg3OTUwLCAweDAsCisJCQkweDhBNjgsIDB4Nzk1MCwgMHhBQzAwLAorCQkJ
MHgwLCAweDc5NTAsIDB4Njg5MCwKKwkJfSwKIAl9OwogCWNvbnN0IHUxNiAqY3NjOwogCi0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
