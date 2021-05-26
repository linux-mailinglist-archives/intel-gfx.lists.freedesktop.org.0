Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 226EC391637
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1C76EC94;
	Wed, 26 May 2021 11:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ACB6EC94;
 Wed, 26 May 2021 11:33:17 +0000 (UTC)
IronPort-SDR: ubN/+WeMf68APdg5th4Ch2RfTV3FYS+D55kAYWyVdmZbPRtqulbhVCGtvvG1HuSTmCAIfOEsmU
 32uytp8Q/89Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627260"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627260"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:16 -0700
IronPort-SDR: R2moboSEHH8JQYXHqC9Ofrt36BXVgrB8v1h5tL/yQyGdrSqYB8Mi62U+jLh6k7AvLkvVL1YXaF
 9ERT6ct4A8Mw==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457844"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:11 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:45 +0200
Message-Id: <20210526113259.1661914-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 01/15] drm/i915: Untangle the vma pages_mutex
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

QW55IHNsZWVwaW5nIGRtYV9yZXN2IGxvY2sgdGFrZW4gd2hpbGUgdGhlIHZtYSBwYWdlc19tdXRl
eCBpcyBoZWxkCndpbGwgY2F1c2UgYSBsb2NrZGVwIHNwbGF0LgpNb3ZlIHRoZSBpOTE1X2dlbV9v
YmplY3RfcGluX3BhZ2VzKCkgY2FsbCBvdXQgb2YgdGhlIHBhZ2VzX211dGV4CmNyaXRpY2FsIHNl
Y3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdm1hLmMgfCAyOSArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jCmluZGV4IGE2Y2QwZmE2Mjg0Ny4uZjJiNTkxMmZjNTQyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMKQEAgLTgwMCwzMiArODAwLDM3IEBAIHN0YXRpYyBib29sIHRyeV9xYWRfcGluKHN0cnVj
dCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiBzdGF0aWMgaW50IHZtYV9nZXRf
cGFnZXMoc3RydWN0IGk5MTVfdm1hICp2bWEpCiB7CiAJaW50IGVyciA9IDA7CisJYm9vbCBwaW5u
ZWRfcGFnZXMgPSBmYWxzZTsKIAogCWlmIChhdG9taWNfYWRkX3VubGVzcygmdm1hLT5wYWdlc19j
b3VudCwgMSwgMCkpCiAJCXJldHVybiAwOwogCisJaWYgKHZtYS0+b2JqKSB7CisJCWVyciA9IGk5
MTVfZ2VtX29iamVjdF9waW5fcGFnZXModm1hLT5vYmopOworCQlpZiAoZXJyKQorCQkJcmV0dXJu
IGVycjsKKwkJcGlubmVkX3BhZ2VzID0gdHJ1ZTsKKwl9CisKIAkvKiBBbGxvY2F0aW9ucyBhaG95
ISAqLwotCWlmIChtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnZtYS0+cGFnZXNfbXV0ZXgpKQot
CQlyZXR1cm4gLUVJTlRSOworCWlmIChtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnZtYS0+cGFn
ZXNfbXV0ZXgpKSB7CisJCWVyciA9IC1FSU5UUjsKKwkJZ290byB1bnBpbjsKKwl9CiAKIAlpZiAo
IWF0b21pY19yZWFkKCZ2bWEtPnBhZ2VzX2NvdW50KSkgewotCQlpZiAodm1hLT5vYmopIHsKLQkJ
CWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXModm1hLT5vYmopOwotCQkJaWYgKGVycikK
LQkJCQlnb3RvIHVubG9jazsKLQkJfQotCiAJCWVyciA9IHZtYS0+b3BzLT5zZXRfcGFnZXModm1h
KTsKLQkJaWYgKGVycikgewotCQkJaWYgKHZtYS0+b2JqKQotCQkJCWk5MTVfZ2VtX29iamVjdF91
bnBpbl9wYWdlcyh2bWEtPm9iaik7CisJCWlmIChlcnIpCiAJCQlnb3RvIHVubG9jazsKLQkJfQor
CQlwaW5uZWRfcGFnZXMgPSBmYWxzZTsKIAl9CiAJYXRvbWljX2luYygmdm1hLT5wYWdlc19jb3Vu
dCk7CiAKIHVubG9jazoKIAltdXRleF91bmxvY2soJnZtYS0+cGFnZXNfbXV0ZXgpOwordW5waW46
CisJaWYgKHBpbm5lZF9wYWdlcykKKwkJX19pOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXModm1h
LT5vYmopOwogCiAJcmV0dXJuIGVycjsKIH0KLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
