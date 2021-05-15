Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E208938157A
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D366F4E4;
	Sat, 15 May 2021 03:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B676F4D6
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:42 +0000 (UTC)
IronPort-SDR: 7KBDqetwk2rbwWDTCWL//olRnHjT+70wFil4GYqA/gPWa8GsoR2pdbXXnThUNViyRAinTjVUGn
 R5uCgsEo5MSQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383701"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383701"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:42 -0700
IronPort-SDR: yf4BiYbyty/w4oaMx3RrCTirZxTeX8XU5ygS+KSnp7A9J1Zw/Lo5Ao3P6WKtDICw7GZwbYy11V
 84KL6wbjQAcw==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901188"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:22 -0700
Message-Id: <20210515031035.2561658-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/23] drm/i915/adl_p: Don't config MBUS and
 DBUF during display initialization
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbGRl
cmxha2UtUCBkb24ndCBoYXZlIHByb2dyYW1pbmcgc2VxdWVuY2VzIGZvciBNQlVTIG9yIERCVUYg
ZHVyaW5nCmRpc3BsYXkgaW5pdGlhbGl6YWl0b24sIGluc3RlYWQgaXQgcmVxdWlyZXMgcHJvZ3Jh
bWluZyB0byB0aG9zZQpyZWdpc3RlcnMgZHVyaW5nIG1vZGVzZXQgYmVjYXVzZSBpdCB0byBkZXBl
bmQgb24gdGhlIHBpcGVzIGxlZnQKZW5hYmxlZC4KCkJzcGVjOiA0OTIxMwpDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24g
VGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAyOWQyZjFkMGNmZmQuLjI2ZDJlYmE4NzQ4NiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKQEAgLTUyNDYsNiArNTI0Niw5IEBAIHN0YXRpYyB2b2lkIGdlbjEyX2RidWZfc2xpY2Vz
X2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJZW51bSBkYnVm
X3NsaWNlIHNsaWNlOwogCisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkKKwkJcmV0dXJu
OworCiAJZm9yX2VhY2hfZGJ1Zl9zbGljZShkZXZfcHJpdiwgc2xpY2UpCiAJCWludGVsX2RlX3Jt
dyhkZXZfcHJpdiwgREJVRl9DVExfUyhzbGljZSksCiAJCQkgICAgIERCVUZfVFJBQ0tFUl9TVEFU
RV9TRVJWSUNFX01BU0ssCkBAIC01MjU3LDYgKzUyNjAsOSBAQCBzdGF0aWMgdm9pZCBpY2xfbWJ1
c19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1bnNpZ25lZCBsb25n
IGFib3hfcmVncyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5hYm94X21hc2s7CiAJdTMyIG1hc2ss
IHZhbCwgaTsKIAorCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpCisJCXJldHVybjsKKwog
CW1hc2sgPSBNQlVTX0FCT1hfQlRfQ1JFRElUX1BPT0wxX01BU0sgfAogCQlNQlVTX0FCT1hfQlRf
Q1JFRElUX1BPT0wyX01BU0sgfAogCQlNQlVTX0FCT1hfQl9DUkVESVRfTUFTSyB8Ci0tIAoyLjI1
LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
