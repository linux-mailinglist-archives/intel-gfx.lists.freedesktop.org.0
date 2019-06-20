Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D2D4DCF4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 23:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE65D6E7E6;
	Thu, 20 Jun 2019 21:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D846E7EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 21:46:16 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 23:46:08 +0200
Message-Id: <20190620214613.14481-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620214613.14481-1-maarten.lankhorst@linux.intel.com>
References: <20190620214613.14481-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Use intel_crtc_state in
 sanitize_watermarks() too
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

U2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDE0ICsrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggYTUxOGQ3NGY4OThmLi5iYWEwZTE5NTdmZmUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTczOCw4ICsxNTczOCw4
IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX3dhdGVybWFya3Moc3RydWN0IGRybV9kZXZpY2UgKmRl
dikKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJ
c3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlOwogCXN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKmludGVsX3N0YXRlOwotCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKLQlzdHJ1Y3QgZHJtX2Ny
dGNfc3RhdGUgKmNzdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3N0YXRlOwogCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBj
dHg7CiAJaW50IHJldDsKIAlpbnQgaTsKQEAgLTE1Nzk0LDEzICsxNTc5NCwxMSBAQCBzdGF0aWMg
dm9pZCBzYW5pdGl6ZV93YXRlcm1hcmtzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJfQogCiAJ
LyogV3JpdGUgY2FsY3VsYXRlZCB3YXRlcm1hcmsgdmFsdWVzIGJhY2sgKi8KLQlmb3JfZWFjaF9u
ZXdfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3N0YXRlLCBpKSB7Ci0JCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcyA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3N0YXRlKTsKLQotCQljcy0+
d20ubmVlZF9wb3N0dmJsX3VwZGF0ZSA9IHRydWU7Ci0JCWRldl9wcml2LT5kaXNwbGF5Lm9wdGlt
aXplX3dhdGVybWFya3MoaW50ZWxfc3RhdGUsIGNzKTsKKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0
Y19pbl9zdGF0ZShpbnRlbF9zdGF0ZSwgY3J0YywgY3N0YXRlLCBpKSB7CisJCWNzdGF0ZS0+d20u
bmVlZF9wb3N0dmJsX3VwZGF0ZSA9IHRydWU7CisJCWRldl9wcml2LT5kaXNwbGF5Lm9wdGltaXpl
X3dhdGVybWFya3MoaW50ZWxfc3RhdGUsIGNzdGF0ZSk7CiAKLQkJdG9faW50ZWxfY3J0Y19zdGF0
ZShjcnRjLT5zdGF0ZSktPndtID0gY3MtPndtOworCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMt
PmJhc2Uuc3RhdGUpLT53bSA9IGNzdGF0ZS0+d207CiAJfQogCiBwdXRfc3RhdGU6Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
