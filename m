Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D82E3873E7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C676E871;
	Tue, 18 May 2021 08:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849726E874;
 Tue, 18 May 2021 08:27:39 +0000 (UTC)
IronPort-SDR: c3TyQS2YS95O33lPIM9Sqm0TcfYgYNSjTcROS3dk8NWCHlEw1PGDtti3SJt8Ss5j4/5JK01eM4
 yC6HkG3xXPDA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180261584"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="180261584"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:27:38 -0700
IronPort-SDR: ZtM3w1j2YFNkxY5HLXtjRTZx+K+3Q6WUNJa/9U0QWcJFFOAb/Ooamr0jGCNrCoitcy72tZrF+Y
 rivhVvdS5y7w==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="611892334"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.195])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:27:35 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 18 May 2021 10:26:52 +0200
Message-Id: <20210518082701.997251-7-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/15] drm/i915/ttm: Embed a ttm buffer
 object in the i915 gem object
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

RW1iZWQgYSBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgaW50byB0aGUgaTkxNSBnZW0gb2JqZWN0
LCBtYWtpbmcgc3VyZQp3ZSBhbGlhcyB0aGUgZ2VtIG9iamVjdCBwYXJ0LiBJdCdzIGEgYml0IHVu
Zm9ydHVuYXRlIHRoYXQgdGhlCnN0cnVjdCB0dG1fYnVmZmVyX29qYmVjdCBlbWJlZHMgYSBnZW0g
b2JqZWN0IHNpbmNlIHdlIG90aGVyd2lzZSBjb3VsZAptYWtlIHRoZSBUVE0gcGFydCBwcml2YXRl
IHRvIHRoZSBUVE0gYmFja2VuZCwgYW5kIHVzZSB0aGUgdXN1YWwKaTkxNSBnZW0gb2JqZWN0IGZv
ciB0aGUgb3RoZXIgYmFja2VuZHMuClRvIG1ha2UgdGhpcyBhIGJpdCBtb3JlIHN0b3JhZ2UgZWZm
aWNpZW50IGZvciB0aGUgb3RoZXIgYmFja2VuZHMsCndlJ2QgaGF2ZSB0byB1c2UgYSBwb2ludGVy
IGZvciB0aGUgZ2VtIG9iamVjdCB3aGljaCB3b3VsZCByZXF1aXJlCmEgbG90IG9mIGNoYW5nZXMg
aW4gdGhlIGRyaXZlci4gV2UgcG9zdHBvbmUgdGhhdCBmb3IgbGF0ZXIuCgpTaWduZWQtb2ZmLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgICAgIHwgIDcg
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5o
IHwgMTIgKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMK
aW5kZXggYWJhZGYwOTk0YWQwLi5jODk1M2UzZjVjNzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAgLTYyLDYgKzYyLDEzIEBAIHZvaWQgaTkxNV9nZW1f
b2JqZWN0X2luaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgY29uc3Qg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzICpvcHMsCiAJCQkgIHN0cnVjdCBsb2NrX2Ns
YXNzX2tleSAqa2V5LCB1bnNpZ25lZCBmbGFncykKIHsKKwkvKgorCSAqIEEgZ2VtIG9iamVjdCBp
cyBlbWJlZGRlZCBib3RoIGluIGEgc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0IDovIGFuZAorCSAq
IGluIGEgZHJtX2k5MTVfZ2VtX29iamVjdC4gTWFrZSBzdXJlIHRoZXkgYXJlIGFsaWFzZWQuCisJ
ICovCisJQlVJTERfQlVHX09OKG9mZnNldG9mKHR5cGVvZigqb2JqKSwgYmFzZSkgIT0KKwkJICAg
ICBvZmZzZXRvZih0eXBlb2YoKm9iaiksIF9fZG9fbm90X2FjY2Vzcy5iYXNlKSk7CisKIAlzcGlu
X2xvY2tfaW5pdCgmb2JqLT52bWEubG9jayk7CiAJSU5JVF9MSVNUX0hFQUQoJm9iai0+dm1hLmxp
c3QpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmgKaW5kZXggZGJkN2ZmZmU5NTZlLi45OGY2OWQ4ZmQzN2QgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKQEAgLTEwLDYgKzEwLDcg
QEAKICNpbmNsdWRlIDxsaW51eC9tbXVfbm90aWZpZXIuaD4KIAogI2luY2x1ZGUgPGRybS9kcm1f
Z2VtLmg+CisjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fYXBpLmg+CiAjaW5jbHVkZSA8dWFwaS9k
cm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCkBAIC05OSw3ICsxMDAs
MTYgQEAgc3RydWN0IGk5MTVfZ2VtX29iamVjdF9wYWdlX2l0ZXIgewogfTsKIAogc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgewotCXN0cnVjdCBkcm1fZ2VtX29iamVjdCBiYXNlOworCS8qCisJ
ICogV2UgbWlnaHQgaGF2ZSByZWFzb24gdG8gcmV2aXNpdCB0aGUgYmVsb3cgc2luY2UgaXQgd2Fz
dGVzCisJICogYSBsb3Qgb2Ygc3BhY2UgZm9yIG5vbi10dG0gZ2VtIG9iamVjdHMuCisJICogSW4g
YW55IGNhc2UsIGFsd2F5cyB1c2UgdGhlIGFjY2Vzc29ycyBmb3IgdGhlIHR0bV9idWZmZXJfb2Jq
ZWN0CisJICogd2hlbiBhY2Nlc3NpbmcgaXQuCisJICovCisJdW5pb24geworCQlzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgYmFzZTsKKwkJc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0IF9fZG9fbm90X2Fj
Y2VzczsKKwl9OwogCiAJY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzICpvcHM7
CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
