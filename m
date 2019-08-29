Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F651A14DC
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353AE6E075;
	Thu, 29 Aug 2019 09:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7B96E045
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:26:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="175211209"
Received: from tbthomps-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.111.220])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2019 02:26:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 02:25:53 -0700
Message-Id: <20190829092554.32198-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829092554.32198-1-lucas.demarchi@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/7] drm/i915/tgl: add gen12 to stolen
 initialization
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

QWRkIGNhc2UgZm9yIGdlbiA9PSAxMiBhbmQgYWRkIE1JU1NJTkdfQ0FTRSgpIGZvciBmdXR1cmUg
Z2Vucy4gV2Ugd2VyZQphbHJlYWR5IGhhbmRsaW5nIGdlbjEyIGFzIHRoZSBkZWZhdWx0LCBzbyB0
aGlzIGRvZXNuJ3QgY2hhbmdlIHRoZQpjdXJyZW50IGJlaGF2aW9yLgoKQ2M6IENRIFRhbmcgPGNx
LnRhbmdAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
c3RvbGVuLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3N0b2xlbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jCmlu
ZGV4IGFhNTMzYjRhYjVmNS4uN2NlNTI1OWQ3M2Q2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5jCkBAIC00MjUsOCArNDI1LDExIEBAIGludCBpOTE1X2dlbV9p
bml0X3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQliZHdfZ2V0
X3N0b2xlbl9yZXNlcnZlZChkZXZfcHJpdiwKIAkJCQkJCSZyZXNlcnZlZF9iYXNlLCAmcmVzZXJ2
ZWRfc2l6ZSk7CiAJCWJyZWFrOwotCWNhc2UgMTE6CiAJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNF
KElOVEVMX0dFTihkZXZfcHJpdikpOworCQkvKiBmYWxsLXRocm91Z2ggKi8KKwljYXNlIDExOgor
CWNhc2UgMTI6CiAJCWljbF9nZXRfc3RvbGVuX3Jlc2VydmVkKGRldl9wcml2LCAmcmVzZXJ2ZWRf
YmFzZSwKIAkJCQkJJnJlc2VydmVkX3NpemUpOwogCQlicmVhazsKLS0gCjIuMjMuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
