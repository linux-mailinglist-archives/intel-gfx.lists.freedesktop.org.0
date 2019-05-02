Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F8612517
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 01:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55DE9894C0;
	Thu,  2 May 2019 23:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D8B894C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 23:27:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 16:27:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="147715187"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 16:27:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 02:26:47 +0300
Message-Id: <20190502232648.4450-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Avoid taking the PPS lock for
 non-eDP/VLV/CHV
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gSUNMIHdlIGhhdmUgdG8gbWFrZSBzdXJlIHRoYXQgd2UgZW5hYmxlIHRoZSBBVVggcG93ZXIg
ZG9tYWluIGluIGEKY29udHJvbGxlZCB3YXkgKGNvcnJlc3BvbmRpbmcgdG8gdGhlIHBvcnQncyBh
Y3R1YWwgVHlwZUMgbW9kZSkuIFNpbmNlCnRoZSBQUFMgbG9jayAtIHdoaWNoIHRha2VzIGFuIEFV
WCBwb3dlciByZWYgLSBpcyBvbmx5IG5lZWRlZCBvbgplRFAvVkxWL0NIViBhdm9pZCB0YWtpbmcg
aXQgaW4gb3RoZXIgY2FzZXMuCgpDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIHwgNCArKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKaW5kZXggZjU2
Y2JkYTU5ZmIzLi4xZWU5YjdlYmQ4MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwpAQCAtNjI2
Myw2ICs2MjYzLDEwIEBAIHZvaWQgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldChzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXIpCiAKIAlpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOwog
CisJaWYgKCFJU19WQUxMRVlWSUVXKGRldl9wcml2KSAmJiAhSVNfQ0hFUlJZVklFVyhkZXZfcHJp
dikgJiYKKwkgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCisJCXJldHVybjsKKwogCXdp
dGhfcHBzX2xvY2soaW50ZWxfZHAsIHdha2VyZWYpIHsKIAkJaWYgKElTX1ZBTExFWVZJRVcoZGV2
X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQkJaW50ZWxfZHAtPmFjdGl2ZV9w
aXBlID0gdmx2X2FjdGl2ZV9waXBlKGludGVsX2RwKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
