Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D3816431
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 15:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2132289F5B;
	Tue,  7 May 2019 13:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5A989F5B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 13:05:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 06:05:34 -0700
X-ExtLoop1: 1
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga008.fm.intel.com with ESMTP; 07 May 2019 06:05:33 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 18:32:57 +0530
Message-Id: <20190507130257.22837-2-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507130257.22837-1-shashank.sharma@intel.com>
References: <20190507130257.22837-1-shashank.sharma@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB conversion
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KCkN1cnJlbnRseSBpbnB1
dCBjc2MgZm9yIFlDYkNSIHRvIFJHQiBjb252ZXJzaW9uIGhhbmRsZXMgb25seQpCVDYwMSBhbmQg
QnQ3MDkuIEV4dGVuZGluZyBpdCB0byBzdXBwb3J0IEJUMjAyMCBhcyB3ZWxsLgoKU2lnbmVkLW9m
Zi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
U2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
c3ByaXRlLmMKaW5kZXggNDRhYWVhYzFiMmVkLi4yNTM2ZTc1N2JlYzIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3Nwcml0ZS5jCkBAIC00MzMsNiArNDMzLDE4IEBAIGljbF9wcm9ncmFtX2lucHV0
X2NzYyhzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkJMHg5RUY4LCAweDc4MDAsIDB4QUJG
OCwKIAkJCTB4MCwgMHg3ODAwLCAgMHg3RUQ4LAogCQl9LAorCQkvKgorCQkgKiBCVC4yMDIwIGZ1
bGwgcmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKKwkJICogVGhlIG1hdHJpeCByZXF1aXJl
ZCBpcyA6CisJCSAqIFsxLjAwMCwgMC4wMDAsIDEuNDc0LAorCQkgKiAgMS4wMDAsIC0wLjE2NDUs
IC0wLjU3MTMsCisJCSAqICAxLjAwMCwgMS44ODE0LCAwLjAwMDBdCisJCSAqLworCQlbRFJNX0NP
TE9SX1lDQkNSX0JUMjAyMF0gPSB7CisJCQkweDdCQzgsIDB4NzgwMCwgMHgwLAorCQkJMHg4OTI4
LCAweDc4MDAsIDB4QUE4OCwKKwkJCTB4MCwgMHg3ODAwLCAweDdGMTAsCisJCX0sCiAJfTsKIAog
CS8qIE1hdHJpeCBmb3IgTGltaXRlZCBSYW5nZSB0byBGdWxsIFJhbmdlIENvbnZlcnNpb24gKi8K
QEAgLTQ2MSw2ICs0NzMsMTggQEAgaWNsX3Byb2dyYW1faW5wdXRfY3NjKHN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmUsCiAJCQkweDg4ODgsIDB4NzkxOCwgMHhBREE4LAogCQkJMHgwLCAweDc5MTgs
ICAweDY4NzAsCiAJCX0sCisJCS8qCisJCSAqIEJULjIwMjAgTGltaXRlZCByYW5nZSBZQ2JDciAt
PiBmdWxsIHJhbmdlIFJHQgorCQkgKiBUaGUgbWF0cml4IHJlcXVpcmVkIGlzIDoKKwkJICogWzEu
MTY0LCAwLjAwMCwgMS43MTcsCisJCSAqICAxLjEzOCwgLTAuMTg3MywgLTAuNjUwNCwKKwkJICog
IDEuMTM4MCwgMi4xNDE3LCAwLjAwMDBdCisJCSAqLworCQlbRFJNX0NPTE9SX1lDQkNSX0JUMjAy
MF0gPSB7CisJCQkweDdEQzAsIDB4Nzk1MCwgMHgwLAorCQkJMHg4QTY4LCAweDc5MTgsIDB4QUMw
MCwKKwkJCTB4MCwgMHg3OTE4LCAweDY4OTAsCisJCX0sCiAJfTsKIAljb25zdCB1MTYgKmNzYzsK
IAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
