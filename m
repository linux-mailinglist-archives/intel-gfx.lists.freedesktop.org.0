Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C998AC11B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 21:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60AA6E122;
	Fri,  6 Sep 2019 19:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B296E10C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 19:58:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 12:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="213260069"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 12:58:32 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:47:56 -0700
Message-Id: <20190906194757.10881-9-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906194757.10881-1-anusha.srivatsa@intel.com>
References: <20190906194757.10881-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/firmware: Load v4.0.0 HuC for CML
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
Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwppbmRleCA1
OTk0YTQxZjQ3YTguLjZiODMyY2RjZWEyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
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
