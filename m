Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556A45942D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 08:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B76E6E880;
	Fri, 28 Jun 2019 06:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2C36E87E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 06:28:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 23:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="164974976"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga003.jf.intel.com with ESMTP; 27 Jun 2019 23:28:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 12:23:57 +0530
Message-Id: <20190628065359.10375-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190628065359.10375-1-uma.shankar@intel.com>
References: <20190628065359.10375-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 1/3] drm/i915/icl: Handle YCbCr to RGB conversion
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
djIgYW5kIHYzIGNoYW5nZXMuCgp2NTogUmViYXNlCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU2hhc2hhbmsgU2hh
cm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggMDA0YjUyMDI3YWU4Li4yOTg2MWNmNjQ0YTQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtNDQ0LDYgKzQ0
NCwxOCBAQCBpY2xfcHJvZ3JhbV9pbnB1dF9jc2Moc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwK
IAkJCTB4OUVGOCwgMHg3ODAwLCAweEFCRjgsCiAJCQkweDAsIDB4NzgwMCwgIDB4N0VEOCwKIAkJ
fSwKKwkJLyoKKwkJICogQlQuMjAyMCBmdWxsIHJhbmdlIFlDYkNyIC0+IGZ1bGwgcmFuZ2UgUkdC
CisJCSAqIFRoZSBtYXRyaXggcmVxdWlyZWQgaXMgOgorCQkgKiBbMS4wMDAsIDAuMDAwLCAxLjQ3
NCwKKwkJICogIDEuMDAwLCAtMC4xNjQ1LCAtMC41NzEzLAorCQkgKiAgMS4wMDAsIDEuODgxNCwg
MC4wMDAwXQorCQkgKi8KKwkJW0RSTV9DT0xPUl9ZQ0JDUl9CVDIwMjBdID0geworCQkJMHg3QkM4
LCAweDc4MDAsIDB4MCwKKwkJCTB4ODkyOCwgMHg3ODAwLCAweEFBODgsCisJCQkweDAsIDB4Nzgw
MCwgMHg3RjEwLAorCQl9LAogCX07CiAKIAkvKiBNYXRyaXggZm9yIExpbWl0ZWQgUmFuZ2UgdG8g
RnVsbCBSYW5nZSBDb252ZXJzaW9uICovCkBAIC00NzIsNiArNDg0LDE4IEBAIGljbF9wcm9ncmFt
X2lucHV0X2NzYyhzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkJMHg4ODg4LCAweDc5MTgs
IDB4QURBOCwKIAkJCTB4MCwgMHg3OTE4LCAgMHg2ODcwLAogCQl9LAorCQkvKgorCQkgKiBCVC4y
MDIwIExpbWl0ZWQgcmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKKwkJICogVGhlIG1hdHJp
eCByZXF1aXJlZCBpcyA6CisJCSAqIFsxLjE2NCwgMC4wMDAsIDEuNjc4LAorCQkgKiAgMS4xNjQs
IC0wLjE4NzMsIC0wLjY1MDQsCisJCSAqICAxLjE2NCwgMi4xNDE3LCAwLjAwMDBdCisJCSAqLwor
CQlbRFJNX0NPTE9SX1lDQkNSX0JUMjAyMF0gPSB7CisJCQkweDdENzAsIDB4Nzk1MCwgMHgwLAor
CQkJMHg4QTY4LCAweDc5NTAsIDB4QUMwMCwKKwkJCTB4MCwgMHg3OTUwLCAweDY4OTAsCisJCX07
CiAJfTsKIAljb25zdCB1MTYgKmNzYzsKIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
