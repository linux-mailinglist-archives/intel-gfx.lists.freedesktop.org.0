Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EE911C00
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445FC896DD;
	Thu,  2 May 2019 15:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62D7896E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963658"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:00:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:39 +0300
Message-Id: <8222df3f559b056387b5c7e6e04a878cbf8b4e2e.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/csr: move CSR version macros to
 intel_csr.h
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

UmVkdWNlIGNsdXR0ZXIgZnJvbSBpOTE1X2Rydi5oLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
IHwgNCAtLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuaCAgICAgIHwgNCArKysrCiA0IGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCmluZGV4IDBlNGRmZi4uMGQ3ZDE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYwpAQCAtMzYsNiArMzYsNyBAQAogCiAjaW5jbHVkZSAiaTkxNV9nZW1fY29udGV4
dC5oIgogI2luY2x1ZGUgImk5MTVfaXJxLmgiCisjaW5jbHVkZSAiaW50ZWxfY3NyLmgiCiAjaW5j
bHVkZSAiaW50ZWxfZHAuaCIKICNpbmNsdWRlICJpbnRlbF9kcnYuaCIKICNpbmNsdWRlICJpbnRl
bF9mYmMuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDlhNjM0Yi4uOWU3MDFkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTM0NSwxMCArMzQ1LDYgQEAgc3RydWN0IGRybV9pOTE1
X2Rpc3BsYXlfZnVuY3MgewogCXZvaWQgKCpsb2FkX2x1dHMpKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIH07CiAKLSNkZWZpbmUgQ1NSX1ZFUlNJT04obWFqb3Is
IG1pbm9yKQkoKG1ham9yKSA8PCAxNiB8IChtaW5vcikpCi0jZGVmaW5lIENTUl9WRVJTSU9OX01B
Sk9SKHZlcnNpb24pCSgodmVyc2lvbikgPj4gMTYpCi0jZGVmaW5lIENTUl9WRVJTSU9OX01JTk9S
KHZlcnNpb24pCSgodmVyc2lvbikgJiAweGZmZmYpCi0KIHN0cnVjdCBpbnRlbF9jc3IgewogCXN0
cnVjdCB3b3JrX3N0cnVjdCB3b3JrOwogCWNvbnN0IGNoYXIgKmZ3X3BhdGg7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9ncHVfZXJyb3IuYwppbmRleCBlMWI4NTguLjRmODVjYmQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtMzksNiArMzksNyBAQAogI2luY2x1ZGUgImk5
MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9ncHVfZXJyb3IuaCIKICNpbmNsdWRlICJpbnRlbF9h
dG9taWMuaCIKKyNpbmNsdWRlICJpbnRlbF9jc3IuaCIKICNpbmNsdWRlICJpbnRlbF9vdmVybGF5
LmgiCiAKIHN0YXRpYyBpbmxpbmUgY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5oCmluZGV4IDE3YTMyYy4uMDNjNjRmOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY3NyLmgKQEAgLTgsNiArOCwxMCBAQAogCiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsK
IAorI2RlZmluZSBDU1JfVkVSU0lPTihtYWpvciwgbWlub3IpCSgobWFqb3IpIDw8IDE2IHwgKG1p
bm9yKSkKKyNkZWZpbmUgQ1NSX1ZFUlNJT05fTUFKT1IodmVyc2lvbikJKCh2ZXJzaW9uKSA+PiAx
NikKKyNkZWZpbmUgQ1NSX1ZFUlNJT05fTUlOT1IodmVyc2lvbikJKCh2ZXJzaW9uKSAmIDB4ZmZm
ZikKKwogdm9pZCBpbnRlbF9jc3JfdWNvZGVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSk7CiB2b2lkIGludGVsX2Nzcl9sb2FkX3Byb2dyYW0oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpOwogdm9pZCBpbnRlbF9jc3JfdWNvZGVfZmluaShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
