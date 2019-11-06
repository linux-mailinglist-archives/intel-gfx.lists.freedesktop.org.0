Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFE4F1616
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 13:31:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657886ED14;
	Wed,  6 Nov 2019 12:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3216ED14
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 12:31:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 04:31:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="285647958"
Received: from robinyou-mobl.amr.corp.intel.com (HELO
 mwahaha-bdw.amr.corp.intel.com) ([10.255.230.200])
 by orsmga001.jf.intel.com with ESMTP; 06 Nov 2019 04:31:36 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 12:31:35 +0000
Message-Id: <20191106123135.12441-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/lmem: fixup fake lmem teardown
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

V2Ugc2hvdWxkIG5vdCBiZSB1bmNvbmRpdGlvbmFsbHkgY2FsbGluZyByZWxlYXNlX2Zha2VfbG1l
bV9iYXIuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cmVnaW9uX2xtZW0uYwppbmRleCA1ODMxMTgwOTU2MzUuLmVkZGIzOTI5MTdhYSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCkBAIC01MSw4ICs1MSwxMCBAQCBzdGF0
aWMgaW50IGluaXRfZmFrZV9sbWVtX2JhcihzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVt
KQogCiBzdGF0aWMgdm9pZCByZWxlYXNlX2Zha2VfbG1lbV9iYXIoc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb24gKm1lbSkKIHsKLQlpZiAoZHJtX21tX25vZGVfYWxsb2NhdGVkKCZtZW0tPmZha2Vf
bWFwcGFibGUpKQotCQlkcm1fbW1fcmVtb3ZlX25vZGUoJm1lbS0+ZmFrZV9tYXBwYWJsZSk7CisJ
aWYgKCFkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJm1lbS0+ZmFrZV9tYXBwYWJsZSkpCisJCXJldHVy
bjsKKworCWRybV9tbV9yZW1vdmVfbm9kZSgmbWVtLT5mYWtlX21hcHBhYmxlKTsKIAogCWRtYV91
bm1hcF9yZXNvdXJjZSgmbWVtLT5pOTE1LT5kcm0ucGRldi0+ZGV2LAogCQkJICAgbWVtLT5yZW1h
cF9hZGRyLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
