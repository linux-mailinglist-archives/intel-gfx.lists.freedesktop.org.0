Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3AF337465
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859496EC93;
	Thu, 11 Mar 2021 13:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C3E6EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:41:46 +0100
Message-Id: <20210311134249.588632-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 06/69] drm/i915: Add gem object locking to
 madvise.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG9lc24ndCBuZWVkIHRoZSBmdWxsIHd3IGxvY2ssIG9ubHkgY2hlY2tpbmcgaWYgcGFnZXMgYXJl
IGJvdW5kLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4gI2lyYwotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggYjJlM2I1Y2Zj
Y2I0Li5kYWY2YTc0MmE3NjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtOTQxLDEwICs5
NDEsMTQgQEAgaTkxNV9nZW1fbWFkdmlzZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2
b2lkICpkYXRhLAogCWlmICghb2JqKQogCQlyZXR1cm4gLUVOT0VOVDsKIAotCWVyciA9IG11dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgmb2JqLT5tbS5sb2NrKTsKKwllcnIgPSBpOTE1X2dlbV9vYmpl
Y3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7CiAJaWYgKGVycikKIAkJZ290byBvdXQ7
CiAKKwllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJm9iai0+bW0ubG9jayk7CisJaWYg
KGVycikKKwkJZ290byBvdXRfd3c7CisKIAlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhv
YmopICYmCiAJICAgIGk5MTVfZ2VtX29iamVjdF9pc190aWxlZChvYmopICYmCiAJICAgIGk5MTUt
PnF1aXJrcyAmIFFVSVJLX1BJTl9TV0laWkxFRF9QQUdFUykgewpAQCAtOTg5LDYgKzk5Myw4IEBA
IGk5MTVfZ2VtX21hZHZpc2VfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwKIAlhcmdzLT5yZXRhaW5lZCA9IG9iai0+bW0ubWFkdiAhPSBfX0k5MTVfTUFEVl9QVVJHRUQ7
CiAJbXV0ZXhfdW5sb2NrKCZvYmotPm1tLmxvY2spOwogCitvdXRfd3c6CisJaTkxNV9nZW1fb2Jq
ZWN0X3VubG9jayhvYmopOwogb3V0OgogCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAlyZXR1
cm4gZXJyOwotLSAKMi4zMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
