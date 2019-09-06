Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DECEAC115
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 21:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B7B6E116;
	Fri,  6 Sep 2019 19:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030BA6E10B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 19:58:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 12:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="213260039"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 12:58:28 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:47:49 -0700
Message-Id: <20190906194757.10881-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906194757.10881-1-anusha.srivatsa@intel.com>
References: <20190906194757.10881-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/uc: Update MAKE_HUC_FW_PATH macro
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

VXBkYXRlIE1BS0VfSFVDX0ZXX1BBVEggbWFjcm8gdG8gZm9sbG93IHRoZSBzYW1lIGNvbnZlbnRp
b24KYXMgdGhlIE1BS0VfR1VDX0ZXX1BBVEggd2l0aCB0aGUgc2VwYXJhdG9yIGNoYW5naW5nIGZy
b20gIl8iIHRvICIuIgphbmQgcmVtb3ZpbmcgInZlciIuCgpUaGUgY3VycmVudCBjb252ZW50aW9u
IGJlaW5nOgo8cGxhdGZvcm0+XzxnL2g+dWNfPG1ham9yPi48bWlub3I+LnBhdGNoLmJpbgoKU3Vn
Z2VzdGVkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRz
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4IDI5NmE4MjYwM2Jl
MC4uMTZhNWFhOGZlMTVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmMKQEAgLTU4LDcgKzU4LDcgQEAgdm9pZCBpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVj
dCBpbnRlbF91Y19mdyAqdWNfZncsCiAJX19NQUtFX1VDX0ZXX1BBVEgocHJlZml4XywgIl9ndWNf
IiwgIi4iLCBtYWpvcl8sIG1pbm9yXywgcGF0Y2hfKQogCiAjZGVmaW5lIE1BS0VfSFVDX0ZXX1BB
VEgocHJlZml4XywgbWFqb3JfLCBtaW5vcl8sIGJsZF9udW1fKSBcCi0JX19NQUtFX1VDX0ZXX1BB
VEgocHJlZml4XywgIl9odWNfdmVyIiwgIl8iLCBtYWpvcl8sIG1pbm9yXywgYmxkX251bV8pCisJ
X19NQUtFX1VDX0ZXX1BBVEgocHJlZml4XywgIl9odWNfIiwgIi4iLCBtYWpvcl8sIG1pbm9yXywg
YmxkX251bV8pCiAKIC8qIEFsbCBibG9icyBuZWVkIHRvIGJlIGRlY2xhcmVkIHZpYSBNT0RVTEVf
RklSTVdBUkUoKSAqLwogI2RlZmluZSBJTlRFTF9VQ19NT0RVTEVfRlcocGxhdGZvcm1fLCByZXZp
ZF8sIGd1Y18sIGh1Y18pIFwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
