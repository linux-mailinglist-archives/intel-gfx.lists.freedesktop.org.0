Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 813143155AA
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 19:13:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF066EB8B;
	Tue,  9 Feb 2021 18:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208B96E0F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 18:13:23 +0000 (UTC)
IronPort-SDR: DXokVzZHVFjPJ+7DZedqMrxz4CUcAwMwxGoSgiRwONy0A5mT8ix2DWknKlsye/mA+wwHjKRXU1
 h34Dhd01nktg==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="201014107"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="201014107"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 10:13:22 -0800
IronPort-SDR: I5/9uAeU8d01b1MTVFxMQ554Dc2c2WM1ZL+n6T2LdBgW4G+RS8kqDvdkqjvD9QRuLp2RUdI/5y
 94saE96d7bmA==
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="396324660"
Received: from rmahmood-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.190.123])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 10:13:21 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 10:14:37 -0800
Message-Id: <20210209181439.215104-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210209181439.215104-1-jose.souza@intel.com>
References: <20210209181439.215104-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Only write to register in
 intel_psr2_program_trans_man_trk_ctl()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

VGhlcmUgaXMgbm8gc3VwcG9ydCBmb3IgdHdvIHBpcGVzIG9uZSB0cmFuc2NvZGVyIGZvciBQU1Ig
YW5kIGlmIHdlIGhhZAp0aGF0IHRoZSBjdXJyZW50IGNvZGUgc2hvdWxkIG5vdCB1c2UgY3B1X3Ry
YW5zY29kZXIuCkFsc28gSSBjYW4ndCBzZWUgYSBzY2VuYXJpbyB3aGVyZSBjcnRjX3N0YXRlLT5l
bmFibGVfcHNyMl9zZWxfZmV0Y2ggaXMKc2V0IGFuZCBQU1IgaXMgbm90IGVuYWJsZWQgYW5kIGlm
IGJ5IGEgYnVnIGl0IGhhcHBlbnMgUFNSIEhXIHdpbGwganVzdAppZ25vcmUgYW55IHZhbHVlIGlu
IHNldCBpbiBQU1IyX01BTl9UUktfQ1RMLgoKU28gZHJvcHBpbmcgYWxsIHRoZSByZXN0IGFuZCBr
ZWVwaW5nIHRoZSBzYW1lIGJlaGF2aW9yIHRoYXQgd2UgaGF2ZQp3aXRoIGludGVsX3BzcjJfcHJv
Z3JhbV9wbGFuZV9zZWxfZmV0Y2goKS4KCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25n
Lm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCAxNCArKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKaW5kZXggMWQzOTAzNjEyZmNiLi44YWQ5ZmNmZjNhMTIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMTIyNiwyMyArMTIyNiwxMyBAQCB2b2lkIGlu
dGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwKIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwotCXN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwogCiAJaWYgKCFIQVNfUFNSMl9TRUxfRkVUQ0go
ZGV2X3ByaXYpIHx8CiAJICAgICFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpCiAJ
CXJldHVybjsKIAotCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFza193aXRoX3BzcigmZGV2X3By
aXYtPmRybSwgZW5jb2RlciwKLQkJCQkJICAgICBjcnRjX3N0YXRlLT51YXBpLmVuY29kZXJfbWFz
aykgewotCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29k
ZXIpOwotCi0JCWlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQotCQkJY29udGludWU7Ci0KLQkJ
aW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsCi0JCQkgICAgICAgUFNSMl9NQU5fVFJLX0NUTChjcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2RlciksCi0JCQkgICAgICAgY3J0Y19zdGF0ZS0+cHNyMl9tYW5f
dHJhY2tfY3RsKTsKLQl9CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBTUjJfTUFOX1RSS19D
VEwoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpLAorCQkgICAgICAgY3J0Y19zdGF0ZS0+cHNy
Ml9tYW5fdHJhY2tfY3RsKTsKIH0KIAogc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxj
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotLSAKMi4zMC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
