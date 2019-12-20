Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A093412840A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEADC6ECB2;
	Fri, 20 Dec 2019 21:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD016ECB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 21:43:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 13:42:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213684272"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2019 13:42:52 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 13:42:27 -0800
Message-Id: <20191220214228.262345-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220214228.262345-1-jose.souza@intel.com>
References: <20191220214228.262345-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 7/8] drm/i915/mst: Force modeset on MST
 slaves when master needs a modeset
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

TVNUIG1hc3RlciBjYW4gbm90IGJlIGRpc2FibGVkIHdoaWxlIGl0IGhhdmUgYXR0YWNoZWQgTVNU
IHNsYXZlcywgc28KaXQgaXMgbmVjZXNzYXJ5IGZvcmNlIGEgbW9kZXNldCBpbiBhbGwgb2YgaXRz
IHNsYXZlcy4KCnYzOgotIG1vdmVkIGhhbmRsaW5nIHRvIGludGVsX2F0b21pY19jaGVjaygpIHRo
aXMgd2F5IGlzIGd1YXJhbnRlZSB0aGF0CmFsbCBwaXBlcyB3aWxsIGhhdmUgaXRzIHN0YXRlIGNv
bXB1dGVkCgp2NDoKLSBhZGRlZCBhIGZ1bmN0aW9uIHRvIHJldHVybiBpZiBNU1QgbWFzdGVyIG5l
ZWVkcyBtb2Rlc2V0IHRvIHNpbXBseQpjb2RlIGluIGludGVsX2F0b21pY19jaGVjaygpCgp2NToK
LSBmaXhlZCBhbmQgbW92ZWQgY29kZSB0byBjaGVjayBpZiBNU1QgbWFzdGVyIG5lZWRzIGEgbW9k
ZXNldAoKdjY6Ci0gcHJldmlvbnMgdmVyc2lvbiBvZiB0aGlzIHBhdGNoIHdhcyBzcGxpdCBpbnRv
IHR3byBwYXRjaGVzCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAzNiArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDgzOTBhZDQ2NjI5Yi4uMzk5OGJiZmUyNDU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQwMzYsNiArMTQwMzYsMjAgQEAgc3RhdGljIGlu
dCBpbnRlbF9hdG9taWNfY2hlY2tfY3J0Y3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBib29sIGludGVsX2NwdV90cmFuc2NvZGVyX25l
ZWRzX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCisJCQkJCSAgICAg
ICBlbnVtIHRyYW5zY29kZXIgdHJhbnNjb2RlcikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqbmV3X2NydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGMgKmNydGM7CisJaW50IGk7CisK
Kwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNf
c3RhdGUsIGkpCisJCWlmIChuZXdfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIgPT0gdHJhbnNj
b2RlcikKKwkJCXJldHVybiBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsKKworCXJldHVy
biBmYWxzZTsKK30KKwogLyoqCiAgKiBpbnRlbF9hdG9taWNfY2hlY2sgLSB2YWxpZGF0ZSBzdGF0
ZSBvYmplY3QKICAqIEBkZXY6IGRybSBkZXZpY2UKQEAgLTE0MDg4LDYgKzE0MTAyLDI4IEBAIHN0
YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCWlu
dGVsX2NydGNfY2hlY2tfZmFzdHNldChvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpOwog
CX0KIAorCS8qKgorCSAqIENoZWNrIGlmIGZhc3RzZXQgaXMgYWxsb3dlZCBieSBleHRlcm5hbCBk
ZXBlbmRlbmNpZXMgbGlrZSBvdGhlcgorCSAqIHBpcGVzIGFuZCB0cmFuc2NvZGVycy4KKwkgKgor
CSAqIFJpZ2h0IG5vdyBpdCBvbmx5IGZvcmNlcyBhIGZ1bGxtb2Rlc2V0IHdoZW4gdGhlIE1TVCBt
YXN0ZXIKKwkgKiB0cmFuc2NvZGVyIGRpZCBub3QgY2hhbmdlZCBidXQgdGhlIHBpcGUgb2YgdGhl
IG1hc3RlciB0cmFuc2NvZGVyCisJICogbmVlZHMgYSBmdWxsbW9kZXNldCBzbyBhbGwgc2xhdmVz
IGFsc28gbmVlZHMgdG8gZG8gYSBmdWxsbW9kZXNldC4KKwkgKi8KKwlmb3JfZWFjaF9uZXdfaW50
ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJZW51
bSB0cmFuc2NvZGVyIG1hc3RlciA9IG5ld19jcnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5zY29k
ZXI7CisKKwkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuZW5hYmxlIHx8CisJCSAgICBuZWVkc19t
b2Rlc2V0KG5ld19jcnRjX3N0YXRlKSB8fAorCQkgICAgIWludGVsX2RwX21zdF9pc19zbGF2ZV90
cmFucyhuZXdfY3J0Y19zdGF0ZSkpCisJCQljb250aW51ZTsKKworCQlpZiAoaW50ZWxfY3B1X3Ry
YW5zY29kZXJfbmVlZHNfbW9kZXNldChzdGF0ZSwgbWFzdGVyKSkgeworCQkJbmV3X2NydGNfc3Rh
dGUtPnVhcGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsKKwkJCW5ld19jcnRjX3N0YXRlLT51cGRhdGVf
cGlwZSA9IGZhbHNlOworCQl9CisJfQorCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5f
c3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAogCQkJCQkgICAgbmV3X2NydGNfc3Rh
dGUsIGkpIHsKIAkJaWYgKG5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKSB7Ci0tIAoyLjI0
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
