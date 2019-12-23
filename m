Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62140129095
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 02:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC746E133;
	Mon, 23 Dec 2019 01:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441286E12E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 01:07:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Dec 2019 17:07:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,345,1571727600"; d="scan'208";a="219359049"
Received: from dtbingha-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.135.10])
 by orsmga003.jf.intel.com with ESMTP; 22 Dec 2019 17:07:20 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Dec 2019 17:06:54 -0800
Message-Id: <20191223010654.67037-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223010654.67037-1-jose.souza@intel.com>
References: <20191223010654.67037-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 rebased 7/7] drm/i915/display: Add comment to
 a function that probably can be removed
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

VGhpcyBmdW5jdGlvbiBpcyBvbmx5IGNhbGxlZCBmcm9tIHBvcnQgc3luYyBhbmQgaXQgaXMgaWRl
bnRpY2FsIHRvCndoYXQgd2lsbCBiZSBleGVjdXRlZCBhZ2FpbiBpbiBpbnRlbF91cGRhdGVfY3J0
YygpIG92ZXIgcG9ydCBzeW5jCnBpcGVzLgpJZiBpdCBpcyByZWFsbHkgbmVjZXNzYXJ5IGF0IGxl
YXN0IGl0IGRlc2VydmVzIGEgYmV0dGVyIG5hbWUgYW5kIGEKY29tbWVudCwgbGVhdmluZyBpdCB0
byBwZW9wbGUgd29ya2luZyBvbiBwb3J0IHN5bmMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDMyZTFmZGZjZWFjNy4uNjJlYzdlMzEzZjUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQ0ODMsNiArMTQ0ODMsMTAgQEAgc3RhdGljIHZv
aWQgaW50ZWxfc2V0X2RwX3RwX2N0bF9ub3JtYWwoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJ
aW50ZWxfZHBfc3RvcF9saW5rX3RyYWluKGludGVsX2RwKTsKIH0KIAorLyoKKyAqIFRPRE86IFRo
aXMgaXMgb25seSBjYWxsZWQgZnJvbSBwb3J0IHN5bmMgYW5kIGl0IGlzIGlkZW50aWNhbCB0byB3
aGF0IHdpbGwgYmUKKyAqIGV4ZWN1dGVkIGFnYWluIGluIGludGVsX3VwZGF0ZV9jcnRjKCkgb3Zl
ciBwb3J0IHN5bmMgcGlwZXMKKyAqLwogc3RhdGljIHZvaWQgaW50ZWxfcG9zdF9jcnRjX2VuYWJs
ZV91cGRhdGVzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJCQkgICBzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
