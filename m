Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DADECB93F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF2A6EB47;
	Fri,  4 Oct 2019 11:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00CE06EB3B
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:23 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:35:09 +0200
Message-Id: <20191004113514.17064-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/24] drm/i915: Link planes in a bigjoiner
 configuration, v2.
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

TWFrZSBzdXJlIHRoYXQgd2hlbiBhIHBsYW5lIGlzIHNldCBpbiBhIGJpZ2pvaW5lciBtb2RlLCB3
ZSB3aWxsIGFkZAp0aGVpciBjb3VudGVycGFydCB0byB0aGUgYXRvbWljIHN0YXRlIGFzIHdlbGwu
IFRoaXMgd2lsbCBhbGxvdyB1cyB0bwptYWtlIHN1cmUgYWxsIHN0YXRlIGlzIGF2YWlsYWJsZSB3
aGVuIHBsYW5lcyBhcmUgY2hlY2tlZC4KCkJlY2F1c2Ugb2YgdGhlIGZ1bm55IGludGVyYWN0aW9u
cyB3aXRoIGJpZ2pvaW5lciBhbmQgcGxhbmFyIFlVVgpmb3JtYXRzLCB3ZSBtYXkgZW5kIHVwIGFk
ZGluZyBhIGxvdCBvZiBwbGFuZXMsIHNvIHdlIGhhdmUgdG8ga2VlcAppdGVyYXRpbmcgdW50aWwg
d2Ugbm8gbG9uZ2VyIGFkZCBhbnkgcGxhbmVzLgoKQWxzbyBmaXggdGhlIGF0b21pYyBpbnRlbCBw
bGFuZSBpdGVyYXRvciwgc28gdGhpbmdzIHdhdGVybWFya3Mgc3RhcnQKd29ya2luZyBhdXRvbWFn
aWNhbGx5LgoKQ2hhbmdlcyBzaW5jZSB2MToKLSBSZWJhc2Ugb24gdG9wIG9mIHBsYW5lX3N0YXRl
IHNwbGl0LCBjbGVhbmluZyB1cCB0aGUgY29kZSBhIGxvdC4KLSBNYWtlIGludGVsX2F0b21pY19j
cnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKCkgYmlnam9pbmVyIGNhcGFibGUuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YyB8ICA0NyArKysrKy0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuaCB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgIHwgMTU4ICsrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggIHwgIDE2ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggICAgfCAgMTEgKysKIDUgZmlsZXMgY2hhbmdlZCwgMjExIGluc2VydGlv
bnMoKyksIDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IDk5NDdjMDhhZmI3Ny4uMDg4NjBiZTZkOWFj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMKQEAgLTE0MywxMCArMTQzLDE1IEBAIHVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9kYXRh
X3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJcmV0dXJu
IGNwcCAqIGNydGNfc3RhdGUtPnBpeGVsX3JhdGU7CiB9CiAKLXZvaWQgaW50ZWxfcGxhbmVfY29w
eV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUs
Cit2b2lkIGludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICAgICAgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSwKIAkJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpmcm9tX3BsYW5lX3N0YXRlKQogewotCXBsYW5lX3N0YXRlLT5ody5jcnRjID0gZnJv
bV9wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjOworCWlmIChmcm9tX3BsYW5lX3N0YXRlLT51YXBpLmNy
dGMpCisJCXBsYW5lX3N0YXRlLT5ody5jcnRjID0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjOworCWVs
c2UKKwkJcGxhbmVfc3RhdGUtPmh3LmNydGMgPSBOVUxMOworCiAJcGxhbmVfc3RhdGUtPmh3LmZi
ID0gZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaS5mYjsKIAlpZiAocGxhbmVfc3RhdGUtPmh3LmZiKQog
CQlkcm1fZnJhbWVidWZmZXJfZ2V0KHBsYW5lX3N0YXRlLT5ody5mYik7CkBAIC0xNjUsMTAgKzE3
MCwyMCBAQCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjXwogCQkJCQlzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKm5ld19wbGFuZV9zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0g
dG9faW50ZWxfcGxhbmUobmV3X3BsYW5lX3N0YXRlLT51YXBpLnBsYW5lKTsKKwlzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKm5ld19tYXN0ZXJfcGxhbmVfc3RhdGUgPSBuZXdfcGxhbmVfc3RhdGU7
CisJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPQorCQl0b19pbnRlbF9hdG9taWNf
c3RhdGUobmV3X3BsYW5lX3N0YXRlLT51YXBpLnN0YXRlKTsKIAljb25zdCBzdHJ1Y3QgZHJtX2Zy
YW1lYnVmZmVyICpmYjsKIAlpbnQgcmV0OwogCi0JaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3
X3N0YXRlKG5ld19wbGFuZV9zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKKwlpZiAobmV3X3BsYW5l
X3N0YXRlLT5iaWdqb2luZXJfc2xhdmUpCisJCW5ld19tYXN0ZXJfcGxhbmVfc3RhdGUgPQorCQkJ
aW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsCisJCQkJbmV3X3BsYW5lX3N0
YXRlLT5iaWdqb2luZXJfcGxhbmUpOworCisJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0
YXRlKG5ld19jcnRjX3N0YXRlLAorCQkJCQkgIG5ld19wbGFuZV9zdGF0ZSwKKwkJCQkJICBuZXdf
bWFzdGVyX3BsYW5lX3N0YXRlKTsKIAlmYiA9IG5ld19wbGFuZV9zdGF0ZS0+aHcuZmI7CiAKIAlu
ZXdfY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7CkBAIC0yMDcs
MTUgKzIyMiwzNiBAQCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjXwogfQogCiBzdGF0aWMgc3RydWN0
IGludGVsX2NydGMgKgotZ2V0X2NydGNfZnJvbV9zdGF0ZXMoY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsCitnZXRfY3J0Y19mcm9tX3N0YXRlcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSwKIAkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CisJc3RydWN0IGludGVsX3BsYW5l
ICpwbGFuZSA9IHRvX2ludGVsX3BsYW5lKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7CisK
IAlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLmNydGMpCiAJCXJldHVybiB0b19pbnRlbF9jcnRj
KG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjKTsKIAogCWlmIChvbGRfcGxhbmVfc3RhdGUtPnVh
cGkuY3J0YykKIAkJcmV0dXJuIHRvX2ludGVsX2NydGMob2xkX3BsYW5lX3N0YXRlLT51YXBpLmNy
dGMpOwogCisJaWYgKG5ld19wbGFuZV9zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKSB7CisJCWNvbnN0
IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X21hc3Rlcl9wbGFuZV9zdGF0ZSA9CisJCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgbmV3X3BsYW5lX3N0YXRlLT5i
aWdqb2luZXJfcGxhbmUpOworCisJCS8qIG5lZWQgdG8gdXNlIHVhcGkgaGVyZSwgbmV3X21hc3Rl
cl9wbGFuZV9zdGF0ZSBtaWdodCBub3QgYmUgY29waWVkIHRvIGh3IHlldCAqLworCQlpZiAobmV3
X21hc3Rlcl9wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjKQorCQkJcmV0dXJuIGludGVsX2dldF9jcnRj
X2Zvcl9waXBlKGRldl9wcml2LCBwbGFuZS0+cGlwZSk7CisJfQorCisJaWYgKG9sZF9wbGFuZV9z
dGF0ZS0+Ymlnam9pbmVyX3NsYXZlKSB7CisJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqb2xkX21hc3Rlcl9wbGFuZV9zdGF0ZSA9CisJCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9wbGFu
ZV9zdGF0ZShzdGF0ZSwgb2xkX3BsYW5lX3N0YXRlLT5iaWdqb2luZXJfcGxhbmUpOworCisJCWlm
IChvbGRfbWFzdGVyX3BsYW5lX3N0YXRlLT51YXBpLmNydGMpCisJCQlyZXR1cm4gaW50ZWxfZ2V0
X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsIHBsYW5lLT5waXBlKTsKKwl9CisKIAlyZXR1cm4gTlVM
TDsKIH0KIApAQCAtMjI3LDcgKzI2Myw4IEBAIGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2so
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUgPQogCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9wbGFu
ZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOwogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0KLQkJZ2V0
X2NydGNfZnJvbV9zdGF0ZXMob2xkX3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOworCQln
ZXRfY3J0Y19mcm9tX3N0YXRlcyhzdGF0ZSwgb2xkX3BsYW5lX3N0YXRlLAorCQkJCSAgICAgbmV3
X3BsYW5lX3N0YXRlKTsKIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNf
c3RhdGU7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaAppbmRl
eCA3MjZlY2VjZDZhYmQuLmU0MGQ2ZTRlOTEzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oCkBAIC0yMCw3ICsyMCw4IEBAIGV4dGVy
biBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBpbnRlbF9wbGFuZV9oZWxwZXJf
ZnVuY3M7CiAKIHVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9kYXRhX3JhdGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJICAgY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Ci12b2lkIGludGVsX3BsYW5lX2NvcHlfdWFwaV90
b19od19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAordm9pZCBp
bnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9faHdfc3RhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCisJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfc3RhdGUsCiAJCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
ZnJvbV9wbGFuZV9zdGF0ZSk7CiB2b2lkIGludGVsX3VwZGF0ZV9wbGFuZShzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lLAogCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGQ3MWZkNzg0Mjg0OS4uYjg4Y2Q4Zjk5YTMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzI3NSw3ICszMjc1LDcgQEAgaW50ZWxfZmluZF9p
bml0aWFsX3BsYW5lX29iaihzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywKIAogCXBsYW5l
X3N0YXRlLT5mYiA9IGZiOwogCXBsYW5lX3N0YXRlLT5jcnRjID0gJmludGVsX2NydGMtPmJhc2U7
Ci0JaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGludGVsX3N0YXRlLCBpbnRlbF9z
dGF0ZSk7CisJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGNydGNfc3RhdGUsIGlu
dGVsX3N0YXRlLCBpbnRlbF9zdGF0ZSk7CiAKIAlhdG9taWNfb3IodG9faW50ZWxfcGxhbmUocHJp
bWFyeSktPmZyb250YnVmZmVyX2JpdCwKIAkJICAmdG9faW50ZWxfZnJvbnRidWZmZXIoZmIpLT5i
aXRzKTsKQEAgLTExODQ0LDI0ICsxMTg0NCwxMDEgQEAgc3RhdGljIGJvb2wgY2hlY2tfc2luZ2xl
X2VuY29kZXJfY2xvbmluZyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJcmV0dXJu
IHRydWU7CiB9CiAKK3N0YXRpYyBpbnQgaWNsX2FkZF9kZXBlbmRlbnRfcGxhbmVzKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAorCQkJCSAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5l
X3N0YXRlOworCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7CisJaW50IHJldCA9IDA7CisKKwlw
bGFuZSA9IHBsYW5lX3N0YXRlLT5iaWdqb2luZXJfcGxhbmU7CisJaWYgKHBsYW5lICYmICFpbnRl
bF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpKSB7CisJCW5ld19wbGFu
ZV9zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKKwkJ
aWYgKElTX0VSUihuZXdfcGxhbmVfc3RhdGUpKQorCQkJcmV0dXJuIFBUUl9FUlIobmV3X3BsYW5l
X3N0YXRlKTsKKworCQlyZXQgPSAxOworCX0KKworCXBsYW5lID0gcGxhbmVfc3RhdGUtPnBsYW5h
cl9saW5rZWRfcGxhbmU7CisJaWYgKHBsYW5lICYmICFpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFu
ZV9zdGF0ZShzdGF0ZSwgcGxhbmUpKSB7CisJCW5ld19wbGFuZV9zdGF0ZSA9IGludGVsX2F0b21p
Y19nZXRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKKwkJaWYgKElTX0VSUihuZXdfcGxhbmVf
c3RhdGUpKQorCQkJcmV0dXJuIFBUUl9FUlIobmV3X3BsYW5lX3N0YXRlKTsKKworCQlyZXQgPSAx
OworCX0KKworCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyBpbnQgaWNsX2FkZF9saW5rZWRfcGxh
bmVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewotCXN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmUsICpsaW5rZWQ7Ci0Jc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSwgKmxpbmtlZF9wbGFuZV9zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwor
CXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlLCAqbmV3X3BsYW5lX3N0
YXRlOworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCAqbGlua2VkX2NydGM7CisJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLCAqbmV3X2NydGNfc3RhdGUsICpsaW5rZWRf
Y3J0Y19zdGF0ZTsKKwlib29sIGFkZGVkOwogCWludCBpOwogCi0JZm9yX2VhY2hfbmV3X2ludGVs
X3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwgcGxhbmVfc3RhdGUsIGkpIHsKLQkJbGlua2Vk
ID0gcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmU7CisJLyoKKwkgKiBJdGVyYXRpdmVs
eSBhZGQgcGxhbmVfc3RhdGUtPmxpbmtlZF9wbGFuZSBhbmQgcGxhbmVfc3RhdGUtPmJpZ2pvaW5l
cl9wbGFuZQorCSAqCisJICogVGhpcyBuZWVkcyB0byBiZSBkb25lIHJlcGVhdGVkbHksIGJlY2F1
c2Ugb2YgaXMgYSBmdW5ueSBpbnRlcmFjdGlvbjsKKwkgKiB0aGUgWS1wbGFuZSBtYXkgYmUgYXNz
aWduZWQgZGlmZmVyZW50bHkgb24gdGhlIG90aGVyIGJpZ2pvaW5lciBjcnRjLAorCSAqIGFuZCB3
ZSBjb3VsZCBlbmQgdXAgd2l0aCB0aGUgZm9sbG93aW5nIGV2aWwgcmVjdXJzaW9uLCB3aGVuIG9u
bHkgYWRkaW5nIGEKKwkgKiBzaW5nbGUgcGxhbmUgdG8gc3RhdGU6CisJICoKKwkgKiBYUkdCODg4
OCBtYXN0ZXIgcGxhbmUgNiBhZGRzIE5WMTIgc2xhdmUgWS1wbGFuZSA2LCB3aGljaCBhZGRzIHNs
YXZlIFVWIHBsYW5lIDAsCisJICogd2hpY2ggYWRkcyBtYXN0ZXIgVVYgcGxhbmUgMCwgd2hpY2gg
YWRkcyBtYXN0ZXIgWS1wbGFuZSA3LCB3aGljaCBhZGRzIFhSR0I4ODg4CisJICogc2xhdmUgcGxh
bmUgNy4KKwkgKgorCSAqIFdlIGNvdWxkIHB1bGwgaW4gZXZlbiBtb3JlIGJlY2F1c2Ugb2Ygb2xk
X3BsYW5lX3N0YXRlIHZzIG5ld19wbGFuZV9zdGF0ZS4KKwkgKgorCSAqIE1heCBkZXB0aCA9IDUg
KG9yIDcgZm9yIGV2aWwgY2FzZSkgaW4gdGhpcyBjYXNlLgorCSAqIE51bWJlciBvZiBwYXNzZXMg
d2lsbCBiZSBsZXNzLCBiZWNhdXNlIG5ld2x5IGFkZGVkIHBsYW5lcyBzaG93IHVwIGluIHRoZQor
CSAqIHNhbWUgaXRlcmF0aW9uIHJvdW5kIHdoZW4gYWRkZWRfcGxhbmUtPmluZGV4ID4gcGxhbmUt
PmluZGV4LgorCSAqLworCWRvIHsKKwkJYWRkZWQgPSBmYWxzZTsKIAotCQlpZiAoIWxpbmtlZCkK
LQkJCWNvbnRpbnVlOworCQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3Rh
dGUsIHBsYW5lLCBvbGRfcGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSwgaSkgeworCQkJaW50
IHJldCwgcmV0MjsKIAotCQlsaW5rZWRfcGxhbmVfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X3Bs
YW5lX3N0YXRlKHN0YXRlLCBsaW5rZWQpOwotCQlpZiAoSVNfRVJSKGxpbmtlZF9wbGFuZV9zdGF0
ZSkpCi0JCQlyZXR1cm4gUFRSX0VSUihsaW5rZWRfcGxhbmVfc3RhdGUpOworCQkJcmV0ID0gaWNs
X2FkZF9kZXBlbmRlbnRfcGxhbmVzKHN0YXRlLCBvbGRfcGxhbmVfc3RhdGUpOworCQkJaWYgKHJl
dCA8IDApCisJCQkJcmV0dXJuIHJldDsKKworCQkJcmV0MiA9IGljbF9hZGRfZGVwZW5kZW50X3Bs
YW5lcyhzdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKKwkJCWlmIChyZXQyIDwgMCkKKwkJCQlyZXR1
cm4gcmV0MjsKKworCQkJYWRkZWQgfD0gcmV0IHx8IHJldDI7CisJCX0KKwl9IHdoaWxlIChhZGRl
ZCk7CiAKLQkJV0FSTl9PTihsaW5rZWRfcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmUg
IT0gcGxhbmUpOwotCQlXQVJOX09OKGxpbmtlZF9wbGFuZV9zdGF0ZS0+cGxhbmFyX3NsYXZlID09
IHBsYW5lX3N0YXRlLT5wbGFuYXJfc2xhdmUpOworCS8qCisJICogTWFrZSBzdXJlIGJpZ2pvaW5l
ciBzbGF2ZSBjcnRjJ3MgYXJlIGFsc28gcHVsbGVkIGluLiBUaGlzIGlzIG5vdCBkb25lIGF1dG9t
YXRpY2FsbHkKKwkgKiB3aGVuIGFkZGluZyBzbGF2ZSBwbGFuZXMsIGJlY2F1c2UgcGxhbmVfc3Rh
dGUtPmNydGMgaXMgbnVsbC4KKwkgKi8KKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9z
dGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJ
CWxpbmtlZF9jcnRjID0gb2xkX2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0YzsKKwkJ
aWYgKGxpbmtlZF9jcnRjKSB7CisJCQlsaW5rZWRfY3J0Y19zdGF0ZSA9CisJCQkJaW50ZWxfYXRv
bWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwgbGlua2VkX2NydGMpOworCisJCQlpZiAo
SVNfRVJSKGxpbmtlZF9jcnRjX3N0YXRlKSkKKwkJCQlyZXR1cm4gUFRSX0VSUihsaW5rZWRfY3J0
Y19zdGF0ZSk7CisJCX0KKworCQlsaW5rZWRfY3J0YyA9IG5ld19jcnRjX3N0YXRlLT5iaWdqb2lu
ZXJfbGlua2VkX2NydGM7CisJCWlmIChsaW5rZWRfY3J0YyAmJiBsaW5rZWRfY3J0YyAhPSBvbGRf
Y3J0Y19zdGF0ZS0+Ymlnam9pbmVyX2xpbmtlZF9jcnRjKSB7CisJCQlsaW5rZWRfY3J0Y19zdGF0
ZSA9CisJCQkJaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwgbGlua2Vk
X2NydGMpOworCisJCQlpZiAoSVNfRVJSKGxpbmtlZF9jcnRjX3N0YXRlKSkKKwkJCQlyZXR1cm4g
UFRSX0VSUihsaW5rZWRfY3J0Y19zdGF0ZSk7CisJCX0KIAl9CiAKIAlyZXR1cm4gMDsKQEAgLTEx
OTAxLDYgKzExOTc4LDcgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9wbGFuZXMoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAKIAlmb3JfZWFjaF9uZXdfaW50ZWxfcGxh
bmVfaW5fc3RhdGUoc3RhdGUsIHBsYW5lLCBwbGFuZV9zdGF0ZSwgaSkgewogCQlzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKmxpbmtlZF9zdGF0ZSA9IE5VTEw7CisJCXN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqbWFzdGVyX3BsYW5lX3N0YXRlOwogCiAJCWlmIChwbGFuZS0+cGlwZSAhPSBjcnRj
LT5waXBlIHx8CiAJCSAgICAhKGNydGNfc3RhdGUtPm52MTJfcGxhbmVzICYgQklUKHBsYW5lLT5p
ZCkpKQpAQCAtMTE5NDAsOSArMTIwMTgsMTYgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9w
bGFuZXMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCWxpbmtlZF9zdGF0
ZS0+Y29sb3JfY3RsID0gcGxhbmVfc3RhdGUtPmNvbG9yX2N0bDsKIAkJbGlua2VkX3N0YXRlLT5j
b2xvcl9wbGFuZVswXSA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXTsKIAotCQlsaW5rZWRf
c3RhdGUtPnVhcGkuc3JjID0gcGxhbmVfc3RhdGUtPnVhcGkuc3JjOwotCQlsaW5rZWRfc3RhdGUt
PnVhcGkuZHN0ID0gcGxhbmVfc3RhdGUtPnVhcGkuZHN0OwotCQlpbnRlbF9wbGFuZV9jb3B5X3Vh
cGlfdG9faHdfc3RhdGUobGlua2VkX3N0YXRlLCBwbGFuZV9zdGF0ZSk7CisJCW1hc3Rlcl9wbGFu
ZV9zdGF0ZSA9IHBsYW5lX3N0YXRlOworCQlpZiAocGxhbmVfc3RhdGUtPmJpZ2pvaW5lcl9zbGF2
ZSkKKwkJCW1hc3Rlcl9wbGFuZV9zdGF0ZSA9CisJCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfcGxh
bmVfc3RhdGUoc3RhdGUsCisJCQkJCXBsYW5lX3N0YXRlLT5iaWdqb2luZXJfcGxhbmUpOworCisJ
CWxpbmtlZF9zdGF0ZS0+dWFwaS5zcmMgPSBtYXN0ZXJfcGxhbmVfc3RhdGUtPnVhcGkuc3JjOwor
CQlsaW5rZWRfc3RhdGUtPnVhcGkuZHN0ID0gbWFzdGVyX3BsYW5lX3N0YXRlLT51YXBpLmRzdDsK
KwkJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGNydGNfc3RhdGUsIGxpbmtlZF9z
dGF0ZSwKKwkJCQkJCSAgbWFzdGVyX3BsYW5lX3N0YXRlKTsKIAogCQlpZiAoaWNsX2lzX2hkcl9w
bGFuZShkZXZfcHJpdiwgcGxhbmUtPmlkKSkgewogCQkJaWYgKGxpbmtlZC0+aWQgPT0gUExBTkVf
U1BSSVRFNSkKQEAgLTEzODUzLDYgKzEzOTM4LDcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNf
Y2hlY2tfYmlnam9pbmVyKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsK
IAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsICpuZXdfY3J0Y19zdGF0
ZSwgKnNsYXZlX2NydGNfc3RhdGUsICptYXN0ZXJfY3J0Y19zdGF0ZTsKIAlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywgKnNsYXZlLCAqbWFzdGVyOworCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7
CiAJaW50IGksIHJldCA9IDA7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDExKQpAQCAt
MTM5NDgsNiArMTQwMzQsNDggQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfYmlnam9p
bmVyKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQkJcmV0dXJuIHJldDsKIAl9
CiAKKwkvKgorCSAqIFNldHVwIGFuZCB0ZWFyZG93biB0aGUgbmV3IGJpZ2pvaW5lciBwbGFuZSBt
YXBwaW5ncy4KKwkgKi8KKwlmb3JfZWFjaF9pbnRlbF9wbGFuZSgmZGV2X3ByaXYtPmRybSwgcGxh
bmUpIHsKKwkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsKKwkJc3RydWN0
IGludGVsX3BsYW5lICpvdGhlcl9wbGFuZSA9IE5VTEw7CisKKwkJY3J0YyA9IGludGVsX2dldF9j
cnRjX2Zvcl9waXBlKGRldl9wcml2LCBwbGFuZS0+cGlwZSk7CisJCW9sZF9jcnRjX3N0YXRlID0g
aW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7CisJCW5ld19jcnRj
X3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7CisK
KwkJaWYgKCFuZXdfY3J0Y19zdGF0ZSB8fCAhbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkp
CisJCQljb250aW51ZTsKKworCQlpZiAobmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcikgeworCQkJ
c3RydWN0IGludGVsX2NydGMgKm90aGVyX2NydGMgPQorCQkJCW5ld19jcnRjX3N0YXRlLT5iaWdq
b2luZXJfbGlua2VkX2NydGM7CisJCQlib29sIGZvdW5kID0gZmFsc2U7CisKKwkJCWZvcl9lYWNo
X2ludGVsX3BsYW5lX29uX2NydGMoJmRldl9wcml2LT5kcm0sIG90aGVyX2NydGMsIG90aGVyX3Bs
YW5lKSB7CisJCQkJaWYgKG90aGVyX3BsYW5lLT5pZCAhPSBwbGFuZS0+aWQpCisJCQkJCWNvbnRp
bnVlOworCisJCQkJZm91bmQgPSB0cnVlOworCQkJCWJyZWFrOworCQkJfQorCisJCQkvKiBBbGwg
cGlwZXMgc2hvdWxkIGhhdmUgaWRlbnRpY2FsIHBsYW5lcy4gKi8KKwkJCWlmIChXQVJOX09OKCFm
b3VuZCkpCisJCQkJcmV0dXJuIC1FSU5WQUw7CisJCX0gZWxzZSBpZiAoIW9sZF9jcnRjX3N0YXRl
LT5iaWdqb2luZXIpIHsKKwkJCWNvbnRpbnVlOworCQl9CisKKwkJcGxhbmVfc3RhdGUgPSBpbnRl
bF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKHN0YXRlLCBwbGFuZSk7CisJCWlmIChJU19FUlIocGxh
bmVfc3RhdGUpKQorCQkJcmV0dXJuIFBUUl9FUlIocGxhbmVfc3RhdGUpOworCisJCXBsYW5lX3N0
YXRlLT5iaWdqb2luZXJfcGxhbmUgPSBvdGhlcl9wbGFuZTsKKwkJcGxhbmVfc3RhdGUtPmJpZ2pv
aW5lcl9zbGF2ZSA9IG5ld19jcnRjX3N0YXRlLT5iaWdqb2luZXJfc2xhdmU7CisJfQorCiAJcmV0
dXJuIDA7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgKaW5kZXggNDRhMWMzMzFkNmI5Li41MDVkNmZkMTM3N2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC00NDQsOSArNDQ0LDE5IEBAIGVudW0g
cGh5X2ZpYSB7CiAJCSAgcGxhbmUsIHBsYW5lX3N0YXRlLCBcCiAJCSAgY3J0Y19zdGF0ZSkgXAog
CWZvcl9lYWNoX2ludGVsX3BsYW5lX21hc2soKChjcnRjX3N0YXRlKS0+dWFwaS5zdGF0ZS0+ZGV2
KSwgKHBsYW5lKSwgXAotCQkJCSgoY3J0Y19zdGF0ZSktPnVhcGkucGxhbmVfbWFzaykpIFwKLQkJ
Zm9yX2VhY2hfaWYgKChwbGFuZV9zdGF0ZSA9IFwKLQkJCSAgICAgIHRvX2ludGVsX3BsYW5lX3N0
YXRlKF9fZHJtX2F0b21pY19nZXRfY3VycmVudF9wbGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVh
cGkuc3RhdGUsICZwbGFuZS0+YmFzZSkpKSkKKwkJICAoKChjcnRjX3N0YXRlKS0+Ymlnam9pbmVy
X3NsYXZlID8gXAorCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZSggXAorCQkJCXRv
X2ludGVsX2F0b21pY19zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUpLCBcCisJCQkJKGNy
dGNfc3RhdGUpLT5iaWdqb2luZXJfbGlua2VkX2NydGMpIDogXAorCQkJCShjcnRjX3N0YXRlKSkt
PnVhcGkucGxhbmVfbWFzaykpIFwKKwkJZm9yX2VhY2hfaWYgKCgoKHBsYW5lX3N0YXRlKSA9IFwK
KwkJCSAgICAgIHRvX2ludGVsX3BsYW5lX3N0YXRlKF9fZHJtX2F0b21pY19nZXRfY3VycmVudF9w
bGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUsICZwbGFuZS0+YmFzZSkpKSwgXAor
CQkJICAgICAgKChwbGFuZSkgPSAocGxhbmVfc3RhdGUpLT5iaWdqb2luZXJfc2xhdmUgPyBcCisJ
CQkJCSAocGxhbmVfc3RhdGUpLT5iaWdqb2luZXJfcGxhbmUgOiBcCisJCQkJCSAocGxhbmUpKSwg
XAorCQkJICAgICAgKChwbGFuZV9zdGF0ZSkgPSAocGxhbmVfc3RhdGUpLT5iaWdqb2luZXJfc2xh
dmUgPyBcCisJCQkJdG9faW50ZWxfcGxhbmVfc3RhdGUoX19kcm1fYXRvbWljX2dldF9jdXJyZW50
X3BsYW5lX3N0YXRlKChjcnRjX3N0YXRlKS0+dWFwaS5zdGF0ZSwgJnBsYW5lLT5iYXNlKSkgOiBc
CisJCQkJICAocGxhbmVfc3RhdGUpKSkpCiAKIHZvaWQgaW50ZWxfbGlua19jb21wdXRlX21fbih1
MTYgYnBwLCBpbnQgbmxhbmVzLAogCQkJICAgIGludCBwaXhlbF9jbG9jaywgaW50IGxpbmtfY2xv
Y2ssCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCmluZGV4IDBhOWVhNDBmODVlMS4uMzI4NDlhZDE3NmM2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNTg4LDYg
KzU4OCwxNyBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgewogCSAqLwogCXN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmFyX2xpbmtlZF9wbGFuZTsKIAorCS8qCisJICogYmlnam9pbmVyX3BsYW5l
OgorCSAqCisJICogV2hlbiAyIHBpcGVzIGFyZSBqb2luZWQgaW4gYSBiaWdqb2luZXIgY29uZmln
dXJhdGlvbiwKKwkgKiBwb2ludHMgdG8gdGhlIHNhbWUgcGxhbmUgb24gdGhlIG90aGVyIHBpcGUu
CisJICoKKwkgKiBiaWdqb2luZXJfc2xhdmUgaXMgc2V0IG9uIHRoZSBzbGF2ZSBwaXBlLgorCSAq
LworCXN0cnVjdCBpbnRlbF9wbGFuZSAqYmlnam9pbmVyX3BsYW5lOworCXUzMiBiaWdqb2luZXJf
c2xhdmU7CisKIAkvKgogCSAqIHBsYW5hcl9zbGF2ZToKIAkgKiBJZiBzZXQgZG9uJ3QgdXBkYXRl
IHVzZSB0aGUgbGlua2VkIHBsYW5lJ3Mgc3RhdGUgZm9yIHVwZGF0aW5nCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
