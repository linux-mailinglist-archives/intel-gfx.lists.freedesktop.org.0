Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A56396E11
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 09:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11D66E84D;
	Tue,  1 Jun 2021 07:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0B96E027;
 Tue,  1 Jun 2021 07:47:07 +0000 (UTC)
IronPort-SDR: HndROuOevnWrAI8UOjC6Yx/3MXEsaqOoAa5u5WsDJHar7el5ztYZR9uOtvq1b/oH3P4RoHmSiA
 IgaJT+LQTrWw==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="200481760"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="200481760"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 00:47:06 -0700
IronPort-SDR: z6GQuzkpvqGfL6bHOBDwziI4AmJtYoRvLWxYhNvVOi7cx/I0l/y9TCzbMinG3lsyqJRox5iAxw
 /1h0KhpWGZ4w==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="549648669"
Received: from clillies-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.18])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 00:47:04 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  1 Jun 2021 09:46:40 +0200
Message-Id: <20210601074654.3103-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
References: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 01/15] drm/i915: Untangle the vma pages_mutex
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
YS5jCmluZGV4IGIzMTlmZDNmOTFjYy4uMGYyMjdmMjhiMjgwIDEwMDY0NAotLS0gYS9kcml2ZXJz
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
