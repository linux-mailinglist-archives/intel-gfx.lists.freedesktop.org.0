Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4003919B1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA64F6ED65;
	Wed, 26 May 2021 14:15:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2C76ED15;
 Wed, 26 May 2021 14:15:34 +0000 (UTC)
IronPort-SDR: 3WOZXyhG8KNjkC33JPTPTeZ07HCNuRp6twryT+PJNKz1CNtWSYkb0K9/q/5vEp1buRhXjVGUDI
 HYuvKS5La8ag==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223660557"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223660557"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:15:09 -0700
IronPort-SDR: bjFtb2RGi10ritGPd0/anbotQij33oy1QHKZH+lLIxW12lTeE2GHvQMr6U7Px9kym9/s/tcCBX
 TTa7W9YF2bgw==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547206291"
Received: from wardmich-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.209.181])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:15:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:14:47 +0100
Message-Id: <20210526141456.2334192-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
References: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Lift marking a lock as used to
 utils
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpBZnRlciBjYWxs
aW5nIGxvY2tfc2V0X3N1YmNsYXNzKCkgdGhlIGxvY2sgX211c3RfIGJlIHVzZWQsIG9yIGVsc2UK
bG9ja2RlcCdzIGludGVybmFsIG5yX3VzZWRfbG9ja3MgYmVjb21lcyB1bmJhbGFuY2VkLiBFeHRy
YWN0IHRoZSBsaXR0bGUKdXRpbGl0eSBmdW5jdGlvbiB0byBpOTE1X3V0aWxzLmMKClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgMTMgKy0tLS0t
LS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jICAgICAgICAgfCAxNSAr
KysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCAgICAgICAg
IHwgIDcgKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAxMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4
IDNmOWE4MTFlYjAyYi4uMTU1NjY4MTk1MzlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYwpAQCAtNzk0LDE4ICs3OTQsNyBAQCBpbnRlbF9lbmdpbmVfaW5pdF9h
Y3RpdmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCB1bnNpZ25lZCBpbnQgc3ViY2xh
c3MpCiAKIAlzcGluX2xvY2tfaW5pdCgmZW5naW5lLT5hY3RpdmUubG9jayk7CiAJbG9ja2RlcF9z
ZXRfc3ViY2xhc3MoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIHN1YmNsYXNzKTsKLQotCS8qCi0JICog
RHVlIHRvIGFuIGludGVyZXN0aW5nIHF1aXJrIGluIGxvY2tkZXAncyBpbnRlcm5hbCBkZWJ1ZyB0
cmFja2luZywKLQkgKiBhZnRlciBzZXR0aW5nIGEgc3ViY2xhc3Mgd2UgbXVzdCBlbnN1cmUgdGhl
IGxvY2sgaXMgdXNlZC4gT3RoZXJ3aXNlLAotCSAqIG5yX3VudXNlZF9sb2NrcyBpcyBpbmNyZW1l
bnRlZCBvbmNlIHRvbyBvZnRlbi4KLQkgKi8KLSNpZmRlZiBDT05GSUdfREVCVUdfTE9DS19BTExP
QwotCWxvY2FsX2lycV9kaXNhYmxlKCk7Ci0JbG9ja19tYXBfYWNxdWlyZSgmZW5naW5lLT5hY3Rp
dmUubG9jay5kZXBfbWFwKTsKLQlsb2NrX21hcF9yZWxlYXNlKCZlbmdpbmUtPmFjdGl2ZS5sb2Nr
LmRlcF9tYXApOwotCWxvY2FsX2lycV9lbmFibGUoKTsKLSNlbmRpZgorCW1hcmtfbG9ja191c2Vk
X2lycSgmZW5naW5lLT5hY3RpdmUubG9jayk7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKaW5kZXggOTBjN2YwYzQ4MzhjLi44OTRk
ZTYwODMzZWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKQEAgLTEyNywzICsxMjcsMTgg
QEAgdm9pZCBmc19yZWNsYWltX3RhaW50c19tdXRleChzdHJ1Y3QgbXV0ZXggKm11dGV4KQogCiAJ
ZnNfcmVjbGFpbV9yZWxlYXNlKEdGUF9LRVJORUwpOwogfQorCisjaWZkZWYgQ09ORklHX0RFQlVH
X0xPQ0tfQUxMT0MKK3ZvaWQgX19tYXJrX2xvY2tfdXNlZF9pcnEoc3RydWN0IGxvY2tkZXBfbWFw
ICpsb2NrKQoreworCS8qCisJICogRHVlIHRvIGFuIGludGVyZXN0aW5nIHF1aXJrIGluIGxvY2tk
ZXAncyBpbnRlcm5hbCBkZWJ1ZyB0cmFja2luZywKKwkgKiBhZnRlciBzZXR0aW5nIGEgc3ViY2xh
c3Mgd2UgbXVzdCBlbnN1cmUgdGhlIGxvY2sgaXMgdXNlZC4gT3RoZXJ3aXNlLAorCSAqIG5yX3Vu
dXNlZF9sb2NrcyBpcyBpbmNyZW1lbnRlZCBvbmNlIHRvbyBvZnRlbi4KKwkgKi8KKwlsb2NhbF9p
cnFfZGlzYWJsZSgpOworCWxvY2tfbWFwX2FjcXVpcmUobG9jayk7CisJbG9ja19tYXBfcmVsZWFz
ZShsb2NrKTsKKwlsb2NhbF9pcnFfZW5hYmxlKCk7Cit9CisjZW5kaWYKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdXRpbHMuaAppbmRleCA0MTMzZDUxOTM4MzkuLmMzZDIzNDEzM2RhNyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdXRpbHMuaApAQCAtNDU1LDYgKzQ1NSwxMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wg
dGltZXJfZXhwaXJlZChjb25zdCBzdHJ1Y3QgdGltZXJfbGlzdCAqdCkKIAlyZXR1cm4gdGltZXJf
YWN0aXZlKHQpICYmICF0aW1lcl9wZW5kaW5nKHQpOwogfQogCisjaWZkZWYgQ09ORklHX0RFQlVH
X0xPQ0tfQUxMT0MKK3ZvaWQgX19tYXJrX2xvY2tfdXNlZF9pcnEoc3RydWN0IGxvY2tkZXBfbWFw
ICpsb2NrKTsKKyNkZWZpbmUgbWFya19sb2NrX3VzZWRfaXJxKGxvY2spIF9fbWFya19sb2NrX3Vz
ZWRfaXJxKCYobG9jayktPmRlcF9tYXApCisjZWxzZQorI2RlZmluZSBtYXJrX2xvY2tfdXNlZF9p
cnEobG9jaykKKyNlbmRpZgorCiAvKgogICogVGhpcyBpcyBhIGxvb2thbGlrZSBmb3IgSVNfRU5B
QkxFRCgpIHRoYXQgdGFrZXMgYSBrY29uZmlnIHZhbHVlLAogICogZS5nLiBDT05GSUdfRFJNX0k5
MTVfU1BJTl9SRVFVRVNULCBhbmQgZXZhbHVhdGVzIHdoZXRoZXIgaXQgaXMgbm9uLXplcm8KLS0g
CjIuMzAuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
