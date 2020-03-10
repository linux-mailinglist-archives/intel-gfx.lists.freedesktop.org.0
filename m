Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC02B18091D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:28:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2396E8DC;
	Tue, 10 Mar 2020 20:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FD76E8DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:27:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="260910914"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 10 Mar 2020 13:27:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 22:27:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 22:27:52 +0200
Message-Id: <20200310202752.28454-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Get rid of silly void* from MST code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
dCBzdXJlIHdoeSB0aGlzIHRoaW5nIGlzIHRyeWluZyB0byBhdm9pZCBkZWNsYXJpbmcgdGhlIHBy
b3Blcgp0eXBlIGZvciB0aGVzZSBwb2ludGVycy4gQnV0IHNpbmNlIHRoZXNlIGFyZSB1c2VkIG9u
bHkgb25jZSBsZXQncwpqdXN0IGdldCByaWQgb2YgdGhlIGxvY2FsIHZhcmlhYmxlIGVudGlyZWx5
LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
IHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwppbmRl
eCBlMDhjYWNhNjU4YzYuLjg4M2VhMTFiOTc3MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCkBAIC00OSw3ICs0OSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZHBfbXN0X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiAJCXRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpOwogCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KIAkJJmNydGNfc3RhdGUtPmh3
LmFkanVzdGVkX21vZGU7Ci0Jdm9pZCAqcG9ydCA9IGNvbm5lY3Rvci0+cG9ydDsKIAlib29sIGNv
bnN0YW50X24gPSBkcm1fZHBfaGFzX3F1aXJrKCZpbnRlbF9kcC0+ZGVzYywgMCwKIAkJCQkJICAg
RFBfRFBDRF9RVUlSS19DT05TVEFOVF9OKTsKIAlpbnQgYnBwLCBzbG90cyA9IC1FSU5WQUw7CkBA
IC02NSw3ICs2NCw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfbGlua19jb25m
aWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJCQkgICAgICAgZmFsc2UpOwog
CiAJCXNsb3RzID0gZHJtX2RwX2F0b21pY19maW5kX3ZjcGlfc2xvdHMoc3RhdGUsICZpbnRlbF9k
cC0+bXN0X21nciwKLQkJCQkJCSAgICAgIHBvcnQsIGNydGNfc3RhdGUtPnBibiwgMCk7CisJCQkJ
CQkgICAgICBjb25uZWN0b3ItPnBvcnQsCisJCQkJCQkgICAgICBjcnRjX3N0YXRlLT5wYm4sIDAp
OwogCQlpZiAoc2xvdHMgPT0gLUVERUFETEspCiAJCQlyZXR1cm4gc2xvdHM7CiAJCWlmIChzbG90
cyA+PSAwKQpAQCAtMTQ3LDcgKzE0Nyw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1
dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQl0b19pbnRlbF9kaWdp
dGFsX2Nvbm5lY3Rvcl9zdGF0ZShjb25uX3N0YXRlKTsKIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9CiAJCSZwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9k
ZTsKLQl2b2lkICpwb3J0ID0gY29ubmVjdG9yLT5wb3J0OwogCXN0cnVjdCBsaW5rX2NvbmZpZ19s
aW1pdHMgbGltaXRzOwogCWludCByZXQ7CiAKQEAgLTE1OSw3ICsxNTgsOCBAQCBzdGF0aWMgaW50
IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAogCWlmIChpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRpbyA9PSBIRE1JX0FVRElPX0FV
VE8pCiAJCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPQotCQkJZHJtX2RwX21zdF9wb3J0X2hhc19h
dWRpbygmaW50ZWxfZHAtPm1zdF9tZ3IsIHBvcnQpOworCQkJZHJtX2RwX21zdF9wb3J0X2hhc19h
dWRpbygmaW50ZWxfZHAtPm1zdF9tZ3IsCisJCQkJCQkgIGNvbm5lY3Rvci0+cG9ydCk7CiAJZWxz
ZQogCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0KIAkJCWludGVsX2Nvbm5fc3RhdGUtPmZvcmNl
X2F1ZGlvID09IEhETUlfQVVESU9fT047Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
