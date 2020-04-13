Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 742FC1A6A1A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 18:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D844989F8B;
	Mon, 13 Apr 2020 16:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE8989EAE
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 16:43:42 +0000 (UTC)
IronPort-SDR: sNCP12ZyXlO2IVKiCHcHGw3iRW9YdbzJOIHr+XG66OyDOo/Mh9AJUHNXnEcBPQQZ4yIZC+Asst
 U38X7YahEMRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 09:43:41 -0700
IronPort-SDR: X/NxrXL3tjbAD73qCJu9wWCQsXtIf6sHAjR6chvlpPFfQUeLmUt26kY+IozFUn90V7W+MOh6ii
 WR1nIbZmAL9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="267485700"
Received: from shandley-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.135.3.40])
 by orsmga008.jf.intel.com with ESMTP; 13 Apr 2020 09:43:41 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 09:45:11 -0700
Message-Id: <20200413164515.13355-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413164515.13355-1-jose.souza@intel.com>
References: <20200413164515.13355-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 5/9] drm/i915/tc: Skip ref held check for TC
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
dHMuCgpSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpUZXN0ZWQt
Ynk6IFlvdS1TaGVuZyBZYW5nIDx2aWNhbW8ueWFuZ0BjYW5vbmljYWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgKysr
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCBlMmRkZGFmMTA1MWIu
LjUwYmVkMmQxZGQxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTU2MCw2ICs1NjAsOSBAQCBzdGF0aWMgdm9pZCBpY2xf
dGNfcG9ydF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWRpZ19wb3J0KSkKIAkJcmV0dXJu
OwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEgJiYgZGlnX3BvcnQtPnRjX2xlZ2Fj
eV9wb3J0KQorCQlyZXR1cm47CisKIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWludGVs
X3RjX3BvcnRfcmVmX2hlbGQoZGlnX3BvcnQpKTsKIH0KIAotLSAKMi4yNi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
