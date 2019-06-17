Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6761647EBE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EC6888AE;
	Mon, 17 Jun 2019 09:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A98B8919A
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:20 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:50:58 +0300
Message-Id: <20190617095108.22118-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: make i915_fixed.h self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2ZpeGVkLmggICAgICAgICB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVh
ZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAppbmRl
eCBlNmJhNjZmNzg3ZjkuLmY2ZWMzZTcyYWUzOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUuaGVhZGVyLXRlc3QKQEAgLTYsNiArNiw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpOTE1
X2FjdGl2ZV90eXBlcy5oIFwKIAlpOTE1X2RlYnVnZnMuaCBcCiAJaTkxNV9kcnYuaCBcCisJaTkx
NV9maXhlZC5oIFwKIAlpOTE1X2lycS5oIFwKIAlpOTE1X3BhcmFtcy5oIFwKIAlpOTE1X3ByaW9s
aXN0X3R5cGVzLmggXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9maXhl
ZC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9maXhlZC5oCmluZGV4IDY2MjE1OTVmZTc0
Yy4uYTMyNzA5NGRlMmJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Zp
eGVkLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9maXhlZC5oCkBAIC02LDYgKzYs
MTEgQEAKICNpZm5kZWYgX0k5MTVfRklYRURfSF8KICNkZWZpbmUgX0k5MTVfRklYRURfSF8KIAor
I2luY2x1ZGUgPGxpbnV4L2J1Zy5oPgorI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgorI2luY2x1
ZGUgPGxpbnV4L21hdGg2NC5oPgorI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisKIHR5cGVkZWYg
c3RydWN0IHsKIAl1MzIgdmFsOwogfSB1aW50X2ZpeGVkXzE2XzE2X3Q7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
