Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A8721E409
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 01:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF206E839;
	Mon, 13 Jul 2020 23:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 582926E839
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 23:51:48 +0000 (UTC)
IronPort-SDR: A4OFRgcNbNDSmXIxLI0OdEsS7bWw4D8DzdzIVxY4Te09czfagRn5XR48SiYyv5vpSKXTIFmAq4
 UqhTz6tvIV5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="136907616"
X-IronPort-AV: E=Sophos;i="5.75,349,1589266800"; d="scan'208";a="136907616"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 16:51:46 -0700
IronPort-SDR: M4ggnQdp595esS01Hn2PbsGEexr/TCQ8DWUNz0bfNC+YOxB4+jKeGJgOcARqjb9mZIREVAXQ7J
 HTgCgewOZWbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,349,1589266800"; d="scan'208";a="281571369"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga003.jf.intel.com with ESMTP; 13 Jul 2020 16:51:46 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 16:53:34 -0700
Message-Id: <20200713235334.84263-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200713235334.84263-1-jose.souza@intel.com>
References: <20200713235334.84263-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/2] DO_NOT_MERGE_IT: drm/i915/display:
 Enable HOBL by default
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

RW5hYmxpbmcgYnkgZGVmYXVsdCB0byBoYXZlIHNvbWUgdGVzdGluZyBpbiBDSSBidXQgdGhlIGRl
c2lyZWQgYmVoYXZpb3IKaXMgb25seSBlbmFibGUgaXQgd2hlbiBIVy9WQlQgc2F5cyBpdCBpcyBz
dXBwb3J0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOTJhZTAzNjQ0
MGZhLi5jYzE5NDdhOWY3NDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwpAQCAtMTA3Myw3ICsxMDczLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1
Zl90cmFucyAqCiB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLAogCQkJaW50ICpuX2VudHJpZXMpCiB7Ci0JaWYg
KHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZfcHJpdi0+dmJ0LmVkcC5ob2JsKSB7CisJ
aWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewogCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwogCiAJCWlmICghaW50ZWxfZHAtPmhvYmxf
ZmFpbGVkICYmIHJhdGUgPD0gNTQwMDAwKSB7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
