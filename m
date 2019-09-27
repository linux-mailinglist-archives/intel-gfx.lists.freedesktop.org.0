Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE4C0619
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 15:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D55089E36;
	Fri, 27 Sep 2019 13:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA7189167
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 13:14:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 06:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="219770984"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 27 Sep 2019 06:14:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 16:14:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 16:14:30 +0300
Message-Id: <20190927131432.15978-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190927131432.15978-1-ville.syrjala@linux.intel.com>
References: <20190927131432.15978-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Prepare the mode readout for hw
 vs. uapi state split
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBy
ZXBhcmUgdGhlIG1vZGUgcmVhZG91dCBmb3IgdGhlIHVhcGkgdnMuIGh3IHN0YXRlIHNwbGl0LgpX
ZSdsbCB3YW50IHRvIGRvIGFsbCByZWFkb3V0IGludG8gdGhlIGh3IHN0YXRlLgoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOWQ0ZGZlMmVhY2UwLi45
NGM5YmYxMTMzY2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0xNjg0MSw3ICsxNjg0MSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRf
cmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCQkJY3J0Yy0+YmFzZS5t
b2RlLmhkaXNwbGF5ID0gY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdzsKIAkJCWNydGMtPmJhc2UubW9k
ZS52ZGlzcGxheSA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX2g7CiAJCQlpbnRlbF9tb2RlX2Zyb21f
cGlwZV9jb25maWcoJmNydGNfc3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZSwgY3J0Y19zdGF0ZSk7
Ci0JCQlXQVJOX09OKGRybV9hdG9taWNfc2V0X21vZGVfZm9yX2NydGMoY3J0Yy0+YmFzZS5zdGF0
ZSwgJmNydGMtPmJhc2UubW9kZSkpOworCQkJV0FSTl9PTihkcm1fYXRvbWljX3NldF9tb2RlX2Zv
cl9jcnRjKCZjcnRjX3N0YXRlLT5iYXNlLCAmY3J0Yy0+YmFzZS5tb2RlKSk7CiAKIAkJCS8qCiAJ
CQkgKiBUaGUgaW5pdGlhbCBtb2RlIG5lZWRzIHRvIGJlIHNldCBpbiBvcmRlciB0byBrZWVwCi0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
