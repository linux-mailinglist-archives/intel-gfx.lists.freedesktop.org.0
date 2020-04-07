Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5931A0428
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 03:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBF66E4FF;
	Tue,  7 Apr 2020 01:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205B96E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 01:10:23 +0000 (UTC)
IronPort-SDR: wCUfMwb12HbNmndXRjNDk03Cfo72yX6l0QO3mMP8Bfi/0OusaQ6F81z3bpIQ4bVgdgKKQiLqa5
 fE1/iSaBQEwQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 18:10:21 -0700
IronPort-SDR: WqXZm3KOlbT8uNodmAQ5Ji8OpXsgUrKNJuJQqOGjXsO8EImLvpu3BfmdgErU+UoZsZao3aBYq6
 TmMzuG5egV8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254295626"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2020 18:10:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 18:11:54 -0700
Message-Id: <20200407011157.362092-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407011157.362092-1-jose.souza@intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915/tc: Skip ref held check for TC
 legacy aux power wells
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

QXMgcGFydCBvZiBJQ0wgVEMgY29sZCBleGl0IHNlcXVlbmNlcyB3ZSBuZWVkIHRvIHJlcXVlc3Qg
YXV4IHBvd2VyCndlbGwgYmVmb3JlIGxvY2sgdGhlIGFjY2VzcyB0byBUQyBwb3J0cywgc28gc2tp
cGluZyB0aGUKaW50ZWxfdGNfcG9ydF9yZWZfaGVsZCgpIGNoZWNrIGZvciBUQyBsZWdhY3kgcG9y
dHMuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRl
eCAxMzM2MjQ3NzQzYzQuLjAzODM4MDFhOWFjYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTU2MCw2ICs1NjAsOSBAQCBz
dGF0aWMgdm9pZCBpY2xfdGNfcG9ydF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWRpZ19w
b3J0KSkKIAkJcmV0dXJuOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEgJiYgZGln
X3BvcnQtPnRjX2xlZ2FjeV9wb3J0KQorCQlyZXR1cm47CisKIAlkcm1fV0FSTl9PTigmZGV2X3By
aXYtPmRybSwgIWludGVsX3RjX3BvcnRfcmVmX2hlbGQoZGlnX3BvcnQpKTsKIH0KIAotLSAKMi4y
Ni4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
