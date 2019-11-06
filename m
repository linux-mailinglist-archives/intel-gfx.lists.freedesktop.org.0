Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA0DF21A4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 23:26:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1CA6EE38;
	Wed,  6 Nov 2019 22:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC386EE38
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 22:26:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 14:26:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="214399299"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 06 Nov 2019 14:26:15 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 14:25:47 -0800
Message-Id: <20191106222550.20752-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106222550.20752-1-daniele.ceraolospurio@intel.com>
References: <20191106222550.20752-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/guc: Drop leftover preemption code
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

UmVtb3ZlIHVudXNlZCBlbnVtcyBhbmQgY3R4X3NhdmVfcmVzdG9yZV9kaXNhYmxlZCgpIGZ1bmN0
aW9uLCBsZWZ0b3Zlcgpmcm9tIHRoZSBsZWdhY3kgcHJlZW1wdGlvbiByZW1vdmFsLgoKU2lnbmVk
LW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
PgpDYzogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KQ2M6IE1hdHRo
ZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDIyIC0tLS0tLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwppbmRleCAyNDk4YzU1ZTBlYTUuLjJiMGRl
NmEyYTAyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
X3N1Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
c3VibWlzc2lvbi5jCkBAIC0xOCwxNSArMTgsNiBAQAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAj
aW5jbHVkZSAiaTkxNV90cmFjZS5oIgogCi1lbnVtIHsKLQlHVUNfUFJFRU1QVF9OT05FID0gMCwK
LQlHVUNfUFJFRU1QVF9JTlBST0dSRVNTLAotCUdVQ19QUkVFTVBUX0ZJTklTSEVELAotfTsKLSNk
ZWZpbmUgR1VDX1BSRUVNUFRfQlJFQURDUlVNQl9EV09SRFMJMHg4Ci0jZGVmaW5lIEdVQ19QUkVF
TVBUX0JSRUFEQ1JVTUJfQllURVMJXAotCShzaXplb2YodTMyKSAqIEdVQ19QUkVFTVBUX0JSRUFE
Q1JVTUJfRFdPUkRTKQotCiAvKioKICAqIERPQzogR3VDLWJhc2VkIGNvbW1hbmQgc3VibWlzc2lv
bgogICoKQEAgLTg4NCwxOSArODc1LDYgQEAgc3RhdGljIHZvaWQgZ3VjX2NsaWVudF9mcmVlKHN0
cnVjdCBpbnRlbF9ndWNfY2xpZW50ICpjbGllbnQpCiAJa2ZyZWUoY2xpZW50KTsKIH0KIAotc3Rh
dGljIGlubGluZSBib29sIGN0eF9zYXZlX3Jlc3RvcmVfZGlzYWJsZWQoc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlKQotewotCXUzMiBzciA9IGNlLT5scmNfcmVnX3N0YXRlW0NUWF9DT05URVhUX0NP
TlRST0wgKyAxXTsKLQotI2RlZmluZSBTUl9ESVNBQkxFRCBcCi0JX01BU0tFRF9CSVRfRU5BQkxF
KENUWF9DVFJMX0VOR0lORV9DVFhfUkVTVE9SRV9JTkhJQklUIHwgXAotCQkJICAgQ1RYX0NUUkxf
RU5HSU5FX0NUWF9TQVZFX0lOSElCSVQpCi0KLQlyZXR1cm4gKHNyICYgU1JfRElTQUJMRUQpID09
IFNSX0RJU0FCTEVEOwotCi0jdW5kZWYgU1JfRElTQUJMRUQKLX0KLQogc3RhdGljIGludCBndWNf
Y2xpZW50c19jcmVhdGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQogewogCXN0cnVjdCBpbnRlbF9n
dWNfY2xpZW50ICpjbGllbnQ7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
