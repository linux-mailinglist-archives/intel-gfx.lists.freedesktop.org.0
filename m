Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD018A4F3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 19:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E856E598;
	Mon, 12 Aug 2019 17:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCEB6E598
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 17:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 10:54:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; d="scan'208";a="170133707"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2019 10:54:11 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 10:54:05 -0700
Message-Id: <20190812175405.14479-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Fix missing parentheses on
 TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT
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

SW4gdGhpcyBjYXNlIHdlIHdhbnQgdG8gYXBwbHkgdGhlIG1hc2sgYW5kIHRoZW4gc2hpZnQgc28g
dGhlCnBhcmVudGhlc2VzIGlzIG5lZWRlZC4KClNQQU5LISBTUEFOSyEgU1BBTkshIE5hdWdodHkg
cHJvZ3JhbW1lciEKCkZpeGVzOiA5NzQ5YTViNmMwOWYgKCJkcm0vaTkxNS90Z2w6IEZpeCB0aGUg
cmVhZCBvZiB0aGUgRERJIHRoYXQgdHJhbnNjb2RlciBpcyBhdHRhY2hlZCB0byIpCkNjOiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNGE5NDdiZDBhMjk0Li5kZWY2ZGJk
YzdlMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTQzMyw3ICs5NDMzLDcgQEAgZW51
bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lICBUUkFOU19ERElfU0VMRUNUX1BPUlQoeCkJKCh4
KSA8PCBUUkFOU19ERElfUE9SVF9TSElGVCkKICNkZWZpbmUgIFRHTF9UUkFOU19ERElfU0VMRUNU
X1BPUlQoeCkJKCgoeCkgKyAxKSA8PCBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpCiAjZGVmaW5l
ICBUUkFOU19ERElfRlVOQ19DVExfVkFMX1RPX1BPUlQodmFsKQkgKCgodmFsKSAmIFRSQU5TX0RE
SV9QT1JUX01BU0spID4+IFRSQU5TX0RESV9QT1JUX1NISUZUKQotI2RlZmluZSAgVEdMX1RSQU5T
X0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh2YWwpICgoKHZhbCkgJiBUR0xfVFJBTlNfRERJX1BP
UlRfTUFTSyA+PiBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpIC0gMSkKKyNkZWZpbmUgIFRHTF9U
UkFOU19ERElfRlVOQ19DVExfVkFMX1RPX1BPUlQodmFsKSAoKCgodmFsKSAmIFRHTF9UUkFOU19E
RElfUE9SVF9NQVNLKSA+PiBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpIC0gMSkKICNkZWZpbmUg
IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9NQVNLCSg3IDw8IDI0KQogI2RlZmluZSAgVFJBTlNfRERJ
X01PREVfU0VMRUNUX0hETUkJKDAgPDwgMjQpCiAjZGVmaW5lICBUUkFOU19ERElfTU9ERV9TRUxF
Q1RfRFZJCSgxIDw8IDI0KQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
