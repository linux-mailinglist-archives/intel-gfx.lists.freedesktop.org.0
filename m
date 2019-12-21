Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02722128682
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 02:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E386E3F2;
	Sat, 21 Dec 2019 01:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 404BE6E16D
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 01:59:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 17:59:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,338,1571727600"; d="scan'208";a="213440834"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga007.fm.intel.com with ESMTP; 20 Dec 2019 17:59:36 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 18:01:06 -0800
Message-Id: <20191221020109.27871-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191221020109.27871-1-manasi.d.navare@intel.com>
References: <20191221020109.27871-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/4] drm/915/display: Prepare for fastset
 external dependencies check
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpNU1Qg
YW5kIHBvcnQgc3luYyBoYXZlIG1hc3RlciBhbmQgc2xhdmVzIHBpcGVzIGFuZCBpdCBicmluZ3MK
ZGVwZW5kZW5jaWVzIGJldHdlZW4gcGlwZXMgdG8gYWxsb3cgZmFzdHNldC4KRm9yIGV4YW1wbGUg
aWYgb25seSBNU1QgbWFzdGVyIG5lZWRzIGEgbW9kZXNldCBhbGwgb2YgaXRzIHNsYXZlcyBhbHNv
Cm5lZWRzIHRvIGRvIGEgbW9kZXNldC4KClRoaXMgcGF0Y2ggYWRkcyB0aGUgYmFzZSBmb3IgZXh0
ZXJuYWwgZGVwZW5kZW5jaWVzIGNoZWNrLCB0aGUgTVNUIGFuZApwb3J0IHN5bmMgYml0cyB3aWxs
IGJlIGFkZGVkIGluIGFub3RoZXIgcGF0Y2hlcy4KCnYzOgotIG1vdmVkIGhhbmRsaW5nIHRvIGlu
dGVsX2F0b21pY19jaGVjaygpIHRoaXMgd2F5IGlzIGd1YXJhbnRlZSB0aGF0CmFsbCBwaXBlcyB3
aWxsIGhhdmUgaXRzIHN0YXRlIGNvbXB1dGVkCgp2NDoKLSBhZGRlZCBhIGZ1bmN0aW9uIHRvIHJl
dHVybiBpZiBNU1QgbWFzdGVyIG5lZWVkcyBtb2Rlc2V0IHRvIHNpbXBseQpjb2RlIGluIGludGVs
X2F0b21pY19jaGVjaygpCgp2NToKLSBmaXhlZCBhbmQgbW92ZWQgY29kZSB0byBjaGVjayBpZiBN
U1QgbWFzdGVyIG5lZWRzIGEgbW9kZXNldAoKdjY6Ci0gcHJldmlvbnMgdmVyc2lvbiBvZiB0aGlz
IHBhdGNoIHdhcyBzcGxpdCBpbnRvIHR3byBwYXRjaGVzCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDE3ICsrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYTQzZGY3ZmMxOTQxLi5jYjIzZTQ4MzFkNGIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzkxOSw2
ICsxMzkxOSwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2NoZWNrX2Zhc3RzZXQoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YQogCiAJbmV3X2NydGNfc3RhdGUt
PnVhcGkubW9kZV9jaGFuZ2VkID0gZmFsc2U7CiAJbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9waXBl
ID0gdHJ1ZTsKK30KKworc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19jb3B5X2Zhc3RzZXQoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAorCQkJCSAgICBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCit7CiAKIAkvKgogCSAqIElmIHdlJ3Jl
IG5vdCBkb2luZyB0aGUgZnVsbCBtb2Rlc2V0IHdlIHdhbnQgdG8KQEAgLTE0MDk0LDkgKzE0MDk5
LDE5IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsCiAJCQlnb3RvIGZhaWw7CiAKIAkJaW50ZWxfY3J0Y19jaGVja19mYXN0c2V0KG9sZF9jcnRj
X3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7CisJfQogCi0JCWlmIChuZWVkc19tb2Rlc2V0KG5ld19j
cnRjX3N0YXRlKSkKKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwg
Y3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgeworCQlp
ZiAobmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpIHsKIAkJCWFueV9tcyA9IHRydWU7CisJ
CQljb250aW51ZTsKKwkJfQorCisJCWlmICghbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9waXBlKQor
CQkJY29udGludWU7CisKKwkJaW50ZWxfY3J0Y19jb3B5X2Zhc3RzZXQob2xkX2NydGNfc3RhdGUs
IG5ld19jcnRjX3N0YXRlKTsKIAl9CiAKIAlpZiAoYW55X21zICYmICFjaGVja19kaWdpdGFsX3Bv
cnRfY29uZmxpY3RzKHN0YXRlKSkgewotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
