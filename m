Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B3E2DF818
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 05:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7D16E452;
	Mon, 21 Dec 2020 04:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B2B6E452
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 04:04:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-J0C-91EAPxugBJ_ZGaVuiQ-1; Sun, 20 Dec 2020 23:04:08 -0500
X-MC-Unique: J0C-91EAPxugBJ_ZGaVuiQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8D11180A086;
 Mon, 21 Dec 2020 04:04:06 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C53385D9CA;
 Mon, 21 Dec 2020 04:04:05 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Dec 2020 14:03:43 +1000
Message-Id: <20201221040357.4928-3-airlied@gmail.com>
In-Reply-To: <20201221040357.4928-1-airlied@gmail.com>
References: <20201221040357.4928-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 02/16] drm/i915/display: move
 to_intel_frontbuffer to header
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
Cc: Jani Nikula <jani.nikula@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoaXMgd2lsbCBiZSB1c2Vk
IGZvciBzb21lIHJlZmFjdG9yaW5nIGluIG90aGVyIGZpbGVzLCBzbyBtb3ZlIGl0CmZpcnN0LgoK
U2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KUmV2aWV3ZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgICAgICAgfCA2IC0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA2ICsr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA4MDEw
MzIxMWY0MDcuLjYyZTIyZDgzMmNhYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM2MTEsMTIgKzM2MTEsNiBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wbGFuZV9kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWludGVs
X2Rpc2FibGVfcGxhbmUocGxhbmUsIGNydGNfc3RhdGUpOwogfQogCi1zdGF0aWMgc3RydWN0IGlu
dGVsX2Zyb250YnVmZmVyICoKLXRvX2ludGVsX2Zyb250YnVmZmVyKHN0cnVjdCBkcm1fZnJhbWVi
dWZmZXIgKmZiKQotewotCXJldHVybiBmYiA/IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGZiKS0+ZnJv
bnRidWZmZXIgOiBOVUxMOwotfQotCiBzdGF0aWMgdm9pZAogaW50ZWxfZmluZF9pbml0aWFsX3Bs
YW5lX29iaihzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywKIAkJCSAgICAgc3RydWN0IGlu
dGVsX2luaXRpYWxfcGxhbmVfY29uZmlnICpwbGFuZV9jb25maWcpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGEyZjZiN2Mx
NjFhNC4uZGZhMzk2NmU1ZmExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTgwNSw0ICsxODA1LDEwIEBAIHN0YXRpYyBp
bmxpbmUgdTMyIGludGVsX3BsYW5lX2dndHRfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqc3RhdGUpCiAJcmV0dXJuIGk5MTVfZ2d0dF9vZmZzZXQoc3RhdGUtPnZtYSk7CiB9
CiAKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX2Zyb250YnVmZmVyICoKK3RvX2ludGVsX2Zy
b250YnVmZmVyKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiKQoreworCXJldHVybiBmYiA/IHRv
X2ludGVsX2ZyYW1lYnVmZmVyKGZiKS0+ZnJvbnRidWZmZXIgOiBOVUxMOworfQorCiAjZW5kaWYg
LyogIF9fSU5URUxfRElTUExBWV9UWVBFU19IX18gKi8KLS0gCjIuMjcuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
