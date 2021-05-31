Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDDE3966E4
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 19:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDE86E979;
	Mon, 31 May 2021 17:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F186E972;
 Mon, 31 May 2021 17:22:52 +0000 (UTC)
IronPort-SDR: x6t2yBktOsTxWG46FPPU5bjTatQUGW1f0jhhgEDgeXN7kYtfl0nLTRE9qmB8gD/KEsmvm/PDHI
 0GMdfta8cYeg==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="201520214"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="201520214"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 10:22:52 -0700
IronPort-SDR: V5+5au45cj44hkNqNwGIrgTfvgNLKU04RYF3e4vjwWRO2Zzxh+/B8sYVf0jNiO0BwR79CC6LFU
 KwYb47qmETJA==
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="416211008"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.142])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 10:22:50 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 31 May 2021 19:22:21 +0200
Message-Id: <20210531172228.70846-9-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210531172228.70846-1-thomas.hellstrom@linux.intel.com>
References: <20210531172228.70846-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 08/15] drm/ttm: Use drm_memcpy_from_wc for
 TTM bo moves
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIGZhc3Qgd2MgbWVtY3B5IGZvciByZWFkaW5nIG91dCBvZiB3YyBtZW1vcnkgZm9yIFRUTSBi
byBtb3Zlcy4KCkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ICN2NAotLQp2NDoKLSBDbGFyaWZ5IHdo
ZW4gd2UgdHJ5IGRybV9tZW1jcHlfZnJvbV93Y19kYm0gKFJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVs
ZCkKLSBCZSBwYXJhbm9pZCBhYm91dCB3aGVuIGRybV9tZW1jcHlfZnJvbV93Y19kYm0gbWF5IGZh
aWwgKFJlcG9ydGVkIGJ5CiAgTWF0dGhldyBBdWxkKQp2NToKLSBSZWJhc2Ugb24gY2hhbmdlIHRv
IGRybV9tZW1jcHlfZnJvbV93YyAoU3VnZ2VzdGVkIGJ5IERhbmllbCBWZXR0ZXIpCi0tLQogZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIHwgMTkgKysrLS0tLS0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fYm9fdXRpbC5jCmluZGV4IGE4MDA5OThhMTJiMC4uMzBiYWZhYzQxNmE1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCkBAIC0zMSw2ICszMSw3IEBACiAKICNpbmNsdWRlIDxk
cm0vdHRtL3R0bV9ib19kcml2ZXIuaD4KICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9wbGFjZW1lbnQu
aD4KKyNpbmNsdWRlIDxkcm0vZHJtX2NhY2hlLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV92bWFfbWFu
YWdlci5oPgogI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYtbWFwLmg+CiAjaW5jbHVkZSA8bGludXgv
aW8uaD4KQEAgLTExOCwyMiArMTE5LDggQEAgdm9pZCB0dG1fbW92ZV9tZW1jcHkoc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibywKIAkJZHN0X29wcy0+bWFwX2xvY2FsKGRzdF9pdGVyLCAmZHN0
X21hcCwgaSk7CiAJCXNyY19vcHMtPm1hcF9sb2NhbChzcmNfaXRlciwgJnNyY19tYXAsIGkpOwog
Ci0JCWlmICghc3JjX21hcC5pc19pb21lbSAmJiAhZHN0X21hcC5pc19pb21lbSkgewotCQkJbWVt
Y3B5KGRzdF9tYXAudmFkZHIsIHNyY19tYXAudmFkZHIsIFBBR0VfU0laRSk7Ci0JCX0gZWxzZSBp
ZiAoIXNyY19tYXAuaXNfaW9tZW0pIHsKLQkJCWRtYV9idWZfbWFwX21lbWNweV90bygmZHN0X21h
cCwgc3JjX21hcC52YWRkciwKLQkJCQkJICAgICAgUEFHRV9TSVpFKTsKLQkJfSBlbHNlIGlmICgh
ZHN0X21hcC5pc19pb21lbSkgewotCQkJbWVtY3B5X2Zyb21pbyhkc3RfbWFwLnZhZGRyLCBzcmNf
bWFwLnZhZGRyX2lvbWVtLAotCQkJCSAgICAgIFBBR0VfU0laRSk7Ci0JCX0gZWxzZSB7Ci0JCQlp
bnQgajsKLQkJCXUzMiBfX2lvbWVtICpzcmMgPSBzcmNfbWFwLnZhZGRyX2lvbWVtOwotCQkJdTMy
IF9faW9tZW0gKmRzdCA9IGRzdF9tYXAudmFkZHJfaW9tZW07Ci0KLQkJCWZvciAoaiA9IDA7IGog
PCAoUEFHRV9TSVpFIC8gc2l6ZW9mKHUzMikpOyArK2opCi0JCQkJaW93cml0ZTMyKGlvcmVhZDMy
KHNyYysrKSwgZHN0KyspOwotCQl9CisJCWRybV9tZW1jcHlfZnJvbV93YygmZHN0X21hcCwgJnNy
Y19tYXAsIFBBR0VfU0laRSk7CisKIAkJaWYgKHNyY19vcHMtPnVubWFwX2xvY2FsKQogCQkJc3Jj
X29wcy0+dW5tYXBfbG9jYWwoc3JjX2l0ZXIsICZzcmNfbWFwKTsKIAkJaWYgKGRzdF9vcHMtPnVu
bWFwX2xvY2FsKQotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
