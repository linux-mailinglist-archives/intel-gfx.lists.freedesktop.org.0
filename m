Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A1111BF16
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A492C6EBF3;
	Wed, 11 Dec 2019 21:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C496EBF2;
 Wed, 11 Dec 2019 21:23:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:23:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="413649624"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 11 Dec 2019 13:23:15 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 11 Dec 2019 13:24:33 -0800
Message-Id: <20191211212433.18185-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191211212433.18185-1-manasi.d.navare@intel.com>
References: <20191211212433.18185-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/fbdev: Fallback to non tiled mode if
 all tiles not present
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiB0aWxlZCBkaXNwbGF5cywgaWYgd2UgaG90cGx1ZyBqdXN0IG9uZSBjb25uZWN0
b3IsCmZiY29uIGN1cnJlbnRseSBqdXN0IHNlbGVjdHMgdGhlIHByZWZlcnJlZCBtb2RlIGFuZCBp
ZiBpdCBpcwp0aWxlZCBtb2RlIHRoZW4gdGhhdCBiZWNvbWVzIGEgcHJvYmxlbSBpZiByZXN0IG9m
IHRoZSB0aWxlcyBhcmUKbm90IHByZXNlbnQuClNvIGluIHRoZSBmYmRldiBkcml2ZXIgb24gaG90
cGx1ZyB3aGVuIHdlIHByb2JlIHRoZSBjbGllbnQgbW9kZXNldCwKaWYgd2UgZG9udCBmaW5kIGFs
bCB0aGUgY29ubmVjdG9ycyBmb3IgYWxsIHRpbGVzLCB0aGVuIG9uIGEgY29ubmVjdG9yCndpdGgg
b25lIHRpbGUsIGp1c3QgZmFsbGJhY2sgdG8gdGhlIGZpcnN0IGF2YWlsYWJsZSBub24gdGlsZWQg
bW9kZQp0byBkaXNwbGF5IG92ZXIgYSBzaW5nbGUgY29ubmVjdG9yLgpPbiB0aGUgaG90cGx1ZyBv
ZiB0aGUgY29uc2VjdXRpdmUgdGlsZWQgY29ubmVjdG9ycywgaWYgdGhlIHRpbGVkIG1vZGUKbm8g
bG9uZ2VyIGV4aXN0cyBiZWNhdXNlIG9mIGZiY29uIHNpemUgbGltaXRhdGlvbiwgdGhlbiByZXR1
cm4Kbm8gbW9kZXMgZm9yIGNvbnNlY3V0aXZlIHRpbGVzIGJ1dCByZXRhaW4gdGhlIG5vbiB0aWxl
ZCBtb2RlCm9uIHRoZSAwdGggdGlsZS4KVXNlIHRoZSBzYW1lIGxvZ2ljIGluIGNhc2Ugb2YgY29u
bmVjdGVkIGJvb3QgY2FzZSBhcyB3ZWxsLgpUaGlzIGhhcyBiZWVuIHRlc3RlZCB3aXRoIERlbGwg
VVAzMjhLIHRpbGVkIG1vbml0b3IuCgp2MzoKKiBDaGVjayBOdW0gdGlsZWQgY29ubnMgdGhhdCBh
cmUgY29ubmVjdGVkIChNYW5hc2kpCnYyOgoqIFNldCB0aGUgbW9kZXMgb24gY29uc2VjdXRpdmUg
aG90cGx1Z2dlZCB0aWxlcyB0byBubyBtb2RlCmlmIHRpbGVkIG1vZGUgaXMgcHJ1bmVkIChEYXZl
KQp2MToKKiBKdXN0IGhhbmRsZSB0aGUgMXN0IGNvbm5lY3RvciBob3RwbHVnIGNhc2UKKiB2MSBS
ZXZpZXdlZC1ieTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KCkJ1Z3ppbGxhOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81ClN1Z2dlc3Rl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU3Vn
Z2VzdGVkLWJ5OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhdmUgQWlybGllIDxh
aXJsaWVkQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRo
YXQuY29tPiAodjIpCi0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jIHwg
NzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcyIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMKaW5kZXggODk1YjczZjIz
MDc5Li42ZDRhMjllOTlhZTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50
X21vZGVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMKQEAg
LTExNCw2ICsxMTQsMzMgQEAgZHJtX2NsaWVudF9maW5kX21vZGVzZXQoc3RydWN0IGRybV9jbGll
bnRfZGV2ICpjbGllbnQsIHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKIAlyZXR1cm4gTlVMTDsKIH0K
IAorc3RhdGljIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICoKK2RybV9jb25uZWN0b3JfZ2V0X3Rp
bGVkX21vZGUoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKK3sKKwlzdHJ1Y3QgZHJt
X2Rpc3BsYXlfbW9kZSAqbW9kZTsKKworCWxpc3RfZm9yX2VhY2hfZW50cnkobW9kZSwgJmNvbm5l
Y3Rvci0+bW9kZXMsIGhlYWQpIHsKKwkJaWYgKG1vZGUtPmhkaXNwbGF5ID09IGNvbm5lY3Rvci0+
dGlsZV9oX3NpemUgJiYKKwkJICAgIG1vZGUtPnZkaXNwbGF5ID09IGNvbm5lY3Rvci0+dGlsZV92
X3NpemUpCisJCQlyZXR1cm4gbW9kZTsKKwl9CisJcmV0dXJuIE5VTEw7Cit9CisKK3N0YXRpYyBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqCitkcm1fY29ubmVjdG9yX2ZhbGxiYWNrX25vbl90aWxl
ZF9tb2RlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCit7CisJc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKm1vZGU7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KG1vZGUsICZjb25uZWN0
b3ItPm1vZGVzLCBoZWFkKSB7CisJCWlmIChtb2RlLT5oZGlzcGxheSA9PSBjb25uZWN0b3ItPnRp
bGVfaF9zaXplICYmCisJCSAgICBtb2RlLT52ZGlzcGxheSA9PSBjb25uZWN0b3ItPnRpbGVfdl9z
aXplKQorCQkJY29udGludWU7CisJCXJldHVybiBtb2RlOworCX0KKwlyZXR1cm4gTlVMTDsKK30K
Kwogc3RhdGljIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICoKIGRybV9jb25uZWN0b3JfaGFzX3By
ZWZlcnJlZF9tb2RlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIGludCB3aWR0aCwg
aW50IGhlaWdodCkKIHsKQEAgLTM0OCw4ICszNzUsMTUgQEAgc3RhdGljIGJvb2wgZHJtX2NsaWVu
dF90YXJnZXRfcHJlZmVycmVkKHN0cnVjdCBkcm1fY29ubmVjdG9yICoqY29ubmVjdG9ycywKIAlz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwogCXU2NCBjb25uX2NvbmZpZ3VyZWQgPSAw
OwogCWludCB0aWxlX3Bhc3MgPSAwOworCWludCBudW1fdGlsZWRfY29ubnMgPSAwOwogCWludCBp
OwogCisJZm9yIChpID0gMDsgaSA8IGNvbm5lY3Rvcl9jb3VudDsgaSsrKSB7CisJCWlmIChjb25u
ZWN0b3JzW2ldLT5oYXNfdGlsZSAmJgorCQkgICAgY29ubmVjdG9yc1tpXS0+c3RhdHVzID09IGNv
bm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKQorCQkJbnVtX3RpbGVkX2Nvbm5zKys7CisJfQorCiBy
ZXRyeToKIAlmb3IgKGkgPSAwOyBpIDwgY29ubmVjdG9yX2NvdW50OyBpKyspIHsKIAkJY29ubmVj
dG9yID0gY29ubmVjdG9yc1tpXTsKQEAgLTM5OSw2ICs0MzMsMjggQEAgc3RhdGljIGJvb2wgZHJt
X2NsaWVudF90YXJnZXRfcHJlZmVycmVkKHN0cnVjdCBkcm1fY29ubmVjdG9yICoqY29ubmVjdG9y
cywKIAkJCWxpc3RfZm9yX2VhY2hfZW50cnkobW9kZXNbaV0sICZjb25uZWN0b3ItPm1vZGVzLCBo
ZWFkKQogCQkJCWJyZWFrOwogCQl9CisJCS8qCisJCSAqIEluIGNhc2Ugb2YgdGlsZWQgbW9kZSBp
ZiBhbGwgdGlsZXMgbm90IHByZXNlbnQgZmFsbGJhY2sgdG8KKwkJICogZmlyc3QgYXZhaWxhYmxl
IG5vbiB0aWxlZCBtb2RlLgorCQkgKiBBZnRlciBhbGwgdGlsZXMgYXJlIHByZXNlbnQsIHRyeSB0
byBmaW5kIHRoZSB0aWxlZCBtb2RlCisJCSAqIGZvciBhbGwgYW5kIGlmIHRpbGVkIG1vZGUgbm90
IHByZXNlbnQgZHVlIHRvIGZiY29uIHNpemUKKwkJICogbGltaXRhdGlvbnMsIHVzZSBmaXJzdCBu
b24gdGlsZWQgbW9kZSBvbmx5IGZvcgorCQkgKiB0aWxlIDAsMCBhbmQgc2V0IHRvIG5vIG1vZGUg
Zm9yIGFsbCBvdGhlciB0aWxlcy4KKwkJICovCisJCWlmIChjb25uZWN0b3ItPmhhc190aWxlKSB7
CisJCQlpZiAobnVtX3RpbGVkX2Nvbm5zIDwKKwkJCSAgICBjb25uZWN0b3ItPm51bV9oX3RpbGUg
KiBjb25uZWN0b3ItPm51bV92X3RpbGUgfHwKKwkJCSAgICAoY29ubmVjdG9yLT50aWxlX2hfbG9j
ID09IDAgJiYKKwkJCSAgICAgY29ubmVjdG9yLT50aWxlX3ZfbG9jID09IDAgJiYKKwkJCSAgICAg
IWRybV9jb25uZWN0b3JfZ2V0X3RpbGVkX21vZGUoY29ubmVjdG9yKSkpIHsKKwkJCQlEUk1fREVC
VUdfS01TKCJGYWxsaW5nIGJhY2sgdG8gbm9uIHRpbGVkIG1vZGUgb24gQ29ubmVjdG9yICVkXG4i
LAorCQkJCQkgICAgICBjb25uZWN0b3ItPmJhc2UuaWQpOworCQkJCW1vZGVzW2ldID0gZHJtX2Nv
bm5lY3Rvcl9mYWxsYmFja19ub25fdGlsZWRfbW9kZShjb25uZWN0b3IpOworCQkJfSBlbHNlIHsK
KwkJCQltb2Rlc1tpXSA9IGRybV9jb25uZWN0b3JfZ2V0X3RpbGVkX21vZGUoY29ubmVjdG9yKTsK
KwkJCX0KKwkJfQorCiAJCURSTV9ERUJVR19LTVMoImZvdW5kIG1vZGUgJXNcbiIsIG1vZGVzW2ld
ID8gbW9kZXNbaV0tPm5hbWUgOgogCQkJICAibm9uZSIpOwogCQljb25uX2NvbmZpZ3VyZWQgfD0g
QklUX1VMTChpKTsKQEAgLTUxNSw2ICs1NzEsNyBAQCBzdGF0aWMgYm9vbCBkcm1fY2xpZW50X2Zp
cm13YXJlX2NvbmZpZyhzdHJ1Y3QgZHJtX2NsaWVudF9kZXYgKmNsaWVudCwKIAlib29sIGZhbGxi
YWNrID0gdHJ1ZSwgcmV0ID0gdHJ1ZTsKIAlpbnQgbnVtX2Nvbm5lY3RvcnNfZW5hYmxlZCA9IDA7
CiAJaW50IG51bV9jb25uZWN0b3JzX2RldGVjdGVkID0gMDsKKwlpbnQgbnVtX3RpbGVkX2Nvbm5z
ID0gMDsKIAlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4OwogCiAJaWYgKCFkcm1f
ZHJ2X3VzZXNfYXRvbWljX21vZGVzZXQoZGV2KSkKQEAgLTUzMiw2ICs1ODksMTEgQEAgc3RhdGlj
IGJvb2wgZHJtX2NsaWVudF9maXJtd2FyZV9jb25maWcoc3RydWN0IGRybV9jbGllbnRfZGV2ICpj
bGllbnQsCiAJbWVtY3B5KHNhdmVfZW5hYmxlZCwgZW5hYmxlZCwgY291bnQpOwogCW1hc2sgPSBH
RU5NQVNLKGNvdW50IC0gMSwgMCk7CiAJY29ubl9jb25maWd1cmVkID0gMDsKKwlmb3IgKGkgPSAw
OyBpIDwgY291bnQ7IGkrKykgeworCQlpZiAoY29ubmVjdG9yc1tpXS0+aGFzX3RpbGUgJiYKKwkJ
ICAgIGNvbm5lY3RvcnNbaV0tPnN0YXR1cyA9PSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCkK
KwkJCW51bV90aWxlZF9jb25ucysrOworCX0KIHJldHJ5OgogCWNvbm5fc2VxID0gY29ubl9jb25m
aWd1cmVkOwogCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7CkBAIC02MzEsNiArNjkzLDE2
IEBAIHN0YXRpYyBib29sIGRybV9jbGllbnRfZmlybXdhcmVfY29uZmlnKHN0cnVjdCBkcm1fY2xp
ZW50X2RldiAqY2xpZW50LAogCQkJCSAgICAgIGNvbm5lY3Rvci0+bmFtZSk7CiAJCQltb2Rlc1tp
XSA9ICZjb25uZWN0b3ItPnN0YXRlLT5jcnRjLT5tb2RlOwogCQl9CisJCS8qCisJCSAqIEluIGNh
c2Ugb2YgdGlsZWQgbW9kZXMsIGlmIGFsbCB0aWxlcyBhcmUgbm90IHByZXNlbnQKKwkJICogdGhl
biBmYWxsYmFjayB0byBhIG5vbiB0aWxlZCBtb2RlLgorCQkgKi8KKwkJaWYgKGNvbm5lY3Rvci0+
aGFzX3RpbGUgJiYKKwkJICAgIG51bV90aWxlZF9jb25ucyA8IGNvbm5lY3Rvci0+bnVtX2hfdGls
ZSAqIGNvbm5lY3Rvci0+bnVtX3ZfdGlsZSkgeworCQkJRFJNX0RFQlVHX0tNUygiRmFsbGluZyBi
YWNrIHRvIG5vbiB0aWxlZCBtb2RlIG9uIENvbm5lY3RvciAlZFxuIiwKKwkJCQkgICAgICBjb25u
ZWN0b3ItPmJhc2UuaWQpOworCQkJbW9kZXNbaV0gPSBkcm1fY29ubmVjdG9yX2ZhbGxiYWNrX25v
bl90aWxlZF9tb2RlKGNvbm5lY3Rvcik7CisJCX0KIAkJY3J0Y3NbaV0gPSBuZXdfY3J0YzsKIAog
CQlEUk1fREVCVUdfS01TKCJjb25uZWN0b3IgJXMgb24gW0NSVEM6JWQ6JXNdOiAlZHglZCVzXG4i
LAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
