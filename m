Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A83F9115A75
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 02:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A5E6FABC;
	Sat,  7 Dec 2019 01:01:58 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A5F6FABC
 for <Intel-GFX@lists.freedesktop.org>; Sat,  7 Dec 2019 01:01:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 17:01:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,286,1571727600"; d="scan'208";a="206290674"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2019 17:01:55 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  6 Dec 2019 17:01:55 -0800
Message-Id: <20191207010155.24943-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20191121002723.33133-1-John.C.Harrison@Intel.com>
References: <20191121002723.33133-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Don't complain about FW versions
 when overridden
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCklmIGEgRlcg
b3ZlcnJpZGUgaXMgcHJlc2VudCB0aGVuIGEgdmVyc2lvbiBtaXMtbWF0Y2ggaXMgYWN0dWFsbHkK
aWdub3JlZC4gVGhlIHdhcm5pbmcgbm90aWNlIHdhcyBzdGlsbCBiZWluZyBwcmludGVkLCB0aG91
Z2guIFdoaWNoCmNvdWxkIGNvbmZ1c2UgcGVvcGxlIGJ5IGltcGx5aW5nIHRoYXQgdGhlIGxvYWQg
aGFkIGZhaWxlZCB3aGVuIGl0IGhhZAphY3R1YWxseSBzdWNjZWVkZWQuIEdpdmVuIHRoYXQgdGhl
IHdob2xlIHBvaW50IG9mIHRoZSBvdmVycmlkZSBpcyB0bwp1c2UgZGlmZmVyZW50IHZlcnNpb25z
IG9mIEZXLCB0aGVyZSBpc24ndCByZWFsbHkgbXVjaCBwb2ludCByZXBvcnRpbmcKdGhlIG1pcy1t
YXRjaC4KClNvLCBvbmx5IHByaW50IHRoZSBub3RpY2Ugd2hlbiBhY3R1YWxseSBmYWlsaW5nIHRo
ZSBsb2FkIGFuZCBhdm9pZCBhbnkKcG90ZW50aWFsIGNvbmZ1c2lvbi4KCnYyOiBPcmlnaW5hbCBw
YXRjaCBhZGRlZCBhIG5ldyAnaWdub3JlIHRoZSBwcmV2aW91cyBub3RpY2UnIG5vdGljZS4KTm93
IGl0IGp1c3Qgc3VwcHJlc3NlcyB0aGUgZXhpc3Rpbmcgbm90aWNlLiBSZXZpZXcgZmVlZGJhY2sg
ZnJvbQpNaWNoYWwgVy4KClNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJy
aXNvbkBJbnRlbC5jb20+CkNDOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwg
MTEgKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNf
ZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKaW5kZXggNjZh
MzBhYjcwNDRhLi5hYTFiN2FkMDJiNTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYwpAQCAtMzUxLDE2ICszNTEsMTUgQEAgaW50IGludGVsX3VjX2Z3X2ZldGNoKHN0
cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQog
CXVjX2Z3LT5taW5vcl92ZXJfZm91bmQgPSBGSUVMRF9HRVQoQ1NTX1NXX1ZFUlNJT05fVUNfTUlO
T1IsCiAJCQkJCSAgIGNzcy0+c3dfdmVyc2lvbik7CiAKLQlpZiAodWNfZnctPm1ham9yX3Zlcl9m
b3VuZCAhPSB1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCB8fAotCSAgICB1Y19mdy0+bWlub3JfdmVy
X2ZvdW5kIDwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQpIHsKKwlpZiAoKHVjX2Z3LT5tYWpvcl92
ZXJfZm91bmQgIT0gdWNfZnctPm1ham9yX3Zlcl93YW50ZWQgfHwKKwkgICAgIHVjX2Z3LT5taW5v
cl92ZXJfZm91bmQgPCB1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCkgJiYKKwkgICAgIWludGVsX3Vj
X2Z3X2lzX292ZXJyaWRkZW4odWNfZncpKSB7CiAJCWRldl9ub3RpY2UoZGV2LCAiJXMgZmlybXdh
cmUgJXM6IHVuZXhwZWN0ZWQgdmVyc2lvbjogJXUuJXUgIT0gJXUuJXVcbiIsCiAJCQkgICBpbnRl
bF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCB1Y19mdy0+cGF0aCwKIAkJCSAgIHVjX2Z3
LT5tYWpvcl92ZXJfZm91bmQsIHVjX2Z3LT5taW5vcl92ZXJfZm91bmQsCiAJCQkgICB1Y19mdy0+
bWFqb3JfdmVyX3dhbnRlZCwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQpOwotCQlpZiAoIWludGVs
X3VjX2Z3X2lzX292ZXJyaWRkZW4odWNfZncpKSB7Ci0JCQllcnIgPSAtRU5PRVhFQzsKLQkJCWdv
dG8gZmFpbDsKLQkJfQorCQllcnIgPSAtRU5PRVhFQzsKKwkJZ290byBmYWlsOwogCX0KIAogCW9i
aiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW1fZnJvbV9kYXRhKGk5MTUsIGZ3LT5kYXRh
LCBmdy0+c2l6ZSk7Ci0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
