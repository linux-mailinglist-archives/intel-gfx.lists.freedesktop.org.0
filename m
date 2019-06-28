Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDA25968C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 10:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01226E89E;
	Fri, 28 Jun 2019 08:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 890036E89B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 08:55:21 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 10:55:14 +0200
Message-Id: <20190628085517.31886-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
References: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915: Convert hw state verifier to
 take more intel state, v2.
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

TGlrZSB0aGUgcmVzdCBvZiB0aGUgaW50ZWwgYXRvbWljIGZ1bmN0aW9ucyB3ZSBzaG91bGQgcGFz
cyBhbG9uZwppbnRlbF9jcnRjX3N0YXRlLCBhbmQgZGVyZWZlcmVuY2UgZHJtX2NydGNfc3RhdGUg
b25seSB0aHJvdWdoCmludGVsX2NydGNfc3RhdGUtPmJhc2UKCldoaWxlIGF0IGl0LCByZW5hbWUg
b2xkL25ld19zdGF0ZSB0byBvbGQvbmV3X2NydGNfc3RhdGUuIChWaWxsZSkKClNpZ25lZC1vZmYt
Ynk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTYwICsrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3NyBpbnNlcnRpb25zKCsp
LCA4MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCmluZGV4IGY0MTFmNTdiY2FjYi4uNmJlMmZkNzE0ZTM3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjk3Nyw3ICs2OTc3LDcg
QEAgdm9pZCBpbnRlbF9lbmNvZGVyX2Rlc3Ryb3koc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVy
KQogCiAvKiBDcm9zcyBjaGVjayB0aGUgYWN0dWFsIGh3IHN0YXRlIHdpdGggb3VyIG93biBtb2Rl
c2V0IHN0YXRlIHRyYWNraW5nIChhbmQgaXQncwogICogaW50ZXJuYWwgY29uc2lzdGVuY3kpLiAq
Lwotc3RhdGljIHZvaWQgaW50ZWxfY29ubmVjdG9yX3ZlcmlmeV9zdGF0ZShzdHJ1Y3QgZHJtX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCitzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfdmVyaWZ5
X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCQkgc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtPmNvbm5lY3Rv
cik7CkBAIC02OTk1LDcgKzY5OTUsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfdmVy
aWZ5X3N0YXRlKHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJaWYgKCFjcnRj
X3N0YXRlKQogCQkJcmV0dXJuOwogCi0JCUk5MTVfU1RBVEVfV0FSTighY3J0Y19zdGF0ZS0+YWN0
aXZlLAorCQlJOTE1X1NUQVRFX1dBUk4oIWNydGNfc3RhdGUtPmJhc2UuYWN0aXZlLAogCQkgICAg
ICAiY29ubmVjdG9yIGlzIGFjdGl2ZSwgYnV0IGF0dGFjaGVkIGNydGMgaXNuJ3RcbiIpOwogCiAJ
CWlmICghZW5jb2RlciB8fCBlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9EUF9NU1QpCkBA
IC03MDA3LDcgKzcwMDcsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfdmVyaWZ5X3N0
YXRlKHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJSTkxNV9TVEFURV9XQVJO
KGNvbm5fc3RhdGUtPmNydGMgIT0gZW5jb2Rlci0+YmFzZS5jcnRjLAogCQkJImF0dGFjaGVkIGVu
Y29kZXIgY3J0YyBkaWZmZXJzIGZyb20gY29ubmVjdG9yIGNydGNcbiIpOwogCX0gZWxzZSB7Ci0J
CUk5MTVfU1RBVEVfV0FSTihjcnRjX3N0YXRlICYmIGNydGNfc3RhdGUtPmFjdGl2ZSwKKwkJSTkx
NV9TVEFURV9XQVJOKGNydGNfc3RhdGUgJiYgY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUsCiAJCQki
YXR0YWNoZWQgY3J0YyBpcyBhY3RpdmUsIGJ1dCBjb25uZWN0b3IgaXNuJ3RcbiIpOwogCQlJOTE1
X1NUQVRFX1dBUk4oIWNydGNfc3RhdGUgJiYgY29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVyLAogCQkJ
ImJlc3QgZW5jb2RlciBzZXQgd2l0aG91dCBjcnRjIVxuIik7CkBAIC0xMjY5NSwxMCArMTI2OTUs
MTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcGlwZV9jb25maWdfc2FuaXR5X2NoZWNrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIHZlcmlmeV93
bV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCi0JCQkgICAgc3RydWN0IGRybV9jcnRjX3N0
YXRlICpuZXdfc3RhdGUpCitzdGF0aWMgdm9pZCB2ZXJpZnlfd21fc3RhdGUoc3RydWN0IGludGVs
X2NydGMgKmNydGMsCisJCQkgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlKQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Yy0+ZGV2KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNy
dGMtPmJhc2UuZGV2KTsKIAlzdHJ1Y3Qgc2tsX2h3X3N0YXRlIHsKIAkJc3RydWN0IHNrbF9kZGJf
ZW50cnkgZGRiX3lbSTkxNV9NQVhfUExBTkVTXTsKIAkJc3RydWN0IHNrbF9kZGJfZW50cnkgZGRi
X3V2W0k5MTVfTUFYX1BMQU5FU107CkBAIC0xMjcwOCwyMSArMTI3MDgsMjAgQEAgc3RhdGljIHZv
aWQgdmVyaWZ5X3dtX3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAlzdHJ1Y3Qgc2tsX2Rk
Yl9hbGxvY2F0aW9uICpzd19kZGI7CiAJc3RydWN0IHNrbF9waXBlX3dtICpzd193bTsKIAlzdHJ1
Y3Qgc2tsX2RkYl9lbnRyeSAqaHdfZGRiX2VudHJ5LCAqc3dfZGRiX2VudHJ5OwotCXN0cnVjdCBp
bnRlbF9jcnRjICppbnRlbF9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKLQljb25zdCBlbnVt
IHBpcGUgcGlwZSA9IGludGVsX2NydGMtPnBpcGU7CisJY29uc3QgZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlOwogCWludCBwbGFuZSwgbGV2ZWwsIG1heF9sZXZlbCA9IGlsa193bV9tYXhfbGV2
ZWwoZGV2X3ByaXYpOwogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA5IHx8ICFuZXdfc3Rh
dGUtPmFjdGl2ZSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDkgfHwgIW5ld19jcnRjX3N0
YXRlLT5iYXNlLmFjdGl2ZSkKIAkJcmV0dXJuOwogCiAJaHcgPSBremFsbG9jKHNpemVvZigqaHcp
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWh3KQogCQlyZXR1cm47CiAKLQlza2xfcGlwZV93bV9nZXRf
aHdfc3RhdGUoaW50ZWxfY3J0YywgJmh3LT53bSk7Ci0Jc3dfd20gPSAmdG9faW50ZWxfY3J0Y19z
dGF0ZShuZXdfc3RhdGUpLT53bS5za2wub3B0aW1hbDsKKwlza2xfcGlwZV93bV9nZXRfaHdfc3Rh
dGUoY3J0YywgJmh3LT53bSk7CisJc3dfd20gPSAmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5vcHRp
bWFsOwogCi0Jc2tsX3BpcGVfZGRiX2dldF9od19zdGF0ZShpbnRlbF9jcnRjLCBody0+ZGRiX3ks
IGh3LT5kZGJfdXYpOworCXNrbF9waXBlX2RkYl9nZXRfaHdfc3RhdGUoY3J0YywgaHctPmRkYl95
LCBody0+ZGRiX3V2KTsKIAogCXNrbF9kZGJfZ2V0X2h3X3N0YXRlKGRldl9wcml2LCAmaHctPmRk
Yik7CiAJc3dfZGRiID0gJmRldl9wcml2LT53bS5za2xfaHcuZGRiOwpAQCAtMTI3NzAsNyArMTI3
NjksNyBAQCBzdGF0aWMgdm9pZCB2ZXJpZnlfd21fc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRj
LAogCiAJCS8qIEREQiAqLwogCQlod19kZGJfZW50cnkgPSAmaHctPmRkYl95W3BsYW5lXTsKLQkJ
c3dfZGRiX2VudHJ5ID0gJnRvX2ludGVsX2NydGNfc3RhdGUobmV3X3N0YXRlKS0+d20uc2tsLnBs
YW5lX2RkYl95W3BsYW5lXTsKKwkJc3dfZGRiX2VudHJ5ID0gJm5ld19jcnRjX3N0YXRlLT53bS5z
a2wucGxhbmVfZGRiX3lbcGxhbmVdOwogCiAJCWlmICghc2tsX2RkYl9lbnRyeV9lcXVhbChod19k
ZGJfZW50cnksIHN3X2RkYl9lbnRyeSkpIHsKIAkJCURSTV9FUlJPUigibWlzbWF0Y2ggaW4gRERC
IHN0YXRlIHBpcGUgJWMgcGxhbmUgJWQgKGV4cGVjdGVkICgldSwldSksIGZvdW5kICgldSwldSkp
XG4iLApAQCAtMTI4MjIsNyArMTI4MjEsNyBAQCBzdGF0aWMgdm9pZCB2ZXJpZnlfd21fc3RhdGUo
c3RydWN0IGRybV9jcnRjICpjcnRjLAogCiAJCS8qIEREQiAqLwogCQlod19kZGJfZW50cnkgPSAm
aHctPmRkYl95W1BMQU5FX0NVUlNPUl07Ci0JCXN3X2RkYl9lbnRyeSA9ICZ0b19pbnRlbF9jcnRj
X3N0YXRlKG5ld19zdGF0ZSktPndtLnNrbC5wbGFuZV9kZGJfeVtQTEFORV9DVVJTT1JdOworCQlz
d19kZGJfZW50cnkgPSAmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtQTEFORV9D
VVJTT1JdOwogCiAJCWlmICghc2tsX2RkYl9lbnRyeV9lcXVhbChod19kZGJfZW50cnksIHN3X2Rk
Yl9lbnRyeSkpIHsKIAkJCURSTV9FUlJPUigibWlzbWF0Y2ggaW4gRERCIHN0YXRlIHBpcGUgJWMg
Y3Vyc29yIChleHBlY3RlZCAoJXUsJXUpLCBmb3VuZCAoJXUsJXUpKVxuIiwKQEAgLTEyODM2LDIz
ICsxMjgzNSwyMiBAQCBzdGF0aWMgdm9pZCB2ZXJpZnlfd21fc3RhdGUoc3RydWN0IGRybV9jcnRj
ICpjcnRjLAogfQogCiBzdGF0aWMgdm9pZAotdmVyaWZ5X2Nvbm5lY3Rvcl9zdGF0ZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAotCQkgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRl
LAotCQkgICAgICAgc3RydWN0IGRybV9jcnRjICpjcnRjKQordmVyaWZ5X2Nvbm5lY3Rvcl9zdGF0
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJICAgICAgIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7CiAJc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19jb25uX3N0YXRlOwogCWludCBpOwogCi0JZm9y
X2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yLCBuZXdfY29ubl9z
dGF0ZSwgaSkgeworCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNl
LCBjb25uZWN0b3IsIG5ld19jb25uX3N0YXRlLCBpKSB7CiAJCXN0cnVjdCBkcm1fZW5jb2RlciAq
ZW5jb2RlciA9IGNvbm5lY3Rvci0+ZW5jb2RlcjsKLQkJc3RydWN0IGRybV9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlID0gTlVMTDsKKwkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUg
PSBOVUxMOwogCi0JCWlmIChuZXdfY29ubl9zdGF0ZS0+Y3J0YyAhPSBjcnRjKQorCQlpZiAobmV3
X2Nvbm5fc3RhdGUtPmNydGMgIT0gJmNydGMtPmJhc2UpCiAJCQljb250aW51ZTsKIAogCQlpZiAo
Y3J0YykKLQkJCWNydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0
ZSwgbmV3X2Nvbm5fc3RhdGUtPmNydGMpOworCQkJY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19n
ZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwogCiAJCWludGVsX2Nvbm5lY3Rvcl92ZXJp
Znlfc3RhdGUoY3J0Y19zdGF0ZSwgbmV3X2Nvbm5fc3RhdGUpOwogCkBAIC0xMjg2MiwxNCArMTI4
NjAsMTQgQEAgdmVyaWZ5X2Nvbm5lY3Rvcl9zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAog
fQogCiBzdGF0aWMgdm9pZAotdmVyaWZ5X2VuY29kZXJfc3RhdGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQordmVyaWZ5X2VuY29kZXJfc3Rh
dGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKIAlzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwogCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRl
ICpvbGRfY29ubl9zdGF0ZSwgKm5ld19jb25uX3N0YXRlOwogCWludCBpOwogCi0JZm9yX2VhY2hf
aW50ZWxfZW5jb2RlcihkZXYsIGVuY29kZXIpIHsKKwlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyKCZk
ZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7CiAJCWJvb2wgZW5hYmxlZCA9IGZhbHNlLCBmb3VuZCA9
IGZhbHNlOwogCQllbnVtIHBpcGUgcGlwZTsKIApAQCAtMTI4NzcsNyArMTI4NzUsNyBAQCB2ZXJp
ZnlfZW5jb2Rlcl9zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCiAJCQkgICAgICBlbmNvZGVyLT5iYXNlLmJhc2UuaWQsCiAJCQkgICAg
ICBlbmNvZGVyLT5iYXNlLm5hbWUpOwogCi0JCWZvcl9lYWNoX29sZG5ld19jb25uZWN0b3JfaW5f
c3RhdGUoc3RhdGUsIGNvbm5lY3Rvciwgb2xkX2Nvbm5fc3RhdGUsCisJCWZvcl9lYWNoX29sZG5l
d19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNlLCBjb25uZWN0b3IsIG9sZF9jb25uX3N0
YXRlLAogCQkJCQkJICAgbmV3X2Nvbm5fc3RhdGUsIGkpIHsKIAkJCWlmIChvbGRfY29ubl9zdGF0
ZS0+YmVzdF9lbmNvZGVyID09ICZlbmNvZGVyLT5iYXNlKQogCQkJCWZvdW5kID0gdHJ1ZTsKQEAg
LTEyOTExLDUwICsxMjkwOSw0OSBAQCB2ZXJpZnlfZW5jb2Rlcl9zdGF0ZShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB9CiAKIHN0YXRpYyB2
b2lkCi12ZXJpZnlfY3J0Y19zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCi0JCSAgc3RydWN0
IGRybV9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKLQkJICBzdHJ1Y3QgZHJtX2NydGNfc3Rh
dGUgKm5ld19jcnRjX3N0YXRlKQordmVyaWZ5X2NydGNfc3RhdGUoc3RydWN0IGludGVsX2NydGMg
KmNydGMsCisJCSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAorCQkg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIHsKLQlzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2ID0gY3J0Yy0+ZGV2OworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRj
LT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRldik7CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7Ci0Jc3RydWN0IGludGVsX2Ny
dGMgKmludGVsX2NydGMgPSB0b19pbnRlbF9jcnRjKGNydGMpOwotCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZywgKnN3X2NvbmZpZzsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqcGlwZV9jb25maWc7CiAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlOwogCWJvb2wg
YWN0aXZlOwogCi0Jc3RhdGUgPSBvbGRfY3J0Y19zdGF0ZS0+c3RhdGU7Ci0JX19kcm1fYXRvbWlj
X2hlbHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUob2xkX2NydGNfc3RhdGUpOwotCXBpcGVfY29uZmln
ID0gdG9faW50ZWxfY3J0Y19zdGF0ZShvbGRfY3J0Y19zdGF0ZSk7CisJc3RhdGUgPSBvbGRfY3J0
Y19zdGF0ZS0+YmFzZS5zdGF0ZTsKKwlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfZGVzdHJveV9z
dGF0ZSgmb2xkX2NydGNfc3RhdGUtPmJhc2UpOworCXBpcGVfY29uZmlnID0gb2xkX2NydGNfc3Rh
dGU7CiAJbWVtc2V0KHBpcGVfY29uZmlnLCAwLCBzaXplb2YoKnBpcGVfY29uZmlnKSk7Ci0JcGlw
ZV9jb25maWctPmJhc2UuY3J0YyA9IGNydGM7CisJcGlwZV9jb25maWctPmJhc2UuY3J0YyA9ICZj
cnRjLT5iYXNlOwogCXBpcGVfY29uZmlnLT5iYXNlLnN0YXRlID0gc3RhdGU7CiAKLQlEUk1fREVC
VUdfS01TKCJbQ1JUQzolZDolc11cbiIsIGNydGMtPmJhc2UuaWQsIGNydGMtPm5hbWUpOworCURS
TV9ERUJVR19LTVMoIltDUlRDOiVkOiVzXVxuIiwgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5i
YXNlLm5hbWUpOwogCi0JYWN0aXZlID0gZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X3BpcGVfY29uZmln
KGludGVsX2NydGMsIHBpcGVfY29uZmlnKTsKKwlhY3RpdmUgPSBkZXZfcHJpdi0+ZGlzcGxheS5n
ZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9jb25maWcpOwogCiAJLyogd2Uga2VlcCBib3RoIHBp
cGVzIGVuYWJsZWQgb24gODMwICovCiAJaWYgKElTX0k4MzAoZGV2X3ByaXYpKQotCQlhY3RpdmUg
PSBuZXdfY3J0Y19zdGF0ZS0+YWN0aXZlOworCQlhY3RpdmUgPSBuZXdfY3J0Y19zdGF0ZS0+YmFz
ZS5hY3RpdmU7CiAKLQlJOTE1X1NUQVRFX1dBUk4obmV3X2NydGNfc3RhdGUtPmFjdGl2ZSAhPSBh
Y3RpdmUsCisJSTkxNV9TVEFURV9XQVJOKG5ld19jcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSAhPSBh
Y3RpdmUsCiAJICAgICAiY3J0YyBhY3RpdmUgc3RhdGUgZG9lc24ndCBtYXRjaCB3aXRoIGh3IHN0
YXRlICIKLQkgICAgICIoZXhwZWN0ZWQgJWksIGZvdW5kICVpKVxuIiwgbmV3X2NydGNfc3RhdGUt
PmFjdGl2ZSwgYWN0aXZlKTsKKwkgICAgICIoZXhwZWN0ZWQgJWksIGZvdW5kICVpKVxuIiwgbmV3
X2NydGNfc3RhdGUtPmJhc2UuYWN0aXZlLCBhY3RpdmUpOwogCi0JSTkxNV9TVEFURV9XQVJOKGlu
dGVsX2NydGMtPmFjdGl2ZSAhPSBuZXdfY3J0Y19zdGF0ZS0+YWN0aXZlLAorCUk5MTVfU1RBVEVf
V0FSTihjcnRjLT5hY3RpdmUgIT0gbmV3X2NydGNfc3RhdGUtPmJhc2UuYWN0aXZlLAogCSAgICAg
InRyYW5zaXRpb25hbCBhY3RpdmUgc3RhdGUgZG9lcyBub3QgbWF0Y2ggYXRvbWljIGh3IHN0YXRl
ICIKLQkgICAgICIoZXhwZWN0ZWQgJWksIGZvdW5kICVpKVxuIiwgbmV3X2NydGNfc3RhdGUtPmFj
dGl2ZSwgaW50ZWxfY3J0Yy0+YWN0aXZlKTsKKwkgICAgICIoZXhwZWN0ZWQgJWksIGZvdW5kICVp
KVxuIiwgbmV3X2NydGNfc3RhdGUtPmJhc2UuYWN0aXZlLCBjcnRjLT5hY3RpdmUpOwogCi0JZm9y
X2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGRldiwgY3J0YywgZW5jb2RlcikgeworCWZvcl9lYWNoX2Vu
Y29kZXJfb25fY3J0YyhkZXYsICZjcnRjLT5iYXNlLCBlbmNvZGVyKSB7CiAJCWVudW0gcGlwZSBw
aXBlOwogCiAJCWFjdGl2ZSA9IGVuY29kZXItPmdldF9od19zdGF0ZShlbmNvZGVyLCAmcGlwZSk7
Ci0JCUk5MTVfU1RBVEVfV0FSTihhY3RpdmUgIT0gbmV3X2NydGNfc3RhdGUtPmFjdGl2ZSwKKwkJ
STkxNV9TVEFURV9XQVJOKGFjdGl2ZSAhPSBuZXdfY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUsCiAJ
CQkiW0VOQ09ERVI6JWldIGFjdGl2ZSAlaSB3aXRoIGNydGMgYWN0aXZlICVpXG4iLAotCQkJZW5j
b2Rlci0+YmFzZS5iYXNlLmlkLCBhY3RpdmUsIG5ld19jcnRjX3N0YXRlLT5hY3RpdmUpOworCQkJ
ZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBhY3RpdmUsIG5ld19jcnRjX3N0YXRlLT5iYXNlLmFjdGl2
ZSk7CiAKLQkJSTkxNV9TVEFURV9XQVJOKGFjdGl2ZSAmJiBpbnRlbF9jcnRjLT5waXBlICE9IHBp
cGUsCisJCUk5MTVfU1RBVEVfV0FSTihhY3RpdmUgJiYgY3J0Yy0+cGlwZSAhPSBwaXBlLAogCQkJ
CSJFbmNvZGVyIGNvbm5lY3RlZCB0byB3cm9uZyBwaXBlICVjXG4iLAogCQkJCXBpcGVfbmFtZShw
aXBlKSk7CiAKQEAgLTEyOTY0LDE2ICsxMjk2MSwxNiBAQCB2ZXJpZnlfY3J0Y19zdGF0ZShzdHJ1
Y3QgZHJtX2NydGMgKmNydGMsCiAKIAlpbnRlbF9jcnRjX2NvbXB1dGVfcGl4ZWxfcmF0ZShwaXBl
X2NvbmZpZyk7CiAKLQlpZiAoIW5ld19jcnRjX3N0YXRlLT5hY3RpdmUpCisJaWYgKCFuZXdfY3J0
Y19zdGF0ZS0+YmFzZS5hY3RpdmUpCiAJCXJldHVybjsKIAogCWludGVsX3BpcGVfY29uZmlnX3Nh
bml0eV9jaGVjayhkZXZfcHJpdiwgcGlwZV9jb25maWcpOwogCi0Jc3dfY29uZmlnID0gdG9faW50
ZWxfY3J0Y19zdGF0ZShuZXdfY3J0Y19zdGF0ZSk7Ci0JaWYgKCFpbnRlbF9waXBlX2NvbmZpZ19j
b21wYXJlKHN3X2NvbmZpZywgcGlwZV9jb25maWcsIGZhbHNlKSkgeworCWlmICghaW50ZWxfcGlw
ZV9jb25maWdfY29tcGFyZShuZXdfY3J0Y19zdGF0ZSwKKwkJCQkgICAgICAgcGlwZV9jb25maWcs
IGZhbHNlKSkgewogCQlJOTE1X1NUQVRFX1dBUk4oMSwgInBpcGUgc3RhdGUgZG9lc24ndCBtYXRj
aCFcbiIpOwogCQlpbnRlbF9kdW1wX3BpcGVfY29uZmlnKHBpcGVfY29uZmlnLCBOVUxMLCAiW2h3
IHN0YXRlXSIpOwotCQlpbnRlbF9kdW1wX3BpcGVfY29uZmlnKHN3X2NvbmZpZywgTlVMTCwgIltz
dyBzdGF0ZV0iKTsKKwkJaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhuZXdfY3J0Y19zdGF0ZSwgTlVM
TCwgIltzdyBzdGF0ZV0iKTsKIAl9CiB9CiAKQEAgLTEyOTkzLDggKzEyOTkwLDggQEAgaW50ZWxf
dmVyaWZ5X3BsYW5lcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHN0YXRpYyB2
b2lkCiB2ZXJpZnlfc2luZ2xlX2RwbGxfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQkJIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsLAotCQkJIHN0cnVjdCBk
cm1fY3J0YyAqY3J0YywKLQkJCSBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKm5ld19zdGF0ZSkKKwkJ
CSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
bmV3X2NydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2RwbGxfaHdfc3RhdGUgZHBsbF9od19z
dGF0ZTsKIAl1bnNpZ25lZCBpbnQgY3J0Y19tYXNrOwpAQCAtMTMwMjQsMTYgKzEzMDIxLDE2IEBA
IHZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJCXJldHVybjsKIAl9CiAKLQljcnRjX21hc2sgPSBkcm1fY3J0Y19tYXNrKGNydGMpOwor
CWNydGNfbWFzayA9IGRybV9jcnRjX21hc2soJmNydGMtPmJhc2UpOwogCi0JaWYgKG5ld19zdGF0
ZS0+YWN0aXZlKQorCWlmIChuZXdfY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpCiAJCUk5MTVfU1RB
VEVfV0FSTighKHBsbC0+YWN0aXZlX21hc2sgJiBjcnRjX21hc2spLAogCQkJCSJwbGwgYWN0aXZl
IG1pc21hdGNoIChleHBlY3RlZCBwaXBlICVjIGluIGFjdGl2ZSBtYXNrIDB4JTAyeClcbiIsCi0J
CQkJcGlwZV9uYW1lKGRybV9jcnRjX2luZGV4KGNydGMpKSwgcGxsLT5hY3RpdmVfbWFzayk7CisJ
CQkJcGlwZV9uYW1lKGRybV9jcnRjX2luZGV4KCZjcnRjLT5iYXNlKSksIHBsbC0+YWN0aXZlX21h
c2spOwogCWVsc2UKIAkJSTkxNV9TVEFURV9XQVJOKHBsbC0+YWN0aXZlX21hc2sgJiBjcnRjX21h
c2ssCiAJCQkJInBsbCBhY3RpdmUgbWlzbWF0Y2ggKGRpZG4ndCBleHBlY3QgcGlwZSAlYyBpbiBh
Y3RpdmUgbWFzayAweCUwMngpXG4iLAotCQkJCXBpcGVfbmFtZShkcm1fY3J0Y19pbmRleChjcnRj
KSksIHBsbC0+YWN0aXZlX21hc2spOworCQkJCXBpcGVfbmFtZShkcm1fY3J0Y19pbmRleCgmY3J0
Yy0+YmFzZSkpLCBwbGwtPmFjdGl2ZV9tYXNrKTsKIAogCUk5MTVfU1RBVEVfV0FSTighKHBsbC0+
c3RhdGUuY3J0Y19tYXNrICYgY3J0Y19tYXNrKSwKIAkJCSJwbGwgZW5hYmxlZCBjcnRjcyBtaXNt
YXRjaCAoZXhwZWN0ZWQgMHgleCBpbiAweCUwMngpXG4iLApAQCAtMTMwNDYsNTAgKzEzMDQzLDQ3
IEBAIHZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiB9CiAKIHN0YXRpYyB2b2lkCi12ZXJpZnlfc2hhcmVkX2RwbGxfc3RhdGUoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9jcnRjICpjcnRjLAotCQkJIHN0cnVjdCBkcm1f
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCi0JCQkgc3RydWN0IGRybV9jcnRjX3N0YXRlICpu
ZXdfY3J0Y19zdGF0ZSkKK3ZlcmlmeV9zaGFyZWRfZHBsbF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKKwkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCisJ
CQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQogewotCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKLQlzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShvbGRfY3J0Y19zdGF0
ZSk7Ci0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19zdGF0ZSA9IHRvX2ludGVsX2NydGNf
c3RhdGUobmV3X2NydGNfc3RhdGUpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCi0JaWYgKG5ld19zdGF0ZS0+c2hhcmVkX2Rw
bGwpCi0JCXZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0ZShkZXZfcHJpdiwgbmV3X3N0YXRlLT5zaGFy
ZWRfZHBsbCwgY3J0YywgbmV3X2NydGNfc3RhdGUpOworCWlmIChuZXdfY3J0Y19zdGF0ZS0+c2hh
cmVkX2RwbGwpCisJCXZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0ZShkZXZfcHJpdiwgbmV3X2NydGNf
c3RhdGUtPnNoYXJlZF9kcGxsLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSk7CiAKLQlpZiAob2xkX3N0
YXRlLT5zaGFyZWRfZHBsbCAmJgotCSAgICBvbGRfc3RhdGUtPnNoYXJlZF9kcGxsICE9IG5ld19z
dGF0ZS0+c2hhcmVkX2RwbGwpIHsKLQkJdW5zaWduZWQgaW50IGNydGNfbWFzayA9IGRybV9jcnRj
X21hc2soY3J0Yyk7Ci0JCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsID0gb2xkX3N0YXRl
LT5zaGFyZWRfZHBsbDsKKwlpZiAob2xkX2NydGNfc3RhdGUtPnNoYXJlZF9kcGxsICYmCisJICAg
IG9sZF9jcnRjX3N0YXRlLT5zaGFyZWRfZHBsbCAhPSBuZXdfY3J0Y19zdGF0ZS0+c2hhcmVkX2Rw
bGwpIHsKKwkJdW5zaWduZWQgaW50IGNydGNfbWFzayA9IGRybV9jcnRjX21hc2soJmNydGMtPmJh
c2UpOworCQlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9IG9sZF9jcnRjX3N0YXRlLT5z
aGFyZWRfZHBsbDsKIAogCQlJOTE1X1NUQVRFX1dBUk4ocGxsLT5hY3RpdmVfbWFzayAmIGNydGNf
bWFzaywKIAkJCQkicGxsIGFjdGl2ZSBtaXNtYXRjaCAoZGlkbid0IGV4cGVjdCBwaXBlICVjIGlu
IGFjdGl2ZSBtYXNrKVxuIiwKLQkJCQlwaXBlX25hbWUoZHJtX2NydGNfaW5kZXgoY3J0YykpKTsK
KwkJCQlwaXBlX25hbWUoZHJtX2NydGNfaW5kZXgoJmNydGMtPmJhc2UpKSk7CiAJCUk5MTVfU1RB
VEVfV0FSTihwbGwtPnN0YXRlLmNydGNfbWFzayAmIGNydGNfbWFzaywKIAkJCQkicGxsIGVuYWJs
ZWQgY3J0Y3MgbWlzbWF0Y2ggKGZvdW5kICV4IGluIGVuYWJsZWQgbWFzaylcbiIsCi0JCQkJcGlw
ZV9uYW1lKGRybV9jcnRjX2luZGV4KGNydGMpKSk7CisJCQkJcGlwZV9uYW1lKGRybV9jcnRjX2lu
ZGV4KCZjcnRjLT5iYXNlKSkpOwogCX0KIH0KIAogc3RhdGljIHZvaWQKIGludGVsX21vZGVzZXRf
dmVyaWZ5X2NydGMoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkgIHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAotCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX3N0
YXRlLAotCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X3N0YXRlKQorCQkJICBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCisJCQkgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIHsKLQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X3N0
YXRlKSAmJiAhbmV3X3N0YXRlLT51cGRhdGVfcGlwZSkKKwlpZiAoIW5lZWRzX21vZGVzZXQobmV3
X2NydGNfc3RhdGUpICYmICFuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUpCiAJCXJldHVybjsK
IAotCXZlcmlmeV93bV9zdGF0ZSgmY3J0Yy0+YmFzZSwgJm5ld19zdGF0ZS0+YmFzZSk7Ci0JdmVy
aWZ5X2Nvbm5lY3Rvcl9zdGF0ZShjcnRjLT5iYXNlLmRldiwgJnN0YXRlLT5iYXNlLCAmY3J0Yy0+
YmFzZSk7Ci0JdmVyaWZ5X2NydGNfc3RhdGUoJmNydGMtPmJhc2UsICZvbGRfc3RhdGUtPmJhc2Us
ICZuZXdfc3RhdGUtPmJhc2UpOwotCXZlcmlmeV9zaGFyZWRfZHBsbF9zdGF0ZShjcnRjLT5iYXNl
LmRldiwgJmNydGMtPmJhc2UsICZvbGRfc3RhdGUtPmJhc2UsICZuZXdfc3RhdGUtPmJhc2UpOwor
CXZlcmlmeV93bV9zdGF0ZShjcnRjLCBuZXdfY3J0Y19zdGF0ZSk7CisJdmVyaWZ5X2Nvbm5lY3Rv
cl9zdGF0ZShzdGF0ZSwgY3J0Yyk7CisJdmVyaWZ5X2NydGNfc3RhdGUoY3J0Yywgb2xkX2NydGNf
c3RhdGUsIG5ld19jcnRjX3N0YXRlKTsKKwl2ZXJpZnlfc2hhcmVkX2RwbGxfc3RhdGUoY3J0Yywg
b2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsKIH0KIAogc3RhdGljIHZvaWQKLXZlcmlm
eV9kaXNhYmxlZF9kcGxsX3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCit2ZXJpZnlfZGlz
YWJsZWRfZHBsbF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwogCWludCBp
OwogCiAJZm9yIChpID0gMDsgaSA8IGRldl9wcml2LT5udW1fc2hhcmVkX2RwbGw7IGkrKykKQEAg
LTEzMDk3LDEyICsxMzA5MSwxMiBAQCB2ZXJpZnlfZGlzYWJsZWRfZHBsbF9zdGF0ZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2KQogfQogCiBzdGF0aWMgdm9pZAotaW50ZWxfbW9kZXNldF92ZXJpZnlf
ZGlzYWJsZWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKK2ludGVsX21vZGVzZXRfdmVyaWZ5X2Rp
c2FibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgIHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewotCXZlcmlmeV9lbmNvZGVyX3N0YXRlKGRl
diwgJnN0YXRlLT5iYXNlKTsKLQl2ZXJpZnlfY29ubmVjdG9yX3N0YXRlKGRldiwgJnN0YXRlLT5i
YXNlLCBOVUxMKTsKLQl2ZXJpZnlfZGlzYWJsZWRfZHBsbF9zdGF0ZShkZXYpOworCXZlcmlmeV9l
bmNvZGVyX3N0YXRlKGRldl9wcml2LCBzdGF0ZSk7CisJdmVyaWZ5X2Nvbm5lY3Rvcl9zdGF0ZShz
dGF0ZSwgTlVMTCk7CisJdmVyaWZ5X2Rpc2FibGVkX2RwbGxfc3RhdGUoZGV2X3ByaXYpOwogfQog
CiBzdGF0aWMgdm9pZCB1cGRhdGVfc2NhbmxpbmVfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQpAQCAtMTM4MjMsNyArMTM4MTcsNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCiAJCWlmICghaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRlKSkKIAkJCWludGVsX2Rpc2Fi
bGVfc2FndihkZXZfcHJpdik7CiAKLQkJaW50ZWxfbW9kZXNldF92ZXJpZnlfZGlzYWJsZWQoZGV2
LCBzdGF0ZSk7CisJCWludGVsX21vZGVzZXRfdmVyaWZ5X2Rpc2FibGVkKGRldl9wcml2LCBzdGF0
ZSk7CiAJfQogCiAJLyogQ29tcGxldGUgdGhlIGV2ZW50cyBmb3IgcGlwZXMgdGhhdCBoYXZlIG5v
dyBiZWVuIGRpc2FibGVkICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
