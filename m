Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBF9B19A0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 10:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA396EECF;
	Fri, 13 Sep 2019 08:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1DFB6EED0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 08:30:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 01:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,500,1559545200"; d="scan'208";a="186375207"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2019 01:30:11 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 13:53:33 +0530
Message-Id: <20190913082339.1785-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913082339.1785-1-anshuman.gupta@intel.com>
References: <20190913082339.1785-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 1/7] drm/i915/tgl: Add DC3CO required
 register and bits
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKMS4gRENfU1RBVEVfRU4g
cmVnaXN0ZXIgREMzQ08gYml0IGZpZWxkcyBhbmQgbWFza3MuCjIuIFRyYW5zY29kZXIgRVhJVExJ
TkUgcmVnaXN0ZXIgYW5kIGl0cyBiaXQgZmllbGRzIGFuZCBtYXNrLgoKdjE6IFVzZSBvZiBSRUdf
QklUIGFuZCB1c2luZyBleHRyYSBzcGFjZSBmb3IgRVhJVExJTkVfIG1hY3JvCiAgICBkZWZpbml0
aW9uLiBbQW5pbWVzaF0KCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNo
dW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCBiZjM3ZWNlYmM4MmYuLjZiZmViYWI5YTQ0MSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC00MTM4LDYgKzQxMzgsNyBAQCBlbnVtIHsKICNkZWZpbmUgX1ZU
T1RBTF9BCTB4NjAwMGMKICNkZWZpbmUgX1ZCTEFOS19BCTB4NjAwMTAKICNkZWZpbmUgX1ZTWU5D
X0EJMHg2MDAxNAorI2RlZmluZSBfRVhJVExJTkVfQQkweDYwMDE4CiAjZGVmaW5lIF9QSVBFQVNS
QwkweDYwMDFjCiAjZGVmaW5lIF9CQ0xSUEFUX0EJMHg2MDAyMAogI2RlZmluZSBfVlNZTkNTSElG
VF9BCTB4NjAwMjgKQEAgLTQxODQsMTEgKzQxODUsMTYgQEAgZW51bSB7CiAjZGVmaW5lIFZUT1RB
TCh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZUT1RBTF9BKQogI2RlZmluZSBWQkxBTkso
dHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WQkxBTktfQSkKICNkZWZpbmUgVlNZTkModHJh
bnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WU1lOQ19BKQorI2RlZmluZSBFWElUTElORSh0cmFu
cykJCV9NTUlPX1RSQU5TMih0cmFucywgX0VYSVRMSU5FX0EpCiAjZGVmaW5lIEJDTFJQQVQodHJh
bnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9CQ0xSUEFUX0EpCiAjZGVmaW5lIFZTWU5DU0hJRlQo
dHJhbnMpCV9NTUlPX1RSQU5TMih0cmFucywgX1ZTWU5DU0hJRlRfQSkKICNkZWZpbmUgUElQRVNS
Qyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1BJUEVBU1JDKQogI2RlZmluZSBQSVBFX01V
TFQodHJhbnMpCV9NTUlPX1RSQU5TMih0cmFucywgX1BJUEVfTVVMVF9BKQogCisjZGVmaW5lICAg
RVhJVExJTkVfRU5BQkxFCVJFR19CSVQoMzEpCisjZGVmaW5lICAgRVhJVExJTkVfTUFTSwkJUkVH
X0dFTk1BU0soMTIsIDApCisjZGVmaW5lICAgRVhJVExJTkVfU0hJRlQJMAorCiAvKgogICogSFNX
KyBlRFAgUFNSIHJlZ2lzdGVycwogICoKQEAgLTEwMTE4LDYgKzEwMTI0LDggQEAgZW51bSBza2xf
cG93ZXJfZ2F0ZSB7CiAvKiBHRU45IERDICovCiAjZGVmaW5lIERDX1NUQVRFX0VOCQkJX01NSU8o
MHg0NTUwNCkKICNkZWZpbmUgIERDX1NUQVRFX0RJU0FCTEUJCTAKKyNkZWZpbmUgIERDX1NUQVRF
X0VOX0RDM0NPCQlSRUdfQklUKDMwKQorI2RlZmluZSAgRENfU1RBVEVfREMzQ09fU1RBVFVTCQlS
RUdfQklUKDI5KQogI2RlZmluZSAgRENfU1RBVEVfRU5fVVBUT19EQzUJCSgxIDw8IDApCiAjZGVm
aW5lICBEQ19TVEFURV9FTl9EQzkJCSgxIDw8IDMpCiAjZGVmaW5lICBEQ19TVEFURV9FTl9VUFRP
X0RDNgkJKDIgPDwgMCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
