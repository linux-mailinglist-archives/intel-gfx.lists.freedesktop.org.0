Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D85A2DBF61
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 12:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA57B8941E;
	Wed, 16 Dec 2020 11:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB34A6E169
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 11:29:44 +0000 (UTC)
IronPort-SDR: pq/nAjyorh/xoksfV5Ds/gZornjYGEE1/o4aqVB9wZF7NNG0togR8C/Q8cAqZzyZe0RakZWtdi
 F0znDzgPCNQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="162794600"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="162794600"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:29:43 -0800
IronPort-SDR: 15R+mrAf74RLziJ7VKfA4nlAl2dVk0Z5lUb/G65LyQtmzxG71rePs3B+BAH2iUFWRpDl8Ju1Ri
 UAM443TPpSKw==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="338372635"
Received: from slevy-mobl.ger.corp.intel.com (HELO localhost)
 ([10.214.192.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:29:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 13:29:09 +0200
Message-Id: <4f875ce637cf0e15d157cc0f742af373a99f4468.1608117676.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608117676.git.jani.nikula@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 02/11] drm/i915/display: move
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>
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
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAyZDk2
YjA1NjM1NDguLmYzZjVhN2I4ZGY5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
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
LyogIF9fSU5URUxfRElTUExBWV9UWVBFU19IX18gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
