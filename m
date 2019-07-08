Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E996260C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 18:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E4989FDD;
	Mon,  8 Jul 2019 16:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6877E89FD7;
 Mon,  8 Jul 2019 16:21:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 09:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="192365238"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 08 Jul 2019 09:21:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Jul 2019 19:21:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 19:20:39 +0300
Message-Id: <20190708162048.4286-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708162048.4286-1-ville.syrjala@linux.intel.com>
References: <20190708162048.4286-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/14] drm/exynos: Use drm_encoder_mask()
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
Cc: Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIGVuY29kZXIgYml0bWFzayB0aGluZyB3aXRoIGRybV9lbmNv
ZGVyX21hc2soKQoKQ2M6IElua2kgRGFlIDxpbmtpLmRhZUBzYW1zdW5nLmNvbT4KQ2M6IEpvb255
b3VuZyBTaGltIDxqeTA5MjIuc2hpbUBzYW1zdW5nLmNvbT4KQ2M6IFNldW5nLVdvbyBLaW0gPHN3
MDMxMi5raW1Ac2Ftc3VuZy5jb20+CkNjOiBLeXVuZ21pbiBQYXJrIDxreXVuZ21pbi5wYXJrQHNh
bXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9k
cnYuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2Ry
di5jIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2Rydi5jCmluZGV4IGNjNTNk
Y2FkMjVlNC4uMTQwZWY1NTNlMTU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9z
L2V4eW5vc19kcm1fZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJt
X2Rydi5jCkBAIC0yNjQsNyArMjY0LDcgQEAgc3RhdGljIGludCBleHlub3NfZHJtX2JpbmQoc3Ry
dWN0IGRldmljZSAqZGV2KQogCXN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsKIAlzdHJ1Y3Qg
ZHJtX2RldmljZSAqZHJtOwogCXVuc2lnbmVkIGludCBjbG9uZV9tYXNrOwotCWludCBjbnQsIHJl
dDsKKwlpbnQgcmV0OwogCiAJZHJtID0gZHJtX2Rldl9hbGxvYygmZXh5bm9zX2RybV9kcml2ZXIs
IGRldik7CiAJaWYgKElTX0VSUihkcm0pKQpAQCAtMjg3LDEwICsyODcsOSBAQCBzdGF0aWMgaW50
IGV4eW5vc19kcm1fYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJZXh5bm9zX2RybV9tb2RlX2Nv
bmZpZ19pbml0KGRybSk7CiAKIAkvKiBzZXR1cCBwb3NzaWJsZV9jbG9uZXMuICovCi0JY250ID0g
MDsKIAljbG9uZV9tYXNrID0gMDsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGVuY29kZXIsICZkcm0t
Pm1vZGVfY29uZmlnLmVuY29kZXJfbGlzdCwgaGVhZCkKLQkJY2xvbmVfbWFzayB8PSAoMSA8PCAo
Y250KyspKTsKKwkJY2xvbmVfbWFzayB8PSBkcm1fZW5jb2Rlcl9tYXNrKGVuY29kZXIpOwogCiAJ
bGlzdF9mb3JfZWFjaF9lbnRyeShlbmNvZGVyLCAmZHJtLT5tb2RlX2NvbmZpZy5lbmNvZGVyX2xp
c3QsIGhlYWQpCiAJCWVuY29kZXItPnBvc3NpYmxlX2Nsb25lcyA9IGNsb25lX21hc2s7Ci0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
