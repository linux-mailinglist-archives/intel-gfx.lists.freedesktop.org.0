Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BF5AC11A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 21:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1236C6E131;
	Fri,  6 Sep 2019 19:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC27F6E116
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 19:58:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 12:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="213260062"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 12:58:31 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:47:54 -0700
Message-Id: <20190906194757.10881-7-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906194757.10881-1-anusha.srivatsa@intel.com>
References: <20190906194757.10881-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/firmware: CFL uses KBL firmware
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

QWRkIHN1cHBvcnQgdG8gbG9hZCB0aGUgbGF0ZXN0IHZlcnNpb24gb2YgSHVDIG9uIENGTC4KCkNj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4IGQ1OTAzNTgxOTNlNC4uMjYxNGYz
NjkzNGU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTQx
LDcgKzQxLDcgQEAgdm9pZCBpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF91
Y19mdyAqdWNfZncsCiAjZGVmaW5lIElOVEVMX1VDX0ZJUk1XQVJFX0RFRlMoZndfZGVmLCBndWNf
ZGVmLCBodWNfZGVmKSBcCiAJZndfZGVmKEVMS0hBUlRMQUtFLCAwLCBndWNfZGVmKGVobCwgMzMs
IDAsIDQpLCBodWNfZGVmKGVobCwgIDksICAwLCAgICAwKSkgXAogCWZ3X2RlZihJQ0VMQUtFLCAg
ICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwgaHVjX2RlZihpY2wsICA4LCAgNCwgMzIzOCkp
IFwKLQlmd19kZWYoQ09GRkVFTEFLRSwgIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCksIGh1Y19k
ZWYoa2JsLCAwMiwgMDAsIDE4MTApKSBcCisJZndfZGVmKENPRkZFRUxBS0UsICAwLCBndWNfZGVm
KGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGtibCwgIDQsICAwLCAgICAwKSkgXAogCWZ3X2RlZihH
RU1JTklMQUtFLCAgMCwgZ3VjX2RlZihnbGssIDMzLCAwLCAwKSwgaHVjX2RlZihnbGssICA0LCAg
MCwgICAgMCkpIFwKIAlmd19kZWYoS0FCWUxBS0UsICAgIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwg
MCksIGh1Y19kZWYoa2JsLCAgNCwgIDAsICAgIDApKSBcCiAJZndfZGVmKEJST1hUT04sICAgICAw
LCBndWNfZGVmKGJ4dCwgMzMsIDAsIDApLCBodWNfZGVmKGJ4dCwgIDIsICAwLCAgICAwKSkgXAot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
