Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A320109F61
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA1D6E0C5;
	Tue, 26 Nov 2019 13:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF1F6E0C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:42:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:42:58 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202721495"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:42:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:35 +0200
Message-Id: <cover.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 00/13] drm/i915/dsi: enable DSC
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

M3JkIHRyeSBhdCBlbmFibGluZyBEU0Mgb24gSUNMKyBEU0kuIFNvbWV0aGluZyB2ZXJ5IGNsb3Nl
IHRvIHRoaXMgd2FzCnRlc3RlZCB0byB3b3JrIGJ5IFZhbmRpdGEuCgpCUiwKSmFuaS4KCgpDYzog
VmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKSmFuaSBOaWt1bGEgKDEz
KToKICBkcm0vaTkxNS9iaW9zOiBwYXNzIGRldmRhdGEgdG8gcGFyc2VfZGRpX3BvcnQKICBkcm0v
aTkxNS9iaW9zOiBwYXJzZSBjb21wcmVzc2lvbiBwYXJhbWV0ZXJzIGJsb2NrCiAgZHJtL2k5MTUv
YmlvczogYWRkIHN1cHBvcnQgZm9yIHF1ZXJ5aW5nIERTQyBkZXRhaWxzIGZvciBlbmNvZGVyCiAg
ZHJtL2k5MTUvZHNjOiBtb3ZlIERQIHNwZWNpZmljIGNvbXB1dGUgcGFyYW1zIHRvIGludGVsX2Rw
LmMKICBkcm0vaTkxNS9kc2M6IG1vdmUgc2xpY2UgaGVpZ2h0IGNhbGN1bGF0aW9uIHRvIGVuY29k
ZXIKICBkcm0vaTkxNS9kc2M6IGFkZCBzdXBwb3J0IGZvciBjb21wdXRpbmcgYW5kIHdyaXRpbmcg
UFBTIGZvciBEU0kKICAgIGVuY29kZXJzCiAgZHJtL2k5MTUvZHNpOiBzZXQgcGlwZV9icHAgb24g
SUNMIGNvbmZpZ3VyZSBjb25maWcKICBkcm0vaTkxNS9kc2k6IGFic3RyYWN0IGFmZV9jbGsgY2Fs
Y3VsYXRpb24KICBkcm0vaTkxNS9kc2k6IHVzZSBhZmVfY2xrKCkgaW5zdGVhZCBvZiBpbnRlbF9k
c2lfYml0cmF0ZSgpCiAgZHJtL2k5MTUvZHNpOiB0YWtlIGNvbXByZXNzaW9uIGludG8gYWNjb3Vu
dCBpbiBhZmVfY2xrKCkKICBkcm0vaTkxNS9kc2k6IHVzZSBjb21wcmVzc2VkIHBpeGVsIGZvcm1h
dCB3aXRoIERTQwogIGRybS9pOTE1L2RzaTogYWNjb3VudCBmb3IgRFNDIGluIGhvcml6b250YWwg
dGltaW5ncwogIGRybS9pOTE1L2RzaTogYWRkIHN1cHBvcnQgZm9yIERTQwoKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgICAgICB8IDE4NCArKysrKysrKysrKysrKy0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDE2NyAr
KysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
aCAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAg
ICAgIHwgIDU5ICsrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRf
ZGVmcy5oIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2Mu
YyAgICAgfCAgODQgKysrLS0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgMzkzIGluc2VydGlvbnMoKyks
IDEwOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
