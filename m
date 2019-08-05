Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB52181E93
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 16:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8AC6E503;
	Mon,  5 Aug 2019 14:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6D36E480;
 Mon,  5 Aug 2019 14:01:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 88099765D0;
 Mon,  5 Aug 2019 14:01:25 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-81.ams2.redhat.com
 [10.36.116.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4ECC5643E5;
 Mon,  5 Aug 2019 14:01:23 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id DA71B9DBF; Mon,  5 Aug 2019 16:01:21 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 16:01:10 +0200
Message-Id: <20190805140119.7337-9-kraxel@redhat.com>
In-Reply-To: <20190805140119.7337-1-kraxel@redhat.com>
References: <20190805140119.7337-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 05 Aug 2019 14:01:26 +0000 (UTC)
Subject: [Intel-gfx] [PATCH v6 08/17] drm/ttm: use gem vma_node
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
Cc: David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Huang Rui <ray.huang@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Thomas Hellstrom <thellstrom@vmware.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>, bskeggs@redhat.com,
 Dave Airlie <airlied@redhat.com>, thomas@shipmail.org, tzimmermann@suse.de,
 ckoenig.leichtzumerken@gmail.com, intel-gfx@lists.freedesktop.org,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHJvcCB2bWFfbm9kZSBmcm9tIHR0bV9idWZmZXJfb2JqZWN0LCB1c2UgdGhlIGdlbSBzdHJ1Y3QK
KGJhc2Uudm1hX25vZGUpIGluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBHZXJkIEhvZmZtYW5uIDxr
cmF4ZWxAcmVkaGF0LmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
b2JqZWN0LmggfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuaCAgICAgICAg
ICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9vYmplY3QuaCAgICAgfCAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZHJ2LmggICAgICAgfCAyICstCiBp
bmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oICAgICAgICAgICAgICAgfCA0IC0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVscGVyLmMgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZGlzcGxheS5jICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfZ2VtLmMgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRt
X2JvLmMgICAgICAgICAgICAgICB8IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRt
X2JvX3V0aWwuYyAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3Zt
LmMgICAgICAgICAgICB8IDkgKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRn
cHVfcHJpbWUuYyAgICAgfCAzIC0tLQogZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYm8u
YyAgICAgICAgIHwgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9zdXJmYWNl
LmMgICAgfCA0ICsrLS0KIDE0IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDI3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuaApp
bmRleCA2NDVhMTg5ZDM2NWMuLjExM2ZiMmZlYjQzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9vYmplY3QuaApAQCAtMTkxLDcgKzE5MSw3IEBAIHN0YXRpYyBpbmxpbmUg
dW5zaWduZWQgYW1kZ3B1X2JvX2dwdV9wYWdlX2FsaWdubWVudChzdHJ1Y3QgYW1kZ3B1X2JvICpi
bykKICAqLwogc3RhdGljIGlubGluZSB1NjQgYW1kZ3B1X2JvX21tYXBfb2Zmc2V0KHN0cnVjdCBh
bWRncHVfYm8gKmJvKQogewotCXJldHVybiBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIoJmJvLT50
Ym8udm1hX25vZGUpOworCXJldHVybiBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIoJmJvLT50Ym8u
YmFzZS52bWFfbm9kZSk7CiB9CiAKIC8qKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4
bC9xeGxfb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuaAppbmRleCBi
ODEyZDRhZTlkMGQuLjhhZTU0YmE3ODU3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3F4
bC9xeGxfb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmgKQEAg
LTYwLDcgKzYwLDcgQEAgc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIHF4bF9ib19zaXplKHN0
cnVjdCBxeGxfYm8gKmJvKQogCiBzdGF0aWMgaW5saW5lIHU2NCBxeGxfYm9fbW1hcF9vZmZzZXQo
c3RydWN0IHF4bF9ibyAqYm8pCiB7Ci0JcmV0dXJuIGRybV92bWFfbm9kZV9vZmZzZXRfYWRkcigm
Ym8tPnRiby52bWFfbm9kZSk7CisJcmV0dXJuIGRybV92bWFfbm9kZV9vZmZzZXRfYWRkcigmYm8t
PnRiby5iYXNlLnZtYV9ub2RlKTsKIH0KIAogc3RhdGljIGlubGluZSBpbnQgcXhsX2JvX3dhaXQo
c3RydWN0IHF4bF9ibyAqYm8sIHUzMiAqbWVtX3R5cGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcmFkZW9uL3JhZGVvbl9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFk
ZW9uX29iamVjdC5oCmluZGV4IDlmZmQ4MjE1ZDM4YS4uZTU1NTRiZjkxNDBlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vcmFkZW9uL3JhZGVvbl9vYmplY3QuaApAQCAtMTE2LDcgKzExNiw3IEBAIHN0YXRpYyBp
bmxpbmUgdW5zaWduZWQgcmFkZW9uX2JvX2dwdV9wYWdlX2FsaWdubWVudChzdHJ1Y3QgcmFkZW9u
X2JvICpibykKICAqLwogc3RhdGljIGlubGluZSB1NjQgcmFkZW9uX2JvX21tYXBfb2Zmc2V0KHN0
cnVjdCByYWRlb25fYm8gKmJvKQogewotCXJldHVybiBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIo
JmJvLT50Ym8udm1hX25vZGUpOworCXJldHVybiBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIoJmJv
LT50Ym8uYmFzZS52bWFfbm9kZSk7CiB9CiAKIGV4dGVybiBpbnQgcmFkZW9uX2JvX3dhaXQoc3Ry
dWN0IHJhZGVvbl9ibyAqYm8sIHUzMiAqbWVtX3R5cGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdmlydGlvL3ZpcnRncHVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRn
cHVfZHJ2LmgKaW5kZXggZjRlY2VhNjA1NGJhLi5lMjg4Mjk2NjE3MjQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
dmlydGlvL3ZpcnRncHVfZHJ2LmgKQEAgLTM5Niw3ICszOTYsNyBAQCBzdGF0aWMgaW5saW5lIHZv
aWQgdmlydGlvX2dwdV9vYmplY3RfdW5yZWYoc3RydWN0IHZpcnRpb19ncHVfb2JqZWN0ICoqYm8p
CiAKIHN0YXRpYyBpbmxpbmUgdTY0IHZpcnRpb19ncHVfb2JqZWN0X21tYXBfb2Zmc2V0KHN0cnVj
dCB2aXJ0aW9fZ3B1X29iamVjdCAqYm8pCiB7Ci0JcmV0dXJuIGRybV92bWFfbm9kZV9vZmZzZXRf
YWRkcigmYm8tPnRiby52bWFfbm9kZSk7CisJcmV0dXJuIGRybV92bWFfbm9kZV9vZmZzZXRfYWRk
cigmYm8tPnRiby5iYXNlLnZtYV9ub2RlKTsKIH0KIAogc3RhdGljIGlubGluZSBpbnQgdmlydGlv
X2dwdV9vYmplY3RfcmVzZXJ2ZShzdHJ1Y3QgdmlydGlvX2dwdV9vYmplY3QgKmJvLApkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaCBiL2luY2x1ZGUvZHJtL3R0bS90dG1f
Ym9fYXBpLmgKaW5kZXggZmEwNTBmMDMyOGFiLi43ZmZjNTBhMzMwM2QgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKKysrIGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19h
cGkuaApAQCAtMTUyLDcgKzE1Miw2IEBAIHN0cnVjdCB0dG1fdHQ7CiAgKiBAZGRlc3Ryb3k6IExp
c3QgaGVhZCBmb3IgdGhlIGRlbGF5ZWQgZGVzdHJveSBsaXN0LgogICogQHN3YXA6IExpc3QgaGVh
ZCBmb3Igc3dhcCBMUlUgbGlzdC4KICAqIEBtb3Zpbmc6IEZlbmNlIHNldCB3aGVuIEJPIGlzIG1v
dmluZwotICogQHZtYV9ub2RlOiBBZGRyZXNzIHNwYWNlIG1hbmFnZXIgbm9kZS4KICAqIEBvZmZz
ZXQ6IFRoZSBjdXJyZW50IEdQVSBvZmZzZXQsIHdoaWNoIGNhbiBoYXZlIGRpZmZlcmVudCBtZWFu
aW5ncwogICogZGVwZW5kaW5nIG9uIHRoZSBtZW1vcnkgdHlwZS4gRm9yIFNZU1RFTSB0eXBlIG1l
bW9yeSwgaXQgc2hvdWxkIGJlIDAuCiAgKiBAY3VyX3BsYWNlbWVudDogSGludCBvZiBjdXJyZW50
IHBsYWNlbWVudC4KQEAgLTIxOSw5ICsyMTgsNiBAQCBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3Qg
ewogCSAqLwogCiAJc3RydWN0IGRtYV9mZW5jZSAqbW92aW5nOwotCi0Jc3RydWN0IGRybV92bWFf
b2Zmc2V0X25vZGUgdm1hX25vZGU7Ci0KIAl1bnNpZ25lZCBwcmlvcml0eTsKIAogCS8qKgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVscGVyLmMKaW5kZXggZmMxMzkyMGIzY2I0Li5mZDc1MTA3
OGJhZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVscGVyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIuYwpAQCAtMTY4LDcgKzE2
OCw3IEBAIEVYUE9SVF9TWU1CT0woZHJtX2dlbV92cmFtX3B1dCk7CiAgKi8KIHU2NCBkcm1fZ2Vt
X3ZyYW1fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9nZW1fdnJhbV9vYmplY3QgKmdibykKIHsKLQly
ZXR1cm4gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZnYm8tPmJvLnZtYV9ub2RlKTsKKwlyZXR1
cm4gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZnYm8tPmJvLmJhc2Uudm1hX25vZGUpOwogfQog
RVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ZyYW1fbW1hcF9vZmZzZXQpOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfZGlzcGxheS5jCmluZGV4IGZjOGY1YmI3M2NhOC4uOThhZmM1MDE2
MmU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3BsYXkuYwpAQCAtNjc1
LDcgKzY3NSw3IEBAIG5vdXZlYXVfZGlzcGxheV9kdW1iX21hcF9vZmZzZXQoc3RydWN0IGRybV9m
aWxlICpmaWxlX3ByaXYsCiAJZ2VtID0gZHJtX2dlbV9vYmplY3RfbG9va3VwKGZpbGVfcHJpdiwg
aGFuZGxlKTsKIAlpZiAoZ2VtKSB7CiAJCXN0cnVjdCBub3V2ZWF1X2JvICpibyA9IG5vdXZlYXVf
Z2VtX29iamVjdChnZW0pOwotCQkqcG9mZnNldCA9IGRybV92bWFfbm9kZV9vZmZzZXRfYWRkcigm
Ym8tPmJvLnZtYV9ub2RlKTsKKwkJKnBvZmZzZXQgPSBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIo
JmJvLT5iby5iYXNlLnZtYV9ub2RlKTsKIAkJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKGdl
bSk7CiAJCXJldHVybiAwOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1
L25vdXZlYXVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jCmlu
ZGV4IDJmNDg0YWI3ZGJjYS4uYjFlNDg1MjgxMGVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25v
dXZlYXVfZ2VtLmMKQEAgLTI0MCw3ICsyNDAsNyBAQCBub3V2ZWF1X2dlbV9pbmZvKHN0cnVjdCBk
cm1fZmlsZSAqZmlsZV9wcml2LCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdlbSwKIAl9CiAKIAly
ZXAtPnNpemUgPSBudmJvLT5iby5tZW0ubnVtX3BhZ2VzIDw8IFBBR0VfU0hJRlQ7Ci0JcmVwLT5t
YXBfaGFuZGxlID0gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZudmJvLT5iby52bWFfbm9kZSk7
CisJcmVwLT5tYXBfaGFuZGxlID0gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZudmJvLT5iby5i
YXNlLnZtYV9ub2RlKTsKIAlyZXAtPnRpbGVfbW9kZSA9IG52Ym8tPm1vZGU7CiAJcmVwLT50aWxl
X2ZsYWdzID0gbnZiby0+Y29udGlnID8gMCA6IE5PVVZFQVVfR0VNX1RJTEVfTk9OQ09OVElHOwog
CWlmIChjbGktPmRldmljZS5pbmZvLmZhbWlseSA+PSBOVl9ERVZJQ0VfSU5GT19WMF9GRVJNSSkK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jCmluZGV4IGNlZmYxNTNmN2U2OC4uM2UwYTBjYmM0MTBlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKQEAgLTY3Miw3ICs2NzIsNyBAQCBzdGF0aWMgdm9pZCB0dG1fYm9fcmVsZWFz
ZShzdHJ1Y3Qga3JlZiAqa3JlZikKIAlzdHJ1Y3QgdHRtX2JvX2RldmljZSAqYmRldiA9IGJvLT5i
ZGV2OwogCXN0cnVjdCB0dG1fbWVtX3R5cGVfbWFuYWdlciAqbWFuID0gJmJkZXYtPm1hbltiby0+
bWVtLm1lbV90eXBlXTsKIAotCWRybV92bWFfb2Zmc2V0X3JlbW92ZSgmYmRldi0+dm1hX21hbmFn
ZXIsICZiby0+dm1hX25vZGUpOworCWRybV92bWFfb2Zmc2V0X3JlbW92ZSgmYmRldi0+dm1hX21h
bmFnZXIsICZiby0+YmFzZS52bWFfbm9kZSk7CiAJdHRtX21lbV9pb19sb2NrKG1hbiwgZmFsc2Up
OwogCXR0bV9tZW1faW9fZnJlZV92bShibyk7CiAJdHRtX21lbV9pb191bmxvY2sobWFuKTsKQEAg
LTEzNDMsOSArMTM0Myw5IEBAIGludCB0dG1fYm9faW5pdF9yZXNlcnZlZChzdHJ1Y3QgdHRtX2Jv
X2RldmljZSAqYmRldiwKIAkJICogc3RydWN0IGVsZW1lbnRzIHdlIHdhbnQgdXNlIHJlZ2FyZGxl
c3MuCiAJCSAqLwogCQlyZXNlcnZhdGlvbl9vYmplY3RfaW5pdCgmYm8tPmJhc2UuX3Jlc3YpOwor
CQlkcm1fdm1hX25vZGVfcmVzZXQoJmJvLT5iYXNlLnZtYV9ub2RlKTsKIAl9CiAJYXRvbWljX2lu
YygmYm8tPmJkZXYtPmdsb2ItPmJvX2NvdW50KTsKLQlkcm1fdm1hX25vZGVfcmVzZXQoJmJvLT52
bWFfbm9kZSk7CiAKIAkvKgogCSAqIEZvciB0dG1fYm9fdHlwZV9kZXZpY2UgYnVmZmVycywgYWxs
b2NhdGUKQEAgLTEzNTMsNyArMTM1Myw3IEBAIGludCB0dG1fYm9faW5pdF9yZXNlcnZlZChzdHJ1
Y3QgdHRtX2JvX2RldmljZSAqYmRldiwKIAkgKi8KIAlpZiAoYm8tPnR5cGUgPT0gdHRtX2JvX3R5
cGVfZGV2aWNlIHx8CiAJICAgIGJvLT50eXBlID09IHR0bV9ib190eXBlX3NnKQotCQlyZXQgPSBk
cm1fdm1hX29mZnNldF9hZGQoJmJkZXYtPnZtYV9tYW5hZ2VyLCAmYm8tPnZtYV9ub2RlLAorCQly
ZXQgPSBkcm1fdm1hX29mZnNldF9hZGQoJmJkZXYtPnZtYV9tYW5hZ2VyLCAmYm8tPmJhc2Uudm1h
X25vZGUsCiAJCQkJCSBiby0+bWVtLm51bV9wYWdlcyk7CiAKIAkvKiBwYXNzZWQgcmVzZXJ2YXRp
b24gb2JqZWN0cyBzaG91bGQgYWxyZWFkeSBiZSBsb2NrZWQsCkBAIC0xNzgxLDcgKzE3ODEsNyBA
QCB2b2lkIHR0bV9ib191bm1hcF92aXJ0dWFsX2xvY2tlZChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvKQogewogCXN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2ID0gYm8tPmJkZXY7CiAKLQlk
cm1fdm1hX25vZGVfdW5tYXAoJmJvLT52bWFfbm9kZSwgYmRldi0+ZGV2X21hcHBpbmcpOworCWRy
bV92bWFfbm9kZV91bm1hcCgmYm8tPmJhc2Uudm1hX25vZGUsIGJkZXYtPmRldl9tYXBwaW5nKTsK
IAl0dG1fbWVtX2lvX2ZyZWVfdm0oYm8pOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9ib191dGlsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMK
aW5kZXggMDVmYmNhZjZhM2YyLi5mNTAwOWMxYjZhOWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvX3V0aWwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191
dGlsLmMKQEAgLTUxMCw3ICs1MTAsNyBAQCBzdGF0aWMgaW50IHR0bV9idWZmZXJfb2JqZWN0X3Ry
YW5zZmVyKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJSU5JVF9MSVNUX0hFQUQoJmZi
by0+YmFzZS5pb19yZXNlcnZlX2xydSk7CiAJbXV0ZXhfaW5pdCgmZmJvLT5iYXNlLnd1X211dGV4
KTsKIAlmYm8tPmJhc2UubW92aW5nID0gTlVMTDsKLQlkcm1fdm1hX25vZGVfcmVzZXQoJmZiby0+
YmFzZS52bWFfbm9kZSk7CisJZHJtX3ZtYV9ub2RlX3Jlc2V0KCZmYm8tPmJhc2UuYmFzZS52bWFf
bm9kZSk7CiAJYXRvbWljX3NldCgmZmJvLT5iYXNlLmNwdV93cml0ZXJzLCAwKTsKIAogCWtyZWZf
aW5pdCgmZmJvLT5iYXNlLmxpc3Rfa3JlZik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9ib192bS5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwppbmRleCA2
ZGFjZmY0OWMxY2MuLmZiNjg3NWE3ODliNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fYm9fdm0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCkBAIC0y
MTEsOSArMjExLDkgQEAgc3RhdGljIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0KHN0cnVjdCB2
bV9mYXVsdCAqdm1mKQogCX0KIAogCXBhZ2Vfb2Zmc2V0ID0gKChhZGRyZXNzIC0gdm1hLT52bV9z
dGFydCkgPj4gUEFHRV9TSElGVCkgKwotCQl2bWEtPnZtX3Bnb2ZmIC0gZHJtX3ZtYV9ub2RlX3N0
YXJ0KCZiby0+dm1hX25vZGUpOworCQl2bWEtPnZtX3Bnb2ZmIC0gZHJtX3ZtYV9ub2RlX3N0YXJ0
KCZiby0+YmFzZS52bWFfbm9kZSk7CiAJcGFnZV9sYXN0ID0gdm1hX3BhZ2VzKHZtYSkgKyB2bWEt
PnZtX3Bnb2ZmIC0KLQkJZHJtX3ZtYV9ub2RlX3N0YXJ0KCZiby0+dm1hX25vZGUpOworCQlkcm1f
dm1hX25vZGVfc3RhcnQoJmJvLT5iYXNlLnZtYV9ub2RlKTsKIAogCWlmICh1bmxpa2VseShwYWdl
X29mZnNldCA+PSBiby0+bnVtX3BhZ2VzKSkgewogCQlyZXQgPSBWTV9GQVVMVF9TSUdCVVM7CkBA
IC0yNjcsNyArMjY3LDcgQEAgc3RhdGljIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0KHN0cnVj
dCB2bV9mYXVsdCAqdm1mKQogCQkJfSBlbHNlIGlmICh1bmxpa2VseSghcGFnZSkpIHsKIAkJCQli
cmVhazsKIAkJCX0KLQkJCXBhZ2UtPmluZGV4ID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZiby0+dm1h
X25vZGUpICsKKwkJCXBhZ2UtPmluZGV4ID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZiby0+YmFzZS52
bWFfbm9kZSkgKwogCQkJCXBhZ2Vfb2Zmc2V0OwogCQkJcGZuID0gcGFnZV90b19wZm4ocGFnZSk7
CiAJCX0KQEAgLTQxMyw3ICs0MTMsOCBAQCBzdGF0aWMgc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0
ICp0dG1fYm9fdm1fbG9va3VwKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LAogCiAJbm9kZSA9
IGRybV92bWFfb2Zmc2V0X2xvb2t1cF9sb2NrZWQoJmJkZXYtPnZtYV9tYW5hZ2VyLCBvZmZzZXQs
IHBhZ2VzKTsKIAlpZiAobGlrZWx5KG5vZGUpKSB7Ci0JCWJvID0gY29udGFpbmVyX29mKG5vZGUs
IHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCwgdm1hX25vZGUpOworCQlibyA9IGNvbnRhaW5lcl9v
Zihub2RlLCBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QsCisJCQkJICBiYXNlLnZtYV9ub2RlKTsK
IAkJYm8gPSB0dG1fYm9fZ2V0X3VubGVzc196ZXJvKGJvKTsKIAl9CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL3Zp
cnRpby92aXJ0Z3B1X3ByaW1lLmMKaW5kZXggOGIzYjJjYWYzMzY0Li5kYzY0MmE4ODRiODggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jCkBAIC02OCw4ICs2OCw1IEBAIHZv
aWQgdmlydGdwdV9nZW1fcHJpbWVfdnVubWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCB2
b2lkICp2YWRkcikKIGludCB2aXJ0Z3B1X2dlbV9wcmltZV9tbWFwKHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqb2JqLAogCQkJICAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiB7Ci0Jc3RydWN0
IHZpcnRpb19ncHVfb2JqZWN0ICpibyA9IGdlbV90b192aXJ0aW9fZ3B1X29iaihvYmopOwotCi0J
Ym8tPmdlbV9iYXNlLnZtYV9ub2RlLnZtX25vZGUuc3RhcnQgPSBiby0+dGJvLnZtYV9ub2RlLnZt
X25vZGUuc3RhcnQ7CiAJcmV0dXJuIGRybV9nZW1fcHJpbWVfbW1hcChvYmosIHZtYSk7CiB9CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9iby5jIGIvZHJpdmVycy9n
cHUvZHJtL3Ztd2dmeC92bXdnZnhfYm8uYwppbmRleCAzMTVkYTQxYTE4YjQuLjU3MzljNmM0OWM5
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYm8uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9iby5jCkBAIC04MzUsNyArODM1LDcgQEAgaW50
IHZtd19ib19hbGxvY19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAog
CQlnb3RvIG91dF9ub19ibzsKIAogCXJlcC0+aGFuZGxlID0gaGFuZGxlOwotCXJlcC0+bWFwX2hh
bmRsZSA9IGRybV92bWFfbm9kZV9vZmZzZXRfYWRkcigmdmJvLT5iYXNlLnZtYV9ub2RlKTsKKwly
ZXAtPm1hcF9oYW5kbGUgPSBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIoJnZiby0+YmFzZS5iYXNl
LnZtYV9ub2RlKTsKIAlyZXAtPmN1cl9nbXJfaWQgPSBoYW5kbGU7CiAJcmVwLT5jdXJfZ21yX29m
ZnNldCA9IDA7CiAKQEAgLTEwNzcsNyArMTA3Nyw3IEBAIGludCB2bXdfZHVtYl9tYXBfb2Zmc2V0
KHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2LAogCWlmIChyZXQgIT0gMCkKIAkJcmV0dXJuIC1F
SU5WQUw7CiAKLQkqb2Zmc2V0ID0gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZvdXRfYnVmLT5i
YXNlLnZtYV9ub2RlKTsKKwkqb2Zmc2V0ID0gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZvdXRf
YnVmLT5iYXNlLmJhc2Uudm1hX25vZGUpOwogCXZtd19ib191bnJlZmVyZW5jZSgmb3V0X2J1Zik7
CiAJcmV0dXJuIDA7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dm
eF9zdXJmYWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9zdXJmYWNlLmMKaW5k
ZXggMjE5NDcxOTAzYmMxLi4zYTZkYTNiNjY0ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS92bXdnZngvdm13Z2Z4X3N1cmZhY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Zt
d2dmeF9zdXJmYWNlLmMKQEAgLTE2NjksNyArMTY2OSw3IEBAIHZtd19nYl9zdXJmYWNlX2RlZmlu
ZV9pbnRlcm5hbChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCXJlcC0+YmFja3VwX3NpemUgPSBy
ZXMtPmJhY2t1cF9zaXplOwogCWlmIChyZXMtPmJhY2t1cCkgewogCQlyZXAtPmJ1ZmZlcl9tYXBf
aGFuZGxlID0KLQkJCWRybV92bWFfbm9kZV9vZmZzZXRfYWRkcigmcmVzLT5iYWNrdXAtPmJhc2Uu
dm1hX25vZGUpOworCQkJZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZyZXMtPmJhY2t1cC0+YmFz
ZS5iYXNlLnZtYV9ub2RlKTsKIAkJcmVwLT5idWZmZXJfc2l6ZSA9IHJlcy0+YmFja3VwLT5iYXNl
Lm51bV9wYWdlcyAqIFBBR0VfU0laRTsKIAkJcmVwLT5idWZmZXJfaGFuZGxlID0gYmFja3VwX2hh
bmRsZTsKIAl9IGVsc2UgewpAQCAtMTc0NSw3ICsxNzQ1LDcgQEAgdm13X2diX3N1cmZhY2VfcmVm
ZXJlbmNlX2ludGVybmFsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJcmVwLT5jcmVwLmJhY2t1
cF9zaXplID0gc3JmLT5yZXMuYmFja3VwX3NpemU7CiAJcmVwLT5jcmVwLmJ1ZmZlcl9oYW5kbGUg
PSBiYWNrdXBfaGFuZGxlOwogCXJlcC0+Y3JlcC5idWZmZXJfbWFwX2hhbmRsZSA9Ci0JCWRybV92
bWFfbm9kZV9vZmZzZXRfYWRkcigmc3JmLT5yZXMuYmFja3VwLT5iYXNlLnZtYV9ub2RlKTsKKwkJ
ZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZzcmYtPnJlcy5iYWNrdXAtPmJhc2UuYmFzZS52bWFf
bm9kZSk7CiAJcmVwLT5jcmVwLmJ1ZmZlcl9zaXplID0gc3JmLT5yZXMuYmFja3VwLT5iYXNlLm51
bV9wYWdlcyAqIFBBR0VfU0laRTsKIAogCXJlcC0+Y3JlcS52ZXJzaW9uID0gZHJtX3Ztd19nYl9z
dXJmYWNlX3YxOwotLSAKMi4xOC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
