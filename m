Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F0B9D045
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 15:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E276E148;
	Mon, 26 Aug 2019 13:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FA36E146;
 Mon, 26 Aug 2019 13:22:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 06:22:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="209363482"
Received: from ovasilev-desk1.fi.intel.com ([10.237.72.57])
 by fmsmga002.fm.intel.com with ESMTP; 26 Aug 2019 06:22:19 -0700
From: Oleg Vasilev <oleg.vasilev@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Aug 2019 16:22:10 +0300
Message-Id: <20190826132216.2823-2-oleg.vasilev@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826132216.2823-1-oleg.vasilev@intel.com>
References: <20190826132216.2823-1-oleg.vasilev@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/7] drm: move DP_MAX_DOWNSTREAM_PORTS from
 i915 to drm core
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
Cc: intel-gfx@lists.freedesktop.org, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFBfTUFYX0RPV05TVFJFQU1fUE9SVFM9MHgxMCBpcyBhIHZlbmRvci1pbmRlcGVuZGVudCBjb25z
dGFudC4KClJldmlld2VkLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xsYWJvcmEu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBPbGVnIFZhc2lsZXYgPG9sZWcudmFzaWxldkBpbnRlbC5jb20+
CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMiAtLQogaW5jbHVkZS9kcm0vZHJtX2Rw
X2hlbHBlci5oICAgICAgICAgICAgICAgICAgICAgICAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDQ0OWFiYWVhNjE5Zi4u
YjUzZmRlMTZiODZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTEwNiw4ICsxMTA2LDYgQEAgc3RydWN0IGludGVsX2hk
bWkgewogfTsKIAogc3RydWN0IGludGVsX2RwX21zdF9lbmNvZGVyOwotI2RlZmluZSBEUF9NQVhf
RE9XTlNUUkVBTV9QT1JUUwkJMHgxMAotCiAvKgogICogZW51bSBsaW5rX21fbl9zZXQ6CiAgKglX
aGVuIHBsYXRmb3JtIHByb3ZpZGVzIHR3byBzZXQgb2YgTV9OIHJlZ2lzdGVycyBmb3IgZHAsIHdl
IGNhbgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oIGIvaW5jbHVkZS9k
cm0vZHJtX2RwX2hlbHBlci5oCmluZGV4IDgzNjQ1MDJmOTJjZi4uMWFlYTNlMDgxMGRiIDEwMDY0
NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJt
X2RwX2hlbHBlci5oCkBAIC0zNDksNiArMzQ5LDggQEAKICMgZGVmaW5lIERQX0RTXzEyQlBDCQkg
ICAgICAgICAgICAyCiAjIGRlZmluZSBEUF9EU18xNkJQQwkJICAgICAgICAgICAgMwogCisjZGVm
aW5lIERQX01BWF9ET1dOU1RSRUFNX1BPUlRTCQkgICAgMHgxMAorCiAvKiBEUCBGb3J3YXJkIGVy
cm9yIENvcnJlY3Rpb24gUmVnaXN0ZXJzICovCiAjZGVmaW5lIERQX0ZFQ19DQVBBQklMSVRZCQkg
ICAgMHgwOTAgICAgLyogMS40ICovCiAjIGRlZmluZSBEUF9GRUNfQ0FQQUJMRQkJCSAgICAoMSA8
PCAwKQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
