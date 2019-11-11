Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0C2F7343
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F5D6E8BF;
	Mon, 11 Nov 2019 11:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01396E8BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:41:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:41:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="206718514"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Nov 2019 03:41:04 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 16:40:22 +0530
Message-Id: <20191111111029.9126-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191111111029.9126-1-vandita.kulkarni@intel.com>
References: <20191111111029.9126-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v2 2/9] drm/i915/dsi: Configure transcoder
 operation for command mode.
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
Cc: jani.nikula@intel.com, --cc=uma.shankar@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29uZmlndXJlIHRoZSB0cmFuc2NvZGVyIHRvIG9wZXJhdGUgaW4gVEUgR0FURSBjb21tYW5kIG1v
ZGUKYW5kICB0YWtlIFRFIGV2ZW50cyBmcm9tIEdQSU8uCkFsc28gZGlzYWJsZSB0aGUgcGVyaW9k
aWMgY29tbWFuZCBtb2RlLCB0aGF0IEdPUCB3b3VsZCBoYXZlCnByb2dyYW1tZWQuCgpTaWduZWQt
b2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDM2ICsrKysrKysrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggOGViMmQ3ZjI5YzgyLi41ZmYyYTFm
ZmQzZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC03MDQsNiAr
NzA0LDEwIEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAkJCQl0bXAgfD0gVklERU9fTU9ERV9TWU5DX1BVTFNFOwogCQkJCWJy
ZWFrOwogCQkJfQorCQl9IGVsc2UgeworCQkJdG1wICY9IH5PUF9NT0RFX01BU0s7CisJCQl0bXAg
fD0gQ01EX01PREVfVEVfR0FURTsKKwkJCXRtcCB8PSBURV9TT1VSQ0VfR1BJTzsKIAkJfQogCiAJ
CUk5MTVfV1JJVEUoRFNJX1RSQU5TX0ZVTkNfQ09ORihkc2lfdHJhbnMpLCB0bXApOwpAQCAtOTUz
LDYgKzk1NywyNiBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfdGltZW91dHMoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJfQogfQogCitzdGF0aWMgdm9pZCBnZW4xMV9kc2lf
Y29uZmlnX3V0aWxfcGluKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
OworCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29k
ZXItPmJhc2UpOworCXUzMiB0bXA7CisKKwkvKgorCSAqIHVzZWQgYXMgVEUgaS9wIGZvciBEU0kw
LAorCSAqIGZvciBkdWFsIGxpbmsvRFNJMSBURSBpcyBmcm9tIHNsYXZlIERTSTEKKwkgKiB0aHJv
dWdoIEdQSU8uCisJICovCisJaWYgKGlzX3ZpZF9tb2RlKGludGVsX2RzaSkgfHwgKGludGVsX2Rz
aS0+cG9ydHMgJiBCSVQoUE9SVF9CKSkpCisJCXJldHVybjsKKworCXRtcCA9IEk5MTVfUkVBRChV
VElMX1BJTl9DVEwpOworCXRtcCB8PSBVVElMX1BJTl9ESVJFQ1RJT05fSU5QVVQ7CisJdG1wIHw9
IFVUSUxfUElOX0VOQUJMRTsKKwlJOTE1X1dSSVRFKFVUSUxfUElOX0NUTCwgdG1wKTsKK30KKwog
c3RhdGljIHZvaWQKIGdlbjExX2RzaV9lbmFibGVfcG9ydF9hbmRfcGh5KHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KnBpcGVfY29uZmlnKQpAQCAtOTc0LDYgKzk5OCw5IEBAIGdlbjExX2RzaV9lbmFibGVfcG9ydF9h
bmRfcGh5KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCS8qIHNldHVwIEQtUEhZIHRp
bWluZ3MgKi8KIAlnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKGVuY29kZXIpOwogCisJLyog
U2luY2UgdHJhbnNjb2RlciBpcyBjb25maWd1cmVkIHRvIHRha2UgZXZlbnRzIGZyb20gR1BJTyAq
LworCWdlbjExX2RzaV9jb25maWdfdXRpbF9waW4oZW5jb2Rlcik7CisKIAkvKiBzdGVwIDRoOiBz
ZXR1cCBEU0kgcHJvdG9jb2wgdGltZW91dHMgKi8KIAlnZW4xMV9kc2lfc2V0dXBfdGltZW91dHMo
ZW5jb2Rlcik7CiAKQEAgLTExMDQsNiArMTEzMSwxNSBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lf
ZGVjb25maWd1cmVfdHJhbmNvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCWVu
dW0gdHJhbnNjb2RlciBkc2lfdHJhbnM7CiAJdTMyIHRtcDsKIAorCS8qIGRpc2FibGUgcGVyaW9k
aWMgdXBkYXRlIG1vZGUgKi8KKwlpZiAoaXNfY21kX21vZGUoaW50ZWxfZHNpKSkgeworCQlmb3Jf
ZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7CisJCQl0bXAgPSBJOTE1X1JF
QUQoRFNJX0NNRF9GUk1DVEwocG9ydCkpOworCQkJdG1wICY9IH5EU0lfUEVSSU9ESUNfRlJBTUVf
VVBEQVRFX0VOQUJMRTsKKwkJCUk5MTVfV1JJVEUoRFNJX0NNRF9GUk1DVEwocG9ydCksIHRtcCk7
CisJCX0KKwl9CisKIAkvKiBwdXQgZHNpIGxpbmsgaW4gVUxQUyAqLwogCWZvcl9lYWNoX2RzaV9w
b3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsKIAkJZHNpX3RyYW5zID0gZHNpX3BvcnRfdG9f
dHJhbnNjb2Rlcihwb3J0KTsKLS0gCjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
