Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D5B9AAD9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432086EC3F;
	Fri, 23 Aug 2019 08:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D5B6EC2C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203701997"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:33 -0700
Message-Id: <20190823082055.5992-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/23] drm/i915/tgl: Move GTCR register to
 cope with GAM MMIO address remap
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
CnYyOiBSZW5hbWUgcmVnaXN0ZXIgYW5kIGJpdGZpZWxkIHRvIGl0cyBuZXcgbmFtZSAoc3VnZ2Vz
dGVkIGJ5IE1pa2EpCgpIU0Q6IDM5OTM3OQpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVy
cnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19yZWcuaCB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyAgICAgICAgfCA4ICsrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9ndWNfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWNfcmVnLmgKaW5kZXggZWRmMTk0ZDIzYzZiLi5iZWEwYzQ5ZDNlMzIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19yZWcuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfcmVnLmgKQEAgLTgzLDYgKzgzLDkgQEAKICNk
ZWZpbmUgR0VOOF9HVENSCQkJX01NSU8oMHg0Mjc0KQogI2RlZmluZSAgIEdFTjhfR1RDUl9JTlZB
TElEQVRFCQkgICgxPDwwKQogCisjZGVmaW5lIEdFTjEyX0dVQ19UTEJfSU5WX0NSCQlfTU1JTygw
eGNlZTgpCisjZGVmaW5lICAgR0VOMTJfR1VDX1RMQl9JTlZfQ1JfSU5WQUxJREFURQkoMTw8MCkK
KwogI2RlZmluZSBHVUNfQVJBVF9DNkRJUwkJCV9NTUlPKDB4QTE3OCkKIAogI2RlZmluZSBHVUNf
U0hJTV9DT05UUk9MCQlfTU1JTygweGMwNjQpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CmluZGV4IDBiODFlMGI2NDM5My4uMmE0MjVkYjFjZmQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYwpAQCAtMTMyLDkgKzEzMiwxNSBAQCBzdGF0aWMgdm9pZCBnZW42X2dndHRfaW52
YWxpZGF0ZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52
YWxpZGF0ZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewogCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9IGdndHQtPnZtLmd0LT51bmNvcmU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBnZ3R0LT52bS5pOTE1OwogCiAJZ2VuNl9nZ3R0X2ludmFsaWRhdGUoZ2d0dCk7Ci0J
aW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VOOF9HVENSLCBHRU44X0dUQ1JfSU5WQUxJ
REFURSk7CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDEyKQorCQlpbnRlbF91bmNvcmVfd3Jp
dGVfZncodW5jb3JlLCBHRU4xMl9HVUNfVExCX0lOVl9DUiwKKwkJCQkgICAgICBHRU4xMl9HVUNf
VExCX0lOVl9DUl9JTlZBTElEQVRFKTsKKwllbHNlCisJCWludGVsX3VuY29yZV93cml0ZV9mdyh1
bmNvcmUsIEdFTjhfR1RDUiwgR0VOOF9HVENSX0lOVkFMSURBVEUpOwogfQogCiBzdGF0aWMgdm9p
ZCBnbWNoX2dndHRfaW52YWxpZGF0ZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
