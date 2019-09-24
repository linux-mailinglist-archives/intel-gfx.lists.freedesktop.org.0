Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A61BC1D5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 08:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C044F6E0DE;
	Tue, 24 Sep 2019 06:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823CC6E0DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 06:39:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 23:39:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="363883808"
Received: from akn-lab.iind.intel.com ([10.223.74.154])
 by orsmga005.jf.intel.com with ESMTP; 23 Sep 2019 23:39:19 -0700
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 12:10:18 +0530
Message-Id: <1569307218-11762-1-git-send-email-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915: Add Pipe D cursor ctrl register for
 Gen12
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

RnJvbTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPgoKQ3VycmVu
dGx5IHRoZSBvZmZzZXQgZm9yIFBJUEUgRCBjdXJzb3IgY29udHJvbCByZWdpc3RlciBpcyBtaXNz
aW5nIGluCmk5MTVfcmVnLmggZHVlIHRvIHdoaWNoIHRoZSBjdXJzb3IgcGxhbmUgY2Fubm90IGJl
IGVuYWJsZWQgZm9yIFBpcGUgRC4KVGhpcyBhbHNvIGNhdXNlcyBrZXJuZWwgV2FybmluZywgd2hl
biBhIHVzZXIgcmVxdWVzdHMgdG8gZW5hYmxlIGN1cnNvcgpwbGFuZSBmb3IgUElQRSBEIGZvciBH
ZW4gMTIgcGxhdGZvcm1zLgoKVGhpcyBwYXRjaCBhZGRzIHRoZSBDVVJTT1JfQ1RMX0QgcmVnaXN0
ZXIgaW4gdGhlIGk5MTVfcmVnLmguCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjQwClNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRpeWFs
IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jIHwgMTAgKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jCmluZGV4IGZlNjk0MWMuLjJmMDFkNTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YwpAQCAtMTE4LDYgKzExOCwxNSBAQAogCQlbUElQRV9DXSA9IElWQl9DVVJTT1JfQ19PRkZTRVQs
IFwKIAl9CiAKKyNkZWZpbmUgVEdMX0NVUlNPUl9PRkZTRVRTIFwKKwkuY3Vyc29yX29mZnNldHMg
PSB7IFwKKwkJW1BJUEVfQV0gPSBDVVJTT1JfQV9PRkZTRVQsIFwKKwkJW1BJUEVfQl0gPSBJVkJf
Q1VSU09SX0JfT0ZGU0VULCBcCisJCVtQSVBFX0NdID0gSVZCX0NVUlNPUl9DX09GRlNFVCwgXAor
CQlbUElQRV9EXSA9IFRHTF9DVVJTT1JfRF9PRkZTRVQsIFwKKwl9CisKKwogI2RlZmluZSBJOVhY
X0NPTE9SUyBcCiAJLmNvbG9yID0geyAuZ2FtbWFfbHV0X3NpemUgPSAyNTYgfQogI2RlZmluZSBJ
OTY1X0NPTE9SUyBcCkBAIC03ODcsNiArNzk2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRl
bF9kZXZpY2VfaW5mbyBpbnRlbF9lbGtoYXJ0bGFrZV9pbmZvID0gewogCQlbVFJBTlNDT0RFUl9E
U0lfMF0gPSBUUkFOU0NPREVSX0RTSTBfT0ZGU0VULCBcCiAJCVtUUkFOU0NPREVSX0RTSV8xXSA9
IFRSQU5TQ09ERVJfRFNJMV9PRkZTRVQsIFwKIAl9LCBcCisJVEdMX0NVUlNPUl9PRkZTRVRTLCBc
CiAJLmhhc19nbG9iYWxfbW9jcyA9IDEKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZp
Y2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5mbyA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CmluZGV4IDVlM2E2MTcuLjBjODUzNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNjIz
Myw2ICs2MjMzLDcgQEAgZW51bSB7CiAjZGVmaW5lIENIVl9DVVJTT1JfQ19PRkZTRVQgMHg3MDBl
MAogI2RlZmluZSBJVkJfQ1VSU09SX0JfT0ZGU0VUIDB4NzEwODAKICNkZWZpbmUgSVZCX0NVUlNP
Ul9DX09GRlNFVCAweDcyMDgwCisjZGVmaW5lIFRHTF9DVVJTT1JfRF9PRkZTRVQgMHg3MzA4MAog
CiAvKiBEaXNwbGF5IEEgY29udHJvbCAqLwogI2RlZmluZSBfRFNQQUNOVFIJCQkJMHg3MDE4MAot
LSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
