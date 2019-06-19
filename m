Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BAD4B9C9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC666E3E3;
	Wed, 19 Jun 2019 13:25:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B313F6E3E1
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:25:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 06:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="153806449"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 06:25:16 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 14:24:34 +0100
Message-Id: <20190619132459.25351-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/33] drm/i915: Use intel_uncore_rmw in
 intel_gt_init_swizzling
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClR3byBlYXN5
IG9wcG9ydHVuaXRpZXMgdG8gY29tcGFjdCB0aGUgY29kZSBieSB1c2luZyB0aGUgZXhpc3Rpbmcg
aGVscGVyLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyB8IDkgKystLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKaW5kZXggZGQwOTc5MGM0MjBk
Li5iY2FjMzU5ZWM2NjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2ZlbmNlX3JlZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3Jl
Zy5jCkBAIC04NDQsMTcgKzg0NCwxMiBAQCB2b2lkIGludGVsX2d0X2luaXRfc3dpenpsaW5nKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCiAJICAgIGk5MTUtPm1tLmJpdF82X3N3aXp6bGVfeCA9PSBJOTE1
X0JJVF82X1NXSVpaTEVfTk9ORSkKIAkJcmV0dXJuOwogCi0JaW50ZWxfdW5jb3JlX3dyaXRlKHVu
Y29yZSwKLQkJCSAgIERJU1BfQVJCX0NUTCwKLQkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29y
ZSwgRElTUF9BUkJfQ1RMKSB8Ci0JCQkgICBESVNQX1RJTEVfU1VSRkFDRV9TV0laWkxJTkcpOwor
CWludGVsX3VuY29yZV9ybXcodW5jb3JlLCBESVNQX0FSQl9DVEwsIDAsIERJU1BfVElMRV9TVVJG
QUNFX1NXSVpaTElORyk7CiAKIAlpZiAoSVNfR0VOKGk5MTUsIDUpKQogCQlyZXR1cm47CiAKLQlp
bnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAotCQkJICAgVElMRUNUTCwKLQkJCSAgIGludGVsX3Vu
Y29yZV9yZWFkKHVuY29yZSwgVElMRUNUTCkgfCBUSUxFQ1RMX1NXWkNUTCk7CisJaW50ZWxfdW5j
b3JlX3Jtdyh1bmNvcmUsIFRJTEVDVEwsIDAsIFRJTEVDVExfU1daQ1RMKTsKIAogCWlmIChJU19H
RU4oaTkxNSwgNikpCiAJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
