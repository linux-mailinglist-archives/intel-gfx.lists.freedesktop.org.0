Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7898107C30
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 01:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FD66F598;
	Sat, 23 Nov 2019 00:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF776F59A
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 00:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 16:55:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600"; d="scan'208";a="219643999"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.73])
 by orsmga002.jf.intel.com with ESMTP; 22 Nov 2019 16:55:02 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 16:54:56 -0800
Message-Id: <20191123005459.155383-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191123005459.155383-1-jose.souza@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before disable
 pipe/transcoder clock
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzYWJsaW5nIHBpcGUvdHJhbnNjb2RlciBjbG9jayBiZWZvcmUgcG93ZXIgZG93biBzaW5rIGNv
dWxkIGNhdXNlCnNpbmsgbG9zdCBzaWduYWwsIGNhdXNpbmcgaXQgdG8gdHJpZ2dlciBhIGhvdHBs
dWcgdG8gbm90aWZ5IHNvdXJjZQp0aGF0IGxpbmsgc2lnbmFsIHdhcyBsb3N0LgoKQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKaW5kZXggZDJmMGQzOTNkM2VlLi43ZDNhNmUzYzdmNTcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzgwOCwxMiArMzgwOCwxMiBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBl
bmNvZGVyLT5wb3J0KTsKIAogCWlmICghaXNfbXN0KSB7Ci0JCWludGVsX2RkaV9kaXNhYmxlX3Bp
cGVfY2xvY2sob2xkX2NydGNfc3RhdGUpOwogCQkvKgogCQkgKiBQb3dlciBkb3duIHNpbmsgYmVm
b3JlIGRpc2FibGluZyB0aGUgcG9ydCwgb3RoZXJ3aXNlIHdlIGVuZAogCQkgKiB1cCBnZXR0aW5n
IGludGVycnVwdHMgZnJvbSB0aGUgc2luayBvbiBkZXRlY3RpbmcgbGluayBsb3NzLgogCQkgKi8K
IAkJaW50ZWxfZHBfc2lua19kcG1zKGludGVsX2RwLCBEUk1fTU9ERV9EUE1TX09GRik7CisJCWlu
dGVsX2RkaV9kaXNhYmxlX3BpcGVfY2xvY2sob2xkX2NydGNfc3RhdGUpOwogCX0KIAogCWludGVs
X2Rpc2FibGVfZGRpX2J1ZihlbmNvZGVyLCBvbGRfY3J0Y19zdGF0ZSk7Ci0tIAoyLjI0LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
