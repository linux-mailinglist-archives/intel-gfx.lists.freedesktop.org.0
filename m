Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A03DB07D9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE7D6EC55;
	Thu, 12 Sep 2019 04:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769BE6E029;
 Thu, 12 Sep 2019 03:25:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 20:25:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336444946"
Received: from helsinki.fi.intel.com ([10.237.66.159])
 by orsmga004.jf.intel.com with ESMTP; 11 Sep 2019 20:25:18 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 06:24:55 +0300
Message-Id: <20190912032455.26095-8-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912032455.26095-1-gwan-gyeong.mun@intel.com>
References: <20190912032455.26095-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 7/7] drm/i915/dp: Attach HDR metadata
 property to DP connector
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
Cc: imirkin@alum.mit.edu, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgYXR0YWNoZXMgSERSIG1ldGFkYXRhIHByb3BlcnR5IHRvIERQIGNvbm5lY3RvciBvbiBHTEsr
LgpJdCBlbmFibGVzIEhEUiBtZXRhZGF0YSBpbmZvZnJhbWUgc2RwIG9uIEdMSysgdG8gYmUgdXNl
ZCB0byBzZW5kCkhEUiBtZXRhZGF0YSB0byBEUCBzaW5rLgoKdjI6IE1pbm9yIHN0eWxlIGZpeAoK
U2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA1ICsrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCmluZGV4IGFiYmYxZDVjNTRjNC4uNDA4NGIwNmZjYmZjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02NTM5LDYgKzY1MzksMTEgQEAgaW50ZWxfZHBf
YWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3QKIAogCWludGVsX2F0dGFjaF9jb2xvcnNwYWNlX3Byb3BlcnR5KGNvbm5l
Y3Rvcik7CiAKKwlpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgfHwgSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSkKKwkJZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFz
ZSwKKwkJCQkJICAgY29ubmVjdG9yLT5kZXYtPm1vZGVfY29uZmlnLmhkcl9vdXRwdXRfbWV0YWRh
dGFfcHJvcGVydHksCisJCQkJCSAgIDApOworCiAJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9k
cCkpIHsKIAkJdTMyIGFsbG93ZWRfc2NhbGVyczsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
