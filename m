Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC131395A6B
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 14:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670B26E917;
	Mon, 31 May 2021 12:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C4E6E91A;
 Mon, 31 May 2021 12:20:30 +0000 (UTC)
IronPort-SDR: sh9pYtOP7P+iNVoOtBUV74CesTrOHlexNgMZ4F/HZQR+soW2HColW2OuOQRoJ1MKke43z3J7+Y
 yj0cWsKyyzhA==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="183027527"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="183027527"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 05:20:29 -0700
IronPort-SDR: gtVKqgM6+1vdeOa9F8P0o15Q2HV5s3MNM9fQM0QTuNU2tRruZODgkuNKqdfPfPrDo8gnvEXT9u
 2HD/CaxUdxlg==
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="473904021"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.133])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 05:20:21 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 31 May 2021 14:19:39 +0200
Message-Id: <20210531121940.267032-15-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210531121940.267032-1-thomas.hellstrom@linux.intel.com>
References: <20210531121940.267032-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 14/15] drm/vma: Add a driver_private member
 to vma_node.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KClRoaXMgYWxsb3dzIGRyaXZlcnMgdG8gZGlzdGluZ3Vpc2ggYmV0d2VlbiBkaWZmZXJlbnQg
dHlwZXMgb2Ygdm1hX25vZGUncy4KVGhlIHJlYWRvbmx5IGZsYWcgd2FzIHVudXNlZCBhbmQgaXMg
dGh1cyByZW1vdmVkLgoKVGhpcyBpcyBhIHRlbXBvcmFyeSBzb2x1dGlvbiwgdW50aWwgaTkxNSBp
cyBjb252ZXJ0ZWQgY29tcGxldGVseSB0bwp1c2UgdHRtIGZvciBibydzLgoKU2lnbmVkLW9mZi1i
eTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gI2lyYwot
LS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgICAgIHwgOSAtLS0tLS0tLS0KIGluY2x1ZGUv
ZHJtL2RybV92bWFfbWFuYWdlci5oIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKaW5kZXggOTk4OTQyNWU5ODc1Li5lNzEw
ZTc5MDY5ZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW0uYwpAQCAtMTE0OSwxNSArMTE0OSw2IEBAIGludCBkcm1fZ2Vt
X21tYXAoc3RydWN0IGZpbGUgKmZpbHAsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogCQly
ZXR1cm4gLUVBQ0NFUzsKIAl9CiAKLQlpZiAobm9kZS0+cmVhZG9ubHkpIHsKLQkJaWYgKHZtYS0+
dm1fZmxhZ3MgJiBWTV9XUklURSkgewotCQkJZHJtX2dlbV9vYmplY3RfcHV0KG9iaik7Ci0JCQly
ZXR1cm4gLUVJTlZBTDsKLQkJfQotCi0JCXZtYS0+dm1fZmxhZ3MgJj0gflZNX01BWVdSSVRFOwot
CX0KLQogCXJldCA9IGRybV9nZW1fbW1hcF9vYmoob2JqLCBkcm1fdm1hX25vZGVfc2l6ZShub2Rl
KSA8PCBQQUdFX1NISUZULAogCQkJICAgICAgIHZtYSk7CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHJtL2RybV92bWFfbWFuYWdlci5oIGIvaW5jbHVkZS9kcm0vZHJtX3ZtYV9tYW5hZ2VyLmgKaW5k
ZXggNzZhYzVlOTdhNTU5Li40ZjhjMzUyMDZmN2MgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2Ry
bV92bWFfbWFuYWdlci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV92bWFfbWFuYWdlci5oCkBAIC01
Myw3ICs1Myw3IEBAIHN0cnVjdCBkcm1fdm1hX29mZnNldF9ub2RlIHsKIAlyd2xvY2tfdCB2bV9s
b2NrOwogCXN0cnVjdCBkcm1fbW1fbm9kZSB2bV9ub2RlOwogCXN0cnVjdCByYl9yb290IHZtX2Zp
bGVzOwotCWJvb2wgcmVhZG9ubHk6MTsKKwl2b2lkICpkcml2ZXJfcHJpdmF0ZTsKIH07CiAKIHN0
cnVjdCBkcm1fdm1hX29mZnNldF9tYW5hZ2VyIHsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
