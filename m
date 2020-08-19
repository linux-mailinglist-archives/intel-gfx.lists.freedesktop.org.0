Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 047AD24A160
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 16:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D25D6E438;
	Wed, 19 Aug 2020 14:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AECFA6E3B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 14:09:13 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 16:09:00 +0200
Message-Id: <20200819140904.1708856-21-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 20/24] drm/i915: Use ww pinning for
 intel_context_create_request()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugd2FudCB0byBnZXQgcmlkIG9mIGludGVsX2NvbnRleHRfcGluKCksIGNvbnZlcnQKaW50ZWxf
Y29udGV4dF9jcmVhdGVfcmVxdWVzdCgpIGZpcnN0LiA6KQoKU2lnbmVkLW9mZi1ieTogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgfCAyMCArKysrKysrKysrKysr
KystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCmluZGV4IDY3MTA4MWIwZTRk
Ni4uNjFiMDVjZDRjNDdhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
CkBAIC00NDksMTUgKzQ0OSwyNSBAQCBpbnQgaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90ZV9y
ZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAogc3RydWN0IGk5MTVfcmVxdWVzdCAq
aW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7
CisJc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCB3dzsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsK
IAlpbnQgZXJyOwogCi0JZXJyID0gaW50ZWxfY29udGV4dF9waW4oY2UpOwotCWlmICh1bmxpa2Vs
eShlcnIpKQotCQlyZXR1cm4gRVJSX1BUUihlcnIpOworCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3
dywgdHJ1ZSk7CityZXRyeToKKwllcnIgPSBpbnRlbF9jb250ZXh0X3Bpbl93dyhjZSwgJnd3KTsK
KwlpZiAoIWVycikgeworCQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UpOworCQlpbnRlbF9j
b250ZXh0X3VucGluKGNlKTsKKwl9IGVsc2UgaWYgKGVyciA9PSAtRURFQURMSykgeworCQllcnIg
PSBpOTE1X2dlbV93d19jdHhfYmFja29mZigmd3cpOworCQlpZiAoIWVycikKKwkJCWdvdG8gcmV0
cnk7CisJfSBlbHNlIHsKKwkJcnEgPSBFUlJfUFRSKGVycik7CisJfQogCi0JcnEgPSBpOTE1X3Jl
cXVlc3RfY3JlYXRlKGNlKTsKLQlpbnRlbF9jb250ZXh0X3VucGluKGNlKTsKKwlpOTE1X2dlbV93
d19jdHhfZmluaSgmd3cpOwogCiAJaWYgKElTX0VSUihycSkpCiAJCXJldHVybiBycTsKLS0gCjIu
MjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
