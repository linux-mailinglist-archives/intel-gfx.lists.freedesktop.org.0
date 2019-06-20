Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E11B4CFF5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 16:06:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8556E589;
	Thu, 20 Jun 2019 14:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27D46E58F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 14:06:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 07:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="162531183"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2019 07:06:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:05:44 +0300
Message-Id: <20190620140600.11357-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620140600.11357-1-imre.deak@intel.com>
References: <20190620140600.11357-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/23] drm/i915: Use the correct AUX power
 domain in TypeC TBT-alt mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhlIFR5cGVDIFRCVC1hbHQgcG9ydCBtb2RlIHdlIG11c3QgdXNlIHRoZSBUQlQgQVVYIHBv
d2VyIGRvbWFpbiwKZml4IHRoYXQuCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE5ICsrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2MmE3YTg4YjFjMmUuLmQ5MmY1
MzNhMmNjMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTY2MTQsNiArNjYxNCwyNSBAQCBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWlu
IGludGVsX3BvcnRfdG9fcG93ZXJfZG9tYWluKGVudW0gcG9ydCBwb3J0KQogZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbgogaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKKworCWlmIChpbnRlbF9w
b3J0X2lzX3RjKGRldl9wcml2LCBkaWdfcG9ydC0+YmFzZS5wb3J0KSAmJgorCSAgICBkaWdfcG9y
dC0+dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpIHsKKwkJc3dpdGNoIChkaWdfcG9ydC0+YXV4
X2NoKSB7CisJCWNhc2UgQVVYX0NIX0M6CisJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9UQlQx
OworCQljYXNlIEFVWF9DSF9EOgorCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfVEJUMjsKKwkJ
Y2FzZSBBVVhfQ0hfRToKKwkJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX1RCVDM7CisJCWNhc2Ug
QVVYX0NIX0Y6CisJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9UQlQ0OworCQlkZWZhdWx0Ogor
CQkJTUlTU0lOR19DQVNFKGRpZ19wb3J0LT5hdXhfY2gpOworCQkJcmV0dXJuIFBPV0VSX0RPTUFJ
Tl9BVVhfVEJUMTsKKwkJfQorCX0KKwogCXN3aXRjaCAoZGlnX3BvcnQtPmF1eF9jaCkgewogCWNh
c2UgQVVYX0NIX0E6CiAJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0E7Ci0tIAoyLjE3LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
