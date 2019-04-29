Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EC6E289
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D59489322;
	Mon, 29 Apr 2019 12:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E08589322
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:27:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 05:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168934674"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 05:27:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 15:29:19 +0300
Message-Id: <f660e7e1258b81d50475fa73f610eb3312c83424.1556540889.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/21] drm/i915: ensure more headers remain
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

QWRkIG1vcmUgaGVhZGVycyB0byB0aGUgaGVhZGVyIHRlc3QgbGlzdDoKCiogaTkxNV9kcnYuaAoq
IGk5MTVfcGFyYW1zLmgKKiBpOTE1X3JlZy5oCiogaW50ZWxfZHJ2LmgKKiBpbnRlbF91bmNvcmUu
aAoKSGFwcGlseSB0aGV5IGFscmVhZHkgYXJlIHNlbGYtY29udGFpbmVkLCBidXQga2VlcCB0aGVt
IHRoYXQgd2F5LgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCB8IDUg
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4IDMyNTA3MS4uOWFjZTVlNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKQEAgLTQsOSArNCwxMiBAQAogIyBU
ZXN0IHRoZSBoZWFkZXJzIGFyZSBjb21waWxhYmxlIGFzIHN0YW5kYWxvbmUgdW5pdHMKIGhlYWRl
cl90ZXN0IDo9IFwKIAlpOTE1X2FjdGl2ZV90eXBlcy5oIFwKKwlpOTE1X2Rydi5oIFwKIAlpOTE1
X2dlbV9jb250ZXh0X3R5cGVzLmggXAogCWk5MTVfZ2VtX3BtLmggXAorCWk5MTVfcGFyYW1zLmgg
XAogCWk5MTVfcHJpb2xpc3RfdHlwZXMuaCBcCisJaTkxNV9yZWcuaCBcCiAJaTkxNV9zY2hlZHVs
ZXJfdHlwZXMuaCBcCiAJaTkxNV90aW1lbGluZV90eXBlcy5oIFwKIAlpbnRlbF9hdG9taWNfcGxh
bmUuaCBcCkBAIC0xOCw2ICsyMSw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpbnRlbF9jc3IuaCBc
CiAJaW50ZWxfZGRpLmggXAogCWludGVsX2RwLmggXAorCWludGVsX2Rydi5oIFwKIAlpbnRlbF9k
dm8uaCBcCiAJaW50ZWxfZmJjLmggXAogCWludGVsX2ZiZGV2LmggXApAQCAtMzQsNiArMzgsNyBA
QCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50ZWxfc2R2by5oIFwKIAlpbnRlbF9zcHJpdGUuaCBcCiAJ
aW50ZWxfdHYuaCBcCisJaW50ZWxfdW5jb3JlLmggXAogCWludGVsX3dha2VyZWYuaAogCiBxdWll
dF9jbWRfaGVhZGVyX3Rlc3QgPSBIRFJURVNUICRACi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
