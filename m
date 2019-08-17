Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB14B90FDA
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CEF6E9D7;
	Sat, 17 Aug 2019 09:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712516E4B7
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:40:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:40:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950870"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:40:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:59 -0700
Message-Id: <20190817093902.2171-38-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 37/40] drm/framebuffer/tgl: Format modifier
 for Intel Gen-12 render compression
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
