Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF980AC113
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 21:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EADB6E111;
	Fri,  6 Sep 2019 19:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9396E10C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 19:58:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 12:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="213260048"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 12:58:30 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:47:51 -0700
Message-Id: <20190906194757.10881-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906194757.10881-1-anusha.srivatsa@intel.com>
References: <20190906194757.10881-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/firmware: Load v2.0.0 HuC for BXT
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

QWRkIHN1cHBvcnQgdG8gbG9hZCB0aGUgbGF0ZXN0IHZlcnNpb24gb2YgSHVDIG9uIEJYVC4KCkNj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4IDliZjZjNDE1YjRkOC4uYWI4ZmNk
M2U0NmNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTQ0
LDcgKzQ0LDcgQEAgdm9pZCBpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF91
Y19mdyAqdWNfZncsCiAJZndfZGVmKENPRkZFRUxBS0UsICAwLCBndWNfZGVmKGtibCwgMzMsIDAs
IDApLCBodWNfZGVmKGtibCwgMDIsIDAwLCAxODEwKSkgXAogCWZ3X2RlZihHRU1JTklMQUtFLCAg
MCwgZ3VjX2RlZihnbGssIDMzLCAwLCAwKSwgaHVjX2RlZihnbGssIDAzLCAwMSwgMjg5MykpIFwK
IAlmd19kZWYoS0FCWUxBS0UsICAgIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCksIGh1Y19kZWYo
a2JsLCAwMiwgMDAsIDE4MTApKSBcCi0JZndfZGVmKEJST1hUT04sICAgICAwLCBndWNfZGVmKGJ4
dCwgMzMsIDAsIDApLCBodWNfZGVmKGJ4dCwgMDEsICA4LCAyODkzKSkgXAorCWZ3X2RlZihCUk9Y
VE9OLCAgICAgMCwgZ3VjX2RlZihieHQsIDMzLCAwLCAwKSwgaHVjX2RlZihieHQsICAyLCAgMCwg
ICAgMCkpIFwKIAlmd19kZWYoU0tZTEFLRSwgICAgIDAsIGd1Y19kZWYoc2tsLCAzMywgMCwgMCks
IGh1Y19kZWYoc2tsLCAgMiwgIDAsICAgIDApKQogCiAjZGVmaW5lIF9fTUFLRV9VQ19GV19QQVRI
KHByZWZpeF8sIG5hbWVfLCBzZXBhcmF0b3JfLCBtYWpvcl8sIG1pbm9yXywgcGF0Y2hfKSBcCi0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
