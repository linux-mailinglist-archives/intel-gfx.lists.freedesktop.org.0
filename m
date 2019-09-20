Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA6DB98B4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 22:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC6E6FDEC;
	Fri, 20 Sep 2019 20:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C606FDEA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 20:58:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 13:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,530,1559545200"; d="scan'208";a="181908259"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 20 Sep 2019 13:58:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:58:05 -0700
Message-Id: <20190920205810.211048-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920205810.211048-1-jose.souza@intel.com>
References: <20190920205810.211048-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/6] drm/i915/tgl: Add missing ddi clock
 select during DP init sequence
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpTdGVw
IDQuYiB3YXMgY29tcGxldGUgbWlzc2VkIGJlY2F1c2UgaXQgaXMgb25seSByZXF1aXJlZCB0byBU
QyBhbmQgVEJULgoKQnNwZWM6IDQ5MTkwClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRh
eWxvckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXgg
MGMwZGE5ZjZjMmU4Li5kZmQ2YjA2NGNiYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYwpAQCAtMzIzMCwxMSArMzIzMCwxNCBAQCBzdGF0aWMgdm9pZCB0Z2xfZGRp
X3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50ZWxfZWRw
X3BhbmVsX29uKGludGVsX2RwKTsKIAogCS8qCi0JICogMS5iLCAzLiBhbmQgNC4gaXMgZG9uZSBi
ZWZvcmUgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKCkgYnk6CisJICogMS5iLCAzLiBhbmQgNC5hIGlz
IGRvbmUgYmVmb3JlIHRnbF9kZGlfcHJlX2VuYWJsZV9kcCgpIGJ5OgogCSAqIGhhc3dlbGxfY3J0
Y19lbmFibGUoKS0+aW50ZWxfZW5jb2RlcnNfcHJlX3BsbF9lbmFibGUoKSBhbmQKIAkgKiBoYXN3
ZWxsX2NydGNfZW5hYmxlKCktPmludGVsX2VuYWJsZV9zaGFyZWRfZHBsbCgpCiAJICovCiAKKwkv
KiA0LmIgKi8KKwlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwog
CS8qIDUuICovCiAJaWYgKCFpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkgfHwKIAkgICAg
ZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9UQlRfQUxUKQotLSAKMi4yMy4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
