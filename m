Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5812865D8
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 19:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E03F6E987;
	Wed,  7 Oct 2020 17:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137876E987
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 17:24:14 +0000 (UTC)
IronPort-SDR: 551EvDGZGksBtrh+LlAMnpnlgTpglF3cxts+5Ft/Svz9lBokKZXWLSPzMfEx5ot97n/yZSrqln
 e2d9tVig4fcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164254694"
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="164254694"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:29 -0700
IronPort-SDR: o704MxfRTMUzOLf0soqz5NmYH1iNjp4/LbgDyszt6GciPVDDHfCkxS6qpT5ARerq0mKYq3xhEM
 SG32gZqmPRoA==
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="528056896"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 20:09:17 +0300
Message-Id: <20201007170917.1764556-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201007170917.1764556-1-imre.deak@intel.com>
References: <20201007170917.1764556-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915: Switch to LTTPR
 non-transparent mode link training
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

VGhlIERQIFN0YW5kYXJkJ3MgcmVjb21tZW5kYXRpb24gaXMgdG8gdXNlIHRoZSBMVFRQUiBub24t
dHJhbnNwYXJlbnQKbW9kZSBsaW5rIHRyYWluaW5nIGlmIExUVFBScyBhcmUgZGV0ZWN0ZWQsIHNv
IGxldCdzIGRvIHRoaXMuCgpCZXNpZGVzIHBvd2VyLXNhdmluZywgdGhlIGFkdmFudGFnZXMgb2Yg
dGhpcyBhcmUgdGhhdCB0aGUgbWF4aW11bSBudW1iZXIKb2YgTFRUUFJzIGNhbiBvbmx5IGJlIHVz
ZWQgaW4gbm9uLXRyYW5zcGFyZW50IG1vZGUgKHRoZSBsaW1pdCBpcyA1LTggaW4KdHJhbnNwYXJl
bnQgbW9kZSksIGFuZCBpdCBwcm92aWRlcyBhIHdheSB0byBuYXJyb3cgZG93biB0aGUgcmVhc29u
IGZvciBhCmxpbmsgdHJhaW5pbmcgZmFpbHVyZSB0byBhIGdpdmVuIGxpbmsgc2VnbWVudC4gTm9u
LXRyYW5zcGFyZW50IG1vZGUgaXMKcHJvYmFibHkgYWxzbyB0aGUgbW9kZSB0aGF0IHdhcyB0ZXN0
ZWQgdGhlIG1vc3QgYnkgdGhlIGluZHVzdHJ5LgoKVGhlIGNoYW5nZXMgaW4gdGhpcyBwYXRjaHNl
dDoKLSBQYXNzIHRoZSBEUCBQSFkgdGhhdCBpcyBjdXJyZW50bHkgbGluayB0cmFpbmVkIHRvIGFs
bCBMVCBoZWxwZXJzLCBzbwogIHRoYXQgdGhlc2UgY2FuIGFjY2VzcyB0aGUgY29ycmVjdCBMVFRQ
Ui9EUFJYIERQQ0QgcmVnaXN0ZXJzLgotIER1cmluZyBMVCB0YWtlIGludG8gYWNjb3VudCB0aGUg
TFRUUFIgY29tbW9uIGxhbmUgcmF0ZS9jb3VudCBhbmQgdGhlCiAgcGVyIExUVFBSLVBIWSB2c3dp
bmcvcHJlLWVtcGggbGltaXRzLgotIFN3aXRjaCB0byBMVFRQUiBub24tdHJhbnNwYXJlbnQgTFQg
bW9kZSBhbmQgdHJhaW4gZWFjaCBsaW5rIHNlZ21lbnQKICBhY2NvcmRpbmcgdG8gdGhlIHNlcXVl
bmNlIGluIERQIFN0YW5kYXJkIHYyLjAgKGNvbXBsZXRlIENSL0VRIGZvcgogIGVhY2ggc2VnbWVu
dCBiZWZvcmUgY29udGludWluZyB3aXRoIHRoZSBuZXh0IHNlZ21lbnQpLgoKdjI6Ci0gU3dpdGNo
IHRvIG5vbi10cmFuc3BhcmVudCBtb2RlIGR1cmluZyBjb25uZWN0b3IgZGV0ZWN0aW9uLCB3aGlj
aCBpcwogIHJlcXVpcmVkIGJlZm9yZSByZWFkaW5nIHRoZSBwZXItUEhZIExUVFBSIGNhcGFiaWxp
dGllcy4KLSBNb3ZlIHRoZSBEUF9QSFlfTFRUUFIoKSBtYWNybyB0byBkcm1fZHBfaGVscGVyLmgg
KFZpbGxlKQotIFVzZSB0aGUgbmV3IGRybV9kcF9kcGNkX3JlYWRfcGh5X2xpbmtfc3RhdHVzKCkg
aW5zdGVhZCBvZiBhZGRpbmcgdGhlCiAgc2FtZSBsb2dpYyB0byBpbnRlbF9kcF9nZXRfbGlua19z
dGF0dXMoKS4gKFZpbGxlKQotIE1ha2UgaW50ZWxfZHBfbHR0cHJfcGh5X2NhcHMoKSByZXR1cm4g
YSBwb2ludGVyIHRvIHRoZSB3aG9sZSBhcnJheQogIGluc3RlYWQgb2YgYSBwb2ludGVyIHRvIGl0
cyBmaXJzdCBlbGVtZW50LiAoVmlsbGUpCi0gQWRkIHRoZSBpbnRlbF9kcF9waHlfaXNfZG93bnN0
cmVhbV9vZl9zb3VyY2UoKSBoZWxwZXIuIChWaWxsZSkKLSBBZGQgYSBjb2RlIGNvbW1lbnQgYWJv
dXQgdGhlIGRpc2FibGUtPmVuYWJsZSBxdWlyayBvZgogIG5vbi10cmFuc3BhcmVudCBtb2RlLgot
IEFkZCB0aGUgaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVybl9zZXRfcmVnKCkgaGVscGVyLgotIEZp
eCBjaGVja3BhdGNoL3NwYXJzZSB3YXJucy4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgICAgICAgfCAgMjggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
aCAgICAgICB8ICAgMiAtCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWlu
aW5nLmMgfCAzNjIgKysrKysrKysrKysrKysrLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmggfCAgIDEgKwogNSBmaWxlcyBjaGFuZ2VkLCAzMjEgaW5zZXJ0
aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCBjMDViNDY2YTAyMTAuLmRmOTlmZGMz
MjNlNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKQEAgLTEyOTgsNiArMTI5OCw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7CiAJdTgg
ZWRwX2RwY2RbRURQX0RJU1BMQVlfQ1RMX0NBUF9TSVpFXTsKIAl1OCBkc2NfZHBjZFtEUF9EU0Nf
UkVDRUlWRVJfQ0FQX1NJWkVdOwogCXU4IGx0dHByX2NvbW1vbl9jYXBzW0RQX0xUVFBSX0NPTU1P
Tl9DQVBfU0laRV07CisJdTggbHR0cHJfcGh5X2NhcHNbRFBfTUFYX0xUVFBSX0NPVU5UXVtEUF9M
VFRQUl9QSFlfQ0FQX1NJWkVdOwogCXU4IGZlY19jYXBhYmxlOwogCS8qIHNvdXJjZSByYXRlcyAq
LwogCWludCBudW1fc291cmNlX3JhdGVzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCmluZGV4IDJlNDc4NmRmOGQ1MS4uOGU0MzdhY2ZmMDNkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0xNjEsNiArMTYxLDcgQEAgc3RhdGljIHZvaWQg
aW50ZWxfZHBfc2V0X3NpbmtfcmF0ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJMTYy
MDAwLCAyNzAwMDAsIDU0MDAwMCwgODEwMDAwCiAJfTsKIAlpbnQgaSwgbWF4X3JhdGU7CisJaW50
IG1heF9sdHRwcl9yYXRlOwogCiAJaWYgKGRybV9kcF9oYXNfcXVpcmsoJmludGVsX2RwLT5kZXNj
LCAwLAogCQkJICAgICBEUF9EUENEX1FVSVJLX0NBTl9ET19NQVhfTElOS19SQVRFXzNfMjRfR0JQ
UykpIHsKQEAgLTE3NCw2ICsxNzUsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9zZXRfc2lua19y
YXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCX0KIAogCW1heF9yYXRlID0gZHJtX2Rw
X2J3X2NvZGVfdG9fbGlua19yYXRlKGludGVsX2RwLT5kcGNkW0RQX01BWF9MSU5LX1JBVEVdKTsK
KwltYXhfbHR0cHJfcmF0ZSA9IGRybV9kcF9sdHRwcl9tYXhfbGlua19yYXRlKGludGVsX2RwLT5s
dHRwcl9jb21tb25fY2Fwcyk7CisJaWYgKG1heF9sdHRwcl9yYXRlKQorCQltYXhfcmF0ZSA9IG1p
bihtYXhfcmF0ZSwgbWF4X2x0dHByX3JhdGUpOwogCiAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJ
WkUoZHBfcmF0ZXMpOyBpKyspIHsKIAkJaWYgKGRwX3JhdGVzW2ldID4gbWF4X3JhdGUpCkBAIC0y
MTksNiArMjIzLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2NvdW50
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaW50IHNvdXJjZV9tYXggPSBkaWdfcG9ydC0+
bWF4X2xhbmVzOwogCWludCBzaW5rX21heCA9IGRybV9kcF9tYXhfbGFuZV9jb3VudChpbnRlbF9k
cC0+ZHBjZCk7CiAJaW50IGZpYV9tYXggPSBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3Vu
dChkaWdfcG9ydCk7CisJaW50IGx0dHByX21heCA9IGRybV9kcF9sdHRwcl9tYXhfbGFuZV9jb3Vu
dChpbnRlbF9kcC0+bHR0cHJfY29tbW9uX2NhcHMpOworCisJaWYgKGx0dHByX21heCkKKwkJc2lu
a19tYXggPSBtaW4oc2lua19tYXgsIGx0dHByX21heCk7CiAKIAlyZXR1cm4gbWluMyhzb3VyY2Vf
bWF4LCBzaW5rX21heCwgZmlhX21heCk7CiB9CkBAIC00MjA2LDE3ICs0MjE0LDYgQEAgc3RhdGlj
IHZvaWQgY2h2X2RwX3Bvc3RfcGxsX2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAJY2h2X3BoeV9wb3N0X3BsbF9kaXNhYmxlKGVuY29kZXIsIG9sZF9jcnRjX3N0YXRl
KTsKIH0KIAotLyoKLSAqIEZldGNoIEFVWCBDSCByZWdpc3RlcnMgMHgyMDIgLSAweDIwNyB3aGlj
aCBjb250YWluCi0gKiBsaW5rIHN0YXR1cyBpbmZvcm1hdGlvbgotICovCi1ib29sCi1pbnRlbF9k
cF9nZXRfbGlua19zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdTggbGlua19zdGF0
dXNbRFBfTElOS19TVEFUVVNfU0laRV0pCi17Ci0JcmV0dXJuIGRybV9kcF9kcGNkX3JlYWQoJmlu
dGVsX2RwLT5hdXgsIERQX0xBTkUwXzFfU1RBVFVTLCBsaW5rX3N0YXR1cywKLQkJCQlEUF9MSU5L
X1NUQVRVU19TSVpFKSA9PSBEUF9MSU5LX1NUQVRVU19TSVpFOwotfQotCiBzdGF0aWMgdTggaW50
ZWxfZHBfdm9sdGFnZV9tYXhfMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJCSBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKQEAgLTU2MTksMTMgKzU2
MTYsMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfcHJvY2Vzc19waHlfcmVxdWVzdChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLAogCQkmaW50ZWxfZHAtPmNvbXBsaWFuY2UudGVzdF9kYXRhLnBo
eXRlc3Q7CiAJdTggbGlua19zdGF0dXNbRFBfTElOS19TVEFUVVNfU0laRV07CiAKLQlpZiAoIWlu
dGVsX2RwX2dldF9saW5rX3N0YXR1cyhpbnRlbF9kcCwgbGlua19zdGF0dXMpKSB7CisJaWYgKGRy
bV9kcF9kcGNkX3JlYWRfcGh5X2xpbmtfc3RhdHVzKCZpbnRlbF9kcC0+YXV4LCBEUF9QSFlfRFBS
WCwKKwkJCQkJICAgICBsaW5rX3N0YXR1cykgPCAwKSB7CiAJCURSTV9ERUJVR19LTVMoImZhaWxl
ZCB0byBnZXQgbGluayBzdGF0dXNcbiIpOwogCQlyZXR1cm47CiAJfQogCiAJLyogcmV0cmlldmUg
dnN3aW5nICYgcHJlLWVtcGhhc2lzIHNldHRpbmcgKi8KLQlpbnRlbF9kcF9nZXRfYWRqdXN0X3Ry
YWluKGludGVsX2RwLCBjcnRjX3N0YXRlLCBsaW5rX3N0YXR1cyk7CisJaW50ZWxfZHBfZ2V0X2Fk
anVzdF90cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgRFBfUEhZX0RQUlgsCisJCQkJICBsaW5r
X3N0YXR1cyk7CiAKIAlpbnRlbF9kcF9hdXRvdGVzdF9waHlfZGRpX2Rpc2FibGUoaW50ZWxfZHAs
IGNydGNfc3RhdGUpOwogCkBAIC01NzgzLDcgKzU3ODIsOCBAQCBpbnRlbF9kcF9uZWVkc19saW5r
X3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpZiAoaW50ZWxfcHNyX2VuYWJs
ZWQoaW50ZWxfZHApKQogCQlyZXR1cm4gZmFsc2U7CiAKLQlpZiAoIWludGVsX2RwX2dldF9saW5r
X3N0YXR1cyhpbnRlbF9kcCwgbGlua19zdGF0dXMpKQorCWlmIChkcm1fZHBfZHBjZF9yZWFkX3Bo
eV9saW5rX3N0YXR1cygmaW50ZWxfZHAtPmF1eCwgRFBfUEhZX0RQUlgsCisJCQkJCSAgICAgbGlu
a19zdGF0dXMpIDwgMCkKIAkJcmV0dXJuIGZhbHNlOwogCiAJLyoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaAppbmRleCAxMWQwNWNhNzRkZDQuLmM4ZDIwYzI3NWFiOSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaApAQCAtMTAxLDggKzEwMSw2IEBA
IHZvaWQgaW50ZWxfZHBfY29tcHV0ZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGlu
dCBwb3J0X2Nsb2NrLAogCQkJICAgdTggKmxpbmtfYncsIHU4ICpyYXRlX3NlbGVjdCk7CiBib29s
IGludGVsX2RwX3NvdXJjZV9zdXBwb3J0c19oYnIyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
OwogYm9vbCBpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNfaGJyMyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKTsKLWJvb2wKLWludGVsX2RwX2dldF9saW5rX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLCB1OCAqbGlua19zdGF0dXMpOwogCiBib29sIGludGVsX2RwX2dldF9jb2xvcmlt
ZXRyeV9zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7CiBpbnQgaW50ZWxfZHBfbGlu
a19yZXF1aXJlZChpbnQgcGl4ZWxfY2xvY2ssIGludCBicHApOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwppbmRleCBhMTlm
MGZkNTBjNjkuLjkxZDM5Nzk5MDJkMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKQEAgLTM0LDYgKzM0LDYzIEBAIGlu
dGVsX2RwX2R1bXBfbGlua19zdGF0dXMoY29uc3QgdTggbGlua19zdGF0dXNbRFBfTElOS19TVEFU
VVNfU0laRV0pCiAJCSAgICAgIGxpbmtfc3RhdHVzWzNdLCBsaW5rX3N0YXR1c1s0XSwgbGlua19z
dGF0dXNbNV0pOwogfQogCitzdGF0aWMgaW50IGludGVsX2RwX2x0dHByX2NvdW50KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCit7CisJaW50IGNvdW50ID0gZHJtX2RwX2x0dHByX2NvdW50KGlu
dGVsX2RwLT5sdHRwcl9jb21tb25fY2Fwcyk7CisKKwkvKgorCSAqIFByZXRlbmQgbm8gTFRUUFJz
IGluIGNhc2Ugb2YgTFRUUFIgZGV0ZWN0aW9uIGVycm9yLCBvcgorCSAqIGlmIHRvbyBtYW55ICg+
OCkgTFRUUFJzIGFyZSBkZXRlY3RlZC4gVGhpcyB0cmFuc2xhdGVzIHRvIGxpbmsKKwkgKiB0cmFp
bmluZyBpbiB0cmFuc3BhcmVudCBtb2RlLgorCSAqLworCXJldHVybiBjb3VudCA8PSAwID8gMCA6
IGNvdW50OworfQorCitzdGF0aWMgdm9pZCBpbnRlbF9kcF9yZXNldF9sdHRwcl9jb3VudChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQoreworCWludGVsX2RwLT5sdHRwcl9jb21tb25fY2Fwc1tE
UF9QSFlfUkVQRUFURVJfQ05UIC0KKwkJCQkgICAgRFBfTFRfVFVOQUJMRV9QSFlfUkVQRUFURVJf
RklFTERfREFUQV9TVFJVQ1RVUkVfUkVWXSA9IDA7Cit9CisKK3N0YXRpYyBjb25zdCBjaGFyICpp
bnRlbF9kcF9waHlfbmFtZShlbnVtIGRybV9kcF9waHkgZHBfcGh5LAorCQkJCSAgICAgY2hhciAq
YnVmLCBzaXplX3QgYnVmX3NpemUpCit7CisJaWYgKGRwX3BoeSA9PSBEUF9QSFlfRFBSWCkKKwkJ
c25wcmludGYoYnVmLCBidWZfc2l6ZSwgIkRQUlgiKTsKKwllbHNlCisJCXNucHJpbnRmKGJ1Ziwg
YnVmX3NpemUsICJMVFRQUiAlZCIsIGRwX3BoeSAtIERQX1BIWV9MVFRQUjEgKyAxKTsKKworCXJl
dHVybiBidWY7Cit9CisKK3N0YXRpYyB1OCAqaW50ZWxfZHBfbHR0cHJfcGh5X2NhcHMoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgICBlbnVtIGRybV9kcF9waHkgZHBfcGh5KQorewor
CXJldHVybiBpbnRlbF9kcC0+bHR0cHJfcGh5X2NhcHNbZHBfcGh5IC0gRFBfUEhZX0xUVFBSMV07
Cit9CisKK3N0YXRpYyB2b2lkIGludGVsX2RwX3JlYWRfbHR0cHJfcGh5X2NhcHMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwKKwkJCQkJIGVudW0gZHJtX2RwX3BoeSBkcF9waHkpCit7CisJdTgg
KnBoeV9jYXBzID0gaW50ZWxfZHBfbHR0cHJfcGh5X2NhcHMoaW50ZWxfZHAsIGRwX3BoeSk7CisJ
Y2hhciBwaHlfbmFtZVsxMF07CisKKwlpbnRlbF9kcF9waHlfbmFtZShkcF9waHksIHBoeV9uYW1l
LCBzaXplb2YocGh5X25hbWUpKTsKKworCWlmIChkcm1fZHBfcmVhZF9sdHRwcl9waHlfY2Fwcygm
aW50ZWxfZHAtPmF1eCwgZHBfcGh5LCBwaHlfY2FwcykgPCAwKSB7CisJCWRybV9kYmdfa21zKCZk
cF90b19pOTE1KGludGVsX2RwKS0+ZHJtLAorCQkJICAgICJmYWlsZWQgdG8gcmVhZCB0aGUgUEhZ
IGNhcHMgZm9yICVzXG4iLAorCQkJICAgIHBoeV9uYW1lKTsKKwkJcmV0dXJuOworCX0KKworCWRy
bV9kYmdfa21zKCZkcF90b19pOTE1KGludGVsX2RwKS0+ZHJtLAorCQkgICAgIiVzIFBIWSBjYXBh
YmlsaXRpZXM6ICUqcGhcbiIsCisJCSAgICBwaHlfbmFtZSwKKwkJICAgIChpbnQpc2l6ZW9mKGlu
dGVsX2RwLT5sdHRwcl9waHlfY2Fwc1swXSksCisJCSAgICBwaHlfY2Fwcyk7Cit9CisKIHN0YXRp
YyBib29sIGludGVsX2RwX3JlYWRfbHR0cHJfY29tbW9uX2NhcHMoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkKIHsKIAlpZiAoZHJtX2RwX3JlYWRfbHR0cHJfY29tbW9uX2NhcHMoJmludGVsX2Rw
LT5hdXgsCkBAIC02NCwyNCArMTIxLDY0IEBAIGludGVsX2RwX3NldF9sdHRwcl90cmFuc3BhcmVu
dF9tb2RlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGJvb2wgZW5hYmxlKQogICogaW50ZWxf
ZHBfbHR0cHJfaW5pdCAtIGRldGVjdCBMVFRQUnMgYW5kIGluaXQgdGhlIExUVFBSIGxpbmsgdHJh
aW5pbmcgbW9kZQogICogQGludGVsX2RwOiBJbnRlbCBEUCBzdHJ1Y3QKICAqCi0gKiBSZWFkIHRo
ZSBMVFRQUiBjb21tb24gY2FwYWJpbGl0aWVzIGFuZCBzd2l0Y2ggdG8gdHJhbnNwYXJlbnQgbGlu
ayB0cmFpbmluZwotICogbW9kZS4KKyAqIFJlYWQgdGhlIExUVFBSIGNvbW1vbiBjYXBhYmlsaXRp
ZXMsIHN3aXRjaCB0byBub24tdHJhbnNwYXJlbnQgbGluayB0cmFpbmluZworICogbW9kZSBpZiBh
bnkgaXMgZGV0ZWN0ZWQgYW5kIHJlYWQgdGhlIFBIWSBjYXBhYmlsaXRpZXMgZm9yIGFsbCBkZXRl
Y3RlZAorICogTFRUUFJzLiBJbiBjYXNlIG9mIGFuIExUVFBSIGRldGVjdGlvbiBlcnJvciBvciBp
ZiB0aGUgbnVtYmVyIG9mCisgKiBMVFRQUnMgaXMgbW9yZSB0aGFuIGlzIHN1cHBvcnRlZCAoOCks
IGZhbGwgYmFjayB0byB0aGUgbm8tTFRUUFIsCisgKiB0cmFuc3BhcmVudCBtb2RlIGxpbmsgdHJh
aW5pbmcgbW9kZS4KKyAqCisgKiBSZXR1cm5zOgorICogICA+MCAgaWYgTFRUUFJzIHdlcmUgZGV0
ZWN0ZWQgYW5kIHRoZSBub24tdHJhbnNwYXJlbnQgTFQgbW9kZSB3YXMgc2V0CisgKiAgICAwICBp
ZiBubyBMVFRQUnMgb3IgbW9yZSB0aGFuIDggTFRUUFJzIHdlcmUgZGV0ZWN0ZWQgb3IgaW4gY2Fz
ZSBvZiBhCisgKiAgICAgICBkZXRlY3Rpb24gZmFpbHVyZSBhbmQgdGhlIHRyYW5zcGFyZW50IExU
IG1vZGUgd2FzIHNldAogICovCiBpbnQgaW50ZWxfZHBfbHR0cHJfaW5pdChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQogeworCWludCBsdHRwcl9jb3VudDsKKwlib29sIHJldDsKKwlpbnQgaTsK
KwogCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQogCQlyZXR1cm4gMDsKIAotCWludGVs
X2RwX3JlYWRfbHR0cHJfY29tbW9uX2NhcHMoaW50ZWxfZHApOworCXJldCA9IGludGVsX2RwX3Jl
YWRfbHR0cHJfY29tbW9uX2NhcHMoaW50ZWxfZHApOwogCiAJLyoKIAkgKiBTZWUgRFAgU3RhbmRh
cmQgdjIuMCAzLjYuNi4xLiBhYm91dCB0aGUgZXhwbGljaXQgZGlzYWJsaW5nIG9mCi0JICogbm9u
LXRyYW5zcGFyZW50IG1vZGUuCisJICogbm9uLXRyYW5zcGFyZW50IG1vZGUgYW5kIHRoZSBkaXNh
YmxlLT5lbmFibGUgbm9uLXRyYW5zcGFyZW50IG1vZGUKKwkgKiBzZXF1ZW5jZS4KIAkgKi8KIAlp
bnRlbF9kcF9zZXRfbHR0cHJfdHJhbnNwYXJlbnRfbW9kZShpbnRlbF9kcCwgdHJ1ZSk7CiAKLQly
ZXR1cm4gMDsKKwlpZiAoIXJldCkKKwkJcmV0dXJuIDA7CisKKwlsdHRwcl9jb3VudCA9IGludGVs
X2RwX2x0dHByX2NvdW50KGludGVsX2RwKTsKKworCS8qCisJICogSW4gY2FzZSBvZiB1bnN1cHBv
cnRlZCBudW1iZXIgb2YgTFRUUFJzIG9yIGZhaWxpbmcgdG8gc3dpdGNoIHRvCisJICogbm9uLXRy
YW5zcGFyZW50IG1vZGUgZmFsbC1iYWNrIHRvIHRyYW5zcGFyZW50IGxpbmsgdHJhaW5pbmcgbW9k
ZSwKKwkgKiBzdGlsbCB0YWtpbmcgaW50byBhY2NvdW50IGFueSBMVFRQUiBjb21tb24gbGFuZS0g
cmF0ZS9jb3VudCBsaW1pdHMuCisJICovCisJaWYgKGx0dHByX2NvdW50ID09IDApCisJCXJldHVy
biAwOworCisJaWYgKCFpbnRlbF9kcF9zZXRfbHR0cHJfdHJhbnNwYXJlbnRfbW9kZShpbnRlbF9k
cCwgZmFsc2UpKSB7CisJCWRybV9kYmdfa21zKCZkcF90b19pOTE1KGludGVsX2RwKS0+ZHJtLAor
CQkJICAgICJTd2l0Y2hpbmcgdG8gTFRUUFIgbm9uLXRyYW5zcGFyZW50IExUIG1vZGUgZmFpbGVk
LCBmYWxsLWJhY2sgdG8gdHJhbnNwYXJlbnQgbW9kZVxuIik7CisKKwkJaW50ZWxfZHBfc2V0X2x0
dHByX3RyYW5zcGFyZW50X21vZGUoaW50ZWxfZHAsIHRydWUpOworCQlpbnRlbF9kcF9yZXNldF9s
dHRwcl9jb3VudChpbnRlbF9kcCk7CisKKwkJcmV0dXJuIDA7CisJfQorCisJZm9yIChpID0gMDsg
aSA8IGx0dHByX2NvdW50OyBpKyspCisJCWludGVsX2RwX3JlYWRfbHR0cHJfcGh5X2NhcHMoaW50
ZWxfZHAsIERQX1BIWV9MVFRQUihpKSk7CisKKwlyZXR1cm4gbHR0cHJfY291bnQ7CiB9CitFWFBP
UlRfU1lNQk9MKGludGVsX2RwX2x0dHByX2luaXQpOwogCiBzdGF0aWMgdTggZHBfdm9sdGFnZV9t
YXgodTggcHJlZW1waCkKIHsKQEAgLTk4LDEyICsxOTUsOTEgQEAgc3RhdGljIHU4IGRwX3ZvbHRh
Z2VfbWF4KHU4IHByZWVtcGgpCiAJfQogfQogCitzdGF0aWMgdTggaW50ZWxfZHBfbHR0cHJfdm9s
dGFnZV9tYXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgICAgIGVudW0gZHJtX2Rw
X3BoeSBkcF9waHkpCit7CisJY29uc3QgdTggKnBoeV9jYXBzID0gaW50ZWxfZHBfbHR0cHJfcGh5
X2NhcHMoaW50ZWxfZHAsIGRwX3BoeSk7CisKKwlpZiAoZHJtX2RwX2x0dHByX3ZvbHRhZ2Vfc3dp
bmdfbGV2ZWxfM19zdXBwb3J0ZWQocGh5X2NhcHMpKQorCQlyZXR1cm4gRFBfVFJBSU5fVk9MVEFH
RV9TV0lOR19MRVZFTF8zOworCWVsc2UKKwkJcmV0dXJuIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdf
TEVWRUxfMjsKK30KKworc3RhdGljIHU4IGludGVsX2RwX2x0dHByX3ByZWVtcGhfbWF4KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCQkJICAgICBlbnVtIGRybV9kcF9waHkgZHBfcGh5KQor
eworCWNvbnN0IHU4ICpwaHlfY2FwcyA9IGludGVsX2RwX2x0dHByX3BoeV9jYXBzKGludGVsX2Rw
LCBkcF9waHkpOworCisJaWYgKGRybV9kcF9sdHRwcl9wcmVfZW1waGFzaXNfbGV2ZWxfM19zdXBw
b3J0ZWQocGh5X2NhcHMpKQorCQlyZXR1cm4gRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxfMzsKKwll
bHNlCisJCXJldHVybiBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8yOworfQorCitzdGF0aWMgYm9v
bAoraW50ZWxfZHBfcGh5X2lzX2Rvd25zdHJlYW1fb2Zfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCisJCQkJICAgICBlbnVtIGRybV9kcF9waHkgZHBfcGh5KQoreworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CisJaW50IGx0dHBy
X2NvdW50ID0gaW50ZWxfZHBfbHR0cHJfY291bnQoaW50ZWxfZHApOworCisJZHJtX1dBUk5fT05f
T05DRSgmaTkxNS0+ZHJtLCBsdHRwcl9jb3VudCA9PSAwICYmIGRwX3BoeSAhPSBEUF9QSFlfRFBS
WCk7CisKKwlyZXR1cm4gbHR0cHJfY291bnQgPT0gMCB8fCBkcF9waHkgPT0gRFBfUEhZX0xUVFBS
KGx0dHByX2NvdW50IC0gMSk7Cit9CisKK3N0YXRpYyB1OCBpbnRlbF9kcF9waHlfdm9sdGFnZV9t
YXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICBlbnVtIGRybV9kcF9waHkgZHBfcGh5KQor
eworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
CisJdTggdm9sdGFnZV9tYXg7CisKKwkvKgorCSAqIEdldCB2b2x0YWdlX21heCBmcm9tIHRoZSBE
UFRYX1BIWSAoc291cmNlIG9yIExUVFBSKSB1cHN0cmVhbSBmcm9tCisJICogdGhlIERQUlhfUEhZ
IHdlIHRyYWluLgorCSAqLworCWlmIChpbnRlbF9kcF9waHlfaXNfZG93bnN0cmVhbV9vZl9zb3Vy
Y2UoaW50ZWxfZHAsIGRwX3BoeSkpCisJCXZvbHRhZ2VfbWF4ID0gaW50ZWxfZHAtPnZvbHRhZ2Vf
bWF4KGludGVsX2RwLCBjcnRjX3N0YXRlKTsKKwllbHNlCisJCXZvbHRhZ2VfbWF4ID0gaW50ZWxf
ZHBfbHR0cHJfdm9sdGFnZV9tYXgoaW50ZWxfZHAsIGRwX3BoeSArIDEpOworCisJZHJtX1dBUk5f
T05fT05DRSgmaTkxNS0+ZHJtLAorCQkJIHZvbHRhZ2VfbWF4ICE9IERQX1RSQUlOX1ZPTFRBR0Vf
U1dJTkdfTEVWRUxfMiAmJgorCQkJIHZvbHRhZ2VfbWF4ICE9IERQX1RSQUlOX1ZPTFRBR0VfU1dJ
TkdfTEVWRUxfMyk7CisKKwlyZXR1cm4gdm9sdGFnZV9tYXg7Cit9CisKK3N0YXRpYyB1OCBpbnRl
bF9kcF9waHlfcHJlZW1waF9tYXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgICBl
bnVtIGRybV9kcF9waHkgZHBfcGh5KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CisJdTggcHJlZW1waF9tYXg7CisKKwkvKgorCSAqIEdl
dCBwcmVlbXBoX21heCBmcm9tIHRoZSBEUFRYX1BIWSAoc291cmNlIG9yIExUVFBSKSB1cHN0cmVh
bSBmcm9tCisJICogdGhlIERQUlhfUEhZIHdlIHRyYWluLgorCSAqLworCWlmIChpbnRlbF9kcF9w
aHlfaXNfZG93bnN0cmVhbV9vZl9zb3VyY2UoaW50ZWxfZHAsIGRwX3BoeSkpCisJCXByZWVtcGhf
bWF4ID0gaW50ZWxfZHAtPnByZWVtcGhfbWF4KGludGVsX2RwKTsKKwllbHNlCisJCXByZWVtcGhf
bWF4ID0gaW50ZWxfZHBfbHR0cHJfcHJlZW1waF9tYXgoaW50ZWxfZHAsIGRwX3BoeSArIDEpOwor
CisJZHJtX1dBUk5fT05fT05DRSgmaTkxNS0+ZHJtLAorCQkJIHByZWVtcGhfbWF4ICE9IERQX1RS
QUlOX1BSRV9FTVBIX0xFVkVMXzIgJiYKKwkJCSBwcmVlbXBoX21heCAhPSBEUF9UUkFJTl9QUkVf
RU1QSF9MRVZFTF8zKTsKKworCXJldHVybiBwcmVlbXBoX21heDsKK30KKwogdm9pZAogaW50ZWxf
ZHBfZ2V0X2FkanVzdF90cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJICBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCSAgZW51bSBkcm1fZHBf
cGh5IGRwX3BoeSwKIAkJCSAgY29uc3QgdTggbGlua19zdGF0dXNbRFBfTElOS19TVEFUVVNfU0la
RV0pCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVs
X2RwKTsKIAl1OCB2ID0gMDsKIAl1OCBwID0gMDsKIAlpbnQgbGFuZTsKQEAgLTExNSwyMSArMjkx
LDEzIEBAIGludGVsX2RwX2dldF9hZGp1c3RfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwKIAkJcCA9IG1heChwLCBkcm1fZHBfZ2V0X2FkanVzdF9yZXF1ZXN0X3ByZV9lbXBoYXNpcyhs
aW5rX3N0YXR1cywgbGFuZSkpOwogCX0KIAotCXByZWVtcGhfbWF4ID0gaW50ZWxfZHAtPnByZWVt
cGhfbWF4KGludGVsX2RwKTsKLQlkcm1fV0FSTl9PTl9PTkNFKCZpOTE1LT5kcm0sCi0JCQkgcHJl
ZW1waF9tYXggIT0gRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxfMiAmJgotCQkJIHByZWVtcGhfbWF4
ICE9IERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzMpOwotCisJcHJlZW1waF9tYXggPSBpbnRlbF9k
cF9waHlfcHJlZW1waF9tYXgoaW50ZWxfZHAsIGRwX3BoeSk7CiAJaWYgKHAgPj0gcHJlZW1waF9t
YXgpCiAJCXAgPSBwcmVlbXBoX21heCB8IERQX1RSQUlOX01BWF9QUkVfRU1QSEFTSVNfUkVBQ0hF
RDsKIAogCXYgPSBtaW4odiwgZHBfdm9sdGFnZV9tYXgocCkpOwogCi0Jdm9sdGFnZV9tYXggPSBp
bnRlbF9kcC0+dm9sdGFnZV9tYXgoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwotCWRybV9XQVJOX09O
X09OQ0UoJmk5MTUtPmRybSwKLQkJCSB2b2x0YWdlX21heCAhPSBEUF9UUkFJTl9WT0xUQUdFX1NX
SU5HX0xFVkVMXzIgJiYKLQkJCSB2b2x0YWdlX21heCAhPSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5H
X0xFVkVMXzMpOwotCisJdm9sdGFnZV9tYXggPSBpbnRlbF9kcF9waHlfdm9sdGFnZV9tYXgoaW50
ZWxfZHAsIGNydGNfc3RhdGUsIGRwX3BoeSk7CiAJaWYgKHYgPj0gdm9sdGFnZV9tYXgpCiAJCXYg
PSB2b2x0YWdlX21heCB8IERQX1RSQUlOX01BWF9TV0lOR19SRUFDSEVEOwogCkBAIC0xMzcsMTEg
KzMwNSwyMSBAQCBpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsCiAJCWludGVsX2RwLT50cmFpbl9zZXRbbGFuZV0gPSB2IHwgcDsKIH0KIAorc3RhdGlj
IGludCBpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuX3NldF9yZWcoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKKwkJCQkJICAgICBlbnVtIGRybV9kcF9waHkgZHBfcGh5KQoreworCXJldHVybiBk
cF9waHkgPT0gRFBfUEhZX0RQUlggPworCQlEUF9UUkFJTklOR19QQVRURVJOX1NFVCA6CisJCURQ
X1RSQUlOSU5HX1BBVFRFUk5fU0VUX1BIWV9SRVBFQVRFUihkcF9waHkpOworfQorCiBzdGF0aWMg
Ym9vbAogaW50ZWxfZHBfc2V0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
IAkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJZW51bSBk
cm1fZHBfcGh5IGRwX3BoeSwKIAkJCXU4IGRwX3RyYWluX3BhdCkKIHsKKwlpbnQgcmVnID0gaW50
ZWxfZHBfdHJhaW5pbmdfcGF0dGVybl9zZXRfcmVnKGludGVsX2RwLCBkcF9waHkpOwogCXU4IGJ1
ZltzaXplb2YoaW50ZWxfZHAtPnRyYWluX3NldCkgKyAxXTsKIAlpbnQgbGVuOwogCkBAIC0xNTMs
MjkgKzMzMSwzMyBAQCBpbnRlbF9kcF9zZXRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAogCW1lbWNweShidWYgKyAxLCBpbnRlbF9kcC0+dHJhaW5fc2V0LCBjcnRjX3N0YXRl
LT5sYW5lX2NvdW50KTsKIAlsZW4gPSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50ICsgMTsKIAotCXJl
dHVybiBkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfVFJBSU5JTkdfUEFUVEVS
Tl9TRVQsCi0JCQkJIGJ1ZiwgbGVuKSA9PSBsZW47CisJcmV0dXJuIGRybV9kcF9kcGNkX3dyaXRl
KCZpbnRlbF9kcC0+YXV4LCByZWcsIGJ1ZiwgbGVuKSA9PSBsZW47CiB9CiAKIHN0YXRpYyBib29s
CiBpbnRlbF9kcF9yZXNldF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJ
CQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJICBlbnVt
IGRybV9kcF9waHkgZHBfcGh5LAogCQkJICB1OCBkcF90cmFpbl9wYXQpCiB7CiAJbWVtc2V0KGlu
dGVsX2RwLT50cmFpbl9zZXQsIDAsIHNpemVvZihpbnRlbF9kcC0+dHJhaW5fc2V0KSk7CiAJaW50
ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwotCXJldHVybiBp
bnRlbF9kcF9zZXRfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZHBfdHJhaW5fcGF0
KTsKKwlyZXR1cm4gaW50ZWxfZHBfc2V0X2xpbmtfdHJhaW4oaW50ZWxfZHAsIGNydGNfc3RhdGUs
IGRwX3BoeSwgZHBfdHJhaW5fcGF0KTsKIH0KIAogc3RhdGljIGJvb2wKIGludGVsX2RwX3VwZGF0
ZV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkgICBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKKwkJCSAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJICAgZW51bSBkcm1fZHBfcGh5IGRwX3BoeSkK
IHsKKwlpbnQgcmVnID0gZHBfcGh5ID09IERQX1BIWV9EUFJYID8KKwkJCSAgICBEUF9UUkFJTklO
R19MQU5FMF9TRVQgOgorCQkJICAgIERQX1RSQUlOSU5HX0xBTkUwX1NFVF9QSFlfUkVQRUFURVIo
ZHBfcGh5KTsKIAlpbnQgcmV0OwogCiAJaW50ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMoaW50ZWxf
ZHAsIGNydGNfc3RhdGUpOwogCi0JcmV0ID0gZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5h
dXgsIERQX1RSQUlOSU5HX0xBTkUwX1NFVCwKKwlyZXQgPSBkcm1fZHBfZHBjZF93cml0ZSgmaW50
ZWxfZHAtPmF1eCwgcmVnLAogCQkJCWludGVsX2RwLT50cmFpbl9zZXQsIGNydGNfc3RhdGUtPmxh
bmVfY291bnQpOwogCiAJcmV0dXJuIHJldCA9PSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50OwpAQCAt
MjQwLDEwICs0MjIsMjMgQEAgaW50ZWxfZHBfcHJlcGFyZV9saW5rX3RyYWluKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiAJcmV0dXJuIHRydWU7CiB9CiAKLS8qIFBlcmZvcm0gdGhlIGxpbmsg
dHJhaW5pbmcgY2xvY2sgcmVjb3ZlcnkgcGhhc2UgdXNpbmcgdHJhaW5pbmcgcGF0dGVybiAxLiAq
Lworc3RhdGljIHZvaWQgaW50ZWxfZHBfbGlua190cmFpbmluZ19jbG9ja19yZWNvdmVyeV9kZWxh
eShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJCQkJCWVudW0gZHJtX2RwX3BoeSBkcF9w
aHkpCit7CisJaWYgKGRwX3BoeSA9PSBEUF9QSFlfRFBSWCkKKwkJZHJtX2RwX2xpbmtfdHJhaW5f
Y2xvY2tfcmVjb3ZlcnlfZGVsYXkoaW50ZWxfZHAtPmRwY2QpOworCWVsc2UKKwkJZHJtX2RwX2x0
dHByX2xpbmtfdHJhaW5fY2xvY2tfcmVjb3ZlcnlfZGVsYXkoKTsKK30KKworLyoKKyAqIFBlcmZv
cm0gdGhlIGxpbmsgdHJhaW5pbmcgY2xvY2sgcmVjb3ZlcnkgcGhhc2Ugb24gdGhlIGdpdmVuIERQ
IFBIWSB1c2luZworICogdHJhaW5pbmcgcGF0dGVybiAxLgorICovCiBzdGF0aWMgYm9vbAogaW50
ZWxfZHBfbGlua190cmFpbmluZ19jbG9ja19yZWNvdmVyeShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAotCQkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQorCQkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAor
CQkJCSAgICAgIGVudW0gZHJtX2RwX3BoeSBkcF9waHkpCiB7CiAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsKIAl1OCB2b2x0YWdlOwpAQCAtMjUx
LDcgKzQ0Niw3IEBAIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKIAlib29sIG1heF92c3dpbmdfcmVhY2hlZCA9IGZhbHNlOwog
CiAJLyogY2xvY2sgcmVjb3ZlcnkgKi8KLQlpZiAoIWludGVsX2RwX3Jlc2V0X2xpbmtfdHJhaW4o
aW50ZWxfZHAsIGNydGNfc3RhdGUsCisJaWYgKCFpbnRlbF9kcF9yZXNldF9saW5rX3RyYWluKGlu
dGVsX2RwLCBjcnRjX3N0YXRlLCBkcF9waHksCiAJCQkJICAgICAgIERQX1RSQUlOSU5HX1BBVFRF
Uk5fMSB8CiAJCQkJICAgICAgIERQX0xJTktfU0NSQU1CTElOR19ESVNBQkxFKSkgewogCQlkcm1f
ZXJyKCZpOTE1LT5kcm0sICJmYWlsZWQgdG8gZW5hYmxlIGxpbmsgdHJhaW5pbmdcbiIpOwpAQCAt
Mjc1LDkgKzQ3MCwxMCBAQCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX2Nsb2NrX3JlY292ZXJ5KHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJZm9yIChjcl90cmllcyA9IDA7IGNyX3RyaWVzIDwg
bWF4X2NyX3RyaWVzOyArK2NyX3RyaWVzKSB7CiAJCXU4IGxpbmtfc3RhdHVzW0RQX0xJTktfU1RB
VFVTX1NJWkVdOwogCi0JCWRybV9kcF9saW5rX3RyYWluX2Nsb2NrX3JlY292ZXJ5X2RlbGF5KGlu
dGVsX2RwLT5kcGNkKTsKKwkJaW50ZWxfZHBfbGlua190cmFpbmluZ19jbG9ja19yZWNvdmVyeV9k
ZWxheShpbnRlbF9kcCwgZHBfcGh5KTsKIAotCQlpZiAoIWludGVsX2RwX2dldF9saW5rX3N0YXR1
cyhpbnRlbF9kcCwgbGlua19zdGF0dXMpKSB7CisJCWlmIChkcm1fZHBfZHBjZF9yZWFkX3BoeV9s
aW5rX3N0YXR1cygmaW50ZWxfZHAtPmF1eCwgZHBfcGh5LAorCQkJCQkJICAgICBsaW5rX3N0YXR1
cykgPCAwKSB7CiAJCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJmYWlsZWQgdG8gZ2V0IGxpbmsgc3Rh
dHVzXG4iKTsKIAkJCXJldHVybiBmYWxzZTsKIAkJfQpAQCAtMzAxLDggKzQ5Nyw5IEBAIGludGVs
X2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwKIAkJdm9sdGFnZSA9IGludGVsX2RwLT50cmFpbl9zZXRbMF0gJiBEUF9UUkFJTl9WT0xUQUdF
X1NXSU5HX01BU0s7CiAKIAkJLyogVXBkYXRlIHRyYWluaW5nIHNldCBhcyByZXF1ZXN0ZWQgYnkg
dGFyZ2V0ICovCi0JCWludGVsX2RwX2dldF9hZGp1c3RfdHJhaW4oaW50ZWxfZHAsIGNydGNfc3Rh
dGUsIGxpbmtfc3RhdHVzKTsKLQkJaWYgKCFpbnRlbF9kcF91cGRhdGVfbGlua190cmFpbihpbnRl
bF9kcCwgY3J0Y19zdGF0ZSkpIHsKKwkJaW50ZWxfZHBfZ2V0X2FkanVzdF90cmFpbihpbnRlbF9k
cCwgY3J0Y19zdGF0ZSwgZHBfcGh5LAorCQkJCQkgIGxpbmtfc3RhdHVzKTsKKwkJaWYgKCFpbnRl
bF9kcF91cGRhdGVfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZHBfcGh5KSkgewog
CQkJZHJtX2VycigmaTkxNS0+ZHJtLAogCQkJCSJmYWlsZWQgdG8gdXBkYXRlIGxpbmsgdHJhaW5p
bmdcbiIpOwogCQkJcmV0dXJuIGZhbHNlOwpAQCAtMzI5LDcgKzUyNiw4IEBAIGludGVsX2RwX2xp
bmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKICAq
IG9yIDEuMiBkZXZpY2VzIHRoYXQgc3VwcG9ydCBpdCwgVHJhaW5pbmcgUGF0dGVybiAyIG90aGVy
d2lzZS4KICAqLwogc3RhdGljIHUzMiBpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKKwkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAorCQkJCSAgICAgZW51bSBkcm1fZHBfcGh5IGRwX3BoeSkKIHsKIAlib29sIHNv
dXJjZV90cHMzLCBzaW5rX3RwczMsIHNvdXJjZV90cHM0LCBzaW5rX3RwczQ7CiAKQEAgLTMzOCw5
ICs1MzYsMTEgQEAgc3RhdGljIHUzMiBpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCiAJICogZm9yIGFsbCBkb3duc3RyZWFtIGRldmljZXMgdGhhdCBz
dXBwb3J0IEhCUjMuIFRoZXJlIGFyZSBubyBrbm93biBlRFAKIAkgKiBwYW5lbHMgdGhhdCBzdXBw
b3J0IFRQUzQgYXMgb2YgRmViIDIwMTggYXMgcGVyIFZFU0EgZURQX3YxLjRiX0UxCiAJICogc3Bl
Y2lmaWNhdGlvbi4KKwkgKiBMVFRQUnMgbXVzdCBzdXBwb3J0IFRQUzQuCiAJICovCiAJc291cmNl
X3RwczQgPSBpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNfaGJyMyhpbnRlbF9kcCk7Ci0Jc2lua190
cHM0ID0gZHJtX2RwX3RwczRfc3VwcG9ydGVkKGludGVsX2RwLT5kcGNkKTsKKwlzaW5rX3RwczQg
PSBkcF9waHkgIT0gRFBfUEhZX0RQUlggfHwKKwkJICAgIGRybV9kcF90cHM0X3N1cHBvcnRlZChp
bnRlbF9kcC0+ZHBjZCk7CiAJaWYgKHNvdXJjZV90cHM0ICYmIHNpbmtfdHBzNCkgewogCQlyZXR1
cm4gRFBfVFJBSU5JTkdfUEFUVEVSTl80OwogCX0gZWxzZSBpZiAoY3J0Y19zdGF0ZS0+cG9ydF9j
bG9jayA9PSA4MTAwMDApIHsKQEAgLTM1Nyw3ICs1NTcsOCBAQCBzdGF0aWMgdTMyIGludGVsX2Rw
X3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkgKiBhbGwgc2lu
a3MgZm9sbG93IHRoZSBzcGVjLgogCSAqLwogCXNvdXJjZV90cHMzID0gaW50ZWxfZHBfc291cmNl
X3N1cHBvcnRzX2hicjIoaW50ZWxfZHApOwotCXNpbmtfdHBzMyA9IGRybV9kcF90cHMzX3N1cHBv
cnRlZChpbnRlbF9kcC0+ZHBjZCk7CisJc2lua190cHMzID0gZHBfcGh5ICE9IERQX1BIWV9EUFJY
IHx8CisJCSAgICBkcm1fZHBfdHBzM19zdXBwb3J0ZWQoaW50ZWxfZHAtPmRwY2QpOwogCWlmIChz
b3VyY2VfdHBzMyAmJiBzaW5rX3RwczMpIHsKIAkJcmV0dXJuICBEUF9UUkFJTklOR19QQVRURVJO
XzM7CiAJfSBlbHNlIGlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID49IDU0MDAwMCkgewpAQCAt
MzcyLDEzICs1NzMsMjggQEAgc3RhdGljIHUzMiBpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJcmV0dXJuIERQX1RSQUlOSU5HX1BBVFRFUk5fMjsK
IH0KIAorc3RhdGljIHZvaWQKK2ludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2hhbm5lbF9lcXVhbGl6
YXRpb25fZGVsYXkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkJCSAgZW51bSBkcm1f
ZHBfcGh5IGRwX3BoeSkKK3sKKwlpZiAoZHBfcGh5ID09IERQX1BIWV9EUFJYKSB7CisJCWRybV9k
cF9saW5rX3RyYWluX2NoYW5uZWxfZXFfZGVsYXkoaW50ZWxfZHAtPmRwY2QpOworCX0gZWxzZSB7
CisJCWNvbnN0IHU4ICpwaHlfY2FwcyA9IGludGVsX2RwX2x0dHByX3BoeV9jYXBzKGludGVsX2Rw
LCBkcF9waHkpOworCisJCWRybV9kcF9sdHRwcl9saW5rX3RyYWluX2NoYW5uZWxfZXFfZGVsYXko
cGh5X2NhcHMpOworCX0KK30KKwogLyoKLSAqIFBlcmZvcm0gdGhlIGxpbmsgdHJhaW5pbmcgY2hh
bm5lbCBlcXVhbGl6YXRpb24gcGhhc2UgdXNpbmcgb25lIG9mIHRyYWluaW5nCi0gKiBwYXR0ZXJu
IDIsIDMgb3IgNCBkZXBlbmRpbmcgb24gdGhlIHNvdXJjZSBhbmQgc2luayBjYXBhYmlsaXRpZXMu
CisgKiBQZXJmb3JtIHRoZSBsaW5rIHRyYWluaW5nIGNoYW5uZWwgZXF1YWxpemF0aW9uIHBoYXNl
IG9uIHRoZSBnaXZlbiBEUCBQSFkKKyAqIHVzaW5nIG9uZSBvZiB0cmFpbmluZyBwYXR0ZXJuIDIs
IDMgb3IgNCBkZXBlbmRpbmcgb24gdGhlIHNvdXJjZSBhbmQKKyAqIHNpbmsgY2FwYWJpbGl0aWVz
LgogICovCiBzdGF0aWMgYm9vbAogaW50ZWxfZHBfbGlua190cmFpbmluZ19jaGFubmVsX2VxdWFs
aXphdGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAotCQkJCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCisJCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkJICAgIGVudW0gZHJtX2RwX3BoeSBkcF9w
aHkpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVs
X2RwKTsKIAlpbnQgdHJpZXM7CkBAIC0zODYsMjIgKzYwMiwyMyBAQCBpbnRlbF9kcF9saW5rX3Ry
YWluaW5nX2NoYW5uZWxfZXF1YWxpemF0aW9uKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJ
dTggbGlua19zdGF0dXNbRFBfTElOS19TVEFUVVNfU0laRV07CiAJYm9vbCBjaGFubmVsX2VxID0g
ZmFsc2U7CiAKLQl0cmFpbmluZ19wYXR0ZXJuID0gaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVybihp
bnRlbF9kcCwgY3J0Y19zdGF0ZSk7CisJdHJhaW5pbmdfcGF0dGVybiA9IGludGVsX2RwX3RyYWlu
aW5nX3BhdHRlcm4oaW50ZWxfZHAsIGNydGNfc3RhdGUsIGRwX3BoeSk7CiAJLyogU2NyYW1ibGlu
ZyBpcyBkaXNhYmxlZCBmb3IgVFBTMi8zIGFuZCBlbmFibGVkIGZvciBUUFM0ICovCiAJaWYgKHRy
YWluaW5nX3BhdHRlcm4gIT0gRFBfVFJBSU5JTkdfUEFUVEVSTl80KQogCQl0cmFpbmluZ19wYXR0
ZXJuIHw9IERQX0xJTktfU0NSQU1CTElOR19ESVNBQkxFOwogCiAJLyogY2hhbm5lbCBlcXVhbGl6
YXRpb24gKi8KLQlpZiAoIWludGVsX2RwX3NldF9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0
YXRlLAorCWlmICghaW50ZWxfZHBfc2V0X2xpbmtfdHJhaW4oaW50ZWxfZHAsIGNydGNfc3RhdGUs
IGRwX3BoeSwKIAkJCQkgICAgIHRyYWluaW5nX3BhdHRlcm4pKSB7CiAJCWRybV9lcnIoJmk5MTUt
PmRybSwgImZhaWxlZCB0byBzdGFydCBjaGFubmVsIGVxdWFsaXphdGlvblxuIik7CiAJCXJldHVy
biBmYWxzZTsKIAl9CiAKIAlmb3IgKHRyaWVzID0gMDsgdHJpZXMgPCA1OyB0cmllcysrKSB7Ci0K
LQkJZHJtX2RwX2xpbmtfdHJhaW5fY2hhbm5lbF9lcV9kZWxheShpbnRlbF9kcC0+ZHBjZCk7Ci0J
CWlmICghaW50ZWxfZHBfZ2V0X2xpbmtfc3RhdHVzKGludGVsX2RwLCBsaW5rX3N0YXR1cykpIHsK
KwkJaW50ZWxfZHBfbGlua190cmFpbmluZ19jaGFubmVsX2VxdWFsaXphdGlvbl9kZWxheShpbnRl
bF9kcCwKKwkJCQkJCQkJICBkcF9waHkpOworCQlpZiAoZHJtX2RwX2RwY2RfcmVhZF9waHlfbGlu
a19zdGF0dXMoJmludGVsX2RwLT5hdXgsIGRwX3BoeSwKKwkJCQkJCSAgICAgbGlua19zdGF0dXMp
IDwgMCkgewogCQkJZHJtX2VycigmaTkxNS0+ZHJtLAogCQkJCSJmYWlsZWQgdG8gZ2V0IGxpbmsg
c3RhdHVzXG4iKTsKIAkJCWJyZWFrOwpAQCAtNDI2LDggKzY0Myw5IEBAIGludGVsX2RwX2xpbmtf
dHJhaW5pbmdfY2hhbm5lbF9lcXVhbGl6YXRpb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
IAkJfQogCiAJCS8qIFVwZGF0ZSB0cmFpbmluZyBzZXQgYXMgcmVxdWVzdGVkIGJ5IHRhcmdldCAq
LwotCQlpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRlLCBsaW5r
X3N0YXR1cyk7Ci0JCWlmICghaW50ZWxfZHBfdXBkYXRlX2xpbmtfdHJhaW4oaW50ZWxfZHAsIGNy
dGNfc3RhdGUpKSB7CisJCWludGVsX2RwX2dldF9hZGp1c3RfdHJhaW4oaW50ZWxfZHAsIGNydGNf
c3RhdGUsIGRwX3BoeSwKKwkJCQkJICBsaW5rX3N0YXR1cyk7CisJCWlmICghaW50ZWxfZHBfdXBk
YXRlX2xpbmtfdHJhaW4oaW50ZWxfZHAsIGNydGNfc3RhdGUsIGRwX3BoeSkpIHsKIAkJCWRybV9l
cnIoJmk5MTUtPmRybSwKIAkJCQkiZmFpbGVkIHRvIHVwZGF0ZSBsaW5rIHRyYWluaW5nXG4iKTsK
IAkJCWJyZWFrOwpAQCAtNDQxLDE3ICs2NTksMTYgQEAgaW50ZWxfZHBfbGlua190cmFpbmluZ19j
aGFubmVsX2VxdWFsaXphdGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJICAgICJD
aGFubmVsIGVxdWFsaXphdGlvbiBmYWlsZWQgNSB0aW1lc1xuIik7CiAJfQogCi0JaWYgKGludGVs
X2RwLT5zZXRfaWRsZV9saW5rX3RyYWluKQotCQlpbnRlbF9kcC0+c2V0X2lkbGVfbGlua190cmFp
bihpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7Ci0KIAlyZXR1cm4gY2hhbm5lbF9lcTsKIH0KIAotc3Rh
dGljIGJvb2wgaW50ZWxfZHBfZGlzYWJsZV9kcGNkX3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkKK3N0YXRpYyBib29sIGludGVsX2RwX2Rpc2FibGVfZHBjZF90cmFp
bmluZ19wYXR0ZXJuKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCQkJCQkgICBlbnVtIGRy
bV9kcF9waHkgZHBfcGh5KQogeworCWludCByZWcgPSBpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJu
X3NldF9yZWcoaW50ZWxfZHAsIGRwX3BoeSk7CiAJdTggdmFsID0gRFBfVFJBSU5JTkdfUEFUVEVS
Tl9ESVNBQkxFOwogCi0JcmV0dXJuIGRybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9kcC0+YXV4LCBE
UF9UUkFJTklOR19QQVRURVJOX1NFVCwgJnZhbCwgMSkgPT0gMTsKKwlyZXR1cm4gZHJtX2RwX2Rw
Y2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIHJlZywgJnZhbCwgMSkgPT0gMTsKIH0KIAogLyoqCkBA
IC00NzgsMzMgKzY5NSwzNCBAQCB2b2lkIGludGVsX2RwX3N0b3BfbGlua190cmFpbihzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLAogCWludGVsX2RwX3Byb2dyYW1fbGlua190cmFpbmluZ19wYXR0
ZXJuKGludGVsX2RwLAogCQkJCQkgICAgICAgY3J0Y19zdGF0ZSwKIAkJCQkJICAgICAgIERQX1RS
QUlOSU5HX1BBVFRFUk5fRElTQUJMRSk7Ci0JaW50ZWxfZHBfZGlzYWJsZV9kcGNkX3RyYWluaW5n
X3BhdHRlcm4oaW50ZWxfZHApOworCWludGVsX2RwX2Rpc2FibGVfZHBjZF90cmFpbmluZ19wYXR0
ZXJuKGludGVsX2RwLCBEUF9QSFlfRFBSWCk7CiB9CiAKIHN0YXRpYyBib29sCi1pbnRlbF9kcF9s
aW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCSAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK2ludGVsX2RwX2xpbmtfdHJhaW5fcGh5KHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKKwkJCWVudW0gZHJtX2RwX3BoeSBkcF9waHkpCiB7CiAJc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5l
Y3RvcjsKKwljaGFyIHBoeV9uYW1lWzEwXTsKIAlib29sIHJldCA9IGZhbHNlOwogCi0JaW50ZWxf
ZHBfcHJlcGFyZV9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKLQotCWlmICghaW50
ZWxfZHBfbGlua190cmFpbmluZ19jbG9ja19yZWNvdmVyeShpbnRlbF9kcCwgY3J0Y19zdGF0ZSkp
CisJaWYgKCFpbnRlbF9kcF9saW5rX3RyYWluaW5nX2Nsb2NrX3JlY292ZXJ5KGludGVsX2RwLCBj
cnRjX3N0YXRlLCBkcF9waHkpKQogCQlnb3RvIG91dDsKIAotCWlmICghaW50ZWxfZHBfbGlua190
cmFpbmluZ19jaGFubmVsX2VxdWFsaXphdGlvbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpCisJaWYg
KCFpbnRlbF9kcF9saW5rX3RyYWluaW5nX2NoYW5uZWxfZXF1YWxpemF0aW9uKGludGVsX2RwLCBj
cnRjX3N0YXRlLCBkcF9waHkpKQogCQlnb3RvIG91dDsKIAogCXJldCA9IHRydWU7CiAKIG91dDoK
IAlkcm1fZGJnX2ttcygmZHBfdG9faTkxNShpbnRlbF9kcCktPmRybSwKLQkJICAgICJbQ09OTkVD
VE9SOiVkOiVzXSBMaW5rIFRyYWluaW5nICVzIGF0IGxpbmsgcmF0ZSA9ICVkLCBsYW5lIGNvdW50
ID0gJWQiLAorCQkgICAgIltDT05ORUNUT1I6JWQ6JXNdIExpbmsgVHJhaW5pbmcgJXMgYXQgbGlu
ayByYXRlID0gJWQsIGxhbmUgY291bnQgPSAlZCwgYXQgJXMiLAogCQkgICAgaW50ZWxfY29ubmVj
dG9yLT5iYXNlLmJhc2UuaWQsCiAJCSAgICBpbnRlbF9jb25uZWN0b3ItPmJhc2UubmFtZSwKIAkJ
ICAgIHJldCA/ICJwYXNzZWQiIDogImZhaWxlZCIsCi0JCSAgICBjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrLCBjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsKKwkJICAgIGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2ssIGNydGNfc3RhdGUtPmxhbmVfY291bnQsCisJCSAgICBpbnRlbF9kcF9waHlfbmFtZShkcF9w
aHksIHBoeV9uYW1lLCBzaXplb2YocGh5X25hbWUpKSk7CiAKIAlyZXR1cm4gcmV0OwogfQpAQCAt
NTI4LDYgKzc0NiwzNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9zY2hlZHVsZV9mYWxsYmFja19s
aW5rX3RyYWluaW5nKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJc2NoZWR1bGVfd29yaygm
aW50ZWxfY29ubmVjdG9yLT5tb2Rlc2V0X3JldHJ5X3dvcmspOwogfQogCisvKiBQZXJmb3JtIHRo
ZSBsaW5rIHRyYWluaW5nIG9uIGFsbCBMVFRQUnMgYW5kIHRoZSBEUFJYIG9uIGEgbGluay4gKi8K
K3N0YXRpYyBib29sCitpbnRlbF9kcF9saW5rX3RyYWluX2FsbF9waHlzKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsCisJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAorCQkJICAgICBpbnQgbHR0cHJfY291bnQpCit7CisJYm9vbCByZXQgPSB0cnVlOwor
CWludCBpOworCisJaW50ZWxfZHBfcHJlcGFyZV9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0
YXRlKTsKKworCWZvciAoaSA9IGx0dHByX2NvdW50IC0gMTsgaSA+PSAwOyBpLS0pIHsKKwkJZW51
bSBkcm1fZHBfcGh5IGRwX3BoeSA9IERQX1BIWV9MVFRQUihpKTsKKworCQlyZXQgPSBpbnRlbF9k
cF9saW5rX3RyYWluX3BoeShpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZHBfcGh5KTsKKwkJaW50ZWxf
ZHBfZGlzYWJsZV9kcGNkX3RyYWluaW5nX3BhdHRlcm4oaW50ZWxfZHAsIGRwX3BoeSk7CisKKwkJ
aWYgKCFyZXQpCisJCQlicmVhazsKKwl9CisKKwlpZiAocmV0KQorCQlpbnRlbF9kcF9saW5rX3Ry
YWluX3BoeShpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgRFBfUEhZX0RQUlgpOworCisJaWYgKGludGVs
X2RwLT5zZXRfaWRsZV9saW5rX3RyYWluKQorCQlpbnRlbF9kcC0+c2V0X2lkbGVfbGlua190cmFp
bihpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CisKKwlyZXR1cm4gcmV0OworfQorCiAvKioKICAqIGlu
dGVsX2RwX3N0YXJ0X2xpbmtfdHJhaW4gLSBzdGFydCBsaW5rIHRyYWluaW5nCiAgKiBAaW50ZWxf
ZHA6IERQIHN0cnVjdApAQCAtNTQ1LDggKzc5Myw4IEBAIHZvaWQgaW50ZWxfZHBfc3RhcnRfbGlu
a190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCSAqIFRPRE86IFJlaW5pdGluZyBM
VFRQUnMgaGVyZSB3b24ndCBiZSBuZWVkZWQgb25jZSBwcm9wZXIgY29ubmVjdG9yCiAJICogSFcg
c3RhdGUgcmVhZG91dCBpcyBhZGRlZC4KIAkgKi8KLQlpbnRlbF9kcF9sdHRwcl9pbml0KGludGVs
X2RwKTsKKwlpbnQgbHR0cHJfY291bnQgPSBpbnRlbF9kcF9sdHRwcl9pbml0KGludGVsX2RwKTsK
IAotCWlmICghaW50ZWxfZHBfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpCisJaWYg
KCFpbnRlbF9kcF9saW5rX3RyYWluX2FsbF9waHlzKGludGVsX2RwLCBjcnRjX3N0YXRlLCBsdHRw
cl9jb3VudCkpCiAJCWludGVsX2RwX3NjaGVkdWxlX2ZhbGxiYWNrX2xpbmtfdHJhaW5pbmcoaW50
ZWxfZHAsIGNydGNfc3RhdGUpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuaAppbmRleCBiM2ZiMWQxMjViOWIuLjg2OTA1
YWEyNGRiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmgKQEAgLTE1LDYgKzE1LDcgQEAgaW50IGludGVsX2RwX2x0dHBy
X2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7CiAKIHZvaWQgaW50ZWxfZHBfZ2V0X2Fk
anVzdF90cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJICAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJICAgICAgIGVudW0gZHJtX2Rw
X3BoeSBkcF9waHksCiAJCQkgICAgICAgY29uc3QgdTggbGlua19zdGF0dXNbRFBfTElOS19TVEFU
VVNfU0laRV0pOwogdm9pZCBpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsCiAJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
