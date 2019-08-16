Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA928FD22
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60746EB30;
	Fri, 16 Aug 2019 08:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8F66EB23
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:07:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851613"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:06:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:54 -0700
Message-Id: <20190816080503.28594-31-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/39] drm/i915/tgl: Move GTCR register to cope
 with GAM MMIO address remap
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkdBTSByZWdp
c3RlcnMgbG9jYXRlZCBpbiB0aGUgMHg0eHh4IHJhbmdlIGhhdmUgYmVlbiByZWxvY2F0ZWQgdG8g
MHhDeHh4Owp0aGlzIGlzIHRvIG1ha2Ugc3BhY2UgZm9yIGdsb2JhbCBNT0NTIHJlZ2lzdGVycy4K
CkhTRDogMzk5Mzc5CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRo
aWVycnlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfcmVnLmggfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAg
ICB8IDggKysrKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Y19yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19yZWcuaAppbmRl
eCBlZGYxOTRkMjNjNmIuLjc3MTlmYWRmZTc4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19yZWcuaApAQCAtODEsNiArODEsNyBAQAogI2RlZmluZSAgIEdUX0RPT1JC
RUxMX0VOQUJMRQkJICAoMTw8MCkKIAogI2RlZmluZSBHRU44X0dUQ1IJCQlfTU1JTygweDQyNzQp
CisjZGVmaW5lIEdFTjEyX0dUQ1IJCQlfTU1JTygweGNlZTgpCiAjZGVmaW5lICAgR0VOOF9HVENS
X0lOVkFMSURBVEUJCSAgKDE8PDApCiAKICNkZWZpbmUgR1VDX0FSQVRfQzZESVMJCQlfTU1JTygw
eEExNzgpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDUzNmVhZGYwOTVmZS4u
NzZhZjQwZDIzZjA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMTMwLDEw
ICsxMzAsMTQgQEAgc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCkKIAogc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52YWxpZGF0ZShzdHJ1Y3QgaTkx
NV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZnZ3R0LT52
bS5pOTE1LT51bmNvcmU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBnZ3R0LT52
bS5pOTE1OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CiAK
IAlnZW42X2dndHRfaW52YWxpZGF0ZShnZ3R0KTsKLQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5j
b3JlLCBHRU44X0dUQ1IsIEdFTjhfR1RDUl9JTlZBTElEQVRFKTsKKwlpZiAoSU5URUxfR0VOKGk5
MTUpID49IDEyKQorCQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRU4xMl9HVENSLCBH
RU44X0dUQ1JfSU5WQUxJREFURSk7CisJZWxzZQorCQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5j
b3JlLCBHRU44X0dUQ1IsIEdFTjhfR1RDUl9JTlZBTElEQVRFKTsKIH0KIAogc3RhdGljIHZvaWQg
Z21jaF9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
