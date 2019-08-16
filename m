Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AF78FD1C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA29E6EB2B;
	Fri, 16 Aug 2019 08:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639DC6EB23
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:07:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851663"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:06:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:05:00 -0700
Message-Id: <20190816080503.28594-37-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 36/39] drm/framebuffer/tgl: Format modifier for
 Intel Gen-12 render compression
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpHZW4tMTIgaGFzIGEgbmV3IGNvbXByZXNzaW9uIGZvcm1hdCwgYWRkIGEgbmV3IG1vZGlmaWVy
IGZvciB1c2Vyc3BhY2UgdG8KaW5kaWNhdGUgdGhhdC4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5h
a2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3Vy
Y2MuaCB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggYi9pbmNsdWRlL3VhcGkv
ZHJtL2RybV9mb3VyY2MuaAppbmRleCAzZmVlYWEzZjk4N2EuLmZiNzI3MGJmOTY3MCAxMDA2NDQK
LS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKKysrIGIvaW5jbHVkZS91YXBpL2Ry
bS9kcm1fZm91cmNjLmgKQEAgLTQxMCw2ICs0MTAsMTYgQEAgZXh0ZXJuICJDIiB7CiAjZGVmaW5l
IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUwlmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDQpCiAj
ZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1MJZm91cmNjX21vZF9jb2RlKElOVEVM
LCA1KQogCisvKgorICogSW50ZWwgY29sb3IgY29udHJvbCBzdXJmYWNlcyAoQ0NTKSBmb3IgR2Vu
LTEyIHJlbmRlciBjb21wcmVzc2lvbi4KKyAqCisgKiBUaGUgbWFpbiBzdXJmYWNlIGlzIFktdGls
ZWQgYW5kIGlzIGF0IHBsYW5lIGluZGV4IDAgd2hlcmVhcyBDQ1MgaXMgbGluZWFyIGFuZAorICog
YXQgaW5kZXggMS4gQSBDQ1MgY2FjaGUgbGluZSBjb3JyZXNwb25kcyB0byBhbiBhcmVhIG9mIDR4
MSB0aWxlcyBpbiB0aGUgbWFpbgorICogc3VyZmFjZS4gVGhlIG1haW4gc3VyZmFjZSBwaXRjaCBp
cyByZXF1aXJlZCB0byBiZSBhIG11bHRpcGxlIG9mIDQgdGlsZQorICogd2lkdGhzLgorICovCisj
ZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUyBmb3VyY2NfbW9kX2Nv
ZGUoSU5URUwsIDYpCisKIC8qCiAgKiBUaWxlZCwgTlYxMk1ULCBncm91cGVkIGluIDY0IChwaXhl
bHMpIHggMzIgKGxpbmVzKSAtc2l6ZWQgbWFjcm9ibG9ja3MKICAqCi0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
