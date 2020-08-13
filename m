Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A09243F85
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 21:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3F6B6EA96;
	Thu, 13 Aug 2020 19:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BF06EA93
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 19:58:12 +0000 (UTC)
IronPort-SDR: ptfnJveNmRRSPfFZ5UMZxV8pDmRipDE6eNRPxZnKRwbiBQj1Ww8NXR0hYPebIoj+CSGOJPhYun
 oQdezM0bIV/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="141939865"
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="141939865"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 12:58:11 -0700
IronPort-SDR: aCgfFlU9fOgt4TeWK7l5t9Boj1t1jkTlacT5Srkev+oAZzGnptT/S4FnS6XJ+lpoto2rPE3BfA
 FIXs4oja8j0Q==
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="399278645"
Received: from slee54-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.138.161])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 12:58:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Aug 2020 13:00:29 -0700
Message-Id: <20200813200029.25307-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200813200029.25307-1-jose.souza@intel.com>
References: <20200813200029.25307-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Update TGL and RKL HuC firmware
 versions
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

TWFqb3IgdXBncmFkZSBvZiBIdUMgZmlybXdhcmUgd2l0aCBmaXhlcyBhbmQgbmV3IGZlYXR1cmVz
LgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDQg
KystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwppbmRleCA1OWIyN2FiYTE1YzYu
LjgwZThiNmMzYmM4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
CkBAIC01MSw4ICs1MSw4IEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cyhzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LAogICogTm90ZSB0aGF0IFJLTCB1c2VzIHRoZSBzYW1lIGZpcm13
YXJlIGFzIFRHTC4KICAqLwogI2RlZmluZSBJTlRFTF9VQ19GSVJNV0FSRV9ERUZTKGZ3X2RlZiwg
Z3VjX2RlZiwgaHVjX2RlZikgXAotCWZ3X2RlZihST0NLRVRMQUtFLCAgMCwgZ3VjX2RlZih0Z2ws
IDM1LCAyLCAwKSwgaHVjX2RlZih0Z2wsICA3LCAwLCAxMikpIFwKLQlmd19kZWYoVElHRVJMQUtF
LCAgIDAsIGd1Y19kZWYodGdsLCAzNSwgMiwgMCksIGh1Y19kZWYodGdsLCAgNywgMCwgMTIpKSBc
CisJZndfZGVmKFJPQ0tFVExBS0UsICAwLCBndWNfZGVmKHRnbCwgMzUsIDIsIDApLCBodWNfZGVm
KHRnbCwgIDcsIDUsIDApKSBcCisJZndfZGVmKFRJR0VSTEFLRSwgICAwLCBndWNfZGVmKHRnbCwg
MzUsIDIsIDApLCBodWNfZGVmKHRnbCwgIDcsIDUsIDApKSBcCiAJZndfZGVmKEVMS0hBUlRMQUtF
LCAwLCBndWNfZGVmKGVobCwgMzMsIDAsIDQpLCBodWNfZGVmKGVobCwgIDksIDAsIDApKSBcCiAJ
ZndfZGVmKElDRUxBS0UsICAgICAwLCBndWNfZGVmKGljbCwgMzMsIDAsIDApLCBodWNfZGVmKGlj
bCwgIDksIDAsIDApKSBcCiAJZndfZGVmKENPTUVUTEFLRSwgICA1LCBndWNfZGVmKGNtbCwgMzMs
IDAsIDApLCBodWNfZGVmKGNtbCwgIDQsIDAsIDApKSBcCi0tIAoyLjI4LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
