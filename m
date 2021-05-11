Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E242137A777
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 15:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C4C6E519;
	Tue, 11 May 2021 13:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D27B6E519;
 Tue, 11 May 2021 13:26:07 +0000 (UTC)
IronPort-SDR: Rvq0eUMlqdJjc/VKacGKy30dhu3GgKo12pnZzK0ueM+SOCGPYpL6N2g1njggaJ+B3sM5YM5aKr
 /uC5dCVmUUaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="196345382"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="196345382"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:26:07 -0700
IronPort-SDR: NEYGvOdIkRNBNlKw4oC3AxI4yrfJsnWv+hfUXwkdqrMuT+IotUWWWt5GnmKWbduWH3PT2F6gtX
 OHDNaATxHltw==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="468905384"
Received: from kjeldbeg-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:26:05 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 11 May 2021 15:25:19 +0200
Message-Id: <20210511132525.377190-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Untangle the vma pages_mutex
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

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKQW55
IHNsZWVwaW5nIGRtYV9yZXN2IGxvY2sgdGFrZW4gd2hpbGUgdGhlIHZtYSBwYWdlc19tdXRleCBp
cyBoZWxkCndpbGwgY2F1c2UgYSBsb2NrZGVwIHNwbGF0LgpNb3ZlIHRoZSBpOTE1X2dlbV9vYmpl
Y3RfcGluX3BhZ2VzKCkgY2FsbCBvdXQgb2YgdGhlIHBhZ2VzX211dGV4CmNyaXRpY2FsIHNlY3Rp
b24uCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8IDMzICsrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlv
bnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCmluZGV4IGE2Y2Qw
ZmE2Mjg0Ny4uN2IxYzBmNGU2MGQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKQEAgLTgwMCwz
MiArODAwLDM3IEBAIHN0YXRpYyBib29sIHRyeV9xYWRfcGluKHN0cnVjdCBpOTE1X3ZtYSAqdm1h
LCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiBzdGF0aWMgaW50IHZtYV9nZXRfcGFnZXMoc3RydWN0IGk5
MTVfdm1hICp2bWEpCiB7CiAJaW50IGVyciA9IDA7CisJYm9vbCBwaW5uZWRfcGFnZXMgPSBmYWxz
ZTsKIAogCWlmIChhdG9taWNfYWRkX3VubGVzcygmdm1hLT5wYWdlc19jb3VudCwgMSwgMCkpCiAJ
CXJldHVybiAwOwogCisJaWYgKHZtYS0+b2JqKSB7CisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9w
aW5fcGFnZXModm1hLT5vYmopOworCQlpZiAoZXJyKQorCQkJcmV0dXJuIGVycjsKKwkJcGlubmVk
X3BhZ2VzID0gdHJ1ZTsKKwl9CisKIAkvKiBBbGxvY2F0aW9ucyBhaG95ISAqLwotCWlmIChtdXRl
eF9sb2NrX2ludGVycnVwdGlibGUoJnZtYS0+cGFnZXNfbXV0ZXgpKQotCQlyZXR1cm4gLUVJTlRS
OworCWlmIChtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnZtYS0+cGFnZXNfbXV0ZXgpKSB7CisJ
CWVyciA9IC1FSU5UUjsKKwkJZ290byB1bnBpbjsKKwl9CiAKIAlpZiAoIWF0b21pY19yZWFkKCZ2
bWEtPnBhZ2VzX2NvdW50KSkgewotCQlpZiAodm1hLT5vYmopIHsKLQkJCWVyciA9IGk5MTVfZ2Vt
X29iamVjdF9waW5fcGFnZXModm1hLT5vYmopOwotCQkJaWYgKGVycikKLQkJCQlnb3RvIHVubG9j
azsKLQkJfQotCiAJCWVyciA9IHZtYS0+b3BzLT5zZXRfcGFnZXModm1hKTsKLQkJaWYgKGVycikg
ewotCQkJaWYgKHZtYS0+b2JqKQotCQkJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyh2bWEt
Pm9iaik7CisJCWlmIChlcnIpCiAJCQlnb3RvIHVubG9jazsKLQkJfQorCQlwaW5uZWRfcGFnZXMg
PSBmYWxzZTsKIAl9CiAJYXRvbWljX2luYygmdm1hLT5wYWdlc19jb3VudCk7CiAKIHVubG9jazoK
IAltdXRleF91bmxvY2soJnZtYS0+cGFnZXNfbXV0ZXgpOwordW5waW46CisJaWYgKHBpbm5lZF9w
YWdlcykKKwkJX19pOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXModm1hLT5vYmopOwogCiAJcmV0
dXJuIGVycjsKIH0KQEAgLTgzOCwxMCArODQzLDEwIEBAIHN0YXRpYyB2b2lkIF9fdm1hX3B1dF9w
YWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdW5zaWduZWQgaW50IGNvdW50KQogCWlmIChhdG9t
aWNfc3ViX3JldHVybihjb3VudCwgJnZtYS0+cGFnZXNfY291bnQpID09IDApIHsKIAkJdm1hLT5v
cHMtPmNsZWFyX3BhZ2VzKHZtYSk7CiAJCUdFTV9CVUdfT04odm1hLT5wYWdlcyk7Ci0JCWlmICh2
bWEtPm9iaikKLQkJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyh2bWEtPm9iaik7CiAJfQog
CW11dGV4X3VubG9jaygmdm1hLT5wYWdlc19tdXRleCk7CisJaWYgKHZtYS0+b2JqKQorCQlpOTE1
X2dlbV9vYmplY3RfdW5waW5fcGFnZXModm1hLT5vYmopOwogfQogCiBzdGF0aWMgdm9pZCB2bWFf
cHV0X3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQotLSAKMi4zMC4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
