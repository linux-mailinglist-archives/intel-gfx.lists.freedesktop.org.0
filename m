Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5592642E3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 11:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6216E8E2;
	Thu, 10 Sep 2020 09:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBDD46E8E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 09:52:43 +0000 (UTC)
IronPort-SDR: WsKVZH4eo/l+zW1S8QoyEwQaswelqFH4tbjk2+YBTwMgBkGl3FFfRZg/YK2N+Doi7WofDVw7CM
 p5U2KKQsX2gA==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="220060828"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="220060828"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:52:43 -0700
IronPort-SDR: 0ppncjzCpd0l3tCcpz6qK4p7f2YBU+XqsRDvdBtZXS/RDOjlbcguzrjSLZsDvMdOIXXXNQLLYc
 SIIZZPZfRcAQ==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="449537750"
Received: from nfhickey-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.64])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:52:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 12:52:27 +0300
Message-Id: <20200910095227.9466-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910095227.9466-1-jani.nikula@intel.com>
References: <20200910095227.9466-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: move gmbus restore to
 i915_restore_display
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9naWNhbGx5IHBhcnQgb2YgdGhlIGRpc3BsYXkgcmVzdG9yZS4KCk5vdGU6IFRoaXMgaGFzIGJl
ZW4gaW4gcGxhY2Ugc2luY2UgdGhlIGludHJvZHVjdGlvbiBvZiBnbWJ1cwpzdXBwb3J0LiBUaGUg
Z21idXMgY29kZSBhbHNvIGRvZXMgdGhlIHJlc2V0cyBiZWZvcmUgdHJhbnNmZXJzLiBJcyB0aGlz
CnJlYWxseSBuZWVkZWQsIG9yIGEgaGlzdG9yaWNhbCBhY2NpZGVudD8KCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfc3VzcGVuZC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3VzcGVuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKaW5kZXggNGE5
MzI0Nzk0MmI3Li4wOTAyNmM0ZGI3ZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfc3VzcGVuZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5j
CkBAIC02OSw2ICs2OSw4IEBAIHN0YXRpYyB2b2lkIGk5MTVfcmVzdG9yZV9kaXNwbGF5KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJSTkxNV9XUklURShGQkNfQ09OVFJPTCwg
ZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZUZCQ19DT05UUk9MKTsKIAogCWludGVsX3ZnYV9yZWRpc2Fi
bGUoZGV2X3ByaXYpOworCisJaW50ZWxfZ21idXNfcmVzZXQoZGV2X3ByaXYpOwogfQogCiBpbnQg
aTkxNV9zYXZlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKQEAgLTE0
MSw3ICsxNDMsNSBAQCBpbnQgaTkxNV9yZXN0b3JlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJCUk5MTVfV1JJVEUoU1dGMyhpKSwgZGV2X3ByaXYtPnJlZ2ZpbGUu
c2F2ZVNXRjNbaV0pOwogCX0KIAotCWludGVsX2dtYnVzX3Jlc2V0KGRldl9wcml2KTsKLQogCXJl
dHVybiAwOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
