Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65407CBD08
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 16:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34026EBAE;
	Fri,  4 Oct 2019 14:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EB16EBAE
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 14:23:51 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 16:23:42 +0200
Message-Id: <20191004142342.20935-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-25-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-25-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] semi-hax: drm/i915: Always verify ddb allocation
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

QW5kIG9ubHkgdmVyaWZ5IGN1cnNvciBhbGxvY2F0aW9uIHdoZW4gY3Vyc29yIHBsYW5lIGlzIGFj
dGl2ZS4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggNDZlM2U4Mjk2MjUxLi42YmRmZjA4Y2Y5YzkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzM2OSw3ICsxMzM2OSw3IEBA
IHN0YXRpYyB2b2lkIHZlcmlmeV93bV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkg
KiBhbGxvY2F0aW9uLiBJbiB0aGF0IGNhc2Ugc2luY2UgdGhlIGRkYiBhbGxvY2F0aW9uIHdpbGwg
YmUgdXBkYXRlZAogCSAqIG9uY2UgdGhlIHBsYW5lIGJlY29tZXMgdmlzaWJsZSwgd2UgY2FuIHNr
aXAgdGhpcyBjaGVjawogCSAqLwotCWlmICgxKSB7CisJaWYgKEk5MTVfUkVBRChDVVJDTlRSKHBp
cGUpKSAmIE1DVVJTT1JfTU9ERSkgewogCQlzdHJ1Y3Qgc2tsX3BsYW5lX3dtICpod19wbGFuZV93
bSwgKnN3X3BsYW5lX3dtOwogCiAJCWh3X3BsYW5lX3dtID0gJmh3LT53bS5wbGFuZXNbUExBTkVf
Q1VSU09SXTsKQEAgLTEzNjY1LDEwICsxMzY2NSwxMSBAQCBpbnRlbF9tb2Rlc2V0X3ZlcmlmeV9j
cnRjKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqb2xkX2NydGNfc3RhdGUsCiAJCQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0
Y19zdGF0ZSkKIHsKKwl2ZXJpZnlfd21fc3RhdGUoY3J0YywgbmV3X2NydGNfc3RhdGUpOworCiAJ
aWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSAmJiAhbmV3X2NydGNfc3RhdGUtPnVw
ZGF0ZV9waXBlKQogCQlyZXR1cm47CiAKLQl2ZXJpZnlfd21fc3RhdGUoY3J0YywgbmV3X2NydGNf
c3RhdGUpOwogCXZlcmlmeV9jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNydGMpOwogCXZlcmlmeV9j
cnRjX3N0YXRlKGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7CiAJdmVyaWZ5
X3NoYXJlZF9kcGxsX3N0YXRlKGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
