Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A825A2AF639
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 17:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B18B89FE6;
	Wed, 11 Nov 2020 16:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6DA89216
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 16:24:23 +0000 (UTC)
IronPort-SDR: 0kkPtOuSqOEfeHej3mlWtN4eRceRrXDlYXgK8TQLlxqIt83kDVU2kaMItbFUNvetX4ZGzXVgCg
 xrYF8EyTIp3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="231794938"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="231794938"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 08:24:23 -0800
IronPort-SDR: mX22KVpXT9F7VKzJvmSGS8+66xKr5MPXa5hQ+B8ocKx1i3k0QegLhmbs10od3SYMTKsBjbAOAT
 v8M1NXhHE5eg==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="473909031"
Received: from rmarepal-mobl2.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.98.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 08:24:21 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Nov 2020 08:24:08 -0800
Message-Id: <20201111162408.98002-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201111162408.98002-1-jose.souza@intel.com>
References: <20201111162408.98002-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Make
 get_allowed_dc_mask().max_dc set a chain of if and elses
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBmb2xsb3dpbmcgd2hhdCB3ZSBkbyBpbiBtYW55IG90aGVyIHBsYWNlcywgREcxIGlzIGEg
ZXhjZXB0aW9uIHNvCm1vdmUgaXQgdG8gdGhlIHRvcCBpbnN0ZWFkIG9mIGFkZCBpdCBpbnNpZGUg
b2YgSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMi4KCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyB8IDE4ICsrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA0OGQ0MWE0M2ZiYjIuLjMxY2I5
YWM1YzQ4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKQEAgLTQ0OTIsMjAgKzQ0OTIsMTYgQEAgc3RhdGljIHUzMiBnZXRfYWxs
b3dlZF9kY19tYXNrKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlp
bnQgcmVxdWVzdGVkX2RjOwogCWludCBtYXhfZGM7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgewotCQlpZiAoSVNfREcxKGRldl9wcml2KSkKLQkJCW1heF9kYyA9IDM7Ci0JCWVs
c2UKLQkJCW1heF9kYyA9IDQ7Ci0JfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkgewor
CWlmIChJU19ERzEoZGV2X3ByaXYpKQorCQltYXhfZGMgPSAzOworCWVsc2UgaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTIpCisJCW1heF9kYyA9IDQ7CisJZWxzZSBpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMCB8fCBJU19HRU45X0JDKGRldl9wcml2KSkKIAkJbWF4X2RjID0gMjsKLQl9
IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTApIHx8IElTX0dFTjlfQkMoZGV2X3ByaXYpKSB7
Ci0JCW1heF9kYyA9IDI7Ci0JfSBlbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSkgeworCWVs
c2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQogCQltYXhfZGMgPSAxOwotCX0gZWxzZSB7CisJ
ZWxzZQogCQltYXhfZGMgPSAwOwotCX0KIAogCS8qCiAJICogREM5IGhhcyBhIHNlcGFyYXRlIEhX
IGZsb3cgZnJvbSB0aGUgcmVzdCBvZiB0aGUgREMgc3RhdGVzLAotLSAKMi4yOS4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
