Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979FEA9530
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4BEB89C59;
	Wed,  4 Sep 2019 21:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25F1E89BC2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 21:34:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 14:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="199121705"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 14:34:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:34:16 -0700
Message-Id: <20190904213419.27547-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190904213419.27547-1-jose.souza@intel.com>
References: <20190904213419.27547-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: protect access to DP_TP_* on
 non-dp
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

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpEUF9UUF97
Q1RMLFNUQVRVU30gc2hvdWxkIG9ubHkgYmUgcHJvZ3JhbW1lZCB3aGVuIHRoZSBlbmNvZGVyIGlz
IGludGVsX2RwLgpDaGVja2luZyBpdHMgY3VycmVudCB1c2FnZXMgaW50ZWxfZGlzYWJsZV9kZGlf
YnVmKCkgaXMgdGhlIG9ubHkKb2ZmZW5kZXIsIHdpdGggb3RoZXIgcGxhY2VzIGJlaW5nIHByb3Rl
Y3RlZCBieSBjaGVja3MgbGlrZQpwaXBlX2NvbmZpZy0+ZmVjX2VuYWJsZSB0aGF0IGlzIG9ubHkg
c2V0IGJ5IGludGVsX2RwLgoKdjMgKEpvc8OpKToKLSBVc2luZyBpbnRlbF9jcnRjX2hhc19kcF9l
bmNvZGVyKCkgaW5zdGVhZCBvZiBpbnRlbF9lbmNvZGVyX2lzX2RwKCkKKFZpbGxlKQoKQ2M6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYwppbmRleCAxZmUwYmYwMWU1ODAuLmVjMTMyY2Q2YWRkOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNDY1LDEwICszNDY1LDEyIEBA
IHN0YXRpYyB2b2lkIGludGVsX2Rpc2FibGVfZGRpX2J1ZihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKIAkJd2FpdCA9IHRydWU7CiAJfQogCi0JdmFsID0gSTkxNV9SRUFEKERQX1RQX0NU
TChwb3J0KSk7Ci0JdmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5LX1RS
QUlOX01BU0spOwotCXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOwotCUk5MTVfV1JJ
VEUoRFBfVFBfQ1RMKHBvcnQpLCB2YWwpOworCWlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVy
KGNydGNfc3RhdGUpKSB7CisJCXZhbCA9IEk5MTVfUkVBRChEUF9UUF9DVEwocG9ydCkpOworCQl2
YWwgJj0gfihEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBfQ1RMX0xJTktfVFJBSU5fTUFTSyk7CisJ
CXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOworCQlJOTE1X1dSSVRFKERQX1RQX0NU
TChwb3J0KSwgdmFsKTsKKwl9CiAKIAkvKiBEaXNhYmxlIEZFQyBpbiBEUCBTaW5rICovCiAJaW50
ZWxfZGRpX2Rpc2FibGVfZmVjX3N0YXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOwotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
