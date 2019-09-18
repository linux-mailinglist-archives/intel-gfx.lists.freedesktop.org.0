Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B278B6F5B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 00:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E533B7B2B7;
	Wed, 18 Sep 2019 22:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B28C7B28F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 22:28:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 15:28:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="199197880"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.162])
 by orsmga002.jf.intel.com with ESMTP; 18 Sep 2019 15:28:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 15:28:15 -0700
Message-Id: <20190918222815.13190-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/tgl: Implement Wa_1406941453
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

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkVuYWJsZSBT
bWFsbCBQTCBmb3IgcG93ZXIgYmVuZWZpdC4KClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5
IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU3R1YXJ0IFN1bW1lcnMg
PHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJhZGhha3Jpc2huYSBTcmlw
YWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDcxMzAxMDk0MC4xNzcxMS0xOC1s
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzI2MDAwMjI2LjI2OTE0LTQtbHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyB8IDcgKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAg
ICB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA0MWQwZjc4NmUwNmQuLmI3
N2FhYTU2M2VmYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCkBAIC0xMjU3LDYgKzEyNTcsMTMgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1OwogCisJaWYgKElTX0dFTihp
OTE1LCAxMikpIHsKKwkJLyogV2FfMTQwNjk0MTQ1Mzp0Z2wgKi8KKwkJd2FfbWFza2VkX2VuKHdh
bCwKKwkJCSAgICAgU0FNUExFUl9NT0RFLAorCQkJICAgICBTQU1QTEVSX0VOQUJMRV9TTUFMTF9Q
TCk7CisJfQorCiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKIAkJLyogVGhpcyBpcyBub3QgYW4g
V2EuIEVuYWJsZSBmb3IgYmV0dGVyIGltYWdlIHF1YWxpdHkgKi8KIAkJd2FfbWFza2VkX2VuKHdh
bCwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGJmMzdlY2ViYzgyZi4uYWY5NWY4MzVmNGY3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTg5NjQsNiArODk2NCw5IEBAIGVudW0gewog
I2RlZmluZSAgIEdFTjlfREdfTUlSUk9SX0ZJWF9FTkFCTEUJKDEgPDwgNSkKICNkZWZpbmUgICBH
RU45X0NDU19UTEJfUFJFRkVUQ0hfRU5BQkxFCSgxIDw8IDMpCiAKKyNkZWZpbmUgU0FNUExFUl9N
T0RFCQkJX01NSU8oMHhlMThjKQorI2RlZmluZSAgIFNBTVBMRVJfRU5BQkxFX1NNQUxMX1BMCSgx
IDw8IDE1KQorCiAjZGVmaW5lIEdFTjhfUk9XX0NISUNLRU4JCV9NTUlPKDB4ZTRmMCkKICNkZWZp
bmUgICBGTE9XX0NPTlRST0xfRU5BQkxFCQkoMSA8PCAxNSkKICNkZWZpbmUgICBQQVJUSUFMX0lO
U1RSVUNUSU9OX1NIT09URE9XTl9ESVNBQkxFCSgxIDw8IDgpCi0tIAoyLjIzLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
