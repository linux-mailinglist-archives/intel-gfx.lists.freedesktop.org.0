Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4863115A9B
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 02:18:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA43E6FACC;
	Sat,  7 Dec 2019 01:18:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C077D6FACC
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 01:18:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 17:18:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,286,1571727600"; d="scan'208";a="202276987"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.230])
 by orsmga007.jf.intel.com with ESMTP; 06 Dec 2019 17:18:38 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 17:18:30 -0800
Message-Id: <20191207011832.422566-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207011832.422566-1-jose.souza@intel.com>
References: <20191207011832.422566-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Always enables MST master
 pipe first
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVlIHRvIEREQiBvdmVybGFwcyB0aGUgcGlwZSBlbmFibGluZyBzZXF1ZW5jZSBpcyBub3QgYWx3
YXlzIGNyZXNjZW50LgpBcyB0aGUgcHJldmlvdXMgcGF0Y2ggc2VsZWN0cyB0aGUgZmlyc3QgcGlw
ZS90cmFuc2NvZGVyIGluIHRoZSBNU1QKc3RyZWFtIHRvIHRoZSBNU1QgbWFzdGVyIGFuZCBpdCBu
ZWVkcyB0byBiZSBlbmFibGVkIGZpcnN0IHRoaXMKY2hhbmdlcyB3ZXJlIG5lZWRlZCB0byBndWFy
YW50ZWUgdGhhdC4KClNvIGhlcmUgaXQgd2lsbCBmaXJzdCBsb29wIHRocm91Z2ggYWxsIHRoZSBN
U1QgbWFzdGVycyBhbmQgb3RoZXIKcGlwZXMgdGhhdCBkbyBub3QgaGF2ZSBwaXBlIGRlcGVuZGVu
Y2llcyBhbmQgZW5hYmxpbmcgdGhlbiwgYXMgd2hlbgp0aGUgbWFzdGVyIGlzIGJlaW5nIGVuYWJs
ZWQgYWxsIHRoZSBzbGF2ZXMgYXJlIGFsc28gZ29pbmcgdG8gYSBmdWxsCm1vZGVzZXQgdGhleSB3
aWxsIG5vdCBvdmVybGFwIHdpdGggZWFjaCBvdGhlci4KVGhlbiBvbiB0aGUgc2Vjb25kIGxvb3Ag
aXQgd2lsbCBlbmFibGUgYWxsIHRoZSBNU1Qgc2xhdmVzLgoKSSBoYXZlIHRyaWVkIHRvIHB1dCBw
b3J0IHN5bmMgcGlwZXMgaW50byB0aG9zZSB0d28gbG9vcHMgYnV0CmludGVsX3VwZGF0ZV90cmFu
c19wb3J0X3N5bmNfY3J0Y3MoKSBpcyBkb2luZyB3YXkgbW9yZSB0aGFuIGp1c3QKZW5hYmxlIHBp
cGVzLCByZWFkaW5nIHNwZWMgSSBndWVzcyBpdCBjb3VsZCBiZSBhY2NvbXBsaXNoIGJ1dCBJIHdp
bGwKbGVhdmUgaXQgdG8gcGVvcGxlIHdvcmtpbmcgb24gcG9ydCBzeW5jLgpBdCBsZWFzdCBub3cg
dGhlIHBvcnQgc3luYyBwaXBlcyBhcmUgZW5hYmxlZCBieSBsYXN0IHNvIHRoZSBzbGF2ZSBEREIK
YWxsb2NhdGlvbiB3aWxsIG5vdCBvdmVybGFwIHdpdGggb3RoZXIgcGlwZXMuCgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAxMjAgKysrKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDEwNSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGY4OTQ5NGM4NDljZS4uMmY3NGMwYmZi
MmE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMTQ1NzYsNiArMTQ1NzYsMzkgQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3RyYW5zX3Bv
cnRfc3luY19jcnRjcyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQkgICAgICAgc3RhdGUp
OwogfQogCitzdGF0aWMgdm9pZAorc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZV9waXBlKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjLAorCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpv
bGRfY3J0Y19zdGF0ZSwKKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2Ny
dGNfc3RhdGUsCisJCQkgICAgICAgdW5zaWduZWQgaW50ICp1cGRhdGVkLCBib29sICpwcm9ncmVz
cywKKwkJCSAgICAgICBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZW50cnkpCit7CisJc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUob2xkX2NydGNf
c3RhdGUtPnVhcGkuc3RhdGUpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWJvb2wgdmJsX3dhaXQgPSBmYWxzZTsKKworCSp1
cGRhdGVkID0gKnVwZGF0ZWQgfCBCSVQoY3J0Yy0+cGlwZSk7CisJKnByb2dyZXNzID0gdHJ1ZTsK
KwkqZW50cnkgPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKKworCS8qCisJICogSWYgdGhp
cyBpcyBhbiBhbHJlYWR5IGFjdGl2ZSBwaXBlLCBpdCdzIEREQiBjaGFuZ2VkLAorCSAqIGFuZCB0
aGlzIGlzbid0IHRoZSBsYXN0IHBpcGUgdGhhdCBuZWVkcyB1cGRhdGluZworCSAqIHRoZW4gd2Ug
bmVlZCB0byB3YWl0IGZvciBhIHZibGFuayB0byBwYXNzIGZvciB0aGUKKwkgKiBuZXcgZGRiIGFs
bG9jYXRpb24gdG8gdGFrZSBlZmZlY3QuCisJICovCisJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19j
cnRjX3N0YXRlKSAmJgorCSAgICBzdGF0ZS0+d21fcmVzdWx0cy5kaXJ0eV9waXBlcyAhPSAqdXBk
YXRlZCAmJgorCSAgICAhc2tsX2RkYl9lbnRyeV9lcXVhbCgmbmV3X2NydGNfc3RhdGUtPndtLnNr
bC5kZGIsCisJCQkJICZvbGRfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYikpCisJCXZibF93YWl0ID0g
dHJ1ZTsKKworCWludGVsX3VwZGF0ZV9jcnRjKGNydGMsIHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwg
bmV3X2NydGNfc3RhdGUpOworCisJaWYgKHZibF93YWl0KQorCQlpbnRlbF93YWl0X2Zvcl92Ymxh
bmsoZGV2X3ByaXYsIGNydGMtPnBpcGUpOworfQorCiBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21v
ZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7
CkBAIC0xNDYwMCwxOCArMTQ2MzMsODQgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0
X2VuYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJLyoKIAkgKiBXaGVu
ZXZlciB0aGUgbnVtYmVyIG9mIGFjdGl2ZSBwaXBlcyBjaGFuZ2VzLCB3ZSBuZWVkIHRvIG1ha2Ug
c3VyZSB3ZQogCSAqIHVwZGF0ZSB0aGUgcGlwZXMgaW4gdGhlIHJpZ2h0IG9yZGVyIHNvIHRoYXQg
dGhlaXIgZGRiIGFsbG9jYXRpb25zCi0JICogbmV2ZXIgb3ZlcmxhcCB3aXRoIGVhY2hvdGhlciBp
bmJldHdlZW4gQ1JUQyB1cGRhdGVzLiBPdGhlcndpc2Ugd2UnbGwKKwkgKiBuZXZlciBvdmVybGFw
IHdpdGggZWFjaCBvdGhlciBiZXR3ZWVuIENSVEMgdXBkYXRlcy4gT3RoZXJ3aXNlIHdlJ2xsCiAJ
ICogY2F1c2UgcGlwZSB1bmRlcnJ1bnMgYW5kIG90aGVyIGJhZCBzdHVmZi4KKwkgKgorCSAqIEZp
cnN0IGVuYWJsZSBhbGwgdGhlIHBpcGVzIHRoYXQgZG8gbm90IGRlcGVuZHMgb24gb3RoZXIgcGlw
ZXMgd2hpbGUKKwkgKiByZXNwZWN0aW5nIHRoZSBEREIgYWxsb2NhdGlvbiBvdmVybGFwcy4KKwkg
KgorCSAqIFRPRE86IGludGVncmF0ZSBwb3J0IHN5bmMgdG8gdGhlIGxvb3BzIGJlbGxvdy4KKwkg
KiBQb3J0IHN5bmMgaXMgbm90IHJlc3BlY3RpbmcgdGhlIEREQiBhbGxvY2F0aW9uIG92ZXJsYXBz
IGFzIGl0CisJICogd2FzIG5vdCBjaGVja2luZyBmb3IgdGhlIHNsYXZlIHBvcnQgb3ZlcmxhcHMg
YW5kIHRoZXJlIGlzIG1vcmUgdGhhbgorCSAqIGp1c3QgYSBwaXBlIGVuYWJsZSBpbiBpbnRlbF91
cGRhdGVfdHJhbnNfcG9ydF9zeW5jX2NydGNzKCkKIAkgKi8KIAlkbyB7CiAJCXByb2dyZXNzID0g
ZmFsc2U7CiAKLQkJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNy
dGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgeworCQlmb3JfZWFjaF9vbGRu
ZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJ
CQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJCWlmICh1cGRhdGVkICYgQklUKGNydGMtPnBp
cGUpIHx8CisJCQkgICAgIW5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpCisJCQkJY29udGludWU7
CisKKwkJCWlmIChpbnRlbF9kcF9tc3RfaXNfc2xhdmVfdHJhbnMobmV3X2NydGNfc3RhdGUpIHx8
CisJCQkgICAgaXNfdHJhbnNfcG9ydF9zeW5jX21vZGUobmV3X2NydGNfc3RhdGUpKQorCQkJCWNv
bnRpbnVlOworCisJCQlpZiAoc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdfY3J0Y19z
dGF0ZS0+d20uc2tsLmRkYiwKKwkJCQkJCQllbnRyaWVzLAorCQkJCQkJCUlOVEVMX05VTV9QSVBF
UyhkZXZfcHJpdiksIGkpKQorCQkJCWNvbnRpbnVlOworCisJCQlza2xfY29tbWl0X21vZGVzZXRf
ZW5hYmxlX3BpcGUoY3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCQkgICAgICAgbmV3X2NydGNf
c3RhdGUsICZ1cGRhdGVkLAorCQkJCQkJICAgICAgICZwcm9ncmVzcywgJmVudHJpZXNbaV0pOwor
CQl9CisJfSB3aGlsZSAocHJvZ3Jlc3MpOworCisJLyoKKwkgKiBOb3cgZW5hYmxlIGFsbCB0aGUg
cGlwZXMgdGhhdCBkZXBlbmRzIG9uIG90aGVyIHBpcGUgYWthIE1TVCBzbGF2ZXMKKwkgKi8KKwlk
byB7CisJCXByb2dyZXNzID0gZmFsc2U7CisKKwkJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNf
aW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkJICAgIG5ld19jcnRj
X3N0YXRlLCBpKSB7CisJCQlpZiAodXBkYXRlZCAmIEJJVChjcnRjLT5waXBlKSB8fAorCQkJICAg
ICFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQorCQkJCWNvbnRpbnVlOworCisJCQlpZiAoaXNf
dHJhbnNfcG9ydF9zeW5jX21vZGUobmV3X2NydGNfc3RhdGUpKQorCQkJCWNvbnRpbnVlOworCisJ
CQlpZiAoc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2ts
LmRkYiwKKwkJCQkJCQllbnRyaWVzLAorCQkJCQkJCUlOVEVMX05VTV9QSVBFUyhkZXZfcHJpdiks
IGkpKQorCQkJCWNvbnRpbnVlOworCisJCQlza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlX3BpcGUo
Y3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCQkgICAgICAgbmV3X2NydGNfc3RhdGUsICZ1cGRh
dGVkLAorCQkJCQkJICAgICAgICZwcm9ncmVzcywgJmVudHJpZXNbaV0pOworCQl9CisJfSB3aGls
ZSAocHJvZ3Jlc3MpOworCisJLyogUG9ydCBzeW5jIGxvb3AgKi8KKwlkbyB7CisJCXByb2dyZXNz
ID0gZmFsc2U7CisKKwkJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUs
IGNydGMsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CiAJ
CQllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJCQlib29sIHZibF93YWl0ID0gZmFsc2U7
CiAJCQlib29sIG1vZGVzZXQgPSBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsKIAotCQkJ
aWYgKHVwZGF0ZWQgJiBCSVQoY3J0Yy0+cGlwZSkgfHwgIW5ld19jcnRjX3N0YXRlLT5ody5hY3Rp
dmUpCisJCQlpZiAodXBkYXRlZCAmIEJJVChwaXBlKSB8fCAhbmV3X2NydGNfc3RhdGUtPmh3LmFj
dGl2ZSkKKwkJCQljb250aW51ZTsKKworCQkJaWYgKCFpc190cmFuc19wb3J0X3N5bmNfbWFzdGVy
KG5ld19jcnRjX3N0YXRlKSkKKwkJCQljb250aW51ZTsKKworCQkJaWYgKCFtb2Rlc2V0KQogCQkJ
CWNvbnRpbnVlOwogCiAJCQlpZiAoc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdfY3J0
Y19zdGF0ZS0+d20uc2tsLmRkYiwKQEAgLTE0NjM0LDE4ICsxNDczMyw5IEBAIHN0YXRpYyB2b2lk
IHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQogCQkJICAgIHN0YXRlLT53bV9yZXN1bHRzLmRpcnR5X3BpcGVzICE9IHVwZGF0ZWQpCiAJ
CQkJdmJsX3dhaXQgPSB0cnVlOwogCi0JCQlpZiAobW9kZXNldCAmJiBpc190cmFuc19wb3J0X3N5
bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpIHsKLQkJCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21h
c3RlcihuZXdfY3J0Y19zdGF0ZSkpCi0JCQkJCWludGVsX3VwZGF0ZV90cmFuc19wb3J0X3N5bmNf
Y3J0Y3MoY3J0YywKLQkJCQkJCQkJCSAgIHN0YXRlLAotCQkJCQkJCQkJICAgb2xkX2NydGNfc3Rh
dGUsCi0JCQkJCQkJCQkgICBuZXdfY3J0Y19zdGF0ZSk7Ci0JCQkJZWxzZQotCQkJCQljb250aW51
ZTsKLQkJCX0gZWxzZSB7Ci0JCQkJaW50ZWxfdXBkYXRlX2NydGMoY3J0Yywgc3RhdGUsIG9sZF9j
cnRjX3N0YXRlLAotCQkJCQkJICBuZXdfY3J0Y19zdGF0ZSk7Ci0JCQl9CisJCQlpbnRlbF91cGRh
dGVfdHJhbnNfcG9ydF9zeW5jX2NydGNzKGNydGMsIHN0YXRlLAorCQkJCQkJCSAgIG9sZF9jcnRj
X3N0YXRlLAorCQkJCQkJCSAgIG5ld19jcnRjX3N0YXRlKTsKIAogCQkJaWYgKHZibF93YWl0KQog
CQkJCWludGVsX3dhaXRfZm9yX3ZibGFuayhkZXZfcHJpdiwgcGlwZSk7Ci0tIAoyLjI0LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
