Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20612DFA3C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 10:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6576E479;
	Mon, 21 Dec 2020 09:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A994C6E479
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 09:05:05 +0000 (UTC)
IronPort-SDR: +as2i2YAXJzwcLrus2NAoo41/6QhUdssjucGsf/p/Ioj7gpcWjqF8k7H/TNqdpFqieVgaXhl4K
 82w80yLD+KLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="239785993"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="239785993"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:05:05 -0800
IronPort-SDR: YjQfsCL4HTCmVPZzbSl9mj6nK9FFrymQAy5qXYoqH1UJ/yLk8OqJk7DU1H0///1pvGsV9Rmwdx
 pT/ENKutyq3w==
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="456108820"
Received: from mlesiews-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.22.241])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:05:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Dec 2020 11:04:46 +0200
Message-Id: <20201221090449.8288-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201221090449.8288-1-jani.nikula@intel.com>
References: <20201221090449.8288-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/5] drm/i915/display: move to_intel_frontbuffer to
 header
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
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBjNDM1
ZDkwZWMwMDAuLjkwNjM5MjJkYzA3MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
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
