Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA04121C6B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30EEA6E8B5;
	Mon, 16 Dec 2019 22:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1DDA6E8B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 22:08:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:08:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="240188519"
Received: from gneiger-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.251.15.215])
 by fmsmga004.fm.intel.com with ESMTP; 16 Dec 2019 14:08:14 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 14:07:39 -0800
Message-Id: <20191216220742.34332-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191216220742.34332-1-jose.souza@intel.com>
References: <20191216220742.34332-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/11] drm/i915/display: Always enables MST
 master pipe first
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

RHVlIHRvIEREQiBvdmVybGFwcyB0aGUgcGlwZSBlbmFibGluZyBzZXF1ZW5jZSBpcyBub3QgYWx3
YXlzIGNyZXNjZW50LgpBcyB0aGUgcHJldmlvdXMgcGF0Y2ggc2VsZWN0cyB0aGUgc21hbGxlc3Qg
cGlwZS90cmFuc2NvZGVyIGluIHRoZSBNU1QKc3RyZWFtIHRvIGJlIG1hc3RlciBhbmQgaXQgbmVl
ZHMgdG8gYmUgZW5hYmxlZCBmaXJzdCB0aGlzIGNoYW5nZXMKd2VyZSBuZWVkZWQgdG8gZ3VhcmFu
dGVlIHRoYXQuCgpTbyBmaXJzdCBsZXRzIGVuYWJsZSBhbGwgcGlwZXMgdGhhdCBkaWQgbm90IG5l
ZWRlZCBhIGZ1bGxtb2Rlc2V0IHNvCml0IGRvbid0IGhhdmUgYW55IGV4dGVybmFsIGRlcGVuZGVu
Y3ksIHRoaXMgb25lcyBjYW4gb3ZlcmxhcCB3aXRoCmVhY2ggb3RoZXIgZGRiIGFsbG9jYXRpb25z
LgoKVGhlbiBvbiB0aGUgc2Vjb25kIGxvb3AgaXQgd2lsbCBlbmFibGUgYWxsIHRoZSBwaXBlcyB0
aGF0IG5lZWRzIGEKbW9kZXNldCBhbmQgZG9uJ3QgZGVwZW5kcyBvbiBvdGhlciBwaXBlcyBsaWtl
IE1TVCBtYXN0ZXIKcGlwZS90cmFuc2NvZGVyLgoKVGhlbiBmaW5hbGx5IGFsbCB0aGUgcGlwZXMg
dGhhdCBuZWVkcyBhIG1vZGVzZXQgYW5kIGhhdmUgZGVwZW5kZW5jeQpvbiBvdGhlciBwaXBlcy4K
CnYzOiByZWJhc2VkCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzog
TWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4OCArKysrKysrKysrKysr
KystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
ZTk3NmY4MmEwZGI3Li4xNzZlMzFkZTY4ZTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDU1MywxNSArMTQ1NTMsMjAgQEAgc3RhdGljIHZv
aWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiAJdTggaHdfZW5hYmxlZF9zbGljZXMgPSBkZXZfcHJpdi0+d20uc2tsX2h3LmRkYi5l
bmFibGVkX3NsaWNlczsKIAl1OCByZXF1aXJlZF9zbGljZXMgPSBzdGF0ZS0+d21fcmVzdWx0cy5k
ZGIuZW5hYmxlZF9zbGljZXM7CiAJc3RydWN0IHNrbF9kZGJfZW50cnkgZW50cmllc1tJOTE1X01B
WF9QSVBFU10gPSB7fTsKLQl1OCBkaXJ0eV9waXBlcyA9IDA7CisJdTggdXBkYXRlX3BpcGVzID0g
MCwgbW9kZXNldF9waXBlcyA9IDA7CiAJaW50IGk7CiAKIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxf
Y3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRl
LCBpKSB7CisJCWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkKKwkJCWNvbnRpbnVlOwor
CiAJCS8qIGlnbm9yZSBhbGxvY2F0aW9ucyBmb3IgY3J0YydzIHRoYXQgaGF2ZSBiZWVuIHR1cm5l
ZCBvZmYuICovCi0JCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYgbmV3X2Ny
dGNfc3RhdGUtPmh3LmFjdGl2ZSkKKwkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRl
KSkgewogCQkJZW50cmllc1tpXSA9IG9sZF9jcnRjX3N0YXRlLT53bS5za2wuZGRiOwotCQlpZiAo
bmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkKLQkJCWRpcnR5X3BpcGVzIHw9IEJJVChjcnRjLT5w
aXBlKTsKKwkJCXVwZGF0ZV9waXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7CisJCX0gZWxzZSB7CisJ
CQltb2Rlc2V0X3BpcGVzIHw9IEJJVChtb2Rlc2V0X3BpcGVzKTsKKwkJfQogCX0KIAogCS8qIElm
IDJuZCBEQnVmIHNsaWNlIHJlcXVpcmVkLCBlbmFibGUgaXQgaGVyZSAqLwpAQCAtMTQ1NzEsMTYg
KzE0NTc2LDE4IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCS8qCiAJICogV2hlbmV2ZXIgdGhlIG51bWJl
ciBvZiBhY3RpdmUgcGlwZXMgY2hhbmdlcywgd2UgbmVlZCB0byBtYWtlIHN1cmUgd2UKIAkgKiB1
cGRhdGUgdGhlIHBpcGVzIGluIHRoZSByaWdodCBvcmRlciBzbyB0aGF0IHRoZWlyIGRkYiBhbGxv
Y2F0aW9ucwotCSAqIG5ldmVyIG92ZXJsYXAgd2l0aCBlYWNob3RoZXIgaW5iZXR3ZWVuIENSVEMg
dXBkYXRlcy4gT3RoZXJ3aXNlIHdlJ2xsCisJICogbmV2ZXIgb3ZlcmxhcCB3aXRoIGVhY2ggb3Ro
ZXIgYmV0d2VlbiBDUlRDIHVwZGF0ZXMuIE90aGVyd2lzZSB3ZSdsbAogCSAqIGNhdXNlIHBpcGUg
dW5kZXJydW5zIGFuZCBvdGhlciBiYWQgc3R1ZmYuCisJICoKKwkgKiBTbyBmaXJzdCBsZXRzIGVu
YWJsZSBhbGwgcGlwZXMgdGhhdCBkaWQgbm90IG5lZWRlZCBhIGZ1bGxtb2Rlc2V0IHNvCisJICog
aXQgZG9uJ3QgaGF2ZSBhbnkgZXh0ZXJuYWwgZGVwZW5kZW5jeQogCSAqLwotCXdoaWxlIChkaXJ0
eV9waXBlcykgeworCXdoaWxlICh1cGRhdGVfcGlwZXMpIHsKIAkJZm9yX2VhY2hfb2xkbmV3X2lu
dGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAogCQkJCQkJICAg
IG5ld19jcnRjX3N0YXRlLCBpKSB7CiAJCQllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Ci0J
CQlib29sIG1vZGVzZXQgPSBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsKIAotCQkJaWYg
KChkaXJ0eV9waXBlcyAmIEJJVChwaXBlKSkgPT0gMCkKKwkJCWlmICgodXBkYXRlX3BpcGVzICYg
QklUKHBpcGUpKSA9PSAwKQogCQkJCWNvbnRpbnVlOwogCiAJCQlpZiAoc2tsX2RkYl9hbGxvY2F0
aW9uX292ZXJsYXBzKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwKQEAgLTE0NTg5LDIwICsx
NDU5NiwxMCBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJCQljb250aW51ZTsKIAogCQkJZW50cmllc1tp
XSA9IG5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiOwotCQkJZGlydHlfcGlwZXMgJj0gfkJJVChw
aXBlKTsKLQotCQkJaWYgKG1vZGVzZXQgJiYgaXNfdHJhbnNfcG9ydF9zeW5jX21vZGUobmV3X2Ny
dGNfc3RhdGUpKSB7Ci0JCQkJaWYgKGlzX3RyYW5zX3BvcnRfc3luY19tYXN0ZXIobmV3X2NydGNf
c3RhdGUpKQotCQkJCQlpbnRlbF91cGRhdGVfdHJhbnNfcG9ydF9zeW5jX2NydGNzKGNydGMsCi0J
CQkJCQkJCQkgICBzdGF0ZSwKLQkJCQkJCQkJCSAgIG9sZF9jcnRjX3N0YXRlLAotCQkJCQkJCQkJ
ICAgbmV3X2NydGNfc3RhdGUpOwotCQkJCWVsc2UKLQkJCQkJY29udGludWU7Ci0JCQl9IGVsc2Ug
ewotCQkJCWludGVsX3VwZGF0ZV9jcnRjKGNydGMsIHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwKLQkJ
CQkJCSAgbmV3X2NydGNfc3RhdGUpOwotCQkJfQorCQkJdXBkYXRlX3BpcGVzICY9IH5CSVQocGlw
ZSk7CisKKwkJCWludGVsX3VwZGF0ZV9jcnRjKGNydGMsIHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwK
KwkJCQkJICBuZXdfY3J0Y19zdGF0ZSk7CiAKIAkJCS8qCiAJCQkgKiBJZiB0aGlzIGlzIGFuIGFs
cmVhZHkgYWN0aXZlIHBpcGUsIGl0J3MgRERCIGNoYW5nZWQsCkBAIC0xNDYxMiwxMSArMTQ2MDks
NTYgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCQkgKi8KIAkJCWlmICghc2tsX2RkYl9lbnRyeV9lcXVh
bCgmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5kZGIsCiAJCQkJCQkgJm9sZF9jcnRjX3N0YXRlLT53
bS5za2wuZGRiKSAmJgotCQkJICAgICFtb2Rlc2V0ICYmIGRpcnR5X3BpcGVzKQorCQkJICAgIHVw
ZGF0ZV9waXBlcykKIAkJCQlpbnRlbF93YWl0X2Zvcl92YmxhbmsoZGV2X3ByaXYsIHBpcGUpOwor
CiAJCX0KIAl9CiAKKwkvKgorCSAqIEVuYWJsaW5nIGFsbCBwaXBlcyB0aGF0IG5lZWRzIGEgbW9k
ZXNldCBhbmQgZG8gbm90IGRlcGVuZHMgb24gb3RoZXIKKwkgKiBwaXBlcworCSAqLworCWZvcl9l
YWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0
ZSwKKwkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJCWVudW0gcGlwZSBwaXBlID0gY3J0
Yy0+cGlwZTsKKworCQlpZiAoKG1vZGVzZXRfcGlwZXMgJiBCSVQocGlwZSkpID09IDApCisJCQlj
b250aW51ZTsKKworCQlpZiAoaW50ZWxfZHBfbXN0X2lzX3NsYXZlX3RyYW5zKG5ld19jcnRjX3N0
YXRlKSB8fAorCQkgICAgaXNfdHJhbnNfcG9ydF9zeW5jX3NsYXZlKG5ld19jcnRjX3N0YXRlKSkK
KwkJCWNvbnRpbnVlOworCisJCW1vZGVzZXRfcGlwZXMgJj0gfkJJVChwaXBlKTsKKworCQlpZiAo
aXNfdHJhbnNfcG9ydF9zeW5jX21vZGUobmV3X2NydGNfc3RhdGUpKQorCQkJaW50ZWxfdXBkYXRl
X3RyYW5zX3BvcnRfc3luY19jcnRjcyhjcnRjLCBzdGF0ZSwKKwkJCQkJCQkgICBvbGRfY3J0Y19z
dGF0ZSwKKwkJCQkJCQkgICBuZXdfY3J0Y19zdGF0ZSk7CisJCWVsc2UKKwkJCWludGVsX3VwZGF0
ZV9jcnRjKGNydGMsIHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwKKwkJCQkJICBuZXdfY3J0Y19zdGF0
ZSk7CisJfQorCisJLyoKKwkgKiBGaW5hbGx5IGVuYWJsZSBhbGwgcGlwZXMgdGhhdCBuZWVkcyBh
IG1vZGVzZXQgYW5kIGRlcGVuZHMgb24KKwkgKiBvdGhlciBwaXBlcywgcmlnaHQgbm93IGl0IGlz
IG9ubHkgTVNUIHNsYXZlcyBhcyBib3RoIHBvcnQgc3luYyBzbGF2ZQorCSAqIGFuZCBtYXN0ZXIg
YXJlIGVuYWJsZWQgdG9nZXRoZXIKKwkgKi8KKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCSAgICBuZXdfY3J0Y19z
dGF0ZSwgaSkgeworCQllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisKKwkJaWYgKChtb2Rl
c2V0X3BpcGVzICYgQklUKHBpcGUpKSA9PSAwKQorCQkJY29udGludWU7CisKKwkJaWYgKGlzX3Ry
YW5zX3BvcnRfc3luY19zbGF2ZShuZXdfY3J0Y19zdGF0ZSkpCisJCQljb250aW51ZTsKKworCQlp
bnRlbF91cGRhdGVfY3J0YyhjcnRjLCBzdGF0ZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0
YXRlKTsKKwl9CisKIAkvKiBJZiAybmQgREJ1ZiBzbGljZSBpcyBubyBtb3JlIHJlcXVpcmVkIGRp
c2FibGUgaXQgKi8KIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJiByZXF1aXJlZF9z
bGljZXMgPCBod19lbmFibGVkX3NsaWNlcykKIAkJaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZf
cHJpdiwgcmVxdWlyZWRfc2xpY2VzKTsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
