Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C30D170466
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50E76E042;
	Wed, 26 Feb 2020 16:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E3F6E042
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 16:30:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 08:30:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,488,1574150400"; d="scan'208";a="271794896"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Feb 2020 08:30:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2020 18:30:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 18:30:54 +0200
Message-Id: <20200226163054.9509-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Set up PIPE_MISC truncate bit on tgl+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxv
b2tzIGxpa2UgdGhlIHBpcGUgcm91bmRpbmcgbW9kZSBiaXQgaGFzIG1vdmVkIGZyb20gUElQRV9D
SElDS0VOIHRvClBJUEVfTUlTQyBvbiB0Z2wuIEZyb2IgdGhlIG5ldyBsb2NhdGlvbi4KCkJzcGVj
IGRvZXMgc3RpbGwgZG9jdW1lbnQgdGhlIG9sZCBiaXRzIGFzIHdlbGwsIHNvIEkgbGVmdCB0aGUg
Y29kZQpmb3IgdGhlbSBhcyBpcyB1bnRpbCB3ZSBnZXQgY2xhcmlmaWNhdGlvbiBmcm9tIHRoZSBo
dyBmb2xrcyBvbgp3aGV0aGVyIHRoZSBvbGQgYml0cyBzdGlsbCBkbyBzb21ldGhpbmcgdXNlZnVs
LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8
IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDJmZDNjY2QzM2UzMC4uNGU4NzQ0
YzE1ZjRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTAxMzksNiArMTAxMzksOSBAQCBzdGF0aWMgdm9pZCBiZHdfc2V0X3BpcGVtaXNjKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQkJCQkgICBCSVQoUExB
TkVfQ1VSU09SKSkpID09IDApCiAJCXZhbCB8PSBQSVBFTUlTQ19IRFJfTU9ERV9QUkVDSVNJT047
CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJdmFsIHw9IFBJUEVNSVNDX1BJ
WEVMX1JPVU5ESU5HX1RSVU5DOworCiAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVNSVND
KGNydGMtPnBpcGUpLCB2YWwpOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBmNDVi
NWU4NmVjNjMuLjEzM2M0ODMxMTY0OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC01ODg5
LDYgKzU4ODksNyBAQCBlbnVtIHsKICNkZWZpbmUgICBQSVBFTUlTQ19ZVVY0MjBfTU9ERV9GVUxM
X0JMRU5EICgxIDw8IDI2KSAvKiBnbGsrICovCiAjZGVmaW5lICAgUElQRU1JU0NfSERSX01PREVf
UFJFQ0lTSU9OCSgxIDw8IDIzKSAvKiBpY2wrICovCiAjZGVmaW5lICAgUElQRU1JU0NfT1VUUFVU
X0NPTE9SU1BBQ0VfWVVWICAoMSA8PCAxMSkKKyNkZWZpbmUgICBQSVBFTUlTQ19QSVhFTF9ST1VO
RElOR19UUlVOQwlSRUdfQklUKDgpIC8qIHRnbCsgKi8KICNkZWZpbmUgICBQSVBFTUlTQ19ESVRI
RVJfQlBDX01BU0sJKDcgPDwgNSkKICNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfOF9CUEMJCSgw
IDw8IDUpCiAjZGVmaW5lICAgUElQRU1JU0NfRElUSEVSXzEwX0JQQwkoMSA8PCA1KQotLSAKMi4y
NC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
