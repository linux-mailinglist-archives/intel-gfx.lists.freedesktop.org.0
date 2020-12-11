Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 422CA2D70D0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 08:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F666EC68;
	Fri, 11 Dec 2020 07:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532BE6EC68
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:31 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-343-Wa_I4ZH7OrudOnNNpCALrA-1; Fri, 11 Dec 2020 02:29:28 -0500
X-MC-Unique: Wa_I4ZH7OrudOnNNpCALrA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62D1C6D520
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:27 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CABD26F989
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:26 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 17:29:13 +1000
Message-Id: <20201211072922.19101-3-airlied@gmail.com>
In-Reply-To: <20201211072922.19101-1-airlied@gmail.com>
References: <20201211072922.19101-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/display: move
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoaXMgd2lsbCBiZSB1c2Vk
IGZvciBzb21lIHJlZmFjdG9yaW5nIGluIG90aGVyIGZpbGVzLCBzbyBtb3ZlIGl0CmZpcnN0LgoK
U2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KUmV2aWV3ZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgICAgICAgfCA2IC0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
fCA2ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRl
eCA4MDEwMzIxMWY0MDcuLjYyZTIyZDgzMmNhYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM2MTEsMTIgKzM2MTEsNiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9wbGFuZV9kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAog
CWludGVsX2Rpc2FibGVfcGxhbmUocGxhbmUsIGNydGNfc3RhdGUpOwogfQogCi1zdGF0aWMgc3Ry
dWN0IGludGVsX2Zyb250YnVmZmVyICoKLXRvX2ludGVsX2Zyb250YnVmZmVyKHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiKQotewotCXJldHVybiBmYiA/IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGZi
KS0+ZnJvbnRidWZmZXIgOiBOVUxMOwotfQotCiBzdGF0aWMgdm9pZAogaW50ZWxfZmluZF9pbml0
aWFsX3BsYW5lX29iaihzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywKIAkJCSAgICAgc3Ry
dWN0IGludGVsX2luaXRpYWxfcGxhbmVfY29uZmlnICpwbGFuZV9jb25maWcpCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGEy
ZjZiN2MxNjFhNC4uZGZhMzk2NmU1ZmExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTgwNSw0ICsxODA1LDEwIEBAIHN0
YXRpYyBpbmxpbmUgdTMyIGludGVsX3BsYW5lX2dndHRfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqc3RhdGUpCiAJcmV0dXJuIGk5MTVfZ2d0dF9vZmZzZXQoc3RhdGUtPnZt
YSk7CiB9CiAKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX2Zyb250YnVmZmVyICoKK3RvX2lu
dGVsX2Zyb250YnVmZmVyKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiKQoreworCXJldHVybiBm
YiA/IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGZiKS0+ZnJvbnRidWZmZXIgOiBOVUxMOworfQorCiAj
ZW5kaWYgLyogIF9fSU5URUxfRElTUExBWV9UWVBFU19IX18gKi8KLS0gCjIuMjcuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
