Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC50DCB932
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6DA16EB39;
	Fri,  4 Oct 2019 11:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2066EB36
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:22 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:34:56 +0200
Message-Id: <20191004113514.17064-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/24] drm/i915: Remove begin/finish_crtc_commit, v4.
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

VGhpcyBjYW4gYWxsIGJlIGRvbmUgZnJvbSB0aGUgaW50ZWxfdXBkYXRlX2NydGMgZnVuY3Rpb24u
IFNwbGl0IG91dCB0aGUKcGlwZSB1cGRhdGUgaW50byBhIHNlcGFyYXRlIGZ1bmN0aW9uLCBqdXN0
IGxpa2UgaXMgZG9uZSBmb3IgdGhlIHBsYW5lcy4KUHVsbCBpbiBhbGwgdGhlIGNoYW5nZXMgZG9u
ZSBkdXJpbmcgZmFzdHNldCBhcyB3ZWxsLiBJdCBtYWtlcyBubyBzZW5zZQpmb3IgaXQgdG8gc3Rp
bGwgZXhpc3QgYXMgYSBzZXBhcmF0ZSBmdW5jdGlvbi4KCkNoYW5nZXMgc2luY2UgdjE6Ci0gSW5s
aW5lIGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZygpCkNoYW5nZXMgc2luY2UgdjI6Ci0gQWRkIGNv
bW1lbnRzIHN1Z2dlc3RlZCBieSBtYXR0LgotIFJlb3JkZXIgY29tbWl0X3BpcGVfY29uZmlnKCkg
dG8gcmVtb3ZlIGFsbCBuZXN0aW5nLiAoVmlsbGUsIE1hdHQpCi0gVXNlIGludGVsX3NldF9waXBl
X3NyY19zaXplKCgpLiAoTWF0dCkKQ2hhbmdlcyBzaW5jZSB2MzoKLSBNb3ZlIGF0b21pY191cGRh
dGVfd2F0ZXJtYXJrcyBjbG9zZXIgdG8gdGhlIHBsYW5lIGNhbGxzLgoKU2lnbmVkLW9mZi1ieTog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIxMCArKysr
KysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOTkgaW5zZXJ0aW9ucygrKSwgMTExIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggYjVlZDA5N2Q2YTU5Li5lY2IxNTQyMGI1Y2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzUsOCArMTM1LDYgQEAgc3RhdGlj
IHZvaWQgdmx2X3ByZXBhcmVfcGxsKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZyk7CiBzdGF0aWMgdm9pZCBj
aHZfcHJlcGFyZV9wbGwoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkgICAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsKLXN0YXRpYyB2b2lkIGludGVsX2Jl
Z2luX2NydGNfY29tbWl0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKiwgc3RydWN0IGludGVs
X2NydGMgKik7Ci1zdGF0aWMgdm9pZCBpbnRlbF9maW5pc2hfY3J0Y19jb21taXQoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqKTsKIHN0YXRpYyB2b2lkIGlu
dGVsX2NydGNfaW5pdF9zY2FsZXJzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJCSAgICBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiBzdGF0aWMgdm9pZCBza3lsYWtl
X3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsK
QEAgLTQ0MDgsNDUgKzQ0MDYsNiBAQCBzdGF0aWMgdm9pZCBpY2xfc2V0X3BpcGVfY2hpY2tlbihz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlJOTE1X1dSSVRFKFBJUEVfQ0hJQ0tFTihwaXBlKSwg
dG1wKTsKIH0KIAotc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKLQkJCQkgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKLXsKLQlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Ci0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7Ci0KLQkvKiBkcm1fYXRvbWljX2hlbHBlcl91cGRhdGVfbGVnYWN5X21vZGVzZXRfc3RhdGUg
bWlnaHQgbm90IGJlIGNhbGxlZC4gKi8KLQljcnRjLT5iYXNlLm1vZGUgPSBuZXdfY3J0Y19zdGF0
ZS0+YmFzZS5tb2RlOwotCi0JLyoKLQkgKiBVcGRhdGUgcGlwZSBzaXplIGFuZCBhZGp1c3QgZml0
dGVyIGlmIG5lZWRlZDogdGhlIHJlYXNvbiBmb3IgdGhpcyBpcwotCSAqIHRoYXQgaW4gY29tcHV0
ZV9tb2RlX2NoYW5nZXMgd2UgY2hlY2sgdGhlIG5hdGl2ZSBtb2RlIChub3QgdGhlIHBmaXQKLQkg
KiBtb2RlKSB0byBzZWUgaWYgd2UgY2FuIGZsaXAgcmF0aGVyIHRoYW4gZG8gYSBmdWxsIG1vZGUg
c2V0LiBJbiB0aGUKLQkgKiBmYXN0Ym9vdCBjYXNlLCB3ZSdsbCBmbGlwLCBidXQgaWYgd2UgZG9u
J3QgdXBkYXRlIHRoZSBwaXBlc3JjIGFuZAotCSAqIHBmaXQgc3RhdGUsIHdlJ2xsIGVuZCB1cCB3
aXRoIGEgYmlnIGZiIHNjYW5uZWQgb3V0IGludG8gdGhlIHdyb25nCi0JICogc2l6ZWQgc3VyZmFj
ZS4KLQkgKi8KLQotCUk5MTVfV1JJVEUoUElQRVNSQyhjcnRjLT5waXBlKSwKLQkJICAgKChuZXdf
Y3J0Y19zdGF0ZS0+cGlwZV9zcmNfdyAtIDEpIDw8IDE2KSB8Ci0JCSAgIChuZXdfY3J0Y19zdGF0
ZS0+cGlwZV9zcmNfaCAtIDEpKTsKLQotCS8qIG9uIHNreWxha2UgdGhpcyBpcyBkb25lIGJ5IGRl
dGFjaGluZyBzY2FsZXJzICovCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkgewotCQlz
a2xfZGV0YWNoX3NjYWxlcnMobmV3X2NydGNfc3RhdGUpOwotCi0JCWlmIChuZXdfY3J0Y19zdGF0
ZS0+cGNoX3BmaXQuZW5hYmxlZCkKLQkJCXNreWxha2VfcGZpdF9lbmFibGUobmV3X2NydGNfc3Rh
dGUpOwotCX0gZWxzZSBpZiAoSEFTX1BDSF9TUExJVChkZXZfcHJpdikpIHsKLQkJaWYgKG5ld19j
cnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQotCQkJaXJvbmxha2VfcGZpdF9lbmFibGUobmV3
X2NydGNfc3RhdGUpOwotCQllbHNlIGlmIChvbGRfY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxl
ZCkKLQkJCWlyb25sYWtlX3BmaXRfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7Ci0JfQotCi0JaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCi0JCWljbF9zZXRfcGlwZV9jaGlja2VuKGNydGMp
OwotfQotCiBzdGF0aWMgdm9pZCBpbnRlbF9mZGlfbm9ybWFsX3RyYWluKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsK
QEAgLTEzNzE1LDEzICsxMzY3NCw5NSBAQCB1MzIgaW50ZWxfY3J0Y19nZXRfdmJsYW5rX2NvdW50
ZXIoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJcmV0dXJuIGNydGMtPmJhc2UuZnVuY3MtPmdl
dF92YmxhbmtfY291bnRlcigmY3J0Yy0+YmFzZSk7CiB9CiAKK3ZvaWQgaW50ZWxfY3J0Y19hcm1f
Zmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCQkgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCisJaWYgKCFJU19HRU4oZGV2X3By
aXYsIDIpKQorCQlpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2
LCBjcnRjLT5waXBlLCB0cnVlKTsKKworCWlmIChjcnRjX3N0YXRlLT5oYXNfcGNoX2VuY29kZXIp
IHsKKwkJZW51bSBwaXBlIHBjaF90cmFuc2NvZGVyID0KKwkJCWludGVsX2NydGNfcGNoX3RyYW5z
Y29kZXIoY3J0Yyk7CisKKwkJaW50ZWxfc2V0X3BjaF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhk
ZXZfcHJpdiwgcGNoX3RyYW5zY29kZXIsIHRydWUpOworCX0KK30KKworc3RhdGljIHZvaWQgaW50
ZWxfcGlwZV9mYXN0c2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19z
dGF0ZSwKKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNf
c3RhdGUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG5ld19j
cnRjX3N0YXRlLT5iYXNlLmNydGMpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCisJLyogZHJtX2F0b21pY19oZWxwZXJfdXBk
YXRlX2xlZ2FjeV9tb2Rlc2V0X3N0YXRlIG1pZ2h0IG5vdCBiZSBjYWxsZWQuICovCisJY3J0Yy0+
YmFzZS5tb2RlID0gbmV3X2NydGNfc3RhdGUtPmJhc2UubW9kZTsKKworCS8qCisJICogVXBkYXRl
IHBpcGUgc2l6ZSBhbmQgYWRqdXN0IGZpdHRlciBpZiBuZWVkZWQ6IHRoZSByZWFzb24gZm9yIHRo
aXMgaXMKKwkgKiB0aGF0IGluIGNvbXB1dGVfbW9kZV9jaGFuZ2VzIHdlIGNoZWNrIHRoZSBuYXRp
dmUgbW9kZSAobm90IHRoZSBwZml0CisJICogbW9kZSkgdG8gc2VlIGlmIHdlIGNhbiBmbGlwIHJh
dGhlciB0aGFuIGRvIGEgZnVsbCBtb2RlIHNldC4gSW4gdGhlCisJICogZmFzdGJvb3QgY2FzZSwg
d2UnbGwgZmxpcCwgYnV0IGlmIHdlIGRvbid0IHVwZGF0ZSB0aGUgcGlwZXNyYyBhbmQKKwkgKiBw
Zml0IHN0YXRlLCB3ZSdsbCBlbmQgdXAgd2l0aCBhIGJpZyBmYiBzY2FubmVkIG91dCBpbnRvIHRo
ZSB3cm9uZworCSAqIHNpemVkIHN1cmZhY2UuCisJICovCisJaW50ZWxfc2V0X3BpcGVfc3JjX3Np
emUobmV3X2NydGNfc3RhdGUpOworCisJLyogb24gc2t5bGFrZSB0aGlzIGlzIGRvbmUgYnkgZGV0
YWNoaW5nIHNjYWxlcnMgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KSB7CisJCXNr
bF9kZXRhY2hfc2NhbGVycyhuZXdfY3J0Y19zdGF0ZSk7CisKKwkJaWYgKG5ld19jcnRjX3N0YXRl
LT5wY2hfcGZpdC5lbmFibGVkKQorCQkJc2t5bGFrZV9wZml0X2VuYWJsZShuZXdfY3J0Y19zdGF0
ZSk7CisJfSBlbHNlIGlmIChIQVNfUENIX1NQTElUKGRldl9wcml2KSkgeworCQlpZiAobmV3X2Ny
dGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpCisJCQlpcm9ubGFrZV9wZml0X2VuYWJsZShuZXdf
Y3J0Y19zdGF0ZSk7CisJCWVsc2UgaWYgKG9sZF9jcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVk
KQorCQkJaXJvbmxha2VfcGZpdF9kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsKKwl9CisKKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwkJaWNsX3NldF9waXBlX2NoaWNrZW4oY3J0Yyk7
Cit9CisKK3N0YXRpYyB2b2lkIGNvbW1pdF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwKKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2Ny
dGNfc3RhdGUsCisJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3Rh
dGUtPmJhc2UuZGV2KTsKKwlib29sIG1vZGVzZXQgPSBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0
YXRlKTsKKworCS8qCisJICogRHVyaW5nIG1vZGVzZXRzIHBpcGUgY29uZmlndXJhdGlvbiB3YXMg
cHJvZ3JhbW1lZCBhcyB0aGUKKwkgKiBDUlRDIHdhcyBlbmFibGVkLgorCSAqLworCWlmICghbW9k
ZXNldCkgeworCQlpZiAobmV3X2NydGNfc3RhdGUtPmJhc2UuY29sb3JfbWdtdF9jaGFuZ2VkIHx8
CisJCSAgICBuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUpCisJCQlpbnRlbF9jb2xvcl9jb21t
aXQobmV3X2NydGNfc3RhdGUpOworCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCisJ
CQlza2xfZGV0YWNoX3NjYWxlcnMobmV3X2NydGNfc3RhdGUpOworCisJCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDkgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkKKwkJCWJkd19zZXRfcGlw
ZW1pc2MobmV3X2NydGNfc3RhdGUpOworCisJCWlmIChuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3Bp
cGUpCisJCQlpbnRlbF9waXBlX2Zhc3RzZXQob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRl
KTsKKwl9CisKKwlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuYXRvbWljX3VwZGF0ZV93YXRlcm1hcmtz
KQorCQlkZXZfcHJpdi0+ZGlzcGxheS5hdG9taWNfdXBkYXRlX3dhdGVybWFya3Moc3RhdGUsCisJ
CQkJCQkJICAgbmV3X2NydGNfc3RhdGUpOworfQorCiBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVf
Y3J0YyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCSAgICAgIHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLAogCQkJICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9j
cnRjX3N0YXRlLAogCQkJICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlKQogewotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7Ci0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKIAli
b29sIG1vZGVzZXQgPSBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsKIAlzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSA9CiAJCWludGVsX2F0b21pY19nZXRfbmV3
X3BsYW5lX3N0YXRlKHN0YXRlLApAQCAtMTM3NDUsMTQgKzEzNzg2LDI3IEBAIHN0YXRpYyB2b2lk
IGludGVsX3VwZGF0ZV9jcnRjKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWVsc2UgaWYgKG5l
d19wbGFuZV9zdGF0ZSkKIAkJaW50ZWxfZmJjX2VuYWJsZShjcnRjLCBuZXdfY3J0Y19zdGF0ZSwg
bmV3X3BsYW5lX3N0YXRlKTsKIAotCWludGVsX2JlZ2luX2NydGNfY29tbWl0KHN0YXRlLCBjcnRj
KTsKKwkvKiBQZXJmb3JtIHZibGFuayBldmFzaW9uIGFyb3VuZCBjb21taXQgb3BlcmF0aW9uICov
CisJaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQobmV3X2NydGNfc3RhdGUpOworCisJY29tbWl0X3Bp
cGVfY29uZmlnKHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpOwogCiAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkKIAkJc2tsX3VwZGF0ZV9wbGFuZXNfb25fY3J0Yyhz
dGF0ZSwgY3J0Yyk7CiAJZWxzZQogCQlpOXh4X3VwZGF0ZV9wbGFuZXNfb25fY3J0YyhzdGF0ZSwg
Y3J0Yyk7CiAKLQlpbnRlbF9maW5pc2hfY3J0Y19jb21taXQoc3RhdGUsIGNydGMpOworCWludGVs
X3BpcGVfdXBkYXRlX2VuZChuZXdfY3J0Y19zdGF0ZSk7CisKKyAgICAgICAgLyoKKyAgICAgICAg
ICogV2UgdXN1YWxseSBlbmFibGUgRklGTyB1bmRlcnJ1biBpbnRlcnJ1cHRzIGFzIHBhcnQgb2Yg
dGhlCisgICAgICAgICAqIENSVEMgZW5hYmxlIHNlcXVlbmNlIGR1cmluZyBtb2Rlc2V0cy4gIEJ1
dCB3aGVuIHdlIGluaGVyaXQgYQorICAgICAgICAgKiB2YWxpZCBwaXBlIGNvbmZpZ3VyYXRpb24g
ZnJvbSB0aGUgQklPUyB3ZSBuZWVkIHRvIHRha2UgY2FyZQorICAgICAgICAgKiBvZiBlbmFibGlu
ZyB0aGVtIG9uIHRoZSBDUlRDJ3MgZmlyc3QgZmFzdHNldC4KKyAgICAgICAgICovCisJaWYgKG5l
d19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSAmJiAhbW9kZXNldCAmJgorCSAgICBvbGRfY3J0Y19z
dGF0ZS0+YmFzZS5tb2RlLnByaXZhdGVfZmxhZ3MgJiBJOTE1X01PREVfRkxBR19JTkhFUklURUQp
CisJCWludGVsX2NydGNfYXJtX2ZpZm9fdW5kZXJydW4oY3J0YywgbmV3X2NydGNfc3RhdGUpOwog
fQogCiBzdGF0aWMgdm9pZCBpbnRlbF9vbGRfY3J0Y19zdGF0ZV9kaXNhYmxlcyhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKQEAgLTE0NTUzLDcyICsxNDYwNyw2IEBAIHNrbF9tYXhf
c2NhbGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJcmV0dXJu
IG1heF9zY2FsZTsKIH0KIAotc3RhdGljIHZvaWQgaW50ZWxfYmVnaW5fY3J0Y19jb21taXQoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCi0JCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOwotCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0
ZSA9Ci0JCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwotCXN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9Ci0JCWludGVsX2F0b21pY19n
ZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwotCWJvb2wgbW9kZXNldCA9IG5lZWRzX21v
ZGVzZXQobmV3X2NydGNfc3RhdGUpOwotCi0JLyogUGVyZm9ybSB2YmxhbmsgZXZhc2lvbiBhcm91
bmQgY29tbWl0IG9wZXJhdGlvbiAqLwotCWludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KG5ld19jcnRj
X3N0YXRlKTsKLQotCWlmIChtb2Rlc2V0KQotCQlnb3RvIG91dDsKLQotCWlmIChuZXdfY3J0Y19z
dGF0ZS0+YmFzZS5jb2xvcl9tZ210X2NoYW5nZWQgfHwKLQkgICAgbmV3X2NydGNfc3RhdGUtPnVw
ZGF0ZV9waXBlKQotCQlpbnRlbF9jb2xvcl9jb21taXQobmV3X2NydGNfc3RhdGUpOwotCi0JaWYg
KG5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSkKLQkJaW50ZWxfdXBkYXRlX3BpcGVfY29uZmln
KG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7Ci0JZWxzZSBpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSA5KQotCQlza2xfZGV0YWNoX3NjYWxlcnMobmV3X2NydGNfc3RhdGUpOwotCi0J
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQot
CQliZHdfc2V0X3BpcGVtaXNjKG5ld19jcnRjX3N0YXRlKTsKLQotb3V0OgotCWlmIChkZXZfcHJp
di0+ZGlzcGxheS5hdG9taWNfdXBkYXRlX3dhdGVybWFya3MpCi0JCWRldl9wcml2LT5kaXNwbGF5
LmF0b21pY191cGRhdGVfd2F0ZXJtYXJrcyhzdGF0ZSwKLQkJCQkJCQkgICBuZXdfY3J0Y19zdGF0
ZSk7Ci19Ci0KLXZvaWQgaW50ZWxfY3J0Y19hcm1fZmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywKLQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQot
ewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOwotCi0JaWYgKCFJU19HRU4oZGV2X3ByaXYsIDIpKQotCQlpbnRlbF9zZXRfY3B1X2Zp
Zm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2LCBjcnRjLT5waXBlLCB0cnVlKTsKLQotCWlm
IChjcnRjX3N0YXRlLT5oYXNfcGNoX2VuY29kZXIpIHsKLQkJZW51bSBwaXBlIHBjaF90cmFuc2Nv
ZGVyID0KLQkJCWludGVsX2NydGNfcGNoX3RyYW5zY29kZXIoY3J0Yyk7Ci0KLQkJaW50ZWxfc2V0
X3BjaF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZfcHJpdiwgcGNoX3RyYW5zY29kZXIsIHRy
dWUpOwotCX0KLX0KLQotc3RhdGljIHZvaWQgaW50ZWxfZmluaXNoX2NydGNfY29tbWl0KHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotCQkJCSAgICAgc3RydWN0IGludGVsX2NydGMg
KmNydGMpCi17Ci0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlID0KLQkJ
aW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Ci0Jc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0KLQkJaW50ZWxfYXRvbWljX2dldF9uZXdf
Y3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Ci0KLQlpbnRlbF9waXBlX3VwZGF0ZV9lbmQobmV3X2Ny
dGNfc3RhdGUpOwotCi0JaWYgKG5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSAmJgotCSAgICAh
bmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYKLQkgICAgb2xkX2NydGNfc3RhdGUtPmJh
c2UubW9kZS5wcml2YXRlX2ZsYWdzICYgSTkxNV9NT0RFX0ZMQUdfSU5IRVJJVEVEKQotCQlpbnRl
bF9jcnRjX2FybV9maWZvX3VuZGVycnVuKGNydGMsIG5ld19jcnRjX3N0YXRlKTsKLX0KLQogLyoq
CiAgKiBpbnRlbF9wbGFuZV9kZXN0cm95IC0gZGVzdHJveSBhIHBsYW5lCiAgKiBAcGxhbmU6IHBs
YW5lIHRvIGRlc3Ryb3kKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
