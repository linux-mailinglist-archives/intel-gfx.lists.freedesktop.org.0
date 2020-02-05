Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F281533F8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:35:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380706E9B8;
	Wed,  5 Feb 2020 15:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB376E9B8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 15:35:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 07:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="404185280"
Received: from amanna.iind.intel.com ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 05 Feb 2020 07:35:35 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 20:54:48 +0530
Message-Id: <20200205152448.2679-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/dsb: Pre allocate and late cleanup
 of cmd buffer
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlLWFsbG9jYXRlIGNvbW1hbmQgYnVmZmVyIGluIGF0b21pY19jb21taXQgdXNpbmcgaW50ZWxf
ZHNiX3ByZXBhcmUKZnVuY3Rpb24gd2hpY2ggYWxzbyBpbmNsdWRlcyBwaW5uaW5nIGFuZCBtYXAg
aW4gY3B1IGRvbWFpbi4KCk5vIGNoYW5nZSBpcyBkc2Igd3JpdGUvY29tbWl0IGZ1bmN0aW9ucy4K
Ck5vdyBkc2IgZ2V0L3B1dCBmdW5jdGlvbiBpcyByZWZhY3RvcmVkIGFuZCBjdXJyZW50bHkgdXNl
ZCBvbmx5IGZvcgpyZWZlcmVuY2UgY291bnRpbmcuIEJlbG93IGRzYiBhcGkgYWRkZWQgdG8gZG8g
cmVzcGVjdGl2ZSBqb2IKbWVudGlvbmVkIGJlbG93LgoKaW50ZWxfZHNiX3ByZXBhcmUgLSBBbGxv
Y2F0ZSwgcGluIGFuZCBtYXAgdGhlIGJ1ZmZlci4KaW50ZWxfZHNiX2NsZWFudXAgLSBVbnBpbiBh
bmQgcmVsZWFzZSB0aGUgZ2VtIG9iamVjdC4KClJGQzogSW5pdGlhbCBwYXRjaCBmb3IgZGVzaWdu
IHJldmlldy4KdjI6IGluY2x1ZGVkIF9pbml0KCkgcGFydCBpbiBfcHJlcGFyZSgpLiBbRGFuaWVs
LCBWaWxsZV0KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljLmMgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgIDEzICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jICAgICB8IDEzMiArKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgICB8ICAgMiArCiA0IGZpbGVzIGNoYW5nZWQs
IDEwMSBpbnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwppbmRleCAzNzljMTJmM2IxZDQuLjk0OTI3MmU2MGEw
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCkBAIC0y
OTAsNyArMjkwLDkgQEAgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0YywKIAkJCSBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShzdGF0ZSk7CisJ
c3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PnVhcGkuY3J0Yyk7CiAKKwlpbnRlbF9kc2JfY2xlYW51cChpbnRlbF9jcnRjKTsKIAlfX2RybV9h
dG9taWNfaGVscGVyX2NydGNfZGVzdHJveV9zdGF0ZSgmY3J0Y19zdGF0ZS0+dWFwaSk7CiAJaW50
ZWxfY3J0Y19mcmVlX2h3X3N0YXRlKGNydGNfc3RhdGUpOwogCWtmcmVlKGNydGNfc3RhdGUpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAzNjhl
NDgxZDQ1ZWUuLjRlM2I0MjJmMGEyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1MDc2LDYgKzE1MDc2LDE5IEBAIHN0YXRpYyBpbnQgaW50
ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAKIHN0YXRpYyBpbnQgaW50
ZWxfYXRvbWljX3ByZXBhcmVfY29tbWl0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQogeworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOworCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOworCWludCBpOworCisJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3Rh
dGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJYm9vbCBtb2RlX2NoYW5nZWQgPSBu
ZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpOworCisJCWlmIChtb2RlX2NoYW5nZWQgfHwgY3J0Y19z
dGF0ZS0+dXBkYXRlX3BpcGUgfHwKKwkJICAgIGNydGNfc3RhdGUtPnVhcGkuY29sb3JfbWdtdF9j
aGFuZ2VkKSB7CisJCQlpbnRlbF9kc2JfcHJlcGFyZShjcnRjKTsKKwkJfQorCX0KKwogCXJldHVy
biBkcm1fYXRvbWljX2hlbHBlcl9wcmVwYXJlX3BsYW5lcyhzdGF0ZS0+YmFzZS5kZXYsCiAJCQkJ
CQkmc3RhdGUtPmJhc2UpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKaW5kZXggNzZhZTAxMjc3ZmQ2Li5mYzlmYzIzYjVmYzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAtMzQsNiArMzQsODYgQEAKICNkZWZpbmUgRFNCX0JZ
VEVfRU5fU0hJRlQJCTIwCiAjZGVmaW5lIERTQl9SRUdfVkFMVUVfTUFTSwkJMHhmZmZmZgogCisv
KioKKyAqIGludGVsX2RzYl9wcmVwYXJlKCkgLSBBbGxvY2F0ZSwgcGluIGFuZCBtYXAgdGhlIERT
QiBjb21tYW5kIGJ1ZmZlci4KKyAqIEBjcnRjOiBpbnRlbF9jcnRjIHN0cnVjdHVyZSB0byBnZXQg
cGlwZSBpbmZvLgorICoKKyAqIFRoaXMgZnVuY3Rpb24gcHJlcGFyZSB0aGUgY29tbWFuZCBidWZm
ZXIgd2hpY2ggaXMgdXNlZCB0byBzdG9yZSBkc2IKKyAqIGluc3RydWN0aW9ucyB3aXRoIGRhdGEu
CisgKi8KKwordm9pZCBpbnRlbF9kc2JfcHJlcGFyZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykK
K3sKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRldik7CisJc3RydWN0IGludGVsX2RzYiAq
ZHNiID0gJmNydGMtPmRzYjsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hOworCXUzMiAqYnVmOworCWludGVsX3dha2VyZWZfdCB3YWtlcmVm
OworCisJaWYgKCFIQVNfRFNCKGk5MTUpIHx8IGRzYi0+Y21kX2J1ZikKKwkJcmV0dXJuOworCisJ
d2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKKworCW9i
aiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgRFNCX0JVRl9TSVpFKTsK
KwlpZiAoSVNfRVJSKG9iaikpIHsKKwkJRFJNX0VSUk9SKCJHZW0gb2JqZWN0IGNyZWF0aW9uIGZh
aWxlZFxuIik7CisJCWdvdG8gb3V0OworCX0KKworCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0
X3BpbihvYmosIE5VTEwsIDAsIDAsIDApOworCWlmIChJU19FUlIodm1hKSkgeworCQlEUk1fRVJS
T1IoIlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOworCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7
CisJCWdvdG8gb3V0OworCX0KKworCWJ1ZiA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHZtYS0+
b2JqLCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUihidWYpKSB7CisJCURSTV9FUlJPUigiQ29t
bWFuZCBidWZmZXIgY3JlYXRpb24gZmFpbGVkXG4iKTsKKwkJZ290byBvdXQ7CisJfQorCisJZHNi
LT5pZCA9IERTQjE7CisJZHNiLT52bWEgPSB2bWE7CisJZHNiLT5jbWRfYnVmID0gYnVmOworCitv
dXQ6CisJLyoKKwkgKiBPbiBlcnJvciBkc2ItPmNtZF9idWYgd2lsbCBjb250aW51ZSB0byBiZSBO
VUxMLCBtYWtpbmcgdGhlIHdyaXRlcworCSAqIHBhc3MtdGhyb3VnaC4gTGVhdmUgdGhlIGRhbmds
aW5nIHJlZiB0byBiZSByZW1vdmVkIGxhdGVyIGJ5IHRoZQorCSAqIGNvcnJlc3BvbmRpbmcgaW50
ZWxfZHNiX3B1dCgpOiB0aGUgaW1wb3J0YW50IGVycm9yIG1lc3NhZ2Ugd2lsbAorCSAqIGFscmVh
ZHkgYmUgbG9nZ2VkIGFib3ZlLgorCSAqLworCisJaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUt
PnJ1bnRpbWVfcG0sIHdha2VyZWYpOworfQorCisvKioKKyAqIGludGVsX2RzYl9jbGVhbnVwKCkg
LSBUbyBjbGVhbnVwIERTQiBjb250ZXh0LgorICogQGRzYjogaW50ZWxfZHNiIHN0cnVjdHVyZS4K
KyAqCisgKiBUaGlzIGZ1bmN0aW9uIGNsZWFudXAgdGhlIERTQiBjb250ZXh0IGJ5IHVucGlubmlu
ZyBhbmQgcmVsZWFzaW5nCisgKiB0aGUgVk1BIG9iamVjdCBhc3NvY2lhdGVkIHdpdGggaXQuCisg
Ki8KKwordm9pZCBpbnRlbF9kc2JfY2xlYW51cChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3sK
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYp
OworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9ICZjcnRjLT5kc2I7CisKKwlpZiAoIUhBU19EU0Io
aTkxNSkpCisJCXJldHVybjsKKworCWlmICghZHNiLT52bWEpIHsKKwkJaTkxNV92bWFfdW5waW5f
YW5kX3JlbGVhc2UoJmRzYi0+dm1hLCBJOTE1X1ZNQV9SRUxFQVNFX01BUCk7CisJCWRzYi0+dm1h
ID0gTlVMTDsKKwkJZHNiLT5jbWRfYnVmID0gTlVMTDsKKwl9Cit9CisKIHN0YXRpYyBpbmxpbmUg
Ym9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCiB7CiAJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMpLCBkc2IpOwpAQCAt
ODQsMTQgKzE2NCwxMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZHNiX2Rpc2FibGVfZW5n
aW5lKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKIH0KIAogLyoqCi0gKiBpbnRlbF9kc2JfZ2V0KCkg
LSBBbGxvY2F0ZSBEU0IgY29udGV4dCBhbmQgcmV0dXJuIGEgRFNCIGluc3RhbmNlLgorICogaW50
ZWxfZHNiX2dldCgpIC0gUmV0dXJuIGEgRFNCIGluc3RhbmNlIGFuZCBpbmNyZWFzZSByZWYtY291
bnQuCiAgKiBAY3J0YzogaW50ZWxfY3J0YyBzdHJ1Y3R1cmUgdG8gZ2V0IHBpcGUgaW5mby4KICAq
CiAgKiBUaGlzIGZ1bmN0aW9uIHByb3ZpZGVzIGhhbmRsZSBvZiBhIERTQiBpbnN0YW5jZSwgZm9y
IHRoZSBmdXJ0aGVyIERTQgogICogb3BlcmF0aW9ucy4KICAqCiAgKiBSZXR1cm5zOiBhZGRyZXNz
IG9mIEludGVsX2RzYiBpbnN0YW5jZSByZXF1ZXN0ZWQgZm9yLgotICogRmFpbHVyZTogUmV0dXJu
cyB0aGUgc2FtZSBEU0IgaW5zdGFuY2UsIGJ1dCB3aXRob3V0IGEgY29tbWFuZCBidWZmZXIuCiAg
Ki8KIAogc3RydWN0IGludGVsX2RzYiAqCkBAIC0xMDAsNTIgKzE3OSwxMSBAQCBpbnRlbF9kc2Jf
Z2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBj
cnRjLT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUo
ZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSAmY3J0Yy0+ZHNiOwotCXN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWE7Ci0JdTMyICpidWY7
Ci0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAKIAlpZiAoIUhBU19EU0IoaTkxNSkpCiAJCXJl
dHVybiBkc2I7CiAKLQlpZiAoZHNiLT5yZWZjb3VudCsrICE9IDApCi0JCXJldHVybiBkc2I7Ci0K
LQl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwotCi0J
b2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBEU0JfQlVGX1NJWkUp
OwotCWlmIChJU19FUlIob2JqKSkgewotCQlEUk1fRVJST1IoIkdlbSBvYmplY3QgY3JlYXRpb24g
ZmFpbGVkXG4iKTsKLQkJZ290byBvdXQ7Ci0JfQotCi0Jdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dn
dHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgMCk7Ci0JaWYgKElTX0VSUih2bWEpKSB7Ci0JCURSTV9F
UlJPUigiVm1hIGNyZWF0aW9uIGZhaWxlZFxuIik7Ci0JCWk5MTVfZ2VtX29iamVjdF9wdXQob2Jq
KTsKLQkJZ290byBvdXQ7Ci0JfQotCi0JYnVmID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAodm1h
LT5vYmosIEk5MTVfTUFQX1dDKTsKLQlpZiAoSVNfRVJSKGJ1ZikpIHsKLQkJRFJNX0VSUk9SKCJD
b21tYW5kIGJ1ZmZlciBjcmVhdGlvbiBmYWlsZWRcbiIpOwotCQlnb3RvIG91dDsKLQl9Ci0KLQlk
c2ItPmlkID0gRFNCMTsKLQlkc2ItPnZtYSA9IHZtYTsKLQlkc2ItPmNtZF9idWYgPSBidWY7Ci0K
LW91dDoKLQkvKgotCSAqIE9uIGVycm9yIGRzYi0+Y21kX2J1ZiB3aWxsIGNvbnRpbnVlIHRvIGJl
IE5VTEwsIG1ha2luZyB0aGUgd3JpdGVzCi0JICogcGFzcy10aHJvdWdoLiBMZWF2ZSB0aGUgZGFu
Z2xpbmcgcmVmIHRvIGJlIHJlbW92ZWQgbGF0ZXIgYnkgdGhlCi0JICogY29ycmVzcG9uZGluZyBp
bnRlbF9kc2JfcHV0KCk6IHRoZSBpbXBvcnRhbnQgZXJyb3IgbWVzc2FnZSB3aWxsCi0JICogYWxy
ZWFkeSBiZSBsb2dnZWQgYWJvdmUuCi0JICovCi0KLQlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkx
NS0+cnVudGltZV9wbSwgd2FrZXJlZik7Ci0KKwlkc2ItPnJlZmNvdW50Kys7CiAJcmV0dXJuIGRz
YjsKIH0KIApAQCAtMTUzLDggKzE5MSw4IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpCiAgKiBpbnRlbF9kc2JfcHV0KCkgLSBUbyBkZXN0cm95IERTQiBjb250ZXh0Lgog
ICogQGRzYjogaW50ZWxfZHNiIHN0cnVjdHVyZS4KICAqCi0gKiBUaGlzIGZ1bmN0aW9uIGRlc3Ry
b3lzIHRoZSBEU0IgY29udGV4dCBhbGxvY2F0ZWQgYnkgYSBkc2JfZ2V0KCksIGJ5Ci0gKiB1bnBp
bm5pbmcgYW5kIHJlbGVhc2luZyB0aGUgVk1BIG9iamVjdCBhc3NvY2lhdGVkIHdpdGggaXQuCisg
KiBUaGlzIGZ1bmN0aW9uIGRlY3JlYXNlIHRoZSByZWZlcmVuY2UgY291bnQgYW5kIHJlc2V0IHRo
ZSBjb21tYW5kCisgKiBidWZmZXIgcG9zaXRpb24uCiAgKi8KIAogdm9pZCBpbnRlbF9kc2JfcHV0
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKQEAgLTE2OSw4ICsyMDcsNiBAQCB2b2lkIGludGVsX2Rz
Yl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQogCQlyZXR1cm47CiAKIAlpZiAoLS1kc2ItPnJl
ZmNvdW50ID09IDApIHsKLQkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCBJ
OTE1X1ZNQV9SRUxFQVNFX01BUCk7Ci0JCWRzYi0+Y21kX2J1ZiA9IE5VTEw7CiAJCWRzYi0+ZnJl
ZV9wb3MgPSAwOwogCQlkc2ItPmluc19zdGFydF9vZmZzZXQgPSAwOwogCX0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCmluZGV4IDM5NWVmOWNlNTU4ZS4uMWRjY2UxOTg4
OTlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKQEAgLTQxLDYg
KzQxLDggQEAgc3RydWN0IGludGVsX2RzYiB7CiAJdTMyIGluc19zdGFydF9vZmZzZXQ7CiB9Owog
Cit2b2lkIGludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKK3ZvaWQg
aW50ZWxfZHNiX2NsZWFudXAoc3RydWN0IGludGVsX2NydGMgKmNydGMpOwogc3RydWN0IGludGVs
X2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKIHZvaWQgaW50
ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOwotLSAKMi4yNC4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
