Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDE7AAB7F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 20:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB286E0EE;
	Thu,  5 Sep 2019 18:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2034389F8E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 18:50:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 11:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="177398156"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by orsmga008.jf.intel.com with ESMTP; 05 Sep 2019 11:50:35 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 11:39:58 -0700
Message-Id: <20190905183959.11102-7-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190905183959.11102-1-anusha.srivatsa@intel.com>
References: <20190905183959.11102-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/firmware: Load v4.0.0 HuC for CML
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

QWRkIHN1cHBvcnQgdG8gbG9hZCBIdUMgb24gQ01MLgoKQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFudXNo
YSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwppbmRleCBj
OGEyMmZkZTI1NGMuLmM5ZTA5ODdhMTZjOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jCkBAIC00MCw2ICs0MCw3IEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0
YXR1cyhzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LAogICovCiAjZGVmaW5lIElOVEVMX1VDX0ZJ
Uk1XQVJFX0RFRlMoZndfZGVmLCBndWNfZGVmLCBodWNfZGVmKSBcCiAJZndfZGVmKEVMS0hBUlRM
QUtFLCAwLCBndWNfZGVmKGVobCwgMzMsIDAsIDQpLCBodWNfZGVmKGVobCwgIDksICAwLCAgICAw
KSkgXAorCWZ3X2RlZihDT0ZGRUVMQUtFLCAgMCwgZ3VjX2RlZihjbWwsIDMzLCAwLCAwKSwgaHVj
X2RlZihjbWwsICA0LCAgMCwgICAgMCkpIFwKIAlmd19kZWYoSUNFTEFLRSwgICAgIDAsIGd1Y19k
ZWYoaWNsLCAzMywgMCwgMCksIGh1Y19kZWYoaWNsLCAgOSwgIDAsICAgIDApKSBcCiAJZndfZGVm
KENPRkZFRUxBS0UsICAwLCBndWNfZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGtibCwgIDQs
ICAwLCAgICAwKSkgXAogCWZ3X2RlZihHRU1JTklMQUtFLCAgMCwgZ3VjX2RlZihnbGssIDMzLCAw
LCAwKSwgaHVjX2RlZihnbGssICA0LCAgMCwgICAgMCkpIFwKLS0gCjIuMjMuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
