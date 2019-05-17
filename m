Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFD421B1F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5A2898CE;
	Fri, 17 May 2019 16:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82FC8993B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:03:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:03:22 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2019 09:03:20 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:00:31 +0530
Message-Id: <1558110633-3723-2-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
References: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 1/3] drm/i915/icl: Handle YCbCr to RGB conversion
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
djIgYW5kIHYzIGNoYW5nZXMuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFu
ay5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0
ZS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKaW5kZXggMjkxM2U4OS4u
NGY1MTM2MDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCkBAIC00MzMsNiArNDMz
LDE4IEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAkJCTB4OUVGOCwgMHg3ODAwLCAweEFCRjgsCiAJ
CQkweDAsIDB4NzgwMCwgIDB4N0VEOCwKIAkJfSwKKwkJLyoKKwkJICogQlQuMjAyMCBmdWxsIHJh
bmdlIFlDYkNyIC0+IGZ1bGwgcmFuZ2UgUkdCCisJCSAqIFRoZSBtYXRyaXggcmVxdWlyZWQgaXMg
OgorCQkgKiBbMS4wMDAsIDAuMDAwLCAxLjQ3NCwKKwkJICogIDEuMDAwLCAtMC4xNjQ1LCAtMC41
NzEzLAorCQkgKiAgMS4wMDAsIDEuODgxNCwgMC4wMDAwXQorCQkgKi8KKwkJW0RSTV9DT0xPUl9Z
Q0JDUl9CVDIwMjBdID0geworCQkJMHg3QkM4LCAweDc4MDAsIDB4MCwKKwkJCTB4ODkyOCwgMHg3
ODAwLCAweEFBODgsCisJCQkweDAsIDB4NzgwMCwgMHg3RjEwLAorCQl9LAogCX07CiAKIAkvKiBN
YXRyaXggZm9yIExpbWl0ZWQgUmFuZ2UgdG8gRnVsbCBSYW5nZSBDb252ZXJzaW9uICovCkBAIC00
NjEsNiArNDczLDE4IEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAkJCTB4ODg4OCwgMHg3OTE4LCAw
eEFEQTgsCiAJCQkweDAsIDB4NzkxOCwgIDB4Njg3MCwKIAkJfSwKKwkJLyoKKwkJICogQlQuMjAy
MCBMaW1pdGVkIHJhbmdlIFlDYkNyIC0+IGZ1bGwgcmFuZ2UgUkdCCisJCSAqIFRoZSBtYXRyaXgg
cmVxdWlyZWQgaXMgOgorCQkgKiBbMS4xNjQsIDAuMDAwLCAxLjY3OCwKKwkJICogIDEuMTY0LCAt
MC4xODczLCAtMC42NTA0LAorCQkgKiAgMS4xNjQsIDIuMTQxNywgMC4wMDAwXQorCQkgKi8KKwkJ
W0RSTV9DT0xPUl9ZQ0JDUl9CVDIwMjBdID0geworCQkJMHg3RDcwLCAweDc5NTAsIDB4MCwKKwkJ
CTB4OEE2OCwgMHg3OTUwLCAweEFDMDAsCisJCQkweDAsIDB4Nzk1MCwgMHg2ODkwLAorCQl9LAog
CX07CiAJY29uc3QgdTE2ICpjc2M7CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
