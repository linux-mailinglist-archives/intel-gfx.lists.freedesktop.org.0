Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46C29C97D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5474E6E180;
	Mon, 26 Aug 2019 06:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DC36E180
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174111996"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:42 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:06 +0530
Message-Id: <1566800772-18412-5-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v8][PATCH 04/10] drm/i915/display: Add macro to
 compare gamma hw/sw lut
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG1hY3JvIHRvIGNvbXBhcmUgaHcvc3cgZ2FtbWEgbHV0IHZhbHVlcy4gRmlyc3QgbmVlZCB0
bwpjaGVjayB3aGV0aGVyIGh3L3N3IGdhbW1hIG1vZGUgbWF0Y2hlcyBvciBub3QuIElmIG5vdApu
byBuZWVkIHRvIGNvbXBhcmUgbHV0IHZhbHVlcywgaWYgbWF0Y2hlcyB0aGVuIG9ubHkgY29tcGFy
ZQpsdXQgZW50cmllcy4KClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJt
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjUg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggY2E4OGM3MC4uNjNiN2FkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEyNTI5LDYgKzEyNTI5LDcgQEAgc3RhdGljIGJv
b2wgZmFzdGJvb3RfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjdXJyZW50X2Nv
bmZpZy0+YmFzZS5jcnRjLT5kZXYpOwogCWJvb2wgcmV0ID0gdHJ1ZTsKKwl1MzIgYnBfZ2FtbWEg
PSAwOwogCWJvb2wgZml4dXBfaW5oZXJpdGVkID0gZmFzdHNldCAmJgogCQkoY3VycmVudF9jb25m
aWctPmJhc2UubW9kZS5wcml2YXRlX2ZsYWdzICYgSTkxNV9NT0RFX0ZMQUdfSU5IRVJJVEVEKSAm
JgogCQkhKHBpcGVfY29uZmlnLT5iYXNlLm1vZGUucHJpdmF0ZV9mbGFncyAmIEk5MTVfTU9ERV9G
TEFHX0lOSEVSSVRFRCk7CkBAIC0xMjY4MCw2ICsxMjY4MSwyNCBAQCBzdGF0aWMgYm9vbCBmYXN0
Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9IFwKIH0g
d2hpbGUgKDApCiAKKyNkZWZpbmUgUElQRV9DT05GX0NIRUNLX0NPTE9SX0xVVChuYW1lMSwgbmFt
ZTIsIGJpdF9wcmVjaXNpb24pIGRvIHsgXAorCWlmIChjdXJyZW50X2NvbmZpZy0+bmFtZTEgIT0g
cGlwZV9jb25maWctPm5hbWUxKSB7IFwKKwkJcGlwZV9jb25maWdfbWlzbWF0Y2goZmFzdHNldCwg
X19zdHJpbmdpZnkobmFtZTEpLCBcCisJCQkJIihleHBlY3RlZCAlaSwgZm91bmQgJWksIHdvbid0
IGNvbXBhcmUgbHV0IHZhbHVlcylcbiIsIFwKKwkJCQljdXJyZW50X2NvbmZpZy0+bmFtZTEsIFwK
KwkJCQlwaXBlX2NvbmZpZy0+bmFtZTEpOyBcCisJCXJldCA9IGZhbHNlO1wKKwl9IGVsc2UgeyBc
CisJCWlmICghaW50ZWxfY29sb3JfbHV0X2VxdWFsKGN1cnJlbnRfY29uZmlnLT5uYW1lMiwgXAor
CQkJCQlwaXBlX2NvbmZpZy0+bmFtZTIsIHBpcGVfY29uZmlnLT5uYW1lMSwgXAorCQkJCQliaXRf
cHJlY2lzaW9uKSkgeyBcCisJCQlwaXBlX2NvbmZpZ19taXNtYXRjaChmYXN0c2V0LCBfX3N0cmlu
Z2lmeShuYW1lMiksIFwKKwkJCQkJImh3X3N0YXRlIGRvZXNuJ3QgbWF0Y2ggc3dfc3RhdGVcbiIp
OyBcCisJCQlyZXQgPSBmYWxzZTsgXAorCQl9IFwKKwl9IFwKK30gd2hpbGUgKDApCisKICNkZWZp
bmUgUElQRV9DT05GX1FVSVJLKHF1aXJrKSBcCiAJKChjdXJyZW50X2NvbmZpZy0+cXVpcmtzIHwg
cGlwZV9jb25maWctPnF1aXJrcykgJiAocXVpcmspKQogCkBAIC0xMjc3NSw2ICsxMjc5NCwxMSBA
QCBzdGF0aWMgYm9vbCBmYXN0Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkJCVBJUEVfQ09ORl9DSEVDS19YKGNzY19tb2RlKTsKIAkJUElQRV9DT05GX0NI
RUNLX0JPT0woZ2FtbWFfZW5hYmxlKTsKIAkJUElQRV9DT05GX0NIRUNLX0JPT0woY3NjX2VuYWJs
ZSk7CisKKwkJYnBfZ2FtbWEgPSBpbnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihw
aXBlX2NvbmZpZyk7CisJCWlmIChicF9nYW1tYSkKKwkJCVBJUEVfQ09ORl9DSEVDS19DT0xPUl9M
VVQoZ2FtbWFfbW9kZSwgYmFzZS5nYW1tYV9sdXQsIGJwX2dhbW1hKTsKKwogCX0KIAogCVBJUEVf
Q09ORl9DSEVDS19CT09MKGRvdWJsZV93aWRlKTsKQEAgLTEyODM3LDYgKzEyODYxLDcgQEAgc3Rh
dGljIGJvb2wgZmFzdGJvb3RfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAjdW5kZWYgUElQRV9DT05GX0NIRUNLX1AKICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfRkxB
R1MKICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfQ0xPQ0tfRlVaWlkKKyN1bmRlZiBQSVBFX0NPTkZf
Q0hFQ0tfQ09MT1JfTFVUCiAjdW5kZWYgUElQRV9DT05GX1FVSVJLCiAKIAlyZXR1cm4gcmV0Owot
LSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
