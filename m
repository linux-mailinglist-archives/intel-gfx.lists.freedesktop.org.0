Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899523966F0
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 19:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238CC6E983;
	Mon, 31 May 2021 17:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC506E97C;
 Mon, 31 May 2021 17:23:03 +0000 (UTC)
IronPort-SDR: lKF6wdgT/xN0gbwdXoT+du0UDzTiZSZblfzWvMgPhadZi5XlrcswvS1PYRb0lNMs5H2lyMV5O2
 RhmPPxT6WLqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="201520252"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="201520252"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 10:23:02 -0700
IronPort-SDR: dvzeGf259CzZt/Uxch4zcJMsURzKbN5b6ZM1mO4+IOpTMwuj/uf66PpgCeyF31gylSQMnmAwZ6
 g2qkpp0Ge8tA==
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="416211053"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.142])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 10:23:01 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 31 May 2021 19:22:27 +0200
Message-Id: <20210531172228.70846-15-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210531172228.70846-1-thomas.hellstrom@linux.intel.com>
References: <20210531172228.70846-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 14/15] drm/vma: Add a driver_private member
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
