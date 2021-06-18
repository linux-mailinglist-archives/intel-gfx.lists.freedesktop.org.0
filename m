Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E5E3ACC41
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 15:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC596EA10;
	Fri, 18 Jun 2021 13:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1E16EA08;
 Fri, 18 Jun 2021 13:32:02 +0000 (UTC)
IronPort-SDR: Z/VonHcbVxnKXySgRoVUiT0ixojj7eO07yz/iwmb2GhLDuhpkY0j8eTESimp8sUP+3EiC+n07Q
 G74KFqxG9kLg==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186931275"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="186931275"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:32:02 -0700
IronPort-SDR: 6RjK6wUkFkY76cTAU9LSiQaZ6dsMXMzEY6XnUJc1Kw5SoKUfFFaFF5ENdYaGJ+uURO29mkRD2+
 hXqtKX6kWDBw==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="479821222"
Received: from murphyke-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.237.184])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:32:01 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Jun 2021 14:31:50 +0100
Message-Id: <20210618133150.700375-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210618133150.700375-1-matthew.auld@intel.com>
References: <20210618133150.700375-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: add back the avail tracking
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgbGlrZSBpdCBnb3QgbG9zdCBhbG9uZyB0aGUgd2F5LCBzbyBhZGQgaXQgYmFjay4gVGhp
cyBpcyBuZWVkZWQgZm9yCnRoZSByZWdpb24gcXVlcnkgdUFQSSB3aGVyZSB3ZSBuZWVkIHRvIHJl
cG9ydCBhbiBhY2N1cmF0ZSBhdmFpbGFibGUgc2l6ZQpmb3IgbG1lbS4KClRoaXMgdGltZSBhcm91
bmQgbGV0J3MgcHVzaCBpdCBkaXJlY3RseSBpbnRvIHRoZSBhbGxvY2F0b3IsIHdoaWNoCnNpbXBs
aWZpZXMgdGhpbmdzLCBsaWtlIG5vdCBoYXZpbmcgdG8gY2FyZSBhYm91dCBpbnRlcm5hbCBmcmFn
bWVudGF0aW9uLApvciBoYXZpbmcgdG8gcmVtZW1iZXIgdG8gdHJhY2sgdGhpbmdzIGZvciBhbGwg
cG9zc2libGUgaW50ZXJmYWNlcyB0aGF0Cm1pZ2h0IHdhbnQgdG8gYWxsb2NhdGUgb3IgcmVzZXJ2
ZSBwYWdlcy4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmMgICAgICAgICAgICAg
fCAgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuaCAgICAgICAgICAg
ICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8
ICA1ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICAg
fCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlfbWFuYWdlci5jIHwg
MTMgKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlfbWFu
YWdlci5oIHwgIDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
YyAgICB8ICA4ICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVn
aW9uLmggICAgfCAgNCArKysrCiA4IGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRk
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCmluZGV4IDI5ZGQ3ZDAzMTBj
MS4uMjdjZDI0ODdhMThmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1
ZGR5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCkBAIC04MCw2ICs4
MCw3IEBAIGludCBpOTE1X2J1ZGR5X2luaXQoc3RydWN0IGk5MTVfYnVkZHlfbW0gKm1tLCB1NjQg
c2l6ZSwgdTY0IGNodW5rX3NpemUpCiAJc2l6ZSA9IHJvdW5kX2Rvd24oc2l6ZSwgY2h1bmtfc2l6
ZSk7CiAKIAltbS0+c2l6ZSA9IHNpemU7CisJbW0tPmF2YWlsID0gc2l6ZTsKIAltbS0+Y2h1bmtf
c2l6ZSA9IGNodW5rX3NpemU7CiAJbW0tPm1heF9vcmRlciA9IGlsb2cyKHNpemUpIC0gaWxvZzIo
Y2h1bmtfc2l6ZSk7CiAKQEAgLTE1OSw2ICsxNjAsOCBAQCB2b2lkIGk5MTVfYnVkZHlfZmluaShz
dHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0pCiAJCWk5MTVfYmxvY2tfZnJlZShtbSwgbW0tPnJvb3Rz
W2ldKTsKIAl9CiAKKwlHRU1fV0FSTl9PTihtbS0+YXZhaWwgIT0gbW0tPnNpemUpOworCiAJa2Zy
ZWUobW0tPnJvb3RzKTsKIAlrZnJlZShtbS0+ZnJlZV9saXN0KTsKIAlrbWVtX2NhY2hlX2Rlc3Ry
b3kobW0tPnNsYWJfYmxvY2tzKTsKQEAgLTIzNSw2ICsyMzgsNyBAQCB2b2lkIGk5MTVfYnVkZHlf
ZnJlZShzdHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0sCiAJCSAgICAgc3RydWN0IGk5MTVfYnVkZHlf
YmxvY2sgKmJsb2NrKQogewogCUdFTV9CVUdfT04oIWk5MTVfYnVkZHlfYmxvY2tfaXNfYWxsb2Nh
dGVkKGJsb2NrKSk7CisJbW0tPmF2YWlsICs9IGk5MTVfYnVkZHlfYmxvY2tfc2l6ZShtbSwgYmxv
Y2spOwogCV9faTkxNV9idWRkeV9mcmVlKG1tLCBibG9jayk7CiB9CiAKQEAgLTI4OCw2ICsyOTIs
NyBAQCBpOTE1X2J1ZGR5X2FsbG9jKHN0cnVjdCBpOTE1X2J1ZGR5X21tICptbSwgdW5zaWduZWQg
aW50IG9yZGVyKQogCX0KIAogCW1hcmtfYWxsb2NhdGVkKGJsb2NrKTsKKwltbS0+YXZhaWwgLT0g
aTkxNV9idWRkeV9ibG9ja19zaXplKG1tLCBibG9jayk7CiAJa21lbWxlYWtfdXBkYXRlX3RyYWNl
KGJsb2NrKTsKIAlyZXR1cm4gYmxvY2s7CiAKQEAgLTM3Myw2ICszNzgsNyBAQCBpbnQgaTkxNV9i
dWRkeV9hbGxvY19yYW5nZShzdHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0sCiAJCQl9CiAKIAkJCW1h
cmtfYWxsb2NhdGVkKGJsb2NrKTsKKwkJCW1tLT5hdmFpbCAtPSBpOTE1X2J1ZGR5X2Jsb2NrX3Np
emUobW0sIGJsb2NrKTsKIAkJCWxpc3RfYWRkX3RhaWwoJmJsb2NrLT5saW5rLCAmYWxsb2NhdGVk
KTsKIAkJCWNvbnRpbnVlOwogCQl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2J1ZGR5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmgKaW5kZXggMzdm
OGM0MjA3MWQxLi5mZWI3YzFiYjYyNDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfYnVkZHkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmgKQEAg
LTcwLDYgKzcwLDcgQEAgc3RydWN0IGk5MTVfYnVkZHlfbW0gewogCS8qIE11c3QgYmUgYXQgbGVh
c3QgUEFHRV9TSVpFICovCiAJdTY0IGNodW5rX3NpemU7CiAJdTY0IHNpemU7CisJdTY0IGF2YWls
OwogfTsKIAogc3RhdGljIGlubGluZSB1NjQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMK
aW5kZXggY2M3NDU3NTFhYzUzLi40NzY1ZjIyMDQ2OWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCkBAIC0yNDYsOCArMjQ2LDkgQEAgc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3Rf
aW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJCSAgIGF0b21pY19yZWFkKCZp
OTE1LT5tbS5mcmVlX2NvdW50KSwKIAkJICAgaTkxNS0+bW0uc2hyaW5rX21lbW9yeSk7CiAJZm9y
X2VhY2hfbWVtb3J5X3JlZ2lvbihtciwgaTkxNSwgaWQpCi0JCXNlcV9wcmludGYobSwgIiVzOiB0
b3RhbDolcGEsIGF2YWlsYWJsZTolcGEgYnl0ZXNcbiIsCi0JCQkgICBtci0+bmFtZSwgJm1yLT50
b3RhbCwgJm1yLT5hdmFpbCk7CisJCXNlcV9wcmludGYobSwgIiVzOiB0b3RhbDolcGEsIGF2YWls
YWJsZTolbGx1IGJ5dGVzXG4iLAorCQkJICAgbXItPm5hbWUsICZtci0+dG90YWwsCisJCQkgICBp
bnRlbF9tZW1vcnlfcmVnaW9uX2dldF9hdmFpbChtcikpOwogCiAJcmV0dXJuIDA7CiB9CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3F1ZXJ5LmMKaW5kZXggZTQ5ZGEzNmM2MmZiLi5mMTBkY2VhOTRhYzkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMKQEAgLTQ2NSw3ICs0NjUsNyBAQCBzdGF0aWMgaW50
IHF1ZXJ5X21lbXJlZ2lvbl9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlp
bmZvLnJlZ2lvbi5tZW1vcnlfY2xhc3MgPSBtci0+dHlwZTsKIAkJaW5mby5yZWdpb24ubWVtb3J5
X2luc3RhbmNlID0gbXItPmluc3RhbmNlOwogCQlpbmZvLnByb2JlZF9zaXplID0gbXItPnRvdGFs
OwotCQlpbmZvLnVuYWxsb2NhdGVkX3NpemUgPSBtci0+YXZhaWw7CisJCWluZm8udW5hbGxvY2F0
ZWRfc2l6ZSA9IGludGVsX21lbW9yeV9yZWdpb25fZ2V0X2F2YWlsKG1yKTsKIAogCQlpZiAoX19j
b3B5X3RvX3VzZXIoaW5mb19wdHIsICZpbmZvLCBzaXplb2YoaW5mbykpKQogCQkJcmV0dXJuIC1F
RkFVTFQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9t
YW5hZ2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmMK
aW5kZXggZmM3YWQ1YzAzNWI4Li41NjJkMTFlZGM1ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdHRtX2J1ZGR5X21hbmFnZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmMKQEAgLTI0NiwzICsyNDYsMTYgQEAgaW50IGk5
MTVfdHRtX2J1ZGR5X21hbl9yZXNlcnZlKHN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlciAqbWFu
LAogCXJldHVybiByZXQ7CiB9CiAKKy8qKgorICogaTkxNV90dG1fYnVkZHlfbWFuX2F2YWlsIC0g
R2V0IHRoZSBjdXJyZW50bHkgYXZhaWxhYmxlIHNpemUKKyAqIEBtYW46IFRoZSBidWRkeSBhbGxv
Y2F0b3IgdHRtIG1hbmFnZXIKKyAqCisgKiBSZXR1cm46IFRoZSBhdmFpbGFibGUgc2l6ZSBpbiBi
eXRlcworICovCit1NjQgaTkxNV90dG1fYnVkZHlfbWFuX2dldF9hdmFpbChzdHJ1Y3QgdHRtX3Jl
c291cmNlX21hbmFnZXIgKm1hbikKK3sKKwlzdHJ1Y3QgaTkxNV90dG1fYnVkZHlfbWFuYWdlciAq
Ym1hbiA9IHRvX2J1ZGR5X21hbmFnZXIobWFuKTsKKwlzdHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0g
PSAmYm1hbi0+bW07CisKKwlyZXR1cm4gbW0tPmF2YWlsOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlfbWFuYWdlci5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV90dG1fYnVkZHlfbWFuYWdlci5oCmluZGV4IDI2MDI2MjEzZTIwYS4uMzlmNWIx
YTRjM2U3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9t
YW5hZ2VyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlfbWFuYWdl
ci5oCkBAIC01Myw0ICs1Myw2IEBAIGludCBpOTE1X3R0bV9idWRkeV9tYW5fZmluaShzdHJ1Y3Qg
dHRtX2RldmljZSAqYmRldiwKIGludCBpOTE1X3R0bV9idWRkeV9tYW5fcmVzZXJ2ZShzdHJ1Y3Qg
dHRtX3Jlc291cmNlX21hbmFnZXIgKm1hbiwKIAkJCSAgICAgICB1NjQgc3RhcnQsIHU2NCBzaXpl
KTsKIAordTY0IGk5MTVfdHRtX2J1ZGR5X21hbl9nZXRfYXZhaWwoc3RydWN0IHR0bV9yZXNvdXJj
ZV9tYW5hZ2VyICptYW4pOworCiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uYwppbmRleCBkZjU5Zjg4NGQzN2MuLjI2OWNiYjYwZTIzMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwpAQCAtMTMyLDYgKzEzMiwxNCBA
QCB2b2lkIGludGVsX21lbW9yeV9yZWdpb25fc2V0X25hbWUoc3RydWN0IGludGVsX21lbW9yeV9y
ZWdpb24gKm1lbSwKIAl2YV9lbmQoYXApOwogfQogCit1NjQgaW50ZWxfbWVtb3J5X3JlZ2lvbl9n
ZXRfYXZhaWwoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yKQoreworCWlmIChtci0+dHlw
ZSA9PSBJTlRFTF9NRU1PUllfTE9DQUwpCisJCXJldHVybiBpOTE1X3R0bV9idWRkeV9tYW5fZ2V0
X2F2YWlsKG1yLT5yZWdpb25fcHJpdmF0ZSk7CisKKwlyZXR1cm4gbXItPmF2YWlsOworfQorCiBz
dGF0aWMgdm9pZCBfX2ludGVsX21lbW9yeV9yZWdpb25fZGVzdHJveShzdHJ1Y3Qga3JlZiAqa3Jl
ZikKIHsKIAlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtID0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAppbmRleCAyYmU4NDMzZDM3M2EuLjZmN2EwNzNk
NWE3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lv
bi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaApAQCAt
NzQsNiArNzQsNyBAQCBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiB7CiAJcmVzb3VyY2Vfc2l6
ZV90IGlvX3N0YXJ0OwogCXJlc291cmNlX3NpemVfdCBtaW5fcGFnZV9zaXplOwogCXJlc291cmNl
X3NpemVfdCB0b3RhbDsKKwkvKiBEbyBub3QgYWNjZXNzIGRpcmVjdGx5LiBVc2UgdGhlIGFjY2Vz
c29yIGluc3RlYWQuICovCiAJcmVzb3VyY2Vfc2l6ZV90IGF2YWlsOwogCiAJdTE2IHR5cGU7CkBA
IC0xMjUsNCArMTI2LDcgQEAgaW50ZWxfbWVtb3J5X3JlZ2lvbl9zZXRfbmFtZShzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogaW50IGludGVsX21lbW9yeV9yZWdpb25fcmVzZXJ2ZShz
dHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCQkJCXJlc291cmNlX3NpemVfdCBvZmZz
ZXQsCiAJCQkJcmVzb3VyY2Vfc2l6ZV90IHNpemUpOworCit1NjQgaW50ZWxfbWVtb3J5X3JlZ2lv
bl9nZXRfYXZhaWwoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSk7CisKICNlbmRpZgot
LSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
