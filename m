Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D94FEB28C3
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 01:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357236F49F;
	Fri, 13 Sep 2019 23:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6094D6F49F
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 23:06:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 16:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360924422"
Received: from unerlige-desk.jf.intel.com ([10.165.21.198])
 by orsmga005.jf.intel.com with ESMTP; 13 Sep 2019 16:06:20 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 16:06:17 -0700
Message-Id: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/perf: Enable non-power-of-2 OA
 report sizes
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

Q3VycmVudCBkcml2ZXIgc3VwcG9ydHMgb25seSByZXBvcnQgc2l6ZXMgdGhhdCBhcmUgcG93ZXIg
b2YgMi4gRW5hYmxlCmRyaXZlciBzdXBwb3J0IGZvciBvdGhlciBhdmFpbGFibGUgc2l6ZXMgYXMg
d2VsbCBzbyB0aGF0IHRoZSB1c2VyIGhhcwphIGZsZXhpYmxlIGNob2ljZSBvZiByZXBvcnQgZm9y
bWF0cy4KClRoaXMgZmlyc3QgcGF0Y2ggc2ltcGxpZmllcyB0aGUgYWdpbmcgdGFpbCB3b3JrYXJv
dW5kIGluIHRoZSBkcml2ZXIKYmVmb3JlIHRoZSBvdGhlciBwYXRjaGVzIGFkZCBzdXBwb3J0IGZv
ciBvdGhlciBPQSByZXBvcnQgc2l6ZXMuCgpMaW9uZWwgTGFuZHdlcmxpbiAoMSk6CiAgZHJtL2k5
MTUvcGVyZjogcmV3b3JrIGFnaW5nIHRhaWwgd29ya2Fyb3VuZAoKVW1lc2ggTmVybGlnZSBSYW1h
cHBhICgyKToKICBkcm0vaTkxNS9wZXJmOiBBZGQgc3VwcG9ydCBmb3IgcmVwb3J0IHNpemVzIHRo
YXQgYXJlIG5vdCBwb3dlciBvZiAyCiAgZHJtL2k5MTUvcGVyZjogQWRkIHRoZSByZXBvcnQgZm9y
bWF0IHdpdGggYSBub24tcG93ZXItb2YtMiBzaXplCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCAgfCAgMzAgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCAy
NTMgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogaW5jbHVkZS91YXBpL2RybS9pOTE1
X2RybS5oICAgICAgfCAgMTEgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMTI3IGluc2VydGlvbnMoKyks
IDE2NyBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
