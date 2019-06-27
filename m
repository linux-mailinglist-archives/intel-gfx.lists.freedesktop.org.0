Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EEB57EF6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 11:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3226E823;
	Thu, 27 Jun 2019 09:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B53D6E823
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 09:08:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 02:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="183399786"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 02:08:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 12:11:11 +0300
Message-Id: <20190627091111.14602-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: use wildcard to ensure all headers
 stay self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9sbG93IHN1aXQgd2l0aCB0aGUgaGVhZGVyIHRlc3RzIGluIHRoZSBzdWJkaXJlY3Rvcmllcy4K
CnYyOiBubyBuZWVkIHRvIGZpbHRlciBpOTE1X29hXyouaCBhcyB0aGV5IHdlcmUgbW92ZWQgdG8g
b2EvIHN1YmRpcgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPiAjIHYxClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAy
OCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10
ZXN0CmluZGV4IDJmZDYxODY5YmRhYS4uY2VmMzRiZjFlODI3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdApAQCAtMiwzMyArMiw3IEBACiAjIENvcHlyaWdodCDC
qSAyMDE5IEludGVsIENvcnBvcmF0aW9uCiAKICMgVGVzdCB0aGUgaGVhZGVycyBhcmUgY29tcGls
YWJsZSBhcyBzdGFuZGFsb25lIHVuaXRzCi1oZWFkZXJfdGVzdCA6PSBcCi0JaTkxNV9hY3RpdmVf
dHlwZXMuaCBcCi0JaTkxNV9kZWJ1Z2ZzLmggXAotCWk5MTVfZHJ2LmggXAotCWk5MTVfZml4ZWQu
aCBcCi0JaTkxNV9nZW1fZ3R0LmggXAotCWk5MTVfZ2xvYmFscy5oIFwKLQlpOTE1X2lycS5oIFwK
LQlpOTE1X3BhcmFtcy5oIFwKLQlpOTE1X3ByaW9saXN0X3R5cGVzLmggXAotCWk5MTVfcHZpbmZv
LmggXAotCWk5MTVfcmVnLmggXAotCWk5MTVfc2NoZWR1bGVyX3R5cGVzLmggXAotCWk5MTVfdXRp
bHMuaCBcCi0JaTkxNV92Z3B1LmggXAotCWludGVsX2Nzci5oIFwKLQlpbnRlbF9kcnYuaCBcCi0J
aW50ZWxfZ3VjX2N0LmggXAotCWludGVsX2d1Y19md2lmLmggXAotCWludGVsX2d1Y19yZWcuaCBc
Ci0JaW50ZWxfZ3Z0LmggXAotCWludGVsX3BtLmggXAotCWludGVsX3J1bnRpbWVfcG0uaCBcCi0J
aW50ZWxfc2lkZWJhbmQuaCBcCi0JaW50ZWxfdWNfZncuaCBcCi0JaW50ZWxfdW5jb3JlLmggXAot
CWludGVsX3dha2VyZWYuaAoraGVhZGVyX3Rlc3QgOj0gJChub3RkaXIgJCh3aWxkY2FyZCAkKHNy
YykvKi5oKSkKIAogcXVpZXRfY21kX2hlYWRlcl90ZXN0ID0gSERSVEVTVCAkQAogICAgICAgY21k
X2hlYWRlcl90ZXN0ID0gZWNobyAiXCNpbmNsdWRlIFwiJCg8RilcIiIgPiAkQAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
