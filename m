Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E79E2E1E5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 18:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A37D6E110;
	Wed, 29 May 2019 16:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE076E110
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 16:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 09:06:10 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 29 May 2019 09:06:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 May 2019 19:06:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 19:05:57 +0300
Message-Id: <20190529160605.28739-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
References: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Disable sprite gamma on ivb-bdw
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IGN1cnJlbnRseSBoYXZlIGFueSB1c2UgZm9yIHRoZSBzcHJpdGUgZ2FtbWEgb24gaXZi
LWJkdy4KTGV0J3MgZGlzYWJsZSBpdC4gV2UgYWxyZWFkeSBkbyB0aGF0IG9uIHNrbCsuCgpPbiBw
cmUtaXZiIHRoZXJlIGlzIG5vIHdheSB0byBkaXNhYmxlIHRoZSBzcHJpdGUgZ2FtbWEsIGFuZCBp
dApvbmx5IGFmZmVjdHMgWUNiQ3IgcGl4ZWwgZm9ybWF0cywgd2hlcmVhcyBvbiBpdmIrIGl0IGFs
c28KYWZmZWN0cyBSR0IgZm9ybWF0cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUu
YyB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMDdlM2Y4NjFhOTJlLi4xYzNkN2FhMWE1MmIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNjQ0OCw3ICs2NDQ4LDcgQEAgZW51bSB7CiAj
ZGVmaW5lICAgU1BSSVRFX1lVVl9PUkRFUl9WWVVZCQkoMyA8PCAxNikKICNkZWZpbmUgICBTUFJJ
VEVfUk9UQVRFXzE4MAkJKDEgPDwgMTUpCiAjZGVmaW5lICAgU1BSSVRFX1RSSUNLTEVfRkVFRF9E
SVNBQkxFCSgxIDw8IDE0KQotI2RlZmluZSAgIFNQUklURV9JTlRfR0FNTUFfRU5BQkxFCSgxIDw8
IDEzKQorI2RlZmluZSAgIFNQUklURV9JTlRfR0FNTUFfRElTQUJMRQkoMSA8PCAxMykKICNkZWZp
bmUgICBTUFJJVEVfVElMRUQJCQkoMSA8PCAxMCkKICNkZWZpbmUgICBTUFJJVEVfREVTVF9LRVkJ
CSgxIDw8IDIpCiAjZGVmaW5lIF9TUFJBX0xJTk9GRgkJMHg3MDI4NApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9zcHJpdGUuYwppbmRleCBjMTgwODE1ZmFhYmQuLjQ0NmRmMWYwY2U4NSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKQEAgLTEwMTMsNiArMTAxMyw4IEBAIHN0YXRpYyB1MzIg
aXZiX3Nwcml0ZV9jdGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
CiAJCXJldHVybiAwOwogCX0KIAorCXNwcmN0bCB8PSBTUFJJVEVfSU5UX0dBTU1BX0RJU0FCTEU7
CisKIAlpZiAocGxhbmVfc3RhdGUtPmJhc2UuY29sb3JfZW5jb2RpbmcgPT0gRFJNX0NPTE9SX1lD
QkNSX0JUNzA5KQogCQlzcHJjdGwgfD0gU1BSSVRFX1lVVl9UT19SR0JfQ1NDX0ZPUk1BVF9CVDcw
OTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
