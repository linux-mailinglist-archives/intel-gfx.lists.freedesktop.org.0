Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042112840B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7DC6ECB5;
	Fri, 20 Dec 2019 21:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C1B6ECB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 21:43:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 13:42:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213684295"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2019 13:42:55 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 13:42:28 -0800
Message-Id: <20191220214228.262345-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220214228.262345-1-jose.souza@intel.com>
References: <20191220214228.262345-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 8/8] drm/i915/display: Add comment to a
 function that probably can be removed
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
IDM5OThiYmZlMjQ1Ni4uMGI5MGJhMDE2N2YzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
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
