Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A84E28D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A9E89333;
	Mon, 29 Apr 2019 12:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10458932A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:27:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 05:27:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168934712"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 05:27:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 15:29:22 +0300
Message-Id: <8e759b36dee10c20aa06e4d34d36cda6a2a02323.1556540889.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/21] drm/i915: make intel_dpll_mgr.h
 self-contained
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

QW5kIGVuc3VyZSBpdCBzdGF5cyB0aGF0IHdheS4KClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUuaGVhZGVyLXRlc3QgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwbGxfbWdy
LmMgICAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5oICAgICB8
IDggKysrKysrLS0KIDMgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10
ZXN0IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKaW5kZXggNjlm
ODhhYi4uMDk3OWFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5o
ZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVz
dApAQCAtMjIsNiArMjIsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50ZWxfY3NyLmggXAogCWlu
dGVsX2RkaS5oIFwKIAlpbnRlbF9kcC5oIFwKKwlpbnRlbF9kcGxsX21nci5oIFwKIAlpbnRlbF9k
cnYuaCBcCiAJaW50ZWxfZHZvLmggXAogCWludGVsX2R2b19kZXYuaCBcCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCBlMDFjMDU3Li5kZGE1ZGQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtMjEsNiArMjEsNyBAQAogICogREVBTElOR1MgSU4g
VEhFIFNPRlRXQVJFLgogICovCiAKKyNpbmNsdWRlICJpbnRlbF9kcGxsX21nci5oIgogI2luY2x1
ZGUgImludGVsX2Rydi5oIgogCiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwbGxfbWdyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5o
CmluZGV4IGJkODEyNGMuLjg4MzVkZDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwbGxfbWdyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBsbF9t
Z3IuaApAQCAtMjUsNiArMjUsMTAgQEAKICNpZm5kZWYgX0lOVEVMX0RQTExfTUdSX0hfCiAjZGVm
aW5lIF9JTlRFTF9EUExMX01HUl9IXwogCisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKworI2lu
Y2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKKwogLypGSVhNRTogTW92ZSB0aGlzIHRvIGEgbW9yZSBh
cHByb3ByaWF0ZSBwbGFjZS4gKi8KICNkZWZpbmUgYWJzX2RpZmYoYSwgYikgKHsJCQlcCiAJdHlw
ZW9mKGEpIF9fYSA9IChhKTsJCQlcCkBAIC0zMiwxMyArMzYsMTMgQEAKIAkodm9pZCkgKCZfX2Eg
PT0gJl9fYik7CQkJXAogCV9fYSA+IF9fYiA/IChfX2EgLSBfX2IpIDogKF9fYiAtIF9fYSk7IH0p
CiAKK3N0cnVjdCBkcm1fYXRvbWljX3N0YXRlOworc3RydWN0IGRybV9kZXZpY2U7CiBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZTsKIHN0cnVjdCBpbnRlbF9jcnRjOwogc3RydWN0IGludGVsX2NydGNf
c3RhdGU7CiBzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKLQogc3RydWN0IGludGVsX3NoYXJlZF9kcGxs
Owotc3RydWN0IGludGVsX2RwbGxfbWdyOwogCiAvKioKICAqIGVudW0gaW50ZWxfZHBsbF9pZCAt
IHBvc3NpYmxlIERQTEwgaWRzCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
