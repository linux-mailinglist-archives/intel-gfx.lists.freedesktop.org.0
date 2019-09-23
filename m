Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFC8BB241
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DC16E860;
	Mon, 23 Sep 2019 10:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486988945B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:30:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182494632"
Received: from mrnaghsh-mobl1.amr.corp.intel.com (HELO
 dk-ThinkPad-X260.fios-router.home) ([10.254.177.243])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 03:30:10 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 03:29:27 -0700
Message-Id: <20190923102935.5860-2-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 1/9] drm/framebuffer: Format modifier for Intel
 Gen-12 render compression
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuLTEyIGhhcyBhIG5ldyBjb21wcmVzc2lvbiBmb3JtYXQsIGFkZCBhIG5ldyBtb2RpZmllciB0
byBpbmRpY2F0ZSB0aGF0LgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpD
YzogTmFubGV5IEcgQ2hlcnkgPG5hbmxleS5nLmNoZXJ5QGludGVsLmNvbT4KQ2M6IEphc29uIEVr
c3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQ
YW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvdWFw
aS9kcm0vZHJtX2ZvdXJjYy5oIHwgMTEgKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgg
Yi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAppbmRleCAzZmVlYWEzZjk4N2EuLjFmMGZi
ZjAzOThmNiAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKKysrIGIv
aW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKQEAgLTQxMCw2ICs0MTAsMTcgQEAgZXh0ZXJu
ICJDIiB7CiAjZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUwlmb3VyY2NfbW9kX2Nv
ZGUoSU5URUwsIDQpCiAjZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1MJZm91cmNj
X21vZF9jb2RlKElOVEVMLCA1KQogCisvKgorICogSW50ZWwgY29sb3IgY29udHJvbCBzdXJmYWNl
cyAoQ0NTKSBmb3IgR2VuLTEyIHJlbmRlciBjb21wcmVzc2lvbi4KKyAqCisgKiBUaGUgbWFpbiBz
dXJmYWNlIGlzIFktdGlsZWQgYW5kIGF0IHBsYW5lIGluZGV4IDAsIHRoZSBDQ1MgaXMgbGluZWFy
IGFuZAorICogYXQgaW5kZXggMS4gQSA2NEIgQ0NTIGNhY2hlIGxpbmUgY29ycmVzcG9uZHMgdG8g
YW4gYXJlYSBvZiA0eDEgdGlsZXMgaW4KKyAqIG1haW4gc3VyZmFjZS4gSW4gb3RoZXIgd29yZHMs
IDQgYml0cyBpbiBDQ1MgbWFwIHRvIGEgbWFpbiBzdXJmYWNlIGNhY2hlCisgKiBsaW5lIHBhaXIu
IFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBtdWx0aXBsZSBvZiBm
b3VyCisgKiBZLXRpbGUgd2lkdGhzLgorICovCisjZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJ
TEVEX0dFTjEyX1JDX0NDUyBmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDYpCisKIC8qCiAgKiBUaWxl
ZCwgTlYxMk1ULCBncm91cGVkIGluIDY0IChwaXhlbHMpIHggMzIgKGxpbmVzKSAtc2l6ZWQgbWFj
cm9ibG9ja3MKICAqCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
