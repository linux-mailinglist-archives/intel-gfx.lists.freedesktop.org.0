Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38D0127F4C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:30:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65AD6EC58;
	Fri, 20 Dec 2019 15:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B44C6EC57
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:30:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:30:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="206571052"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by orsmga007.jf.intel.com with ESMTP; 20 Dec 2019 07:30:15 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 07:29:51 -0800
Message-Id: <20191220152954.83276-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220152954.83276-1-jose.souza@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 4/7] drm/i915/display: Always enables MST
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
ZHMgdG8gYmUgZW5hYmxlZCBmaXJzdCwgdGhpcyBjaGFuZ2VzCndlcmUgbmVlZGVkIHRvIGd1YXJh
bnRlZSB0aGF0LgoKU28gZmlyc3QgbGV0cyBlbmFibGUgYWxsIHBpcGVzIHRoYXQgZG8gbm90IG5l
ZWQgYSBmdWxsbW9kZXNldCBhcwp0aG9zZSBkb24ndCBoYXZlIGFueSBleHRlcm5hbCBkZXBlbmRl
bmN5IGFuZCB0aG9zZSBhcmUgdGhlIG9uZXMgdGhhdApjYW4gb3ZlcmxhcCB3aXRoIGVhY2ggb3Ro
ZXIuCgpUaGVuIG9uIHRoZSBzZWNvbmQgbG9vcCBpdCB3aWxsIGVuYWJsZSBhbGwgdGhlIHBpcGVz
IHRoYXQgbmVlZHMgYQptb2Rlc2V0IGFuZCBkb24ndCBkZXBlbmRzIG9uIG90aGVyIHBpcGVzIGxp
a2UgTVNUIG1hc3RlcgpwaXBlL3RyYW5zY29kZXIuCgpUaGVuIGZpbmFsbHkgYWxsIHRoZSBwaXBl
cyB0aGF0IG5lZWRzIGEgbW9kZXNldCBhbmQgaGF2ZSBkZXBlbmRlbmN5Cm9uIG90aGVyIHBpcGVz
LCB0aGF0IGF0IHRoaXMgcG9pbnQgYXJlIGFscmVhZCBlbmFibGVkLgoKdjM6IHJlYmFzZWQKCnY0
OgotIGFkZGVkIGNoZWNrIGZvciBtb2Rlc2V0X3BpcGVzIHRvbyB0byBkZWNpZGUgaWYgaXMgbmVj
ZXNzYXJ5IGZvciBhCndhaXQgYSB2YmxhbmsKLSBhZGRlZCBEREIgYWxsb2NhdGlvbiBvdmVybGFw
IGNoZWNrIGZvciBwaXBlcyB0aGF0IG5lZWRzIGEgbW9kZXNldAoKQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDEwOCArKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgODMg
aW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBlYjk3YWQ1NjJjOTYuLjI0ODQxZGRlNDkwYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0
NTIzLDE1ICsxNDUyMywyMSBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxl
cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAl1OCBod19lbmFibGVkX3NsaWNl
cyA9IGRldl9wcml2LT53bS5za2xfaHcuZGRiLmVuYWJsZWRfc2xpY2VzOwogCXU4IHJlcXVpcmVk
X3NsaWNlcyA9IHN0YXRlLT53bV9yZXN1bHRzLmRkYi5lbmFibGVkX3NsaWNlczsKIAlzdHJ1Y3Qg
c2tsX2RkYl9lbnRyeSBlbnRyaWVzW0k5MTVfTUFYX1BJUEVTXSA9IHt9OwotCXU4IGRpcnR5X3Bp
cGVzID0gMDsKKwljb25zdCB1OCBudW1fcGlwZXMgPSBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYp
OworCXU4IHVwZGF0ZV9waXBlcyA9IDAsIG1vZGVzZXRfcGlwZXMgPSAwOwogCWludCBpOwogCiAJ
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRj
X3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgeworCQlpZiAoIW5ld19jcnRjX3N0YXRlLT5ody5h
Y3RpdmUpCisJCQljb250aW51ZTsKKwogCQkvKiBpZ25vcmUgYWxsb2NhdGlvbnMgZm9yIGNydGMn
cyB0aGF0IGhhdmUgYmVlbiB0dXJuZWQgb2ZmLiAqLwotCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3
X2NydGNfc3RhdGUpICYmIG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpCisJCWlmICghbmVlZHNf
bW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpIHsKIAkJCWVudHJpZXNbaV0gPSBvbGRfY3J0Y19zdGF0
ZS0+d20uc2tsLmRkYjsKLQkJaWYgKG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpCi0JCQlkaXJ0
eV9waXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7CisJCQl1cGRhdGVfcGlwZXMgfD0gQklUKGNydGMt
PnBpcGUpOworCQl9IGVsc2UgeworCQkJbW9kZXNldF9waXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7
CisJCX0KIAl9CiAKIAkvKiBJZiAybmQgREJ1ZiBzbGljZSByZXF1aXJlZCwgZW5hYmxlIGl0IGhl
cmUgKi8KQEAgLTE0NTQxLDM4ICsxNDU0NywyOSBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21v
ZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkvKgogCSAq
IFdoZW5ldmVyIHRoZSBudW1iZXIgb2YgYWN0aXZlIHBpcGVzIGNoYW5nZXMsIHdlIG5lZWQgdG8g
bWFrZSBzdXJlIHdlCiAJICogdXBkYXRlIHRoZSBwaXBlcyBpbiB0aGUgcmlnaHQgb3JkZXIgc28g
dGhhdCB0aGVpciBkZGIgYWxsb2NhdGlvbnMKLQkgKiBuZXZlciBvdmVybGFwIHdpdGggZWFjaG90
aGVyIGluYmV0d2VlbiBDUlRDIHVwZGF0ZXMuIE90aGVyd2lzZSB3ZSdsbAorCSAqIG5ldmVyIG92
ZXJsYXAgd2l0aCBlYWNoIG90aGVyIGJldHdlZW4gQ1JUQyB1cGRhdGVzLiBPdGhlcndpc2Ugd2Un
bGwKIAkgKiBjYXVzZSBwaXBlIHVuZGVycnVucyBhbmQgb3RoZXIgYmFkIHN0dWZmLgorCSAqCisJ
ICogU28gZmlyc3QgbGV0cyBlbmFibGUgYWxsIHBpcGVzIHRoYXQgZG8gbm90IG5lZWQgYSBmdWxs
bW9kZXNldCBhcworCSAqIHRob3NlIGRvbid0IGhhdmUgYW55IGV4dGVybmFsIGRlcGVuZGVuY3ku
CiAJICovCi0Jd2hpbGUgKGRpcnR5X3BpcGVzKSB7CisJd2hpbGUgKHVwZGF0ZV9waXBlcykgewog
CQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2Ny
dGNfc3RhdGUsCiAJCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKIAkJCWVudW0gcGlwZSBw
aXBlID0gY3J0Yy0+cGlwZTsKLQkJCWJvb2wgbW9kZXNldCA9IG5lZWRzX21vZGVzZXQobmV3X2Ny
dGNfc3RhdGUpOwogCi0JCQlpZiAoKGRpcnR5X3BpcGVzICYgQklUKHBpcGUpKSA9PSAwKQorCQkJ
aWYgKCh1cGRhdGVfcGlwZXMgJiBCSVQocGlwZSkpID09IDApCiAJCQkJY29udGludWU7CiAKIAkJ
CWlmIChza2xfZGRiX2FsbG9jYXRpb25fb3ZlcmxhcHMoJm5ld19jcnRjX3N0YXRlLT53bS5za2wu
ZGRiLAotCQkJCQkJCWVudHJpZXMsCi0JCQkJCQkJSU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSwg
aSkpCisJCQkJCQkJZW50cmllcywgbnVtX3BpcGVzLCBpKSkKIAkJCQljb250aW51ZTsKIAogCQkJ
ZW50cmllc1tpXSA9IG5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiOwotCQkJZGlydHlfcGlwZXMg
Jj0gfkJJVChwaXBlKTsKLQotCQkJaWYgKG1vZGVzZXQgJiYgaXNfdHJhbnNfcG9ydF9zeW5jX21v
ZGUobmV3X2NydGNfc3RhdGUpKSB7Ci0JCQkJaWYgKGlzX3RyYW5zX3BvcnRfc3luY19tYXN0ZXIo
bmV3X2NydGNfc3RhdGUpKQotCQkJCQlpbnRlbF91cGRhdGVfdHJhbnNfcG9ydF9zeW5jX2NydGNz
KGNydGMsCi0JCQkJCQkJCQkgICBzdGF0ZSwKLQkJCQkJCQkJCSAgIG9sZF9jcnRjX3N0YXRlLAot
CQkJCQkJCQkJICAgbmV3X2NydGNfc3RhdGUpOwotCQkJCWVsc2UKLQkJCQkJY29udGludWU7Ci0J
CQl9IGVsc2UgewotCQkJCWludGVsX3VwZGF0ZV9jcnRjKGNydGMsIHN0YXRlLCBvbGRfY3J0Y19z
dGF0ZSwKLQkJCQkJCSAgbmV3X2NydGNfc3RhdGUpOwotCQkJfQorCQkJdXBkYXRlX3BpcGVzICY9
IH5CSVQocGlwZSk7CisKKwkJCWludGVsX3VwZGF0ZV9jcnRjKGNydGMsIHN0YXRlLCBvbGRfY3J0
Y19zdGF0ZSwKKwkJCQkJICBuZXdfY3J0Y19zdGF0ZSk7CiAKIAkJCS8qCiAJCQkgKiBJZiB0aGlz
IGlzIGFuIGFscmVhZHkgYWN0aXZlIHBpcGUsIGl0J3MgRERCIGNoYW5nZWQsCkBAIC0xNDU4Miwx
MSArMTQ1NzksNzIgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCQkgKi8KIAkJCWlmICghc2tsX2RkYl9l
bnRyeV9lcXVhbCgmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5kZGIsCiAJCQkJCQkgJm9sZF9jcnRj
X3N0YXRlLT53bS5za2wuZGRiKSAmJgotCQkJICAgICFtb2Rlc2V0ICYmIGRpcnR5X3BpcGVzKQor
CQkJICAgICh1cGRhdGVfcGlwZXMgfCBtb2Rlc2V0X3BpcGVzKSkKIAkJCQlpbnRlbF93YWl0X2Zv
cl92YmxhbmsoZGV2X3ByaXYsIHBpcGUpOwogCQl9CiAJfQogCisJLyoKKwkgKiBFbmFibGUgYWxs
IHBpcGVzIHRoYXQgbmVlZHMgYSBtb2Rlc2V0IGFuZCBkbyBub3QgZGVwZW5kcyBvbiBvdGhlcgor
CSAqIHBpcGVzCisJICovCisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3Rh
dGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsK
KwkJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCisJCWlmICgobW9kZXNldF9waXBlcyAm
IEJJVChwaXBlKSkgPT0gMCkKKwkJCWNvbnRpbnVlOworCisJCWlmIChpbnRlbF9kcF9tc3RfaXNf
c2xhdmVfdHJhbnMobmV3X2NydGNfc3RhdGUpIHx8CisJCSAgICBpc190cmFuc19wb3J0X3N5bmNf
c2xhdmUobmV3X2NydGNfc3RhdGUpKQorCQkJY29udGludWU7CisKKwkJV0FSTl9PTihza2xfZGRi
X2FsbG9jYXRpb25fb3ZlcmxhcHMoJm5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiLAorCQkJCQkJ
ICAgIGVudHJpZXMsIG51bV9waXBlcywgaSkpOworCisJCWVudHJpZXNbaV0gPSBuZXdfY3J0Y19z
dGF0ZS0+d20uc2tsLmRkYjsKKwkJbW9kZXNldF9waXBlcyAmPSB+QklUKHBpcGUpOworCisJCWlm
IChpc190cmFuc19wb3J0X3N5bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpIHsKKwkJCXN0cnVjdCBp
bnRlbF9jcnRjICpzbGF2ZV9jcnRjOworCisJCQlpbnRlbF91cGRhdGVfdHJhbnNfcG9ydF9zeW5j
X2NydGNzKGNydGMsIHN0YXRlLAorCQkJCQkJCSAgIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkJCSAg
IG5ld19jcnRjX3N0YXRlKTsKKworCQkJc2xhdmVfY3J0YyA9IGludGVsX2dldF9zbGF2ZV9jcnRj
KG5ld19jcnRjX3N0YXRlKTsKKwkJCS8qIFRPRE86IHVwZGF0ZSBlbnRyaWVzW10gb2Ygc2xhdmUg
Ki8KKwkJCW1vZGVzZXRfcGlwZXMgJj0gfkJJVChzbGF2ZV9jcnRjLT5waXBlKTsKKworCQl9IGVs
c2UgeworCQkJaW50ZWxfdXBkYXRlX2NydGMoY3J0Yywgc3RhdGUsIG9sZF9jcnRjX3N0YXRlLAor
CQkJCQkgIG5ld19jcnRjX3N0YXRlKTsKKwkJfQorCX0KKworCS8qCisJICogRmluYWxseSBlbmFi
bGUgYWxsIHBpcGVzIHRoYXQgbmVlZHMgYSBtb2Rlc2V0IGFuZCBkZXBlbmRzIG9uCisJICogb3Ro
ZXIgcGlwZXMsIHJpZ2h0IG5vdyBpdCBpcyBvbmx5IE1TVCBzbGF2ZXMgYXMgYm90aCBwb3J0IHN5
bmMgc2xhdmUKKwkgKiBhbmQgbWFzdGVyIGFyZSBlbmFibGVkIHRvZ2V0aGVyCisJICovCisJZm9y
X2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0
YXRlLAorCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlOworCisJCWlmICgobW9kZXNldF9waXBlcyAmIEJJVChwaXBlKSkgPT0gMCkKKwkJ
CWNvbnRpbnVlOworCisJCVdBUk5fT04oc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdf
Y3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwKKwkJCQkJCSAgICBlbnRyaWVzLCBudW1fcGlwZXMsIGkp
KTsKKworCQllbnRyaWVzW2ldID0gbmV3X2NydGNfc3RhdGUtPndtLnNrbC5kZGI7CisJCW1vZGVz
ZXRfcGlwZXMgJj0gfkJJVChwaXBlKTsKKworCQlpbnRlbF91cGRhdGVfY3J0YyhjcnRjLCBzdGF0
ZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsKKwl9CisKKwlXQVJOX09OKG1vZGVz
ZXRfcGlwZXMpOworCiAJLyogSWYgMm5kIERCdWYgc2xpY2UgaXMgbm8gbW9yZSByZXF1aXJlZCBk
aXNhYmxlIGl0ICovCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWlyZWRf
c2xpY2VzIDwgaHdfZW5hYmxlZF9zbGljZXMpCiAJCWljbF9kYnVmX3NsaWNlc191cGRhdGUoZGV2
X3ByaXYsIHJlcXVpcmVkX3NsaWNlcyk7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
