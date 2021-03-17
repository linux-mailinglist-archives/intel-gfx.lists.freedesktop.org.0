Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347C033FA73
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 22:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C706E853;
	Wed, 17 Mar 2021 21:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999B76E03E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 21:26:41 +0000 (UTC)
IronPort-SDR: Fpl+lUz5utFB0fEfuqDk6xWF2F0FjZRkG/H+9ktruthZ6DCJpAaKFplK1E9xqufzALBLo/wFOJ
 3PmgTiTg/6+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="188915413"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="188915413"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 14:26:41 -0700
IronPort-SDR: B5RTKWbZOa5X4qZq7Cc4zEZQ3OjY94Y7MdvmcNNYTb63JaRZS0vh5JsUOI0hzl5slkJ3L61oUD
 l9YRm5SU45PA==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="412810536"
Received: from lbozovsk-mobl3.ger.corp.intel.com (HELO helsinki.intel.com)
 ([10.251.188.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 14:26:39 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 23:26:32 +0200
Message-Id: <20210317212632.2211971-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Not to try to re-enable
 PSR after being raised an irq aux error
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgYW4gaXJxIGF1eCBlcnJvciBoYXBwZW5zLCBpdCBkb2VzIG5vdCBuZWVkIHRvIHdhaXQgZm9y
IFBTUiAiSURMRSBzdGF0ZSIKZm9yIHJlLWVuYWJsaW5nIFBTUi4gQW5kIGl0IHNob3VsZCBub3Qg
dHJ5IHRvIHJlLWVuYWJsZSBQU1IuCgpUaGUgUFNSIGludGVycnVwdCBoYW5kbGVyIHNldHMgaXJx
X2F1eF9lcnJvciB3aGVuIHRoZSBQU1IgZXJyb3IgaGFwcGVucy4KQW5kIGl0IHNjaGVkdWxlcyB0
aGUgaW50ZXJfcHNyX3dvcmsoKS4gYnV0IHRoZSBjdXJyZW50IGludGVsX3Bzcl93b3JrKCkgY2Fu
CmJlIHNjaGVkdWxlZCBieSBhbm90aGVyIFBTUiBpbnRlcm5hbCByb3V0aW5lLgpUaGVyZWZvcmUs
IHdlIHNob3VsZCBub3QgcmUtZW5hYmxlIFBTUiBhZnRlciBoYW5kaW5nIGlycV9hdXhfZXJyb3Ig
aW4KaW50ZWxfcHNyX3dvcmsoKS4KCnYyOiBBZGRyZXNzIEpvc2UncyByZXZpZXcgY29tbWVudC4K
IC0gSGFuZGxpbmcgdGhlIGNsb3NpbmcgZnVuY3Rpb24gaW4gdGhlIGNoZWNrIHJvdXRpbmUgb2Yg
aXJxX2F1eF9lcnJvci4KIC0gQWRkIGEgZGV0YWlsZWQgY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBz
Y2VuYXJpby4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCBjZDQzNDI4NWUzYjcuLmFi
YTE1ODQ2ZTc4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBA
IC0xNjgzLDggKzE2ODMsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQogCWlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQogCQlnb3RvIHVu
bG9jazsKIAotCWlmIChSRUFEX09OQ0UoaW50ZWxfZHAtPnBzci5pcnFfYXV4X2Vycm9yKSkKKwlp
ZiAoUkVBRF9PTkNFKGludGVsX2RwLT5wc3IuaXJxX2F1eF9lcnJvcikpIHsKIAkJaW50ZWxfcHNy
X2hhbmRsZV9pcnEoaW50ZWxfZHApOworCQlnb3RvIHVubG9jazsKKwl9CiAKIAkvKgogCSAqIFdl
IGhhdmUgdG8gbWFrZSBzdXJlIFBTUiBpcyByZWFkeSBmb3IgcmUtZW5hYmxlCi0tIAoyLjMwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
