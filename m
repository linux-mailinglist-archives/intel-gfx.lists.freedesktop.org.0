Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFB635EAC5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 04:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA5A96E42C;
	Wed, 14 Apr 2021 02:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D781E6E42C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:23:19 +0000 (UTC)
IronPort-SDR: o1dju/xcQS/3zW0bFj8wUEvo0YyZDQDrd18XzKPsLGIBxNZyuVL7k8aaRVmh/Am1tZ8DN57j0M
 t6aY0u+ZtXng==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="191361644"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="191361644"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 19:23:19 -0700
IronPort-SDR: HEeAK84GpdmPe2XsMrlNQxbSZFakUgAQM8/+GPkMxSR7cD7DfSUCSBPSZnNlv+jGBlMx0lCktV
 hFKAO7oJOJPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="521825847"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 13 Apr 2021 19:23:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Apr 2021 05:23:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 05:23:03 +0300
Message-Id: <20210414022309.30898-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Rewrite the FBC tiling check a bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldy
aXRlIHRoZSB0aWxpbmcgY2hlY2sgaW4gYSBuaWNlciBmb3JtLgoKU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggMDRkOWM3ZDIyYjA0Li4xNzgyNDNhNmQzYTIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtNjgxLDExICs2ODEs
OSBAQCBzdGF0aWMgYm9vbCB0aWxpbmdfaXNfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogewogCXN3aXRjaCAobW9kaWZpZXIpIHsKIAljYXNlIERSTV9GT1JNQVRfTU9E
X0xJTkVBUjoKLQkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5KQotCQkJcmV0dXJuIHRy
dWU7Ci0JCXJldHVybiBmYWxzZTsKLQljYXNlIEk5MTVfRk9STUFUX01PRF9YX1RJTEVEOgogCWNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6CisJCXJldHVybiBESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gOTsKKwljYXNlIEk5MTVfRk9STUFUX01PRF9YX1RJTEVEOgogCQlyZXR1cm4gdHJ1ZTsK
IAlkZWZhdWx0OgogCQlyZXR1cm4gZmFsc2U7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
