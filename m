Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF1DBE67A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 22:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B046FB5A;
	Wed, 25 Sep 2019 20:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F556FB47
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 20:33:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 13:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="179927745"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by orsmga007.jf.intel.com with SMTP; 25 Sep 2019 13:33:23 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 13:34:01 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 13:33:50 -0700
Message-Id: <20190925203352.9827-2-james.ausmus@intel.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190925203352.9827-1-james.ausmus@intel.com>
References: <20190925203352.9827-1-james.ausmus@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Extract SAGV block time function
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gcHJlcCBmb3IgbmV3ZXIgcGxhdGZvcm1zIGhhdmluZyBtb3JlIGNvbXBsaWNhdGVkIHdheXMg
dG8gZGV0ZXJtaW5lCnRoZSBTQUdWIGJsb2NrIHRpbWUsIGV4dHJhY3QgdGhlIHNldHRpbmcgdG8g
YSBzZXBhcmF0ZSBmdW5jdGlvbi4gV2hpbGUKd2UncmUgYXQgaXQsIHVwZGF0ZSB0aGUgaWYgbGFk
ZGVyIHRvIGZvbGxvdyB0aGUgbmV3IGdlbiAtPiBvbGQgZ2VuIG9yZGVyCnByZWZlcmVuY2UsIGFu
ZCB3YXJuIG9uIGFueSBub24tc3BlY2lmaWVkIGdlbi4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAaW50ZWwuY29tPgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2
Lmxpc292c2tpeUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAyNCArKysrKysr
KysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDZiZWQyZWQxNDU3NC4uNWFk
NzJkY2IwZmFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTM2NjIsNiArMzY2MiwyMyBA
QCBpbnRlbF9oYXNfc2FndihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWRl
dl9wcml2LT5zYWd2X3N0YXR1cyAhPSBJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7CiB9CiAKK3N0
YXRpYyBpbnQKK2ludGVsX2dldF9zYWd2X2Jsb2NrX3RpbWVfdXMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQoreworCWludCBzYWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDAwOyAvKiBE
ZWZhdWx0IHRvIHVudXNhYmxlIGJsb2NrIHRpbWUgKi8KKworCWlmIChJU19HRU4oZGV2X3ByaXYs
IDExKSkKKwkJc2Fndl9ibG9ja190aW1lX3VzID0gMTA7CisJZWxzZSBpZiAoSVNfR0VOKGRldl9w
cml2LCAxMCkpCisJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDIwOworCWVsc2UgaWYgKElTX0dFTihk
ZXZfcHJpdiwgOSkpCisJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDMwOworCWVsc2UKKwkJTUlTU0lO
R19DQVNFKElOVEVMX0dFTihkZXZfcHJpdikpOworCisJcmV0dXJuIHNhZ3ZfYmxvY2tfdGltZV91
czsKK30KKwogLyoKICAqIFNBR1YgZHluYW1pY2FsbHkgYWRqdXN0cyB0aGUgc3lzdGVtIGFnZW50
IHZvbHRhZ2UgYW5kIGNsb2NrIGZyZXF1ZW5jaWVzCiAgKiBkZXBlbmRpbmcgb24gcG93ZXIgYW5k
IHBlcmZvcm1hbmNlIHJlcXVpcmVtZW50cy4gVGhlIGRpc3BsYXkgZW5naW5lIGFjY2VzcwpAQCAt
Mzc1NSwxMiArMzc3Miw3IEBAIGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCWlmICghaW50ZWxfaGFzX3NhZ3YoZGV2X3ByaXYpKQog
CQlyZXR1cm4gZmFsc2U7CiAKLQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkKLQkJc2Fndl9ibG9j
a190aW1lX3VzID0gMzA7Ci0JZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMCkpCi0JCXNhZ3Zf
YmxvY2tfdGltZV91cyA9IDIwOwotCWVsc2UKLQkJc2Fndl9ibG9ja190aW1lX3VzID0gMTA7CisJ
c2Fndl9ibG9ja190aW1lX3VzID0gaW50ZWxfZ2V0X3NhZ3ZfYmxvY2tfdGltZV91cyhkZXZfcHJp
dik7CiAKIAkvKgogCSAqIElmIHRoZXJlIGFyZSBubyBhY3RpdmUgQ1JUQ3MsIG5vIGFkZGl0aW9u
YWwgY2hlY2tzIG5lZWQgYmUgcGVyZm9ybWVkCi0tIAoyLjIyLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
