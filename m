Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B9E81E86
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 16:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7069A6E4C5;
	Mon,  5 Aug 2019 14:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC5B6E48A;
 Mon,  5 Aug 2019 14:01:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E88D62F3673;
 Mon,  5 Aug 2019 14:01:25 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-81.ams2.redhat.com
 [10.36.116.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E54CD643EA;
 Mon,  5 Aug 2019 14:01:22 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D450B1753A; Mon,  5 Aug 2019 16:01:20 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 16:01:07 +0200
Message-Id: <20190805140119.7337-6-kraxel@redhat.com>
In-Reply-To: <20190805140119.7337-1-kraxel@redhat.com>
References: <20190805140119.7337-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 05 Aug 2019 14:01:26 +0000 (UTC)
Subject: [Intel-gfx] [PATCH v6 05/17] drm/amdgpu: use embedded gem object
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
Cc: "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>, thomas@shipmail.org,
 David Airlie <airlied@linux.ie>, ckoenig.leichtzumerken@gmail.com,
 intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 bskeggs@redhat.com, tzimmermann@suse.de,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHJvcCBkcm1fZ2VtX29iamVjdCBmcm9tIGFtZGdwdV9ibywgdXNlIHRoZQp0dG1fYnVmZmVyX29i
amVjdC5iYXNlIGluc3RlYWQuCgpCdWlsZCB0ZXN0ZWQgb25seS4KClNpZ25lZC1vZmYtYnk6IEdl
cmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9nZW0uaCAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X29iamVjdC5oICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2dlbS5jICAgICB8ICA4ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfb2JqZWN0LmMgIHwgMTAgKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3R0bS5jICAgICB8ICAyICstCiA2IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0u
aAppbmRleCBiOGJhNmUyN2M2MWYuLjJmMTcxNTBlMjZlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9nZW0uaApAQCAtMzEsNyArMzEsNyBAQAogICovCiAKICNkZWZpbmUgQU1E
R1BVX0dFTV9ET01BSU5fTUFYCQkweDMKLSNkZWZpbmUgZ2VtX3RvX2FtZGdwdV9ibyhnb2JqKSBj
b250YWluZXJfb2YoKGdvYmopLCBzdHJ1Y3QgYW1kZ3B1X2JvLCBnZW1fYmFzZSkKKyNkZWZpbmUg
Z2VtX3RvX2FtZGdwdV9ibyhnb2JqKSBjb250YWluZXJfb2YoKGdvYmopLCBzdHJ1Y3QgYW1kZ3B1
X2JvLCB0Ym8uYmFzZSkKIAogdm9pZCBhbWRncHVfZ2VtX29iamVjdF9mcmVlKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKTsKIGludCBhbWRncHVfZ2VtX29iamVjdF9vcGVuKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVj
dC5oCmluZGV4IGQ2MDU5M2NjNDM2ZS4uNjQ1YTE4OWQzNjVjIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5oCkBAIC05NCw3ICs5NCw2IEBAIHN0cnVjdCBhbWRn
cHVfYm8gewogCS8qIHBlciBWTSBzdHJ1Y3R1cmUgZm9yIHBhZ2UgdGFibGVzIGFuZCB3aXRoIHZp
cnR1YWwgYWRkcmVzc2VzICovCiAJc3RydWN0IGFtZGdwdV92bV9ib19iYXNlCSp2bV9ibzsKIAkv
KiBDb25zdGFudCBhZnRlciBpbml0aWFsaXphdGlvbiAqLwotCXN0cnVjdCBkcm1fZ2VtX29iamVj
dAkJZ2VtX2Jhc2U7CiAJc3RydWN0IGFtZGdwdV9ibwkJKnBhcmVudDsKIAlzdHJ1Y3QgYW1kZ3B1
X2JvCQkqc2hhZG93OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYwppbmRleCAzNDRmMjc3YjU0ZjAuLmNhMzJkYjZlZjVjMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCkBAIC0zOTMsNyArMzkzLDcgQEAgYW1kZ3B1
X2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJYm8t
PnByaW1lX3NoYXJlZF9jb3VudCA9IDE7CiAKIAlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKHJl
c3YpOwotCXJldHVybiAmYm8tPmdlbV9iYXNlOworCXJldHVybiAmYm8tPnRiby5iYXNlOwogCiBl
cnJvcjoKIAlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKHJlc3YpOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2dlbS5jCmluZGV4IDkzOWY4MzA1NTExYi4uOWZmMDUwMWNmMWUwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jCkBAIC04NSw3ICs4NSw3IEBA
IGludCBhbWRncHVfZ2VtX29iamVjdF9jcmVhdGUoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYs
IHVuc2lnbmVkIGxvbmcgc2l6ZSwKIAkJfQogCQlyZXR1cm4gcjsKIAl9Ci0JKm9iaiA9ICZiby0+
Z2VtX2Jhc2U7CisJKm9iaiA9ICZiby0+dGJvLmJhc2U7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTY4
OSw3ICs2ODksNyBAQCBpbnQgYW1kZ3B1X2dlbV9vcF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLAogCQlzdHJ1Y3QgZHJtX2FtZGdwdV9nZW1fY3JlYXRlX2luIGluZm87
CiAJCXZvaWQgX191c2VyICpvdXQgPSB1NjRfdG9fdXNlcl9wdHIoYXJncy0+dmFsdWUpOwogCi0J
CWluZm8uYm9fc2l6ZSA9IHJvYmotPmdlbV9iYXNlLnNpemU7CisJCWluZm8uYm9fc2l6ZSA9IHJv
YmotPnRiby5iYXNlLnNpemU7CiAJCWluZm8uYWxpZ25tZW50ID0gcm9iai0+dGJvLm1lbS5wYWdl
X2FsaWdubWVudCA8PCBQQUdFX1NISUZUOwogCQlpbmZvLmRvbWFpbnMgPSByb2JqLT5wcmVmZXJy
ZWRfZG9tYWluczsKIAkJaW5mby5kb21haW5fZmxhZ3MgPSByb2JqLT5mbGFnczsKQEAgLTgxOSw4
ICs4MTksOCBAQCBzdGF0aWMgaW50IGFtZGdwdV9kZWJ1Z2ZzX2dlbV9ib19pbmZvKGludCBpZCwg
dm9pZCAqcHRyLCB2b2lkICpkYXRhKQogCWlmIChwaW5fY291bnQpCiAJCXNlcV9wcmludGYobSwg
IiBwaW4gY291bnQgJWQiLCBwaW5fY291bnQpOwogCi0JZG1hX2J1ZiA9IFJFQURfT05DRShiby0+
Z2VtX2Jhc2UuZG1hX2J1Zik7Ci0JYXR0YWNobWVudCA9IFJFQURfT05DRShiby0+Z2VtX2Jhc2Uu
aW1wb3J0X2F0dGFjaCk7CisJZG1hX2J1ZiA9IFJFQURfT05DRShiby0+dGJvLmJhc2UuZG1hX2J1
Zik7CisJYXR0YWNobWVudCA9IFJFQURfT05DRShiby0+dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCk7
CiAKIAlpZiAoYXR0YWNobWVudCkKIAkJc2VxX3ByaW50ZihtLCAiIGltcG9ydGVkIGZyb20gJXAi
LCBkbWFfYnVmKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYwpp
bmRleCBlMzUyYWEyY2MyOGIuLjI0MmQ0ZTgxZmM3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9vYmplY3QuYwpAQCAtODUsOSArODUsOSBAQCBzdGF0aWMgdm9pZCBhbWRn
cHVfYm9fZGVzdHJveShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKnRibykKIAogCWFtZGdwdV9i
b19rdW5tYXAoYm8pOwogCi0JaWYgKGJvLT5nZW1fYmFzZS5pbXBvcnRfYXR0YWNoKQotCQlkcm1f
cHJpbWVfZ2VtX2Rlc3Ryb3koJmJvLT5nZW1fYmFzZSwgYm8tPnRiby5zZyk7Ci0JZHJtX2dlbV9v
YmplY3RfcmVsZWFzZSgmYm8tPmdlbV9iYXNlKTsKKwlpZiAoYm8tPnRiby5iYXNlLmltcG9ydF9h
dHRhY2gpCisJCWRybV9wcmltZV9nZW1fZGVzdHJveSgmYm8tPnRiby5iYXNlLCBiby0+dGJvLnNn
KTsKKwlkcm1fZ2VtX29iamVjdF9yZWxlYXNlKCZiby0+dGJvLmJhc2UpOwogCS8qIGluIGNhc2Ug
YW1kZ3B1X2RldmljZV9yZWNvdmVyX3ZyYW0gZ290IE5VTEwgb2YgYm8tPnBhcmVudCAqLwogCWlm
ICghbGlzdF9lbXB0eSgmYm8tPnNoYWRvd19saXN0KSkgewogCQltdXRleF9sb2NrKCZhZGV2LT5z
aGFkb3dfbGlzdF9sb2NrKTsKQEAgLTQ1NCw3ICs0NTQsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV9i
b19kb19jcmVhdGUoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJYm8gPSBremFsbG9jKHNp
emVvZihzdHJ1Y3QgYW1kZ3B1X2JvKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKGJvID09IE5VTEwpCiAJ
CXJldHVybiAtRU5PTUVNOwotCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdChhZGV2LT5kZGV2
LCAmYm8tPmdlbV9iYXNlLCBzaXplKTsKKwlkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2luaXQoYWRl
di0+ZGRldiwgJmJvLT50Ym8uYmFzZSwgc2l6ZSk7CiAJSU5JVF9MSVNUX0hFQUQoJmJvLT5zaGFk
b3dfbGlzdCk7CiAJYm8tPnZtX2JvID0gTlVMTDsKIAliby0+cHJlZmVycmVkX2RvbWFpbnMgPSBi
cC0+cHJlZmVycmVkX2RvbWFpbiA/IGJwLT5wcmVmZXJyZWRfZG9tYWluIDoKQEAgLTUwOSw3ICs1
MDksNyBAQCBzdGF0aWMgaW50IGFtZGdwdV9ib19kb19jcmVhdGUoc3RydWN0IGFtZGdwdV9kZXZp
Y2UgKmFkZXYsCiAJaWYgKHVubGlrZWx5KHIgIT0gMCkpCiAJCXJldHVybiByOwogCi0JYm8tPmdl
bV9iYXNlLnJlc3YgPSBiby0+dGJvLnJlc3Y7CisJYm8tPnRiby5iYXNlLnJlc3YgPSBiby0+dGJv
LnJlc3Y7CiAKIAlpZiAoIWFtZGdwdV9nbWNfdnJhbV9mdWxsX3Zpc2libGUoJmFkZXYtPmdtYykg
JiYKIAkgICAgYm8tPnRiby5tZW0ubWVtX3R5cGUgPT0gVFRNX1BMX1ZSQU0gJiYKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwppbmRleCBlNTFiNDhhYzQ4ZWIuLmIzOWI1MDE3
NThkZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMjI3LDcg
KzIyNyw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3ZlcmlmeV9hY2Nlc3Moc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywgc3RydWN0IGZpbGUgKmZpbHApCiAKIAlpZiAoYW1kZ3B1X3R0bV90dF9n
ZXRfdXNlcm1tKGJvLT50dG0pKQogCQlyZXR1cm4gLUVQRVJNOwotCXJldHVybiBkcm1fdm1hX25v
ZGVfdmVyaWZ5X2FjY2VzcygmYWJvLT5nZW1fYmFzZS52bWFfbm9kZSwKKwlyZXR1cm4gZHJtX3Zt
YV9ub2RlX3ZlcmlmeV9hY2Nlc3MoJmFiby0+dGJvLmJhc2Uudm1hX25vZGUsCiAJCQkJCSAgZmls
cC0+cHJpdmF0ZV9kYXRhKTsKIH0KIAotLSAKMi4xOC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
