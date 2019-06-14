Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC39845D59
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5941E892CF;
	Fri, 14 Jun 2019 13:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903C0892CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:02:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 06:02:16 -0700
X-ExtLoop1: 1
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2019 06:02:16 -0700
Received: from localhost (172.28.172.64) by IRSMSX102.ger.corp.intel.com
 (163.33.3.155) with Microsoft SMTP Server (TLS) id 14.3.408.0; Fri, 14 Jun
 2019 14:02:15 +0100
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 15:02:07 +0200
Message-ID: <20190614130207.1754-1-michal.winiarski@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Originating-IP: [172.28.172.64]
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Check if reset is supported
 before attempting to reset GuC
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

TGV0J3MgdHJ1c3QgYm90aCB0aGUgdXNlciAoaTkxNS5yZXNldCBtb2RwYXJhbSkgYW5kIGRldmlj
ZSBjYXBzIGluc3RlYWQKb2YgYXR0ZW1wdGluZyB0byByZXNldCB1bmNvbmRpdGlvbmFsbHkuCgpT
aWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5j
b20+CkNjOiBBcmthZGl1c3ogSGlsZXIgPGFya2FkaXVzei5oaWxlckBpbnRlbC5jb20+CkNjOiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IFN0dWFydCBT
dW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Vj
LmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VjLmMKaW5kZXggYThlN2YwYmE3YzNiLi4wNzUyZmI3N2I2ZmUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdWMuYwpAQCAtMzgsNiArMzgsMTEgQEAgc3RhdGljIGludCBfX2ludGVsX3VjX3Jl
c2V0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpbnQgcmV0OwogCXUz
MiBndWNfc3RhdHVzOwogCisJaWYgKCFpbnRlbF9oYXNfZ3B1X3Jlc2V0KGRldl9wcml2KSkgewor
CQlEUk1fREVCVUdfRFJJVkVSKCJHUFUgcmVzZXQgZGlzYWJsZWQsIHNraXBwaW5nIEd1QyByZXNl
dFxuIik7CisJCXJldHVybiAwOworCX0KKwogCXJldCA9IGludGVsX3Jlc2V0X2d1YyhkZXZfcHJp
dik7CiAJaWYgKHJldCkgewogCQlEUk1fRVJST1IoIkZhaWxlZCB0byByZXNldCBHdUMsIHJldCA9
ICVkXG4iLCByZXQpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
