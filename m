Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE9BC2A8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 09:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE98A6E9D9;
	Tue, 24 Sep 2019 07:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90806E9D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 07:30:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 00:30:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="195614020"
Received: from akn-lab.iind.intel.com ([10.223.74.154])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2019 00:30:53 -0700
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 13:01:52 +0530
Message-Id: <1569310312-12313-1-git-send-email-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [v2][PATCH] drm/i915: Add Pipe D cursor ctrl register
 for Gen12
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
ZXIgaW4gdGhlIGk5MTVfcmVnLmguCgp2MjogUmViYXNlCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjQwClNpZ25lZC1vZmYtYnk6IEFu
a2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMTAgKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGMyZmFhNjcuLmRjMDQ4ZDkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYwpAQCAtMTE4LDYgKzExOCwxNSBAQAogCQlbUElQRV9DXSA9IElWQl9DVVJT
T1JfQ19PRkZTRVQsIFwKIAl9CiAKKyNkZWZpbmUgVEdMX0NVUlNPUl9PRkZTRVRTIFwKKwkuY3Vy
c29yX29mZnNldHMgPSB7IFwKKwkJW1BJUEVfQV0gPSBDVVJTT1JfQV9PRkZTRVQsIFwKKwkJW1BJ
UEVfQl0gPSBJVkJfQ1VSU09SX0JfT0ZGU0VULCBcCisJCVtQSVBFX0NdID0gSVZCX0NVUlNPUl9D
X09GRlNFVCwgXAorCQlbUElQRV9EXSA9IFRHTF9DVVJTT1JfRF9PRkZTRVQsIFwKKwl9CisKKwog
I2RlZmluZSBJOVhYX0NPTE9SUyBcCiAJLmNvbG9yID0geyAuZ2FtbWFfbHV0X3NpemUgPSAyNTYg
fQogI2RlZmluZSBJOTY1X0NPTE9SUyBcCkBAIC03ODcsNiArNzk2LDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9lbGtoYXJ0bGFrZV9pbmZvID0gewogCQlb
VFJBTlNDT0RFUl9EU0lfMF0gPSBUUkFOU0NPREVSX0RTSTBfT0ZGU0VULCBcCiAJCVtUUkFOU0NP
REVSX0RTSV8xXSA9IFRSQU5TQ09ERVJfRFNJMV9PRkZTRVQsIFwKIAl9LCBcCisJVEdMX0NVUlNP
Ul9PRkZTRVRTLCBcCiAJLmhhc19nbG9iYWxfbW9jcyA9IDEsIFwKIAkuZGlzcGxheS5oYXNfZHNi
ID0gMQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBhNjljMTlhLi4yOGM0ODNhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTYyNDAsNiArNjI0MCw3IEBAIGVudW0gewogI2RlZmlu
ZSBDSFZfQ1VSU09SX0NfT0ZGU0VUIDB4NzAwZTAKICNkZWZpbmUgSVZCX0NVUlNPUl9CX09GRlNF
VCAweDcxMDgwCiAjZGVmaW5lIElWQl9DVVJTT1JfQ19PRkZTRVQgMHg3MjA4MAorI2RlZmluZSBU
R0xfQ1VSU09SX0RfT0ZGU0VUIDB4NzMwODAKIAogLyogRGlzcGxheSBBIGNvbnRyb2wgKi8KICNk
ZWZpbmUgX0RTUEFDTlRSCQkJCTB4NzAxODAKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
