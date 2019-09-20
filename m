Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41013B8F76
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 14:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21776FCD1;
	Fri, 20 Sep 2019 12:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75E36FCD1
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 12:07:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 05:07:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="217629523"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 20 Sep 2019 05:07:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 17:29:25 +0530
Message-Id: <20190920115930.27829-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190920115930.27829-1-animesh.manna@intel.com>
References: <20190920115930.27829-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 05/10] drm/i915/dsb: Check DSB engine status.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIGJzcGVjIGNoZWNrIGZvciBEU0Igc3RhdHVzIGJlZm9yZSBwcm9ncmFtbWluZyBhbnkK
b2YgaXRzIHJlZ2lzdGVyLiBJbmxpbmUgZnVuY3Rpb24gYWRkZWQgdG8gY2hlY2sgdGhlIGRzYiBz
dGF0dXMuCgpDYzogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJt
YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJt
YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMg
fCA5ICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8
IDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggZmFhODUzYjA4NDU4Li42MDAwMDUw
YjE4YTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAtMTcs
NiArMTcsMTUgQEAKICNkZWZpbmUgRFNCX0JZVEVfRU5fU0hJRlQJCTIwCiAjZGVmaW5lIERTQl9S
RUdfVkFMVUVfTUFTSwkJMHhmZmZmZgogCitzdGF0aWMgaW5saW5lIGJvb2wgaXNfZHNiX2J1c3ko
c3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29u
dGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwllbnVtIHBpcGUgcGlw
ZSA9IGNydGMtPnBpcGU7CisKKwlyZXR1cm4gRFNCX1NUQVRVUyAmIEk5MTVfUkVBRChEU0JfQ1RS
TChwaXBlLCBkc2ItPmlkKSk7Cit9CisKIHN0cnVjdCBpbnRlbF9kc2IgKgogaW50ZWxfZHNiX2dl
dChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4
IGY4ZjUyYWU2Y2M2Zi4uMDE5NTJmYWU1MzQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAg
LTExNjg0LDQgKzExNjg0LDExIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSBQT1JU
X1RYX0RGTEVYRFBDU1NTKGZpYSkJCV9NTUlPX0ZJQSgoZmlhKSwgMHgwMDg5NCkKICNkZWZpbmUg
ICBEUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUodGNfcG9ydCkJCSgxIDw8ICh0Y19wb3J0KSkK
IAorLyogVGhpcyByZWdpc3RlciBjb250cm9scyB0aGUgRGlzcGxheSBTdGF0ZSBCdWZmZXIgKERT
QikgZW5naW5lcy4gKi8KKyNkZWZpbmUgX0RTQlNMX0lOU1RBTkNFX0JBU0UJCTB4NzBCMDAKKyNk
ZWZpbmUgRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpCShfRFNCU0xfSU5TVEFOQ0VfQkFTRSArIFwK
KwkJCQkJIChwaXBlKSAqIDB4MTAwMCArIChpZCkgKiAxMDApCisjZGVmaW5lIERTQl9DVFJMKHBp
cGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHg4KQorI2RlZmluZSAg
IERTQl9TVEFUVVMJCQkoMSA8PCAwKQorCiAjZW5kaWYgLyogX0k5MTVfUkVHX0hfICovCi0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
