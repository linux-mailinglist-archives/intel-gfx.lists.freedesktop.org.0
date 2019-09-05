Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4A0AAB79
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 20:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894738925A;
	Thu,  5 Sep 2019 18:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128128925A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 18:50:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 11:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="177398122"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by orsmga008.jf.intel.com with ESMTP; 05 Sep 2019 11:50:30 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 11:39:52 -0700
Message-Id: <20190905183959.11102-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/firmware: Load v2.0.0 HuC for SKL
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

QWRkIHN1cHBvcnQgdG8gbG9hZCB0aGUgbGF0ZXN0IHZlcnNpb24gb2YgSHVDIG9uIFNLTC4KCkNj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4IDI5NmE4MjYwM2JlMC4uMjc0ODJl
NGQ3YjA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTQ1
LDcgKzQ1LDcgQEAgdm9pZCBpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF91
Y19mdyAqdWNfZncsCiAJZndfZGVmKEdFTUlOSUxBS0UsICAwLCBndWNfZGVmKGdsaywgMzMsIDAs
IDApLCBodWNfZGVmKGdsaywgMDMsIDAxLCAyODkzKSkgXAogCWZ3X2RlZihLQUJZTEFLRSwgICAg
MCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwK
IAlmd19kZWYoQlJPWFRPTiwgICAgIDAsIGd1Y19kZWYoYnh0LCAzMywgMCwgMCksIGh1Y19kZWYo
Ynh0LCAwMSwgIDgsIDI4OTMpKSBcCi0JZndfZGVmKFNLWUxBS0UsICAgICAwLCBndWNfZGVmKHNr
bCwgMzMsIDAsIDApLCBodWNfZGVmKHNrbCwgMDEsIDA3LCAxMzk4KSkKKwlmd19kZWYoU0tZTEFL
RSwgICAgIDAsIGd1Y19kZWYoc2tsLCAzMywgMCwgMCksIGh1Y19kZWYoc2tsLCAgMiwgIDAsICAg
IDApKQogCiAjZGVmaW5lIF9fTUFLRV9VQ19GV19QQVRIKHByZWZpeF8sIG5hbWVfLCBzZXBhcmF0
b3JfLCBtYWpvcl8sIG1pbm9yXywgcGF0Y2hfKSBcCiAJImk5MTUvIiBcCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
