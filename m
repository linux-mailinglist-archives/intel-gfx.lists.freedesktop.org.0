Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D61630581
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 01:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65E66E17D;
	Thu, 30 May 2019 23:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBF56E179
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 23:40:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 16:40:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,533,1549958400"; d="scan'208";a="180123686"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga002.fm.intel.com with ESMTP; 30 May 2019 16:40:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 May 2019 16:40:14 -0700
Message-Id: <20190530234014.22340-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.14.5
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
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

RUhMIGRlZmluZXMgdHdvIG5ldyBNT0NTIHRhYmxlIGVudHJpZXMgYnV0IGlzIG90aGVyd2lzZSBj
b21wYXRpYmxlIHdpdGgKdGhlIElDTCBNT0NTIHRhYmxlLgoKVGhlc2UgdGFibGUgZW50cmllcyAo
MTYgYW5kIDE3KSBzaG91bGQgc3RpbGwgYmUgY29uc2lkZXJlZCB1bnVzZWQgZm9yCklDTCBhbmQg
YXMgc3VjaCB0aGVpciBiZWhhdmlvciByZW1haW5zIHVuZGVmaW5lZCBmb3IgdGhhdCBwbGF0Zm9y
bS4KClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgOCArKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X21vY3MuYwppbmRleCA3OWRmNjYwMjJkM2EuLjFmOWRiNTBiMTg2OSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX21vY3MuYwpAQCAtMjAwLDYgKzIwMCwxNCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X21vY3NfZW50cnkgYnJveHRvbl9tb2NzX3RhYmxlW10gPSB7CiAJTU9DU19F
TlRSWSgxNSwgXAogCQkgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDIpIHwgTEVf
QU9NKDEpLCBcCiAJCSAgIEwzXzNfV0IpLCBcCisJLyogQnlwYXNzIExMQyAtIFVuY2FjaGVkIChF
SEwrKSAqLyBcCisJTU9DU19FTlRSWSgxNiwgXAorCQkgICBMRV8xX1VDIHwgTEVfVENfMV9MTEMg
fCBMRV9TQ0YoMSksIFwKKwkJICAgTDNfMV9VQyksIFwKKwkvKiBCeXBhc3MgTExDIC0gTDMgKFJl
YWQtT25seSkgKEVITCspICovIFwKKwlNT0NTX0VOVFJZKDE3LCBcCisJCSAgIExFXzFfVUMgfCBM
RV9UQ18xX0xMQyB8IExFX1NDRigxKSwgXAorCQkgICBMM18zX1dCKSwgXAogCS8qIFNlbGYtU25v
b3AgLSBMMyArIExMQyAqLyBcCiAJTU9DU19FTlRSWSgxOCwgXAogCQkgICBMRV8zX1dCIHwgTEVf
VENfMV9MTEMgfCBMRV9MUlVNKDMpIHwgTEVfU1NFKDMpLCBcCi0tIAoyLjE0LjUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
