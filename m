Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5309395352
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 03:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ECFE8902A;
	Tue, 20 Aug 2019 01:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C7E8902A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:23:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 18:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; d="scan'208";a="353417884"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 19 Aug 2019 18:23:35 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 18:23:27 -0700
Message-Id: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/uc: define GuC and HuC FWs for EHL
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

Rmlyc3QgdWMgZmlybXdhcmUgcmVsZWFzZSBmb3IgRUhMLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5jIHwgMTMgKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNf
ZncuYwppbmRleCBiZDIyYmYxMWFkYWQuLjI5NmE4MjYwM2JlMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCkBAIC0zOSwxMiArMzksMTMgQEAgdm9pZCBpbnRlbF91
Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsCiAgKiBNdXN0IGJl
IG9yZGVyZWQgYmFzZWQgb24gcGxhdGZvcm0gKyByZXZpZCwgZnJvbSBuZXdlciB0byBvbGRlci4K
ICAqLwogI2RlZmluZSBJTlRFTF9VQ19GSVJNV0FSRV9ERUZTKGZ3X2RlZiwgZ3VjX2RlZiwgaHVj
X2RlZikgXAotCWZ3X2RlZihJQ0VMQUtFLCAgICAwLCBndWNfZGVmKGljbCwgMzMsIDAsIDApLCBo
dWNfZGVmKGljbCwgIDgsICA0LCAzMjM4KSkgXAotCWZ3X2RlZihDT0ZGRUVMQUtFLCAwLCBndWNf
ZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGtibCwgMDIsIDAwLCAxODEwKSkgXAotCWZ3X2Rl
ZihHRU1JTklMQUtFLCAwLCBndWNfZGVmKGdsaywgMzMsIDAsIDApLCBodWNfZGVmKGdsaywgMDMs
IDAxLCAyODkzKSkgXAotCWZ3X2RlZihLQUJZTEFLRSwgICAwLCBndWNfZGVmKGtibCwgMzMsIDAs
IDApLCBodWNfZGVmKGtibCwgMDIsIDAwLCAxODEwKSkgXAotCWZ3X2RlZihCUk9YVE9OLCAgICAw
LCBndWNfZGVmKGJ4dCwgMzMsIDAsIDApLCBodWNfZGVmKGJ4dCwgMDEsICA4LCAyODkzKSkgXAot
CWZ3X2RlZihTS1lMQUtFLCAgICAwLCBndWNfZGVmKHNrbCwgMzMsIDAsIDApLCBodWNfZGVmKHNr
bCwgMDEsIDA3LCAxMzk4KSkKKwlmd19kZWYoRUxLSEFSVExBS0UsIDAsIGd1Y19kZWYoZWhsLCAz
MywgMCwgNCksIGh1Y19kZWYoZWhsLCAgOSwgIDAsICAgIDApKSBcCisJZndfZGVmKElDRUxBS0Us
ICAgICAwLCBndWNfZGVmKGljbCwgMzMsIDAsIDApLCBodWNfZGVmKGljbCwgIDgsICA0LCAzMjM4
KSkgXAorCWZ3X2RlZihDT0ZGRUVMQUtFLCAgMCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVj
X2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwKKwlmd19kZWYoR0VNSU5JTEFLRSwgIDAsIGd1Y19k
ZWYoZ2xrLCAzMywgMCwgMCksIGh1Y19kZWYoZ2xrLCAwMywgMDEsIDI4OTMpKSBcCisJZndfZGVm
KEtBQllMQUtFLCAgICAwLCBndWNfZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGtibCwgMDIs
IDAwLCAxODEwKSkgXAorCWZ3X2RlZihCUk9YVE9OLCAgICAgMCwgZ3VjX2RlZihieHQsIDMzLCAw
LCAwKSwgaHVjX2RlZihieHQsIDAxLCAgOCwgMjg5MykpIFwKKwlmd19kZWYoU0tZTEFLRSwgICAg
IDAsIGd1Y19kZWYoc2tsLCAzMywgMCwgMCksIGh1Y19kZWYoc2tsLCAwMSwgMDcsIDEzOTgpKQog
CiAjZGVmaW5lIF9fTUFLRV9VQ19GV19QQVRIKHByZWZpeF8sIG5hbWVfLCBzZXBhcmF0b3JfLCBt
YWpvcl8sIG1pbm9yXywgcGF0Y2hfKSBcCiAJImk5MTUvIiBcCi0tIAoyLjIyLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
