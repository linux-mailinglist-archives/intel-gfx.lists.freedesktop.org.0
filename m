Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F4C4E87D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 15:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64AF16E863;
	Fri, 21 Jun 2019 13:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091B96E8AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 13:07:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16979308-1500050 
 for multiple; Fri, 21 Jun 2019 14:05:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 14:05:43 +0100
Message-Id: <20190621130544.24226-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621130544.24226-1-chris@chris-wilson.co.uk>
References: <20190621130544.24226-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Provide an i915_active.acquire
 callback
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgaW50cm9kdWNlIGEgY2FsbGJhY2sgZm9yIGk5MTVfYWN0aXZlIHRoYXQgaXMgb25seSBj
YWxsZWQgdGhlIGZpcnN0CnRpbWUgd2UgdXNlIHRoZSBpOTE1X2FjdGl2ZSBhbmQgaXMgc3ltbWV0
cmljYWxseSBwYWlyZWQgd2l0aCB0aGUKaTkxNV9hY3RpdmUucmV0aXJlIGNhbGxiYWNrLCB3ZSBj
YW4gcmVwbGFjZSB0aGUgb3Blbi1jb2RlZCBhbmQKbm9uLWF0b21pYyBpbXBsZW1lbnRhdGlvbnMg
LS0gd2hpY2ggd2lsbCBiZSB2ZXJ5IGZyYWdpbGUgKGkuZS4gYnJva2VuKQp1cG9uIHJlbW92aW5n
IHRoZSBzdHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0LmMgICAgICB8ICA2NSArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2NvbnRleHQuaCAgICAgIHwgIDE0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ2J1ZmZlci5jICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Rp
bWVsaW5lLmMgICAgIHwgIDE2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2lu
ZS5jICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyAg
ICAgICAgICAgfCAyMjUgKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9hY3RpdmUuaCAgICAgICAgICAgfCAgMjUgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZV90eXBlcy5oICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMgICAgICAgICAgICAgIHwgIDIyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9hY3RpdmUuYyB8ICA1MyArKysrLQogMTMgZmlsZXMgY2hhbmdlZCwgMjU4IGluc2Vy
dGlvbnMoKyksIDE5MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwppbmRleCA2Mjg2NzNkMWQ3ZjguLjhhOTc4N2NmMGNkMCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC05MjMsOCArOTIz
LDEyIEBAIHN0YXRpYyBpbnQgY29udGV4dF9iYXJyaWVyX3Rhc2soc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKmN0eCwKIAlpZiAoIWNiKQogCQlyZXR1cm4gLUVOT01FTTsKIAotCWk5MTVfYWN0aXZl
X2luaXQoaTkxNSwgJmNiLT5iYXNlLCBjYl9yZXRpcmUpOwotCWk5MTVfYWN0aXZlX2FjcXVpcmUo
JmNiLT5iYXNlKTsKKwlpOTE1X2FjdGl2ZV9pbml0KGk5MTUsICZjYi0+YmFzZSwgTlVMTCwgY2Jf
cmV0aXJlKTsKKwllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlKCZjYi0+YmFzZSk7CisJaWYgKGVy
cikgeworCQlrZnJlZShjYik7CisJCXJldHVybiBlcnI7CisJfQogCiAJZm9yX2VhY2hfZ2VtX2Vu
Z2luZShjZSwgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpIHsKIAkJc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0
LmMKaW5kZXggMjMxMjA5MDFjNTVmLi45MzhkZDAzMmI4MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0LmMKQEAgLTk1LDExICs5NSwxNSBAQCB2b2lkIGludGVsX2NvbnRl
eHRfdW5waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCWludGVsX2NvbnRleHRfcHV0KGNl
KTsKIH0KIAotc3RhdGljIGludCBfX2NvbnRleHRfcGluX3N0YXRlKHN0cnVjdCBpOTE1X3ZtYSAq
dm1hLCB1bnNpZ25lZCBsb25nIGZsYWdzKQorc3RhdGljIGludCBfX2NvbnRleHRfcGluX3N0YXRl
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogeworCXU2NCBmbGFnczsKIAlpbnQgZXJyOwogCi0JZXJy
ID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgZmxhZ3MgfCBQSU5fR0xPQkFMKTsKKwlmbGFncyA9
IGk5MTVfZ2d0dF9waW5fYmlhcyh2bWEpIHwgUElOX09GRlNFVF9CSUFTOworCWZsYWdzIHw9IFBJ
Tl9ISUdIIHwgUElOX0dMT0JBTDsKKworCWVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAsIGZs
YWdzKTsKIAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCkBAIC0xMTksNyArMTIzLDcgQEAgc3Rh
dGljIHZvaWQgX19jb250ZXh0X3VucGluX3N0YXRlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogCV9f
aTkxNV92bWFfdW5waW4odm1hKTsKIH0KIAotc3RhdGljIHZvaWQgaW50ZWxfY29udGV4dF9yZXRp
cmUoc3RydWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCitzdGF0aWMgdm9pZCBfX2ludGVsX2NvbnRl
eHRfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQogewogCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZSA9IGNvbnRhaW5lcl9vZihhY3RpdmUsIHR5cGVvZigqY2UpLCBhY3RpdmUpOwog
CkBAIC0xMzAsMzUgKzEzNCwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb250ZXh0X3JldGlyZShz
dHJ1Y3QgaTkxNV9hY3RpdmUgKmFjdGl2ZSkKIAlpbnRlbF9jb250ZXh0X3B1dChjZSk7CiB9CiAK
LXZvaWQKLWludGVsX2NvbnRleHRfaW5pdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCi0JCSAg
IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCi0JCSAgIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKLXsKLQlHRU1fQlVHX09OKCFlbmdpbmUtPmNvcHMpOwotCi0Ja3JlZl9pbml0
KCZjZS0+cmVmKTsKLQotCWNlLT5nZW1fY29udGV4dCA9IGN0eDsKLQljZS0+ZW5naW5lID0gZW5n
aW5lOwotCWNlLT5vcHMgPSBlbmdpbmUtPmNvcHM7Ci0JY2UtPnNzZXUgPSBlbmdpbmUtPnNzZXU7
Ci0KLQlJTklUX0xJU1RfSEVBRCgmY2UtPnNpZ25hbF9saW5rKTsKLQlJTklUX0xJU1RfSEVBRCgm
Y2UtPnNpZ25hbHMpOwotCi0JbXV0ZXhfaW5pdCgmY2UtPnBpbl9tdXRleCk7Ci0KLQlpOTE1X2Fj
dGl2ZV9pbml0KGN0eC0+aTkxNSwgJmNlLT5hY3RpdmUsIGludGVsX2NvbnRleHRfcmV0aXJlKTsK
LX0KLQotaW50IGludGVsX2NvbnRleHRfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLCB1bnNpZ25lZCBsb25nIGZsYWdzKQorc3RhdGljIGludCBfX2ludGVsX2NvbnRleHRf
YWN0aXZlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQogeworCXN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSA9IGNvbnRhaW5lcl9vZihhY3RpdmUsIHR5cGVvZigqY2UpLCBhY3RpdmUpOwogCWlu
dCBlcnI7CiAKLQlpZiAoIWk5MTVfYWN0aXZlX2FjcXVpcmUoJmNlLT5hY3RpdmUpKQotCQlyZXR1
cm4gMDsKLQogCWludGVsX2NvbnRleHRfZ2V0KGNlKTsKIAogCWVyciA9IGludGVsX3JpbmdfcGlu
KGNlLT5yaW5nKTsKQEAgLTE2OCw3ICsxNDgsNyBAQCBpbnQgaW50ZWxfY29udGV4dF9hY3RpdmVf
YWNxdWlyZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCiAJ
aWYgKCFjZS0+c3RhdGUpCiAJCXJldHVybiAwOwogCi0JZXJyID0gX19jb250ZXh0X3Bpbl9zdGF0
ZShjZS0+c3RhdGUsIGZsYWdzKTsKKwllcnIgPSBfX2NvbnRleHRfcGluX3N0YXRlKGNlLT5zdGF0
ZSk7CiAJaWYgKGVycikKIAkJZ290byBlcnJfcmluZzsKIApAQCAtMTg4LDE1ICsxNjgsMzAgQEAg
aW50IGludGVsX2NvbnRleHRfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LCB1bnNpZ25lZCBsb25nIGZsYWdzKQogCWludGVsX3JpbmdfdW5waW4oY2UtPnJpbmcpOwogZXJy
X3B1dDoKIAlpbnRlbF9jb250ZXh0X3B1dChjZSk7Ci0JaTkxNV9hY3RpdmVfY2FuY2VsKCZjZS0+
YWN0aXZlKTsKIAlyZXR1cm4gZXJyOwogfQogCi12b2lkIGludGVsX2NvbnRleHRfYWN0aXZlX3Jl
bGVhc2Uoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQordm9pZAoraW50ZWxfY29udGV4dF9pbml0
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJICAgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQg
KmN0eCwKKwkJICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCS8qIE5vZGVz
IHByZWFsbG9jYXRlZCBpbiBpbnRlbF9jb250ZXh0X2FjdGl2ZSgpICovCi0JaTkxNV9hY3RpdmVf
YWNxdWlyZV9iYXJyaWVyKCZjZS0+YWN0aXZlKTsKLQlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZjZS0+
YWN0aXZlKTsKKwlHRU1fQlVHX09OKCFlbmdpbmUtPmNvcHMpOworCisJa3JlZl9pbml0KCZjZS0+
cmVmKTsKKworCWNlLT5nZW1fY29udGV4dCA9IGN0eDsKKwljZS0+ZW5naW5lID0gZW5naW5lOwor
CWNlLT5vcHMgPSBlbmdpbmUtPmNvcHM7CisJY2UtPnNzZXUgPSBlbmdpbmUtPnNzZXU7CisKKwlJ
TklUX0xJU1RfSEVBRCgmY2UtPnNpZ25hbF9saW5rKTsKKwlJTklUX0xJU1RfSEVBRCgmY2UtPnNp
Z25hbHMpOworCisJbXV0ZXhfaW5pdCgmY2UtPnBpbl9tdXRleCk7CisKKwlpOTE1X2FjdGl2ZV9p
bml0KGN0eC0+aTkxNSwgJmNlLT5hY3RpdmUsCisJCQkgX19pbnRlbF9jb250ZXh0X2FjdGl2ZSwg
X19pbnRlbF9jb250ZXh0X3JldGlyZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGk5MTVfZ2xvYmFsX2Nv
bnRleHRfc2hyaW5rKHZvaWQpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9jb250ZXh0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmgK
aW5kZXggYTQ3Mjc1YmM0ZjAxLi40MGNkODMyMGZjYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0LmgKQEAgLTksNiArOSw3IEBACiAKICNpbmNsdWRlIDxsaW51eC9sb2Nr
ZGVwLmg+CiAKKyNpbmNsdWRlICJpOTE1X2FjdGl2ZS5oIgogI2luY2x1ZGUgImludGVsX2NvbnRl
eHRfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfdHlwZXMuaCIKIApAQCAtMTAyLDgg
KzEwMywxNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfY29udGV4dF9leGl0KHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSkKIAkJY2UtPm9wcy0+ZXhpdChjZSk7CiB9CiAKLWludCBpbnRlbF9j
b250ZXh0X2FjdGl2ZV9hY3F1aXJlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdW5zaWduZWQg
bG9uZyBmbGFncyk7Ci12b2lkIGludGVsX2NvbnRleHRfYWN0aXZlX3JlbGVhc2Uoc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlKTsKK3N0YXRpYyBpbmxpbmUgaW50IGludGVsX2NvbnRleHRfYWN0aXZl
X2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXJldHVybiBpOTE1X2FjdGl2
ZV9hY3F1aXJlKCZjZS0+YWN0aXZlKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIGludGVsX2Nv
bnRleHRfYWN0aXZlX3JlbGVhc2Uoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCS8qIE5v
ZGVzIHByZWFsbG9jYXRlZCBpbiBpbnRlbF9jb250ZXh0X2FjdGl2ZSgpICovCisJaTkxNV9hY3Rp
dmVfYWNxdWlyZV9iYXJyaWVyKCZjZS0+YWN0aXZlKTsKKwlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZj
ZS0+YWN0aXZlKTsKK30KIAogc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqaW50
ZWxfY29udGV4dF9nZXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwppbmRleCBhZDc2MzhkYTc4NWQuLmM4YTBjOWIzMjc2NCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE1NDIsMTIgKzE1NDIsMTAgQEAgX19leGVj
bGlzdHNfY29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQlnb3RvIGVycjsK
IAlHRU1fQlVHX09OKCFjZS0+c3RhdGUpOwogCi0JcmV0ID0gaW50ZWxfY29udGV4dF9hY3RpdmVf
YWNxdWlyZShjZSwKLQkJCQkJICAgZW5naW5lLT5pOTE1LT5nZ3R0LnBpbl9iaWFzIHwKLQkJCQkJ
ICAgUElOX09GRlNFVF9CSUFTIHwKLQkJCQkJICAgUElOX0hJR0gpOworCXJldCA9IGludGVsX2Nv
bnRleHRfYWN0aXZlX2FjcXVpcmUoY2UpOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyOworCUdFTV9C
VUdfT04oIWk5MTVfdm1hX2lzX3Bpbm5lZChjZS0+c3RhdGUpKTsKIAogCXZhZGRyID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXAoY2UtPnN0YXRlLT5vYmosCiAJCQkJCWk5MTVfY29oZXJlbnRfbWFw
X3R5cGUoZW5naW5lLT5pOTE1KSB8CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5n
YnVmZmVyLmMKaW5kZXggYzkzMzdlNGI1ZWUwLi5mMDk0NDA2ZGNjNTYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKQEAgLTE0NTUsNyArMTQ1NSw3IEBAIHN0
YXRpYyBpbnQgcmluZ19jb250ZXh0X3BpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJCWNl
LT5zdGF0ZSA9IHZtYTsKIAl9CiAKLQllcnIgPSBpbnRlbF9jb250ZXh0X2FjdGl2ZV9hY3F1aXJl
KGNlLCBQSU5fSElHSCk7CisJZXJyID0gaW50ZWxfY29udGV4dF9hY3RpdmVfYWNxdWlyZShjZSk7
CiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3RpbWVsaW5lLmMKaW5kZXggYTEwMzgyOTFjNWUwLi4wZTJhNDBlYmFjMjggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpAQCAtMTQ2LDYgKzE0NiwxNSBAQCBzdGF0
aWMgdm9pZCBfX2NhY2hlbGluZV9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCiAJ
CV9faWRsZV9jYWNoZWxpbmVfZnJlZShjbCk7CiB9CiAKK3N0YXRpYyBpbnQgX19jYWNoZWxpbmVf
YWN0aXZlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQoreworCXN0cnVjdCBpbnRlbF90aW1l
bGluZV9jYWNoZWxpbmUgKmNsID0KKwkJY29udGFpbmVyX29mKGFjdGl2ZSwgdHlwZW9mKCpjbCks
IGFjdGl2ZSk7CisKKwlfX2k5MTVfdm1hX3BpbihjbC0+aHdzcC0+dm1hKTsKKwlyZXR1cm4gMDsK
K30KKwogc3RhdGljIHN0cnVjdCBpbnRlbF90aW1lbGluZV9jYWNoZWxpbmUgKgogY2FjaGVsaW5l
X2FsbG9jKHN0cnVjdCBpbnRlbF90aW1lbGluZV9od3NwICpod3NwLCB1bnNpZ25lZCBpbnQgY2Fj
aGVsaW5lKQogewpAQCAtMTY4LDE1ICsxNzcsMTYgQEAgY2FjaGVsaW5lX2FsbG9jKHN0cnVjdCBp
bnRlbF90aW1lbGluZV9od3NwICpod3NwLCB1bnNpZ25lZCBpbnQgY2FjaGVsaW5lKQogCWNsLT5o
d3NwID0gaHdzcDsKIAljbC0+dmFkZHIgPSBwYWdlX3BhY2tfYml0cyh2YWRkciwgY2FjaGVsaW5l
KTsKIAotCWk5MTVfYWN0aXZlX2luaXQoaHdzcC0+Z3QtPmk5MTUsICZjbC0+YWN0aXZlLCBfX2Nh
Y2hlbGluZV9yZXRpcmUpOworCWk5MTVfYWN0aXZlX2luaXQoaHdzcC0+Z3QtPmk5MTUsICZjbC0+
YWN0aXZlLAorCQkJIF9fY2FjaGVsaW5lX2FjdGl2ZSwgX19jYWNoZWxpbmVfcmV0aXJlKTsKIAog
CXJldHVybiBjbDsKIH0KIAogc3RhdGljIHZvaWQgY2FjaGVsaW5lX2FjcXVpcmUoc3RydWN0IGlu
dGVsX3RpbWVsaW5lX2NhY2hlbGluZSAqY2wpCiB7Ci0JaWYgKGNsICYmIGk5MTVfYWN0aXZlX2Fj
cXVpcmUoJmNsLT5hY3RpdmUpKQotCQlfX2k5MTVfdm1hX3BpbihjbC0+aHdzcC0+dm1hKTsKKwlp
ZiAoY2wpCisJCWk5MTVfYWN0aXZlX2FjcXVpcmUoJmNsLT5hY3RpdmUpOwogfQogCiBzdGF0aWMg
dm9pZCBjYWNoZWxpbmVfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfdGltZWxpbmVfY2FjaGVsaW5lICpj
bCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCmluZGV4IGJmMDk3NGIxMmYzZC4u
NDkwZWJkMTIxZjRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2Vu
Z2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKQEAgLTE1
NSw3ICsxNTUsNyBAQCBzdGF0aWMgaW50IG1vY2tfY29udGV4dF9waW4oc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlKQogCQkJcmV0dXJuIC1FTk9NRU07CiAJfQogCi0JcmV0ID0gaW50ZWxfY29udGV4
dF9hY3RpdmVfYWNxdWlyZShjZSwgUElOX0hJR0gpOworCXJldCA9IGludGVsX2NvbnRleHRfYWN0
aXZlX2FjcXVpcmUoY2UpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZS5jCmluZGV4IGViOTFhNjI1YzcxZi4uY2I2YTFlYWRmN2RmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAgLTM5LDcgKzM5LDcgQEAgc3RhdGljIHZvaWQgKmFj
dGl2ZV9kZWJ1Z19oaW50KHZvaWQgKmFkZHIpCiB7CiAJc3RydWN0IGk5MTVfYWN0aXZlICpyZWYg
PSBhZGRyOwogCi0JcmV0dXJuICh2b2lkICopcmVmLT5yZXRpcmUgPzogKHZvaWQgKilyZWY7CisJ
cmV0dXJuICh2b2lkICopcmVmLT5hY3RpdmUgPzogKHZvaWQgKilyZWYtPnJldGlyZSA/OiAodm9p
ZCAqKXJlZjsKIH0KIAogc3RhdGljIHN0cnVjdCBkZWJ1Z19vYmpfZGVzY3IgYWN0aXZlX2RlYnVn
X2Rlc2MgPSB7CkBAIC04Myw1MCArODMsNTggQEAgc3RhdGljIGlubGluZSB2b2lkIGRlYnVnX2Fj
dGl2ZV9hc3NlcnQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpIHsgfQogI2VuZGlmCiAKIHN0YXRp
YyB2b2lkCi1fX2FjdGl2ZV9wYXJrKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQorX19hY3RpdmVf
cmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewogCXN0cnVjdCBhY3RpdmVfbm9kZSAq
aXQsICpuOworCXN0cnVjdCByYl9yb290IHJvb3Q7CisJYm9vbCByZXRpcmUgPSBmYWxzZTsKKwor
CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnJlZi0+bXV0ZXgpOworCisJLyogcmV0dXJuIHRoZSB1bnVz
ZWQgbm9kZXMgdG8gb3VyIHNsYWJjYWNoZSAtLSBmbHVzaGluZyB0aGUgYWxsb2NhdG9yICovCisJ
aWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnJlZi0+Y291bnQpKSB7CisJCWRlYnVnX2FjdGl2ZV9k
ZWFjdGl2YXRlKHJlZik7CisJCXJvb3QgPSByZWYtPnRyZWU7CisJCXJlZi0+dHJlZSA9IFJCX1JP
T1Q7CisJCXJlZi0+Y2FjaGUgPSBOVUxMOworCQlyZXRpcmUgPSB0cnVlOworCX0KIAotCXJidHJl
ZV9wb3N0b3JkZXJfZm9yX2VhY2hfZW50cnlfc2FmZShpdCwgbiwgJnJlZi0+dHJlZSwgbm9kZSkg
eworCW11dGV4X3VubG9jaygmcmVmLT5tdXRleCk7CisJaWYgKCFyZXRpcmUpCisJCXJldHVybjsK
KworCXJlZi0+cmV0aXJlKHJlZik7CisKKwlyYnRyZWVfcG9zdG9yZGVyX2Zvcl9lYWNoX2VudHJ5
X3NhZmUoaXQsIG4sICZyb290LCBub2RlKSB7CiAJCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfcmVx
dWVzdF9pc3NldCgmaXQtPmJhc2UpKTsKIAkJa21lbV9jYWNoZV9mcmVlKGdsb2JhbC5zbGFiX2Nh
Y2hlLCBpdCk7CiAJfQotCXJlZi0+dHJlZSA9IFJCX1JPT1Q7CiB9CiAKIHN0YXRpYyB2b2lkCi1f
X2FjdGl2ZV9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCithY3RpdmVfcmV0aXJlKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewotCUdFTV9CVUdfT04oIXJlZi0+Y291bnQpOwotCWlm
ICgtLXJlZi0+Y291bnQpCisJR0VNX0JVR19PTighYXRvbWljX3JlYWQoJnJlZi0+Y291bnQpKTsK
KwlpZiAoYXRvbWljX2FkZF91bmxlc3MoJnJlZi0+Y291bnQsIC0xLCAxKSkKIAkJcmV0dXJuOwog
Ci0JZGVidWdfYWN0aXZlX2RlYWN0aXZhdGUocmVmKTsKLQotCS8qIHJldHVybiB0aGUgdW51c2Vk
IG5vZGVzIHRvIG91ciBzbGFiY2FjaGUgKi8KLQlfX2FjdGl2ZV9wYXJrKHJlZik7Ci0KLQlyZWYt
PnJldGlyZShyZWYpOworCS8qIE9uZSBhY3RpdmUgbWF5IGJlIGZsdXNoZWQgZnJvbSBpbnNpZGUg
dGhlIGFjcXVpcmUgb2YgYW5vdGhlciAqLworCW11dGV4X2xvY2tfbmVzdGVkKCZyZWYtPm11dGV4
LCBTSU5HTEVfREVQVEhfTkVTVElORyk7CisJX19hY3RpdmVfcmV0aXJlKHJlZik7CiB9CiAKIHN0
YXRpYyB2b2lkCiBub2RlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCAqYmFzZSwg
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7Ci0JX19hY3RpdmVfcmV0aXJlKGNvbnRhaW5lcl9v
ZihiYXNlLCBzdHJ1Y3QgYWN0aXZlX25vZGUsIGJhc2UpLT5yZWYpOwotfQotCi1zdGF0aWMgdm9p
ZAotbGFzdF9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgKmJhc2UsIHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQotewotCV9fYWN0aXZlX3JldGlyZShjb250YWluZXJfb2YoYmFzZSwg
c3RydWN0IGk5MTVfYWN0aXZlLCBsYXN0KSk7CisJYWN0aXZlX3JldGlyZShjb250YWluZXJfb2Yo
YmFzZSwgc3RydWN0IGFjdGl2ZV9ub2RlLCBiYXNlKS0+cmVmKTsKIH0KIAogc3RhdGljIHN0cnVj
dCBpOTE1X2FjdGl2ZV9yZXF1ZXN0ICoKIGFjdGl2ZV9pbnN0YW5jZShzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZiwgdTY0IGlkeCkKIHsKLQlzdHJ1Y3QgYWN0aXZlX25vZGUgKm5vZGU7CisJc3RydWN0
IGFjdGl2ZV9ub2RlICpub2RlLCAqcHJlYWxsb2M7CiAJc3RydWN0IHJiX25vZGUgKipwLCAqcGFy
ZW50OwotCXN0cnVjdCBpOTE1X3JlcXVlc3QgKm9sZDsKIAogCS8qCiAJICogV2UgdHJhY2sgdGhl
IG1vc3QgcmVjZW50bHkgdXNlZCB0aW1lbGluZSB0byBza2lwIGEgcmJ0cmVlIHNlYXJjaApAQCAt
MTM0LDIwICsxNDIsMTggQEAgYWN0aXZlX2luc3RhbmNlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
LCB1NjQgaWR4KQogCSAqIGF0IGFsbC4gV2UgY2FuIHJldXNlIHRoZSBsYXN0IHNsb3QgaWYgaXQg
aXMgZW1wdHksIHRoYXQgaXMKIAkgKiBhZnRlciB0aGUgcHJldmlvdXMgYWN0aXZpdHkgaGFzIGJl
ZW4gcmV0aXJlZCwgb3IgaWYgaXQgbWF0Y2hlcyB0aGUKIAkgKiBjdXJyZW50IHRpbWVsaW5lLgot
CSAqCi0JICogTm90ZSB0aGF0IHdlIGFsbG93IHRoZSB0aW1lbGluZSB0byBiZSBhY3RpdmUgc2lt
dWx0YW5lb3VzbHkgaW4KLQkgKiB0aGUgcmJ0cmVlIGFuZCB0aGUgbGFzdCBjYWNoZS4gV2UgZG8g
dGhpcyB0byBhdm9pZCBoYXZpbmcKLQkgKiB0byBzZWFyY2ggYW5kIHJlcGxhY2UgdGhlIHJidHJl
ZSBlbGVtZW50IGZvciBhIG5ldyB0aW1lbGluZSwgd2l0aAotCSAqIHRoZSBjb3N0IGJlaW5nIHRo
YXQgd2UgbXVzdCBiZSBhd2FyZSB0aGF0IHRoZSByZWYgbWF5IGJlIHJldGlyZWQKLQkgKiB0d2lj
ZSBmb3IgdGhlIHNhbWUgdGltZWxpbmUgKGFzIHRoZSBvbGRlciByYnRyZWUgZWxlbWVudCB3aWxs
IGJlCi0JICogcmV0aXJlZCBiZWZvcmUgdGhlIG5ldyByZXF1ZXN0IGFkZGVkIHRvIGxhc3QpLgog
CSAqLwotCW9sZCA9IGk5MTVfYWN0aXZlX3JlcXVlc3RfcmF3KCZyZWYtPmxhc3QsIEJLTChyZWYp
KTsKLQlpZiAoIW9sZCB8fCBvbGQtPmZlbmNlLmNvbnRleHQgPT0gaWR4KQotCQlnb3RvIG91dDsK
Kwlub2RlID0gUkVBRF9PTkNFKHJlZi0+Y2FjaGUpOworCWlmIChub2RlICYmIG5vZGUtPnRpbWVs
aW5lID09IGlkeCkKKwkJcmV0dXJuICZub2RlLT5iYXNlOwogCi0JLyogTW92ZSB0aGUgY3VycmVu
dGx5IGFjdGl2ZSBmZW5jZSBpbnRvIHRoZSByYnRyZWUgKi8KLQlpZHggPSBvbGQtPmZlbmNlLmNv
bnRleHQ7CisJLyogUHJlYWxsb2NhdGUgYSByZXBsYWNlbWVudCwganVzdCBpbiBjYXNlICovCisJ
cHJlYWxsb2MgPSBrbWVtX2NhY2hlX2FsbG9jKGdsb2JhbC5zbGFiX2NhY2hlLCBHRlBfS0VSTkVM
KTsKKwlpZiAoIXByZWFsbG9jKQorCQlyZXR1cm4gTlVMTDsKKworCW11dGV4X2xvY2soJnJlZi0+
bXV0ZXgpOworCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfaXNfaWRsZShyZWYpKTsKIAogCXBhcmVu
dCA9IE5VTEw7CiAJcCA9ICZyZWYtPnRyZWUucmJfbm9kZTsKQEAgLTE1NSw4ICsxNjEsMTAgQEAg
YWN0aXZlX2luc3RhbmNlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLCB1NjQgaWR4KQogCQlwYXJl
bnQgPSAqcDsKIAogCQlub2RlID0gcmJfZW50cnkocGFyZW50LCBzdHJ1Y3QgYWN0aXZlX25vZGUs
IG5vZGUpOwotCQlpZiAobm9kZS0+dGltZWxpbmUgPT0gaWR4KQotCQkJZ290byByZXBsYWNlOwor
CQlpZiAobm9kZS0+dGltZWxpbmUgPT0gaWR4KSB7CisJCQlrbWVtX2NhY2hlX2ZyZWUoZ2xvYmFs
LnNsYWJfY2FjaGUsIHByZWFsbG9jKTsKKwkJCWdvdG8gb3V0OworCQl9CiAKIAkJaWYgKG5vZGUt
PnRpbWVsaW5lIDwgaWR4KQogCQkJcCA9ICZwYXJlbnQtPnJiX3JpZ2h0OwpAQCAtMTY0LDE3ICsx
NzIsNyBAQCBhY3RpdmVfaW5zdGFuY2Uoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsIHU2NCBpZHgp
CiAJCQlwID0gJnBhcmVudC0+cmJfbGVmdDsKIAl9CiAKLQlub2RlID0ga21lbV9jYWNoZV9hbGxv
YyhnbG9iYWwuc2xhYl9jYWNoZSwgR0ZQX0tFUk5FTCk7Ci0KLQkvKiBrbWFsbG9jIG1heSByZXRp
cmUgdGhlIHJlZi0+bGFzdCAodGhhbmtzIHNocmlua2VyKSEgKi8KLQlpZiAodW5saWtlbHkoIWk5
MTVfYWN0aXZlX3JlcXVlc3RfcmF3KCZyZWYtPmxhc3QsIEJLTChyZWYpKSkpIHsKLQkJa21lbV9j
YWNoZV9mcmVlKGdsb2JhbC5zbGFiX2NhY2hlLCBub2RlKTsKLQkJZ290byBvdXQ7Ci0JfQotCi0J
aWYgKHVubGlrZWx5KCFub2RlKSkKLQkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Ci0KKwlub2Rl
ID0gcHJlYWxsb2M7CiAJaTkxNV9hY3RpdmVfcmVxdWVzdF9pbml0KCZub2RlLT5iYXNlLCBOVUxM
LCBub2RlX3JldGlyZSk7CiAJbm9kZS0+cmVmID0gcmVmOwogCW5vZGUtPnRpbWVsaW5lID0gaWR4
OwpAQCAtMTgyLDQwICsxODAsMjkgQEAgYWN0aXZlX2luc3RhbmNlKHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmLCB1NjQgaWR4KQogCXJiX2xpbmtfbm9kZSgmbm9kZS0+bm9kZSwgcGFyZW50LCBwKTsK
IAlyYl9pbnNlcnRfY29sb3IoJm5vZGUtPm5vZGUsICZyZWYtPnRyZWUpOwogCi1yZXBsYWNlOgot
CS8qCi0JICogT3ZlcndyaXRlIHRoZSBwcmV2aW91cyBhY3RpdmUgc2xvdCBpbiB0aGUgcmJ0cmVl
IHdpdGggbGFzdCwKLQkgKiBsZWF2aW5nIGxhc3QgemVyb2VkLiBJZiB0aGUgcHJldmlvdXMgc2xv
dCBpcyBzdGlsbCBhY3RpdmUsCi0JICogd2UgbXVzdCBiZSBjYXJlZnVsIGFzIHdlIG5vdyBvbmx5
IGV4cGVjdCB0byByZWNlaXZlIG9uZSByZXRpcmUKLQkgKiBjYWxsYmFjayBub3QgdHdvLCBhbmQg
c28gbXVjaCB1bmRvIHRoZSBhY3RpdmUgY291bnRpbmcgZm9yIHRoZQotCSAqIG92ZXJ3cml0dGVu
IHNsb3QuCi0JICovCi0JaWYgKGk5MTVfYWN0aXZlX3JlcXVlc3RfaXNzZXQoJm5vZGUtPmJhc2Up
KSB7Ci0JCS8qIFJldGlyZSBvdXJzZWx2ZXMgZnJvbSB0aGUgb2xkIHJxLT5hY3RpdmVfbGlzdCAq
LwotCQlfX2xpc3RfZGVsX2VudHJ5KCZub2RlLT5iYXNlLmxpbmspOwotCQlyZWYtPmNvdW50LS07
Ci0JCUdFTV9CVUdfT04oIXJlZi0+Y291bnQpOwotCX0KLQlHRU1fQlVHX09OKGxpc3RfZW1wdHko
JnJlZi0+bGFzdC5saW5rKSk7Ci0JbGlzdF9yZXBsYWNlX2luaXQoJnJlZi0+bGFzdC5saW5rLCAm
bm9kZS0+YmFzZS5saW5rKTsKLQlub2RlLT5iYXNlLnJlcXVlc3QgPSBmZXRjaF9hbmRfemVybygm
cmVmLT5sYXN0LnJlcXVlc3QpOwotCiBvdXQ6Ci0JcmV0dXJuICZyZWYtPmxhc3Q7CisJcmVmLT5j
YWNoZSA9IG5vZGU7CisJbXV0ZXhfdW5sb2NrKCZyZWYtPm11dGV4KTsKKworCXJldHVybiAmbm9k
ZS0+YmFzZTsKIH0KIAotdm9pZCBpOTE1X2FjdGl2ZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAotCQkgICAgICBzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKLQkJICAgICAgdm9p
ZCAoKnJldGlyZSkoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpKQordm9pZCBfX2k5MTVfYWN0aXZl
X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJCQlzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZiwKKwkJCWludCAoKmFjdGl2ZSkoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpLAorCQkJ
dm9pZCAoKnJldGlyZSkoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpLAorCQkJc3RydWN0IGxvY2tf
Y2xhc3Nfa2V5ICprZXkpCiB7CiAJZGVidWdfYWN0aXZlX2luaXQocmVmKTsKIAogCXJlZi0+aTkx
NSA9IGk5MTU7CisJcmVmLT5hY3RpdmUgPSBhY3RpdmU7CiAJcmVmLT5yZXRpcmUgPSByZXRpcmU7
CiAJcmVmLT50cmVlID0gUkJfUk9PVDsKLQlpOTE1X2FjdGl2ZV9yZXF1ZXN0X2luaXQoJnJlZi0+
bGFzdCwgTlVMTCwgbGFzdF9yZXRpcmUpOworCXJlZi0+Y2FjaGUgPSBOVUxMOwogCWluaXRfbGxp
c3RfaGVhZCgmcmVmLT5iYXJyaWVycyk7Ci0JcmVmLT5jb3VudCA9IDA7CisJYXRvbWljX3NldCgm
cmVmLT5jb3VudCwgMCk7CisJX19tdXRleF9pbml0KCZyZWYtPm11dGV4LCAiaTkxNV9hY3RpdmUi
LCBrZXkpOwogfQogCiBpbnQgaTkxNV9hY3RpdmVfcmVmKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
LApAQCAtMjIzLDY4ICsyMTAsODQgQEAgaW50IGk5MTVfYWN0aXZlX3JlZihzdHJ1Y3QgaTkxNV9h
Y3RpdmUgKnJlZiwKIAkJICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewogCXN0cnVjdCBp
OTE1X2FjdGl2ZV9yZXF1ZXN0ICphY3RpdmU7Ci0JaW50IGVyciA9IDA7CisJaW50IGVycjsKIAog
CS8qIFByZXZlbnQgcmVhcGluZyBpbiBjYXNlIHdlIG1hbGxvYy93YWl0IHdoaWxlIGJ1aWxkaW5n
IHRoZSB0cmVlICovCi0JaTkxNV9hY3RpdmVfYWNxdWlyZShyZWYpOworCWVyciA9IGk5MTVfYWN0
aXZlX2FjcXVpcmUocmVmKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJYWN0aXZlID0g
YWN0aXZlX2luc3RhbmNlKHJlZiwgdGltZWxpbmUpOwotCWlmIChJU19FUlIoYWN0aXZlKSkgewot
CQllcnIgPSBQVFJfRVJSKGFjdGl2ZSk7CisJaWYgKCFhY3RpdmUpIHsKKwkJZXJyID0gLUVOT01F
TTsKIAkJZ290byBvdXQ7CiAJfQogCiAJaWYgKCFpOTE1X2FjdGl2ZV9yZXF1ZXN0X2lzc2V0KGFj
dGl2ZSkpCi0JCXJlZi0+Y291bnQrKzsKKwkJYXRvbWljX2luYygmcmVmLT5jb3VudCk7CiAJX19p
OTE1X2FjdGl2ZV9yZXF1ZXN0X3NldChhY3RpdmUsIHJxKTsKIAotCUdFTV9CVUdfT04oIXJlZi0+
Y291bnQpOwogb3V0OgogCWk5MTVfYWN0aXZlX3JlbGVhc2UocmVmKTsKIAlyZXR1cm4gZXJyOwog
fQogCi1ib29sIGk5MTVfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCitp
bnQgaTkxNV9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKKwlpbnQg
ZXJyOworCiAJZGVidWdfYWN0aXZlX2Fzc2VydChyZWYpOwotCWxvY2tkZXBfYXNzZXJ0X2hlbGQo
QktMKHJlZikpOworCWlmIChhdG9taWNfYWRkX3VubGVzcygmcmVmLT5jb3VudCwgMSwgMCkpCisJ
CXJldHVybiAwOworCisJZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZyZWYtPm11dGV4
KTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCi0JaWYgKHJlZi0+Y291bnQrKykKLQkJcmV0
dXJuIGZhbHNlOworCWlmICghYXRvbWljX3JlYWQoJnJlZi0+Y291bnQpICYmIHJlZi0+YWN0aXZl
KQorCQllcnIgPSByZWYtPmFjdGl2ZShyZWYpOworCWlmICghZXJyKSB7CisJCWRlYnVnX2FjdGl2
ZV9hY3RpdmF0ZShyZWYpOworCQlhdG9taWNfaW5jKCZyZWYtPmNvdW50KTsKKwl9CisKKwltdXRl
eF91bmxvY2soJnJlZi0+bXV0ZXgpOwogCi0JZGVidWdfYWN0aXZlX2FjdGl2YXRlKHJlZik7Ci0J
cmV0dXJuIHRydWU7CisJcmV0dXJuIGVycjsKIH0KIAogdm9pZCBpOTE1X2FjdGl2ZV9yZWxlYXNl
KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewogCWRlYnVnX2FjdGl2ZV9hc3NlcnQocmVmKTsK
LQlsb2NrZGVwX2Fzc2VydF9oZWxkKEJLTChyZWYpKTsKLQotCV9fYWN0aXZlX3JldGlyZShyZWYp
OworCWFjdGl2ZV9yZXRpcmUocmVmKTsKIH0KIAogaW50IGk5MTVfYWN0aXZlX3dhaXQoc3RydWN0
IGk5MTVfYWN0aXZlICpyZWYpCiB7CiAJc3RydWN0IGFjdGl2ZV9ub2RlICppdCwgKm47Ci0JaW50
IHJldCA9IDA7CisJaW50IGVycjsKIAotCWlmIChpOTE1X2FjdGl2ZV9hY3F1aXJlKHJlZikpCi0J
CWdvdG8gb3V0X3JlbGVhc2U7CisJbWlnaHRfc2xlZXAoKTsKKwlpZiAoUkJfRU1QVFlfUk9PVCgm
cmVmLT50cmVlKSkKKwkJcmV0dXJuIDA7CiAKLQlyZXQgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3Jl
dGlyZSgmcmVmLT5sYXN0LCBCS0wocmVmKSk7Ci0JaWYgKHJldCkKLQkJZ290byBvdXRfcmVsZWFz
ZTsKKwllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnJlZi0+bXV0ZXgpOworCWlmIChl
cnIpCisJCXJldHVybiBlcnI7CisKKwlpZiAoIWF0b21pY19hZGRfdW5sZXNzKCZyZWYtPmNvdW50
LCAxLCAwKSkgeworCQltdXRleF91bmxvY2soJnJlZi0+bXV0ZXgpOworCQlyZXR1cm4gMDsKKwl9
CiAKIAlyYnRyZWVfcG9zdG9yZGVyX2Zvcl9lYWNoX2VudHJ5X3NhZmUoaXQsIG4sICZyZWYtPnRy
ZWUsIG5vZGUpIHsKLQkJcmV0ID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9yZXRpcmUoJml0LT5iYXNl
LCBCS0wocmVmKSk7Ci0JCWlmIChyZXQpCisJCWVyciA9IGk5MTVfYWN0aXZlX3JlcXVlc3RfcmV0
aXJlKCZpdC0+YmFzZSwgQktMKHJlZikpOworCQlpZiAoZXJyKQogCQkJYnJlYWs7CiAJfQogCi1v
dXRfcmVsZWFzZToKLQlpOTE1X2FjdGl2ZV9yZWxlYXNlKHJlZik7Ci0JcmV0dXJuIHJldDsKKwlf
X2FjdGl2ZV9yZXRpcmUocmVmKTsKKwlyZXR1cm4gZXJyOwogfQogCiBpbnQgaTkxNV9yZXF1ZXN0
X2F3YWl0X2FjdGl2ZV9yZXF1ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLApAQCAtMjk5LDIz
ICszMDIsMjQgQEAgaW50IGk5MTVfcmVxdWVzdF9hd2FpdF9hY3RpdmVfcmVxdWVzdChzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwKIGludCBpOTE1X3JlcXVlc3RfYXdhaXRfYWN0aXZlKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKIAlzdHJ1Y3QgYWN0
aXZlX25vZGUgKml0LCAqbjsKLQlpbnQgZXJyID0gMDsKKwlpbnQgZXJyOwogCi0JLyogYXdhaXQg
YWxsb2NhdGVzIGFuZCBzbyB3ZSBuZWVkIHRvIGF2b2lkIGhpdHRpbmcgdGhlIHNocmlua2VyICov
Ci0JaWYgKGk5MTVfYWN0aXZlX2FjcXVpcmUocmVmKSkKLQkJZ290byBvdXQ7IC8qIHdhcyBpZGxl
ICovCisJaWYgKFJCX0VNUFRZX1JPT1QoJnJlZi0+dHJlZSkpCisJCXJldHVybiAwOwogCi0JZXJy
ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2FjdGl2ZV9yZXF1ZXN0KHJxLCAmcmVmLT5sYXN0KTsKKwkv
KiBhd2FpdCBhbGxvY2F0ZXMgYW5kIHNvIHdlIG5lZWQgdG8gYXZvaWQgaGl0dGluZyB0aGUgc2hy
aW5rZXIgKi8KKwllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlKHJlZik7CiAJaWYgKGVycikKLQkJ
Z290byBvdXQ7CisJCXJldHVybiBlcnI7CiAKKwltdXRleF9sb2NrKCZyZWYtPm11dGV4KTsKIAly
YnRyZWVfcG9zdG9yZGVyX2Zvcl9lYWNoX2VudHJ5X3NhZmUoaXQsIG4sICZyZWYtPnRyZWUsIG5v
ZGUpIHsKIAkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2FjdGl2ZV9yZXF1ZXN0KHJxLCAmaXQt
PmJhc2UpOwogCQlpZiAoZXJyKQotCQkJZ290byBvdXQ7CisJCQlicmVhazsKIAl9CisJbXV0ZXhf
dW5sb2NrKCZyZWYtPm11dGV4KTsKIAotb3V0OgogCWk5MTVfYWN0aXZlX3JlbGVhc2UocmVmKTsK
IAlyZXR1cm4gZXJyOwogfQpAQCAtMzI0LDkgKzMyOCw5IEBAIGludCBpOTE1X3JlcXVlc3RfYXdh
aXRfYWN0aXZlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJl
ZikKIHZvaWQgaTkxNV9hY3RpdmVfZmluaShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKIAlk
ZWJ1Z19hY3RpdmVfZmluaShyZWYpOwotCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfcmVxdWVzdF9p
c3NldCgmcmVmLT5sYXN0KSk7CiAJR0VNX0JVR19PTighUkJfRU1QVFlfUk9PVCgmcmVmLT50cmVl
KSk7Ci0JR0VNX0JVR19PTihyZWYtPmNvdW50KTsKKwlHRU1fQlVHX09OKGF0b21pY19yZWFkKCZy
ZWYtPmNvdW50KSk7CisJbXV0ZXhfZGVzdHJveSgmcmVmLT5tdXRleCk7CiB9CiAjZW5kaWYKIApA
QCAtMzUzLDcgKzM1Nyw3IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2Jh
cnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCiAJCQkJCSAodm9pZCAqKWVuZ2luZSwgbm9k
ZV9yZXRpcmUpOwogCQlub2RlLT50aW1lbGluZSA9IGtjdHgtPnJpbmctPnRpbWVsaW5lLT5mZW5j
ZV9jb250ZXh0OwogCQlub2RlLT5yZWYgPSByZWY7Ci0JCXJlZi0+Y291bnQrKzsKKwkJYXRvbWlj
X2luYygmcmVmLT5jb3VudCk7CiAKIAkJaW50ZWxfZW5naW5lX3BtX2dldChlbmdpbmUpOwogCQls
bGlzdF9hZGQoKHN0cnVjdCBsbGlzdF9ub2RlICopJm5vZGUtPmJhc2UubGluaywKQEAgLTM4MCw4
ICszODQsOSBAQCB2b2lkIGk5MTVfYWN0aXZlX2FjcXVpcmVfYmFycmllcihzdHJ1Y3QgaTkxNV9h
Y3RpdmUgKnJlZikKIHsKIAlzdHJ1Y3QgbGxpc3Rfbm9kZSAqcG9zLCAqbmV4dDsKIAotCWk5MTVf
YWN0aXZlX2FjcXVpcmUocmVmKTsKKwlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUocmVm
KSk7CiAKKwltdXRleF9sb2NrX25lc3RlZCgmcmVmLT5tdXRleCwgU0lOR0xFX0RFUFRIX05FU1RJ
TkcpOwogCWxsaXN0X2Zvcl9lYWNoX3NhZmUocG9zLCBuZXh0LCBsbGlzdF9kZWxfYWxsKCZyZWYt
PmJhcnJpZXJzKSkgewogCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJCXN0cnVj
dCBhY3RpdmVfbm9kZSAqbm9kZTsKQEAgLTQxMSw3ICs0MTYsNyBAQCB2b2lkIGk5MTVfYWN0aXZl
X2FjcXVpcmVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAkJCSAgJmVuZ2luZS0+
YmFycmllcl90YXNrcyk7CiAJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKIAl9Ci0JaTkx
NV9hY3RpdmVfcmVsZWFzZShyZWYpOworCW11dGV4X3VubG9jaygmcmVmLT5tdXRleCk7CiB9CiAK
IHZvaWQgaTkxNV9yZXF1ZXN0X2FkZF9iYXJyaWVycyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCmluZGV4IGMxNGVlYmY2ZDA3NC4uMTM0MTY2ZDMx
MjUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKQEAgLTM2OSw5ICszNjksMTYgQEAg
aTkxNV9hY3RpdmVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgKmFj
dGl2ZSwKICAqIHN5bmNocm9uaXNhdGlvbi4KICAqLwogCi12b2lkIGk5MTVfYWN0aXZlX2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCi0JCSAgICAgIHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmLAotCQkgICAgICB2b2lkICgqcmV0aXJlKShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikp
Owordm9pZCBfX2k5MTVfYWN0aXZlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
CisJCQlzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKKwkJCWludCAoKmFjdGl2ZSkoc3RydWN0IGk5
MTVfYWN0aXZlICpyZWYpLAorCQkJdm9pZCAoKnJldGlyZSkoc3RydWN0IGk5MTVfYWN0aXZlICpy
ZWYpLAorCQkJc3RydWN0IGxvY2tfY2xhc3Nfa2V5ICprZXkpOworI2RlZmluZSBpOTE1X2FjdGl2
ZV9pbml0KGk5MTUsIHJlZiwgYWN0aXZlLCByZXRpcmUpIGRvIHsJCVwKKwlzdGF0aWMgc3RydWN0
IGxvY2tfY2xhc3Nfa2V5IF9fa2V5OwkJCQlcCisJCQkJCQkJCQlcCisJX19pOTE1X2FjdGl2ZV9p
bml0KGk5MTUsIHJlZiwgYWN0aXZlLCByZXRpcmUsICZfX2tleSk7CQlcCit9IHdoaWxlICgwKQog
CiBpbnQgaTkxNV9hY3RpdmVfcmVmKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAogCQkgICAgdTY0
IHRpbWVsaW5lLApAQCAtMzg0LDIwICszOTEsMTQgQEAgaW50IGk5MTVfcmVxdWVzdF9hd2FpdF9h
Y3RpdmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiBpbnQgaTkxNV9yZXF1ZXN0X2F3YWl0X2Fj
dGl2ZV9yZXF1ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCQkJCSAgICAgIHN0cnVjdCBp
OTE1X2FjdGl2ZV9yZXF1ZXN0ICphY3RpdmUpOwogCi1ib29sIGk5MTVfYWN0aXZlX2FjcXVpcmUo
c3RydWN0IGk5MTVfYWN0aXZlICpyZWYpOwotCi1zdGF0aWMgaW5saW5lIHZvaWQgaTkxNV9hY3Rp
dmVfY2FuY2VsKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQotewotCUdFTV9CVUdfT04ocmVmLT5j
b3VudCAhPSAxKTsKLQlyZWYtPmNvdW50ID0gMDsKLX0KLQoraW50IGk5MTVfYWN0aXZlX2FjcXVp
cmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpOwogdm9pZCBpOTE1X2FjdGl2ZV9yZWxlYXNlKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKK3ZvaWQgX19pOTE1X2FjdGl2ZV9yZWxlYXNlX25lc3Rl
ZChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwgaW50IHN1YmNsYXNzKTsKIAogc3RhdGljIGlubGlu
ZSBib29sCiBpOTE1X2FjdGl2ZV9pc19pZGxlKGNvbnN0IHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
KQogewotCXJldHVybiAhcmVmLT5jb3VudDsKKwlyZXR1cm4gIWF0b21pY19yZWFkKCZyZWYtPmNv
dW50KTsKIH0KIAogI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX0dFTSkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCmluZGV4IGMwMjU5OTFiOTIzMy4u
NWIwYTMwMjRjZTI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmgK
QEAgLTcsNyArNyw5IEBACiAjaWZuZGVmIF9JOTE1X0FDVElWRV9UWVBFU19IXwogI2RlZmluZSBf
STkxNV9BQ1RJVkVfVFlQRVNfSF8KIAorI2luY2x1ZGUgPGxpbnV4L2F0b21pYy5oPgogI2luY2x1
ZGUgPGxpbnV4L2xsaXN0Lmg+CisjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KICNpbmNsdWRlIDxs
aW51eC9yYnRyZWUuaD4KICNpbmNsdWRlIDxsaW51eC9yY3VwZGF0ZS5oPgogCkBAIC0yNCwxMyAr
MjYsMTcgQEAgc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgewogCWk5MTVfYWN0aXZlX3JldGly
ZV9mbiByZXRpcmU7CiB9OwogCitzdHJ1Y3QgYWN0aXZlX25vZGU7CisKIHN0cnVjdCBpOTE1X2Fj
dGl2ZSB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CiAKKwlzdHJ1Y3QgYWN0aXZl
X25vZGUgKmNhY2hlOwogCXN0cnVjdCByYl9yb290IHRyZWU7Ci0Jc3RydWN0IGk5MTVfYWN0aXZl
X3JlcXVlc3QgbGFzdDsKLQl1bnNpZ25lZCBpbnQgY291bnQ7CisJc3RydWN0IG11dGV4IG11dGV4
OworCWF0b21pY190IGNvdW50OwogCisJaW50ICgqYWN0aXZlKShzdHJ1Y3QgaTkxNV9hY3RpdmUg
KnJlZik7CiAJdm9pZCAoKnJldGlyZSkoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpOwogCiAJc3Ry
dWN0IGxsaXN0X2hlYWQgYmFycmllcnM7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmlu
ZGV4IDRkYmZiY2NmYTYxOC4uYzNlODMwZmFiZjdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwpAQCAtMjA1NSw3ICsyMDU1LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqcGRf
dm1hX2NyZWF0ZShzdHJ1Y3QgZ2VuNl9wcGd0dCAqcHBndHQsIGludCBzaXplKQogCWlmICghdm1h
KQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAotCWk5MTVfYWN0aXZlX2luaXQoaTkxNSwg
JnZtYS0+YWN0aXZlLCBOVUxMKTsKKwlpOTE1X2FjdGl2ZV9pbml0KGk5MTUsICZ2bWEtPmFjdGl2
ZSwgTlVMTCwgTlVMTCk7CiAJSU5JVF9BQ1RJVkVfUkVRVUVTVCgmdm1hLT5sYXN0X2ZlbmNlKTsK
IAogCXZtYS0+dm0gPSAmZ2d0dC0+dm07CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRleCBjMTNi
ODZlNmVmMWYuLmMyMGEzMDIyY2Q4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBAIC03OCwx
MSArNzgsMjAgQEAgc3RhdGljIHZvaWQgdm1hX3ByaW50X2FsbG9jYXRvcihzdHJ1Y3QgaTkxNV92
bWEgKnZtYSwgY29uc3QgY2hhciAqcmVhc29uKQogCiAjZW5kaWYKIAotc3RhdGljIHZvaWQgX19p
OTE1X3ZtYV9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCitzdGF0aWMgaW5saW5lIHN0
cnVjdCBpOTE1X3ZtYSAqYWN0aXZlX3RvX3ZtYShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsK
LQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IGNvbnRhaW5lcl9vZihyZWYsIHR5cGVvZigqdm1hKSwg
YWN0aXZlKTsKKwlyZXR1cm4gY29udGFpbmVyX29mKHJlZiwgdHlwZW9mKHN0cnVjdCBpOTE1X3Zt
YSksIGFjdGl2ZSk7Cit9CiAKLQlpOTE1X3ZtYV9wdXQodm1hKTsKK3N0YXRpYyBpbnQgX19pOTE1
X3ZtYV9hY3RpdmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCit7CisJaTkxNV92bWFfZ2V0KGFj
dGl2ZV90b192bWEocmVmKSk7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIF9faTkxNV92
bWFfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQoreworCWk5MTVfdm1hX3B1dChhY3Rp
dmVfdG9fdm1hKHJlZikpOwogfQogCiBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICoKQEAgLTEwNyw3
ICsxMTYsOCBAQCB2bWFfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
dm1hLT5zaXplID0gb2JqLT5iYXNlLnNpemU7CiAJdm1hLT5kaXNwbGF5X2FsaWdubWVudCA9IEk5
MTVfR1RUX01JTl9BTElHTk1FTlQ7CiAKLQlpOTE1X2FjdGl2ZV9pbml0KHZtLT5pOTE1LCAmdm1h
LT5hY3RpdmUsIF9faTkxNV92bWFfcmV0aXJlKTsKKwlpOTE1X2FjdGl2ZV9pbml0KHZtLT5pOTE1
LCAmdm1hLT5hY3RpdmUsCisJCQkgX19pOTE1X3ZtYV9hY3RpdmUsIF9faTkxNV92bWFfcmV0aXJl
KTsKIAlJTklUX0FDVElWRV9SRVFVRVNUKCZ2bWEtPmxhc3RfZmVuY2UpOwogCiAJSU5JVF9MSVNU
X0hFQUQoJnZtYS0+Y2xvc2VkX2xpbmspOwpAQCAtOTA0LDExICs5MTQsNyBAQCBpbnQgaTkxNV92
bWFfbW92ZV90b19hY3RpdmUoc3RydWN0IGk5MTVfdm1hICp2bWEsCiAJICogYWRkIHRoZSBhY3Rp
dmUgcmVmZXJlbmNlIGZpcnN0IGFuZCBxdWV1ZSBmb3IgaXQgdG8gYmUgZHJvcHBlZAogCSAqICps
YXN0Ki4KIAkgKi8KLQlpZiAoaTkxNV9hY3RpdmVfYWNxdWlyZSgmdm1hLT5hY3RpdmUpKQotCQlp
OTE1X3ZtYV9nZXQodm1hKTsKLQogCWVyciA9IGk5MTVfYWN0aXZlX3JlZigmdm1hLT5hY3RpdmUs
IHJxLT5mZW5jZS5jb250ZXh0LCBycSk7Ci0JaTkxNV9hY3RpdmVfcmVsZWFzZSgmdm1hLT5hY3Rp
dmUpOwogCWlmICh1bmxpa2VseShlcnIpKQogCQlyZXR1cm4gZXJyOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jCmluZGV4IDk4NDkzYmNjOTFmMi4uODRm
Y2UzNzljMGRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9hY3RpdmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3Rp
dmUuYwpAQCAtNCw2ICs0LDggQEAKICAqIENvcHlyaWdodCDCqSAyMDE4IEludGVsIENvcnBvcmF0
aW9uCiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4L2tyZWYuaD4KKwogI2luY2x1ZGUgImdlbS9pOTE1
X2dlbV9wbS5oIgogCiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVzdC5oIgpAQCAtMTMsMjAgKzE1LDQ3
IEBACiAKIHN0cnVjdCBsaXZlX2FjdGl2ZSB7CiAJc3RydWN0IGk5MTVfYWN0aXZlIGJhc2U7CisJ
c3RydWN0IGtyZWYgcmVmOwogCWJvb2wgcmV0aXJlZDsKIH07CiAKK3N0YXRpYyB2b2lkIF9fbGl2
ZV9nZXQoc3RydWN0IGxpdmVfYWN0aXZlICphY3RpdmUpCit7CisJa3JlZl9nZXQoJmFjdGl2ZS0+
cmVmKTsKK30KKwogc3RhdGljIHZvaWQgX19saXZlX2ZyZWUoc3RydWN0IGxpdmVfYWN0aXZlICph
Y3RpdmUpCiB7CiAJaTkxNV9hY3RpdmVfZmluaSgmYWN0aXZlLT5iYXNlKTsKIAlrZnJlZShhY3Rp
dmUpOwogfQogCitzdGF0aWMgdm9pZCBfX2xpdmVfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqcmVmKQor
eworCXN0cnVjdCBsaXZlX2FjdGl2ZSAqYWN0aXZlID0gY29udGFpbmVyX29mKHJlZiwgdHlwZW9m
KCphY3RpdmUpLCByZWYpOworCisJX19saXZlX2ZyZWUoYWN0aXZlKTsKK30KKworc3RhdGljIHZv
aWQgX19saXZlX3B1dChzdHJ1Y3QgbGl2ZV9hY3RpdmUgKmFjdGl2ZSkKK3sKKwlrcmVmX3B1dCgm
YWN0aXZlLT5yZWYsIF9fbGl2ZV9yZWxlYXNlKTsKK30KKworc3RhdGljIGludCBfX2xpdmVfYWN0
aXZlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYmFzZSkKK3sKKwlzdHJ1Y3QgbGl2ZV9hY3RpdmUgKmFj
dGl2ZSA9IGNvbnRhaW5lcl9vZihiYXNlLCB0eXBlb2YoKmFjdGl2ZSksIGJhc2UpOworCisJX19s
aXZlX2dldChhY3RpdmUpOworCXJldHVybiAwOworfQorCiBzdGF0aWMgdm9pZCBfX2xpdmVfcmV0
aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYmFzZSkKIHsKIAlzdHJ1Y3QgbGl2ZV9hY3RpdmUgKmFj
dGl2ZSA9IGNvbnRhaW5lcl9vZihiYXNlLCB0eXBlb2YoKmFjdGl2ZSksIGJhc2UpOwogCiAJYWN0
aXZlLT5yZXRpcmVkID0gdHJ1ZTsKKwlfX2xpdmVfcHV0KGFjdGl2ZSk7CiB9CiAKIHN0YXRpYyBz
dHJ1Y3QgbGl2ZV9hY3RpdmUgKl9fbGl2ZV9hbGxvYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKQEAgLTM3LDcgKzY2LDggQEAgc3RhdGljIHN0cnVjdCBsaXZlX2FjdGl2ZSAqX19saXZl
X2FsbG9jKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWlmICghYWN0aXZlKQogCQly
ZXR1cm4gTlVMTDsKIAotCWk5MTVfYWN0aXZlX2luaXQoaTkxNSwgJmFjdGl2ZS0+YmFzZSwgX19s
aXZlX3JldGlyZSk7CisJa3JlZl9pbml0KCZhY3RpdmUtPnJlZik7CisJaTkxNV9hY3RpdmVfaW5p
dChpOTE1LCAmYWN0aXZlLT5iYXNlLCBfX2xpdmVfYWN0aXZlLCBfX2xpdmVfcmV0aXJlKTsKIAog
CXJldHVybiBhY3RpdmU7CiB9CkBAIC02MiwxMSArOTIsOSBAQCBfX2xpdmVfYWN0aXZlX3NldHVw
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVN
KTsKIAl9CiAKLQlpZiAoIWk5MTVfYWN0aXZlX2FjcXVpcmUoJmFjdGl2ZS0+YmFzZSkpIHsKLQkJ
cHJfZXJyKCJGaXJzdCBpOTE1X2FjdGl2ZV9hY3F1aXJlIHNob3VsZCByZXBvcnQgYmVpbmcgaWRs
ZVxuIik7Ci0JCWVyciA9IC1FSU5WQUw7CisJZXJyID0gaTkxNV9hY3RpdmVfYWNxdWlyZSgmYWN0
aXZlLT5iYXNlKTsKKwlpZiAoZXJyKQogCQlnb3RvIG91dDsKLQl9CiAKIAlmb3JfZWFjaF9lbmdp
bmUoZW5naW5lLCBpOTE1LCBpZCkgewogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKQEAgLTk3
LDE4ICsxMjUsMjEgQEAgX19saXZlX2FjdGl2ZV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIAkJcHJfZXJyKCJpOTE1X2FjdGl2ZSByZXRpcmVkIGJlZm9yZSBzdWJtaXNzaW9u
IVxuIik7CiAJCWVyciA9IC1FSU5WQUw7CiAJfQotCWlmIChhY3RpdmUtPmJhc2UuY291bnQgIT0g
Y291bnQpIHsKKwlpZiAoYXRvbWljX3JlYWQoJmFjdGl2ZS0+YmFzZS5jb3VudCkgIT0gY291bnQp
IHsKIAkJcHJfZXJyKCJpOTE1X2FjdGl2ZSBub3QgdHJhY2tpbmcgYWxsIHJlcXVlc3RzLCBmb3Vu
ZCAlZCwgZXhwZWN0ZWQgJWRcbiIsCi0JCSAgICAgICBhY3RpdmUtPmJhc2UuY291bnQsIGNvdW50
KTsKKwkJICAgICAgIGF0b21pY19yZWFkKCZhY3RpdmUtPmJhc2UuY291bnQpLCBjb3VudCk7CiAJ
CWVyciA9IC1FSU5WQUw7CiAJfQogCiBvdXQ6CiAJaTkxNV9zd19mZW5jZV9jb21taXQoc3VibWl0
KTsKIAloZWFwX2ZlbmNlX3B1dChzdWJtaXQpOworCWlmIChlcnIpIHsKKwkJX19saXZlX3B1dChh
Y3RpdmUpOworCQlhY3RpdmUgPSBFUlJfUFRSKGVycik7CisJfQogCi0JLyogWFhYIGxlYWtzIGxp
dmVfYWN0aXZlIG9uIGVycm9yICovCi0JcmV0dXJuIGVyciA/IEVSUl9QVFIoZXJyKSA6IGFjdGl2
ZTsKKwlyZXR1cm4gYWN0aXZlOwogfQogCiBzdGF0aWMgaW50IGxpdmVfYWN0aXZlX3dhaXQodm9p
ZCAqYXJnKQpAQCAtMTM1LDcgKzE2Niw3IEBAIHN0YXRpYyBpbnQgbGl2ZV9hY3RpdmVfd2FpdCh2
b2lkICphcmcpCiAJCWVyciA9IC1FSU5WQUw7CiAJfQogCi0JX19saXZlX2ZyZWUoYWN0aXZlKTsK
KwlfX2xpdmVfcHV0KGFjdGl2ZSk7CiAKIAlpZiAoaWd0X2ZsdXNoX3Rlc3QoaTkxNSwgSTkxNV9X
QUlUX0xPQ0tFRCkpCiAJCWVyciA9IC1FSU87CkBAIC0xNzQsNyArMjA1LDcgQEAgc3RhdGljIGlu
dCBsaXZlX2FjdGl2ZV9yZXRpcmUodm9pZCAqYXJnKQogCQllcnIgPSAtRUlOVkFMOwogCX0KIAot
CV9fbGl2ZV9mcmVlKGFjdGl2ZSk7CisJX19saXZlX3B1dChhY3RpdmUpOwogCiBlcnI6CiAJaW50
ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
