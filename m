Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FA2D3167
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 21:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B816E3D6;
	Thu, 10 Oct 2019 19:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23796E3D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 19:32:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 12:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="188072464"
Received: from mdsmith3-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.255.229.24])
 by orsmga008.jf.intel.com with ESMTP; 10 Oct 2019 12:32:45 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 12:32:38 -0700
Message-Id: <20191010193241.101401-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Handle fused off display
 correctly
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

SWYgYWxsIHBpcGVzIGFyZSBmdXNlZCBvZmYgaXQgbWVhbnMgdGhhdCBkaXNwbGF5IGlzIGRpc2Fi
bGVkLCBzaW1pbGFyCmxpa2Ugd2UgaGFuZGxlIGZvciBHRU4gNyBhbmQgOCByaWdodCBhYm92ZS4K
Ck9uIEdFTiA5IHRoZSBiaXQgMzEgaXMgIkludGVybmFsIEdyYXBoaWNzIERpc2FibGUiIGFuZCBv
biBuZXdlciBHRU5zCml0IGhhcyBhbm90aGVyIGZ1bmN0aW9uLCBwcm9iYWJseSBvbiBHRU4gOSB3
aGVuIGJpdCAzMSBpcyBzZXQgYWxsCnRoZSAzIHBpcGVzIGRpc2FibGUgYml0IGFyZSBzZXQsIHNv
IHdlIGNhbiB1bmlmeSB0aGUgaGFuZGxpbmcuCgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5jIHwgMTEgKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMK
aW5kZXggODVlNDgwYmRjNjczLi5jMDFmY2NmZTNjY2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTcyLDE1ICs5NzIsMTQgQEAgdm9pZCBpbnRlbF9kZXZp
Y2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CQkJZW5hYmxlZF9tYXNrICY9IH5CSVQoUElQRV9EKTsKIAogCQkvKgotCQkgKiBBdCBsZWFzdCBv
bmUgcGlwZSBzaG91bGQgYmUgZW5hYmxlZCBhbmQgaWYgdGhlcmUgYXJlCi0JCSAqIGRpc2FibGVk
IHBpcGVzLCB0aGV5IHNob3VsZCBiZSB0aGUgbGFzdCBvbmVzLCB3aXRoIG5vIGhvbGVzCi0JCSAq
IGluIHRoZSBtYXNrLgorCQkgKiBJZiB0aGVyZSBhcmUgZGlzYWJsZWQgcGlwZXMsIHRoZXkgc2hv
dWxkIGJlIHRoZSBsYXN0IG9uZXMsCisJCSAqIHdpdGggbm8gaG9sZXMgaW4gdGhlIG1hc2suCiAJ
CSAqLwotCQlpZiAoZW5hYmxlZF9tYXNrID09IDAgfHwgIWlzX3Bvd2VyX29mXzIoZW5hYmxlZF9t
YXNrICsgMSkpCisJCWlmIChlbmFibGVkX21hc2sgJiYgIWlzX3Bvd2VyX29mXzIoZW5hYmxlZF9t
YXNrICsgMSkpCiAJCQlEUk1fRVJST1IoImludmFsaWQgcGlwZSBmdXNlIGNvbmZpZ3VyYXRpb246
IGVuYWJsZWRfbWFzaz0weCV4XG4iLAogCQkJCSAgZW5hYmxlZF9tYXNrKTsKLQkJZWxzZQotCQkJ
aW5mby0+cGlwZV9tYXNrID0gZW5hYmxlZF9tYXNrOworCisJCWluZm8tPnBpcGVfbWFzayA9IGVu
YWJsZWRfbWFzazsKIAl9CiAKIAkvKiBJbml0aWFsaXplIHNsaWNlL3N1YnNsaWNlL0VVIGluZm8g
Ki8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
