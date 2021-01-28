Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4ED307A32
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43EBA6E987;
	Thu, 28 Jan 2021 16:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13EC36E987
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:00:05 +0000 (UTC)
IronPort-SDR: vThwxZClmqMwQxbcu0BjN7Y41FGtMRpj0InIYV9mud5TlAL5sGeVDKrUs/Qj84uL9xHQbiSWT/
 HF2glzRgOvyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="241781098"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="241781098"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 08:00:04 -0800
IronPort-SDR: SercQ3ale9Lmnv50d1fpVb2XS2F0/lCw0QhsZ0U0QNZTXJLmtFE7c1btGFcRjoWxmKvbms2BQl
 +E6BurV9oKCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411016772"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 28 Jan 2021 08:00:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Jan 2021 18:00:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:59:48 +0200
Message-Id: <20210128155948.13678-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Don't check tc_mode unless
 dealing with a TC PHY
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
IHNob3VsZG4ndCByZWFsbHkgdHJ1c3QgdGNfbW9kZSBvbiBub24tVEMgUEhZcyBzaW5jZSB3ZSBu
ZXZlcgppbml0aWFsaXplIGl0IGV4cGxpY2l0bHkuIFNvIGxldCdzIGNoZWNrIGZvciB0aGUgUEhZ
IHR5cGUgZmlyc3QuCkZvcnR1bmF0ZWx5IFRDX1BPUlRfVEJUX0FMVCBoYXBwZW5zIHRvIGJlIHpl
cm8gc28gSSBkb24ndCB0aGluawp0aGVyZSdzIGFuIGFjdHVhbCBidWcgaGVyZSwganVzdCBhIHBv
c3NpYmlsaXR5IGZvciBhIGZ1dHVyZSBvbmUKaWYgc29tZW9uZSByZWFycmFuZ2VzIHRoZSBlbnVt
IHZhbHVlcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGVmY2Rm
NTQ5OTkwMy4uNWJjNTAzM2EyZGVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKQEAgLTM0NjMsMTAgKzM0NjMsMTIgQEAgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAll
bnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIGRpZ19wb3J0
LT5iYXNlLnBvcnQpOworCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2
LCBkaWdfcG9ydC0+YmFzZS5wb3J0KTsKIAl1MzIgbG4wLCBsbjEsIHBpbl9hc3NpZ25tZW50Owog
CXU4IHdpZHRoOwogCi0JaWYgKGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkK
KwlpZiAoIWludGVsX3BoeV9pc190YyhkZXZfcHJpdiwgcGh5KSB8fAorCSAgICBkaWdfcG9ydC0+
dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpCiAJCXJldHVybjsKIAogCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKSB7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
