Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C74D03409C0
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 17:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAA96E910;
	Thu, 18 Mar 2021 16:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F3C6E910
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 16:10:49 +0000 (UTC)
IronPort-SDR: rh/fhwBJf0Gp12HL3Y+U8XU5AUvD59v4m9yoqWDITYkQsc9tTo8lyxW6z/YexIoWe6VxGLuxMC
 X6dNMotmR6cQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="189808149"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="189808149"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:10:48 -0700
IronPort-SDR: 7Y1tlq3vk+OowGhn91dlEFLMXbqiA1aJVVd6TeT26iPV16NogPn0zcYMektoX1NPOnyK7QC0XY
 Z7ZEnAYRw19w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="512174098"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2021 09:10:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Mar 2021 18:10:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Mar 2021 18:10:09 +0200
Message-Id: <20210318161015.22070-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
References: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915: Remove dead TPS3->TPS2
 fallback code
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IHdlIGV2ZXIgZ2V0IGhlcmUgd2l0aCBUUFMzIHRoZW4gaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVy
bigpCmlzIGp1c3QgYnJva2VuLiBSZXBsYWNlIHRoZSBjcmVmdWwgZmFsbGJhY2sgd2l0aCBqdXN0
Ck1JU1NJTkdfQ0FTRSgpLgoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIHwgMTYgKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCmluZGV4IGQ0NmNkMjA1MjQxYy4uZDE5NDViZmY2OTgwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yNTAzLDExICsyNTAzLDkgQEAgY3B0X3NldF9saW5r
X3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJY2FzZSBEUF9UUkFJTklOR19QQVRU
RVJOXzI6CiAJCSpEUCB8PSBEUF9MSU5LX1RSQUlOX1BBVF8yX0NQVDsKIAkJYnJlYWs7Ci0JY2Fz
ZSBEUF9UUkFJTklOR19QQVRURVJOXzM6Ci0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAot
CQkJICAgICJUUFMzIG5vdCBzdXBwb3J0ZWQsIHVzaW5nIFRQUzIgaW5zdGVhZFxuIik7Ci0JCSpE
UCB8PSBEUF9MSU5LX1RSQUlOX1BBVF8yX0NQVDsKLQkJYnJlYWs7CisJZGVmYXVsdDoKKwkJTUlT
U0lOR19DQVNFKGludGVsX2RwX3RyYWluaW5nX3BhdHRlcm5fc3ltYm9sKGRwX3RyYWluX3BhdCkp
OworCQlyZXR1cm47CiAJfQogCiAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIGludGVsX2RwLT5v
dXRwdXRfcmVnLCBpbnRlbF9kcC0+RFApOwpAQCAtMjgwOCwxMSArMjgwNiw5IEBAIGc0eF9zZXRf
bGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWNhc2UgRFBfVFJBSU5JTkdf
UEFUVEVSTl8yOgogCQkqRFAgfD0gRFBfTElOS19UUkFJTl9QQVRfMjsKIAkJYnJlYWs7Ci0JY2Fz
ZSBEUF9UUkFJTklOR19QQVRURVJOXzM6Ci0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAot
CQkJICAgICJUUFMzIG5vdCBzdXBwb3J0ZWQsIHVzaW5nIFRQUzIgaW5zdGVhZFxuIik7Ci0JCSpE
UCB8PSBEUF9MSU5LX1RSQUlOX1BBVF8yOwotCQlicmVhazsKKwlkZWZhdWx0OgorCQlNSVNTSU5H
X0NBU0UoaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVybl9zeW1ib2woZHBfdHJhaW5fcGF0KSk7CisJ
CXJldHVybjsKIAl9CiAKIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgaW50ZWxfZHAtPm91dHB1
dF9yZWcsIGludGVsX2RwLT5EUCk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
