Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 554E2E05C4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A746E7F5;
	Tue, 22 Oct 2019 14:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248356E7F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:03:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:03:07 -0700
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="191473398"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:03:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 17:03:00 +0300
Message-Id: <20191022140300.20872-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/bios: add compression parameter block
 definition
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

QWRkIGRlZmluaXRpb24gZm9yIGJsb2NrIDU2LCB0aGUgY29tcHJlc3Npb24gcGFyYW1ldGVycy4K
CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCA1MCArKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAppbmRleCBlMzA0NWNlZDRiZmUuLjdm
MjIyMTk2ZDJkNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0
X2RlZnMuaApAQCAtMTE0LDYgKzExNCw3IEBAIGVudW0gYmRiX2Jsb2NrX2lkIHsKIAlCREJfTFZE
U19QT1dFUgkJCT0gNDQsCiAJQkRCX01JUElfQ09ORklHCQkJPSA1MiwKIAlCREJfTUlQSV9TRVFV
RU5DRQkJPSA1MywKKwlCREJfQ09NUFJFU1NJT05fUEFSQU1FVEVSUwk9IDU2LAogCUJEQl9TS0lQ
CQkJPSAyNTQsIC8qIFZCSU9TIHByaXZhdGUgYmxvY2ssIGlnbm9yZSAqLwogfTsKIApAQCAtODEx
LDQgKzgxMiw1MyBAQCBzdHJ1Y3QgYmRiX21pcGlfc2VxdWVuY2UgewogCXU4IGRhdGFbMF07IC8q
IHVwIHRvIDYgdmFyaWFibGUgbGVuZ3RoIGJsb2NrcyAqLwogfSBfX3BhY2tlZDsKIAorLyoKKyAq
IEJsb2NrIDU2IC0gQ29tcHJlc3Npb24gUGFyYW1ldGVycworICovCisKKyNkZWZpbmUgVkJUX1JD
X0JVRkZFUl9CTE9DS19TSVpFXzFLQgkwCisjZGVmaW5lIFZCVF9SQ19CVUZGRVJfQkxPQ0tfU0la
RV80S0IJMQorI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJWkVfMTZLQgkyCisjZGVmaW5l
IFZCVF9SQ19CVUZGRVJfQkxPQ0tfU0laRV82NEtCCTMKKworI2RlZmluZSBWQlRfRFNDX0xJTkVf
QlVGRkVSX0RFUFRIKHZidF92YWx1ZSkJKCh2YnRfdmFsdWUpICsgOCkgLyogYml0cyAqLworI2Rl
ZmluZSBWQlRfRFNDX01BWF9CUFAodmJ0X3ZhbHVlKQkJKDYgKyAodmJ0X3ZhbHVlKSAqIDIpCisK
K3N0cnVjdCBkc2NfY29tcHJlc3Npb25fcGFyYW1ldGVyc19lbnRyeSB7CisJdTggdmVyc2lvbl9t
YWpvcjo0OworCXU4IHZlcnNpb25fbWlub3I6NDsKKworCXU4IHJjX2J1ZmZlcl9ibG9ja19zaXpl
OjI7CisJdTggcmVzZXJ2ZWQxOjY7CisKKwkvKgorCSAqIEJ1ZmZlciBzaXplIGluIGJ5dGVzOgor
CSAqCisJICogNCBeIHJjX2J1ZmZlcl9ibG9ja19zaXplICogMTAyNCAqIChyY19idWZmZXJfc2l6
ZSArIDEpIGJ5dGVzCisJICovCisJdTggcmNfYnVmZmVyX3NpemU7CisJdTMyIHNsaWNlc19wZXJf
bGluZTsKKworCXU4IGxpbmVfYnVmZmVyX2RlcHRoOjQ7CisJdTggcmVzZXJ2ZWQyOjQ7CisKKwkv
KiBGbGFnIEJpdHMgMSAqLworCXU4IGJsb2NrX3ByZWRpY3Rpb25fZW5hYmxlOjE7CisJdTggcmVz
ZXJ2ZWQzOjc7CisKKwl1OCBtYXhfYnBwOyAvKiBtYXBwaW5nICovCisKKwkvKiBDb2xvciBkZXB0
aCBjYXBhYmlsaXRpZXMgKi8KKwl1OCByZXNlcnZlZDQ6MTsKKwl1OCBzdXBwb3J0XzhicGM6MTsK
Kwl1OCBzdXBwb3J0XzEwYnBjOjE7CisJdTggc3VwcG9ydF8xMmJwYzoxOworCXU4IHJlc2VydmVk
NTo0OworfSBfX3BhY2tlZDsKKworc3RydWN0IGJkYl9jb21wcmVzc2lvbl9wYXJhbWV0ZXJzIHsK
Kwl1MTYgZW50cnlfc2l6ZTsKKwlzdHJ1Y3QgZHNjX2NvbXByZXNzaW9uX3BhcmFtZXRlcnNfZW50
cnkgZGF0YVsxNl07Cit9IF9fcGFja2VkOworCiAjZW5kaWYgLyogX0lOVEVMX1ZCVF9ERUZTX0hf
ICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
