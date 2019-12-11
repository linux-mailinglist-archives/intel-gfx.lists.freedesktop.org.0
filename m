Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8397511A113
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 03:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C209E6EA40;
	Wed, 11 Dec 2019 02:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B8486EA3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 02:09:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 18:09:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="210618401"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.69])
 by fmsmga008.fm.intel.com with ESMTP; 10 Dec 2019 18:09:01 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 18:08:57 -0800
Message-Id: <20191211020858.423049-10-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211020858.423049-1-jose.souza@intel.com>
References: <20191211020858.423049-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
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

Q2hlY2sgaWYgZmFzdHNldCBpcyBhbGxvd2VkIGJ5IGV4dGVybmFsIGRlcGVuZGVuY2llcyBsaWtl
IG90aGVyIHBpcGVzCmFuZCB0cmFuc2NvZGVycy4KClJpZ2h0IG5vdyBpdCBvbmx5IGZvcmNlcyBh
IGZ1bGxtb2Rlc2V0IHdoZW4gdGhlIE1TVCBtYXN0ZXIgdHJhbnNjb2RlcgpkaWQgbm90IGNoYW5n
ZWQgYnV0IHRoZSBwaXBlIG9mIHRoZSBtYXN0ZXIgdHJhbnNjb2RlciBuZWVkcyBhCmZ1bGxtb2Rl
c2V0IHNvIGFsbCBzbGF2ZXMgYWxzbyBuZWVkcyB0byBkbyBhIGZ1bGxtb2Rlc2V0LgpCdXQgaXQg
d2lsbCBwcm9iYWJseSBiZSBuZWVkIGZvciBwb3J0IHN5bmMgYXMgd2VsbC4KCkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCA0MSArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDQxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDRkYzQ4ZTc5ZDE0Yi4uOTcyOWYwYjI5OWIzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM5MzAsMTEgKzEz
OTMwLDUyIEBAIHN0YXRpYyBpbnQgY2FsY193YXRlcm1hcmtfZGF0YShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkKIAlyZXR1cm4gMDsKIH0KIAorLyoqCisgKiBDaGVjayBpZiBmYXN0
c2V0IGlzIGFsbG93ZWQgYnkgZXh0ZXJuYWwgZGVwZW5kZW5jaWVzIGxpa2Ugb3RoZXIgcGlwZXMg
YW5kCisgKiB0cmFuc2NvZGVycy4KKyAqCisgKiBSaWdodCBub3cgaXQgb25seSBmb3JjZXMgYSBm
dWxsbW9kZXNldCB3aGVuIHRoZSBNU1QgbWFzdGVyIHRyYW5zY29kZXIgZGlkCisgKiBub3QgY2hh
bmdlZCBidXQgdGhlIHBpcGUgb2YgdGhlIG1hc3RlciB0cmFuc2NvZGVyIG5lZWRzIGEgZnVsbG1v
ZGVzZXQgc28KKyAqIGFsbCBzbGF2ZXMgYWxzbyBuZWVkcyB0byBkbyBhIGZ1bGxtb2Rlc2V0Lgor
ICovCitzdGF0aWMgYm9vbAoraW50ZWxfY3J0Y19jaGVja19leHRlcm5hbF9kZXBlbmRlbmNpZXNf
ZmFzdHNldChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCisJ
CQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCit7CisJ
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUo
bmV3X2NydGNfc3RhdGUtPnVhcGkuc3RhdGUpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUobmV3X2NydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsKKwlzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGVfaXRlcjsKKwlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0Y19pdGVyOworCWludCBpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAx
MikKKwkJcmV0dXJuIHRydWU7CisKKwlpZiAoIWludGVsX2NydGNfaGFzX3R5cGUob2xkX2NydGNf
c3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpIHx8CisJICAgIGludGVsX2RwX21zdF9pc19tYXN0
ZXJfdHJhbnMobmV3X2NydGNfc3RhdGUpKQorCQlyZXR1cm4gdHJ1ZTsKKworCWZvcl9lYWNoX25l
d19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjX2l0ZXIsIG5ld19jcnRjX3N0YXRlX2l0
ZXIsIGkpIHsKKwkJaWYgKG5ld19jcnRjX3N0YXRlX2l0ZXItPmNwdV90cmFuc2NvZGVyICE9CisJ
CSAgICBuZXdfY3J0Y19zdGF0ZS0+bXN0X21hc3Rlcl90cmFuc2NvZGVyKQorCQkJY29udGludWU7
CisKKwkJcmV0dXJuICFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlX2l0ZXIpOworCX0KKwor
CURSTV9FUlJPUigiTWFzdGVyIE1TVCB0cmFuc2NvZGVyIG9mIHBpcGUgbm90IGZvdW5kXG4iKTsK
KwlyZXR1cm4gZmFsc2U7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX2NydGNfY2hlY2tfZmFzdHNl
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAJCQkJICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiB7CiAJaWYgKCFpbnRl
bF9waXBlX2NvbmZpZ19jb21wYXJlKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgdHJ1
ZSkpCiAJCXJldHVybjsKKwlpZiAoIWludGVsX2NydGNfY2hlY2tfZXh0ZXJuYWxfZGVwZW5kZW5j
aWVzX2Zhc3RzZXQob2xkX2NydGNfc3RhdGUsCisJCQkJCQkJICAgIG5ld19jcnRjX3N0YXRlKSkK
KwkJcmV0dXJuOworCiAKIAluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSBmYWxz
ZTsKIAluZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUgPSB0cnVlOwotLSAKMi4yNC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
