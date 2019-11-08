Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FC6F4FED
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 16:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88946F9CE;
	Fri,  8 Nov 2019 15:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 892EE6F9CE
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 15:40:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 07:40:04 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="196934759"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 07:40:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 17:39:47 +0200
Message-Id: <cover.1573227240.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/dsi: enable DSC
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

Rmlyc3QgYXR0ZW1wdCBhdCBlbmFibGluZyBEU0Mgb24gSUNMKyBEU0kuIENvbXBsZXRlbHkgdW50
ZXN0ZWQsIGZpbmdlcnMKY3Jvc3NlZC4KClRoZXJlIGFyZSBzdGlsbCBnYXBzLCBhbmQgc29tZSBk
ZXRhaWxzIG9mIHRoZSBpbXBsZW1lbnRhdGlvbiwgaW4KcGFydGljdWxhciBhcm91bmQgVkJULCBh
cmUgZ2hhc3RseS4gQnV0IHRoZSBidWxrIG9mIHRoZSBjb2RlIHNob3VsZCBiZQpoZXJlLgoKQlIs
CkphbmkuCgoKSmFuaSBOaWt1bGEgKDkpOgogIGRybS9pOTE1L2Jpb3M6IHVzZSBhIGZsYWcgZm9y
IHZidCBoZG1pIGxldmVsIHNoaWZ0IHByZXNlbmNlCiAgZHJtL2k5MTUvYmlvczogc3RvcmUgY2hp
bGQgZGV2aWNlcyBpbiBhIGxpc3QKICBkcm0vaTkxNS9iaW9zOiBwYXNzIGRldmRhdGEgdG8gcGFy
c2VfZGRpX3BvcnQKICBkcm0vaTkxNS9iaW9zOiBwYXJzZSBjb21wcmVzc2lvbiBwYXJhbWV0ZXJz
IGJsb2NrCiAgZHJtL2k5MTUvYmlvczogYWRkIHN1cHBvcnQgZm9yIHF1ZXJ5aW5nIERTQyBkZXRh
aWxzIGZvciBlbmNvZGVyCiAgZHJtL2k5MTUvZHNjOiBtb3ZlIERQIHNwZWNpZmljIGNvbXB1dGUg
cGFyYW1zIHRvIGludGVsX2RwLmMKICBkcm0vaTkxNS9kc2M6IG1vdmUgc2xpY2UgaGVpZ2h0IGNh
bGN1bGF0aW9uIHRvIGVuY29kZXIKICBkcm0vaTkxNS9kc2M6IGFkZCBzdXBwb3J0IGZvciBjb21w
dXRpbmcgYW5kIHdyaXRpbmcgUFBTIGZvciBEU0kKICAgIGVuY29kZXJzCiAgZHJtL2k5MTUvZHNp
OiBhZGQgc3VwcG9ydCBmb3IgRFNDCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgICAgICAgIHwgIDc1ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyAgICAgfCAyODMgKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDEzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgNTkgKysrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zkc2MuYyAgICAgfCAgODUgKystLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMTEgKy0KIDggZmlsZXMgY2hhbmdlZCwg
Mzc3IGluc2VydGlvbnMoKyksIDE1NiBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
