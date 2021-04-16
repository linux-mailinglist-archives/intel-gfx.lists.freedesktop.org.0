Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1112436265E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 19:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156026E1E9;
	Fri, 16 Apr 2021 17:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3AD6E1E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 17:10:21 +0000 (UTC)
IronPort-SDR: fIz/CHIkO9AHN/lbuCyt11gHKUJtbZAvwXccD1Nh3tzKvfPbjX+e5/cutO7mIT5rlu4Xrv/XQI
 EdALiSmKDCuA==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="195096716"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="195096716"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 10:10:20 -0700
IronPort-SDR: 5NmzeixOGX1uKCYxHcIm9gFez3q6gHpN2JT3UaBka/PdpLOXSw5zxUz2Gf24SY53cOK7gt+0WH
 6sIbu3bG1PAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="425660862"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 16 Apr 2021 10:10:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Apr 2021 20:10:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Apr 2021 20:10:05 +0300
Message-Id: <20210416171011.19012-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
References: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Handle dbuf bypass path
 allocation earlier
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGFsd2F5cyByZXNlcnZlIHRoZSBzYW1lIDQgZGJ1ZiBibG9ja3MgZm9yIHRoZSBieXBhc3MgcGF0
aAphbGxvY2F0aW9uLCBzbyBtaWdodCBhcyB3ZWxsIGRvIHRoYXQgd2hlbiBkZWNsYXJpbmcgdGhl
IGRidWYKc2l6ZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8
IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA5ICstLS0tLS0t
LQogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IDQ4NGQyNjMzODk0YS4uOTgxZDEyNzAyYzQ5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTY0Nyw3ICs2NDcsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RldmljZV9pbmZvIGNodl9pbmZvID0gewogCS5oYXNfZ3RfdWMgPSAxLCBcCiAJ
LmRpc3BsYXkuaGFzX2hkY3AgPSAxLCBcCiAJLmRpc3BsYXkuaGFzX2lwYyA9IDEsIFwKLQkuZGJ1
Zi5zaXplID0gODk2LCBcCisJLmRidWYuc2l6ZSA9IDg5NiAtIDQsIC8qIDQgYmxvY2tzIGZvciBi
eXBhc3MgcGF0aCBhbGxvY2F0aW9uICovIFwKIAkuZGJ1Zi5udW1fc2xpY2VzID0gMQogCiAjZGVm
aW5lIFNLTF9QTEFURk9STSBcCkBAIC03MjAsMTQgKzcyMCwxNCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RldmljZV9pbmZvIHNrbF9ndDRfaW5mbyA9IHsKIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGV2aWNlX2luZm8gYnh0X2luZm8gPSB7CiAJR0VOOV9MUF9GRUFUVVJFUywKIAlQ
TEFURk9STShJTlRFTF9CUk9YVE9OKSwKLQkuZGJ1Zi5zaXplID0gNTEyLAorCS5kYnVmLnNpemUg
PSA1MTIgLSA0LCAvKiA0IGJsb2NrcyBmb3IgYnlwYXNzIHBhdGggYWxsb2NhdGlvbiAqLyBcCiB9
OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGdsa19pbmZvID0gewog
CUdFTjlfTFBfRkVBVFVSRVMsCiAJUExBVEZPUk0oSU5URUxfR0VNSU5JTEFLRSksCiAJLmRpc3Bs
YXkudmVyID0gMTAsCi0JLmRidWYuc2l6ZSA9IDEwMjQsCisJLmRidWYuc2l6ZSA9IDEwMjQgLSA0
LCAvKiA0IGJsb2NrcyBmb3IgYnlwYXNzIHBhdGggYWxsb2NhdGlvbiAqLyBcCiAJR0xLX0NPTE9S
UywKIH07CiAKQEAgLTc5MCw3ICs3OTAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rl
dmljZV9pbmZvIGNtbF9ndDJfaW5mbyA9IHsKICNkZWZpbmUgR0VOMTBfRkVBVFVSRVMgXAogCUdF
TjlfRkVBVFVSRVMsIFwKIAlHRU4oMTApLCBcCi0JLmRidWYuc2l6ZSA9IDEwMjQsIFwKKwkuZGJ1
Zi5zaXplID0gMTAyNCAtIDQsIC8qIDQgYmxvY2tzIGZvciBieXBhc3MgcGF0aCBhbGxvY2F0aW9u
ICovIFwKIAkuZGlzcGxheS5oYXNfZHNjID0gMSwgXAogCS5oYXNfY29oZXJlbnRfZ2d0dCA9IGZh
bHNlLCBcCiAJR0xLX0NPTE9SUwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggY2VkMWViMzJj
Yjc4Li44ZDZlZTVhZDc2MWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNDAzMCwxNCAr
NDAzMCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfY29tcHV0ZV9zYWd2X21hc2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAKIHN0YXRpYyBpbnQgaW50ZWxfZGJ1Zl9zaXplKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlpbnQgZGRiX3NpemUgPSBJTlRFTF9J
TkZPKGRldl9wcml2KS0+ZGJ1Zi5zaXplOwotCi0JZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0s
IGRkYl9zaXplID09IDApOwotCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDExKQotCQly
ZXR1cm4gZGRiX3NpemUgLSA0OyAvKiA0IGJsb2NrcyBmb3IgYnlwYXNzIHBhdGggYWxsb2NhdGlv
biAqLwotCi0JcmV0dXJuIGRkYl9zaXplOworCXJldHVybiBJTlRFTF9JTkZPKGRldl9wcml2KS0+
ZGJ1Zi5zaXplOwogfQogCiBzdGF0aWMgaW50IGludGVsX2RidWZfc2xpY2Vfc2l6ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
