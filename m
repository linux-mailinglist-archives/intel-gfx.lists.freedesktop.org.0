Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFF8B8F24
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 13:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614C06FCA4;
	Fri, 20 Sep 2019 11:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9C86FC9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 11:42:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:42:28 +0200
Message-Id: <20190920114235.22411-16-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/23] drm/i915: Program planes in bigjoiner
 mode.
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

Tm93IHRoYXQgd2UgY2FuIHByb2dyYW0gcGxhbmVzIGZyb20gdGhlIHVwZGF0ZV9zbGF2ZSBjYWxs
YmFjaywgYW5kCndlIGhhdmUgZG9uZSBhbGwgZmIgcGlubmluZyBjb3JyZWN0bHksIGl0J3MgdGlt
ZSB0byBwcm9ncmFtIHRob3NlCnBsYW5lcyBhcyB3ZWxsLgoKV2UgdXNlIHRoZSB1cGRhdGVfc2xh
dmUgY2FsbGJhY2sgYXMgaXQgYWxsb3dzIHVzIHRvIHVzZSB0aGUKc2VwYXJhdGUgc3RhdGVzIGNv
cnJlY3RseS4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pY19wbGFuZS5jIHwgNTMgKysrKysrKysrKysrKysrKysrKwogLi4uL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIHwgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQgKy0KIDMgZmlsZXMgY2hhbmdlZCwgNTcg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwppbmRleCBjYzA4ODY3NmYwYTIuLjVkYjA5
MWU0YWQ2YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pY19wbGFuZS5jCkBAIC0zNjYsNiArMzY2LDU5IEBAIHZvaWQgc2tsX3VwZGF0ZV9wbGFuZXNf
b25fY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAl9CiB9CiAKK3ZvaWQg
aWNsX3VwZGF0ZV9iaWdqb2luZXJfcGxhbmVzX29uX2NydGMoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsCisJCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3sKKwlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X29s
ZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3
X2NydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBj
cnRjKTsKKwlzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSBlbnRyaWVzX3lbSTkxNV9NQVhfUExBTkVTXTsK
KwlzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSBlbnRyaWVzX3V2W0k5MTVfTUFYX1BMQU5FU107CisJdTMy
IHVwZGF0ZV9tYXNrID0gbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXM7CisJc3RydWN0IGlu
dGVsX3BsYW5lICpwbGFuZTsKKworCW1lbWNweShlbnRyaWVzX3ksIG9sZF9jcnRjX3N0YXRlLT53
bS5za2wucGxhbmVfZGRiX3ksCisJICAgICAgIHNpemVvZihvbGRfY3J0Y19zdGF0ZS0+d20uc2ts
LnBsYW5lX2RkYl95KSk7CisJbWVtY3B5KGVudHJpZXNfdXYsIG9sZF9jcnRjX3N0YXRlLT53bS5z
a2wucGxhbmVfZGRiX3V2LAorCSAgICAgICBzaXplb2Yob2xkX2NydGNfc3RhdGUtPndtLnNrbC5w
bGFuZV9kZGJfdXYpKTsKKworCXdoaWxlICgocGxhbmUgPSBza2xfbmV4dF9wbGFuZV90b19jb21t
aXQoc3RhdGUsIGNydGMsCisJCQkJCQkgZW50cmllc195LCBlbnRyaWVzX3V2LAorCQkJCQkJICZ1
cGRhdGVfbWFzaykpKSB7CisJCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0
YXRlID0KKwkJCWludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRlLCBwbGFuZSk7
CisJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbWFzdGVyX3BsYW5lX3N0YXRlOwor
CisJCWlmIChuZXdfcGxhbmVfc3RhdGUtPmJhc2UudmlzaWJsZSkgeworCQkJbWFzdGVyX3BsYW5l
X3N0YXRlID0KKwkJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgbmV3
X3BsYW5lX3N0YXRlLT5iaWdqb2luZXJfcGxhbmUpOworCisJCQlpbnRlbF91cGRhdGVfc2xhdmUo
cGxhbmUsIG5ld19jcnRjX3N0YXRlLAorCQkJCQkgICBtYXN0ZXJfcGxhbmVfc3RhdGUsIG5ld19w
bGFuZV9zdGF0ZSk7CisJCX0gZWxzZSBpZiAobmV3X3BsYW5lX3N0YXRlLT5zbGF2ZSkgeworCQkJ
LyoKKwkJCSAqIGJpZ2pvaW5lciBzbGF2ZSArIHBsYW5hciBzbGF2ZS4KKwkJCSAqIFRoZSBjb3Jy
ZWN0IHNlcXVlbmNlIGlzIHRvIGdldCBmcm9tIHRoZSBwbGFuYXIgc2xhdmUgdG8gcGxhbmFyIG1h
c3RlciwKKwkJCSAqIHRoZW4gdG8gdGhlIG1hc3RlciBwbGFuZSBzdGF0ZSBmb3IgdGhlIG1hc3Rl
cl9wbGFuZV9zdGF0ZS4KKwkJCSAqLworCisJCQlzdHJ1Y3QgaW50ZWxfcGxhbmUgKmxpbmtlZCA9
IG5ld19wbGFuZV9zdGF0ZS0+bGlua2VkX3BsYW5lOworCQkJY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICp1dl9wbGFuZV9zdGF0ZSA9CisJCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfcGxh
bmVfc3RhdGUoc3RhdGUsIGxpbmtlZCk7CisKKwkJCWxpbmtlZCA9IHV2X3BsYW5lX3N0YXRlLT5i
aWdqb2luZXJfcGxhbmU7CisJCQltYXN0ZXJfcGxhbmVfc3RhdGUgPQorCQkJCWludGVsX2F0b21p
Y19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRlLCBsaW5rZWQpOworCisJCQlpbnRlbF91cGRhdGVf
c2xhdmUocGxhbmUsIG5ld19jcnRjX3N0YXRlLAorCQkJCQkgICBtYXN0ZXJfcGxhbmVfc3RhdGUs
IG5ld19wbGFuZV9zdGF0ZSk7CisJCX0gZWxzZSB7CisJCQlpbnRlbF9kaXNhYmxlX3BsYW5lKHBs
YW5lLCBuZXdfY3J0Y19zdGF0ZSk7CisJCX0KKwl9Cit9CisKIHZvaWQgaTl4eF91cGRhdGVfcGxh
bmVzX29uX2NydGMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJc3RydWN0
IGludGVsX2NydGMgKmNydGMpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuaAppbmRleCA5MDFhNTBlNmUyZDMuLjFjZmZkYTJiNTBiNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5oCkBAIC0zMCw2ICszMCw4IEBAIHZvaWQgaW50ZWxfcGxhbmVfZnJlZShzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lKTsKIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKmludGVsX3BsYW5lX2R1cGxp
Y2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSk7CiB2b2lkIGludGVsX3BsYW5lX2Rl
c3Ryb3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJCQkgICAgICAgc3RydWN0IGRy
bV9wbGFuZV9zdGF0ZSAqc3RhdGUpOwordm9pZCBpY2xfdXBkYXRlX2JpZ2pvaW5lcl9wbGFuZXNf
b25fY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJCQkJIHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjKTsKIHZvaWQgc2tsX3VwZGF0ZV9wbGFuZXNfb25fY3J0YyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0Yyk7CiB2b2lkIGk5eHhfdXBkYXRlX3BsYW5lc19vbl9jcnRjKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwppbmRleCAwNmNlYWM0ZjE0MzYuLmFjYjNjNTk3NGU5OSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MjIzLDggKzE0MjIzLDgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX2NydGMoc3RydWN0IGludGVsX2NydGMgKmNydGMs
CiAKIAljb21taXRfcGlwZV9jb25maWcoc3RhdGUsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19z
dGF0ZSk7CiAKLQlpZiAobmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcikKLQkJey8qIE5vdCBzdXBw
b3J0ZWQgeWV0ICovfQorCWlmIChuZXdfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKQorCQlp
Y2xfdXBkYXRlX2JpZ2pvaW5lcl9wbGFuZXNfb25fY3J0YyhzdGF0ZSwgY3J0Yyk7CiAJZWxzZSBp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQogCQlza2xfdXBkYXRlX3BsYW5lc19vbl9jcnRj
KHN0YXRlLCBjcnRjKTsKIAllbHNlCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
