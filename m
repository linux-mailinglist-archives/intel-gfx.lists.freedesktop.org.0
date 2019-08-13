Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8A8BFBC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 19:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BDB06E20A;
	Tue, 13 Aug 2019 17:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C536E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 17:40:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="178738067"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga003.jf.intel.com with ESMTP; 13 Aug 2019 10:40:27 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 10:41:21 -0700
Message-Id: <20190813174121.129593-3-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190813174121.129593-1-stuart.summers@intel.com>
References: <20190813174121.129593-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Add module parameter to remove
 RCS engine
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

SW4gc29tZSBkZWJ1ZyBzY2VuYXJpb3MsIGl0IG1pZ2h0IGJlIGludGVyZXN0aW5nIHRvIGxvYWQK
YSBwbGF0Zm9ybSB3aXRob3V0IHN1cHBvcnQgZm9yIHRoZSByZW5kZXIgY29tbWFuZCBzdHJlYW1l
ci4KQWRkIGEgbW9kdWxlIHBhcmFtZXRlciB0byBhbGxvdyB0aGlzIHBsYXRmb3JtIGNvbmZpZ3Vy
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgICAgICAgfCAz
ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCAgICAgICB8IDMgKystCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMyArKysKIDMgZmlsZXMg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmMKaW5kZXggMjk2NDUyZjllZmU0Li45YzUxMTVmMGUwYjEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wYXJhbXMuYwpAQCAtMTc4LDYgKzE3OCw5IEBAIGk5MTVfcGFyYW1fbmFtZWQo
ZW5hYmxlX2d2dCwgYm9vbCwgMDQwMCwKIAkiRW5hYmxlIHN1cHBvcnQgZm9yIEludGVsIEdWVC1n
IGdyYXBoaWNzIHZpcnR1YWxpemF0aW9uIGhvc3Qgc3VwcG9ydChkZWZhdWx0OmZhbHNlKSIpOwog
I2VuZGlmCiAKK2k5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9yY3MsIGJvb2wsIDA0MDAs
CisJIkVuYWJsZSB0aGUgcmVuZGVyIGNvbW1hbmQgc3RyZWFtZXIuIChkZWZhdWx0OiB0cnVlKSIp
OworCiBzdGF0aWMgX19hbHdheXNfaW5saW5lIHZvaWQgX3ByaW50X3BhcmFtKHN0cnVjdCBkcm1f
cHJpbnRlciAqcCwKIAkJCQkJIGNvbnN0IGNoYXIgKm5hbWUsCiAJCQkJCSBjb25zdCBjaGFyICp0
eXBlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKaW5kZXggZDI5YWRlM2I3ZGU2Li4xZjA3
YWQ1OTczZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaApAQCAtNzcsNyArNzcsOCBA
QCBzdHJ1Y3QgZHJtX3ByaW50ZXI7CiAJcGFyYW0oYm9vbCwgdmVyYm9zZV9zdGF0ZV9jaGVja3Ms
IHRydWUpIFwKIAlwYXJhbShib29sLCBudWNsZWFyX3BhZ2VmbGlwLCBmYWxzZSkgXAogCXBhcmFt
KGJvb2wsIGVuYWJsZV9kcF9tc3QsIHRydWUpIFwKLQlwYXJhbShib29sLCBlbmFibGVfZ3Z0LCBm
YWxzZSkKKwlwYXJhbShib29sLCBlbmFibGVfZ3Z0LCBmYWxzZSkgXAorCXBhcmFtKGJvb2wsIGVu
YWJsZV9yY3MsIHRydWUpCiAKICNkZWZpbmUgTUVNQkVSKFQsIG1lbWJlciwgLi4uKSBUIG1lbWJl
cjsKIHN0cnVjdCBpOTE1X3BhcmFtcyB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYwppbmRleCBmOTljOWZkNDk3YjIuLjJhODBiMGQ2MTE1NSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC0xMDQyLDQgKzEwNDIsNyBAQCB2b2lkIGlu
dGVsX2RldmljZV9pbmZvX2luaXRfbW1pbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJRFJNX0RFQlVHX0RSSVZFUigidmVib3ggZW5hYmxlOiAlMDR4LCBpbnN0YW5jZXM6ICUw
NGx4XG4iLAogCQkJIHZlYm94X21hc2ssIFZFQk9YX01BU0soZGV2X3ByaXYpKTsKIAlHRU1fQlVH
X09OKHZlYm94X21hc2sgIT0gVkVCT1hfTUFTSyhkZXZfcHJpdikpOworCisJaWYgKCFpOTE1X21v
ZHBhcmFtcy5lbmFibGVfcmNzKQorCQlpbmZvLT5lbmdpbmVfbWFzayAmPSB+QklUKFJDUzApOwog
fQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
