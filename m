Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FA766908
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 10:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6486E303;
	Fri, 12 Jul 2019 08:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E816E303
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 08:20:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 01:20:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="177438654"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.66.154])
 by orsmga002.jf.intel.com with ESMTP; 12 Jul 2019 01:20:12 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:19:38 +0300
Message-Id: <20190712081938.14185-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v3] drm/i915: Fix wrong escape clock divisor
 init for GLK
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
Cc: jani.nikula@intel.com, martin.peres@intel.com, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIEJzcGVjIGNsb2NrIGRpdmlzb3IgcmVnaXN0ZXJzIGluIEdlbWluaUxha2UK
c2hvdWxkIGJlIGluaXRpYWxpemVkIGJ5IHNoaWZ0aW5nIDEoPDwpIHRvIGFtb3VudCBvZiBjb3Jy
ZXNwb25kZW50CmRpdmlzb3IuIFdoaWxlIGk5MTUgd2FzIHdyaXRpbmcgYWxsIHRoaXMgdGltZSB0
aGF0IHZhbHVlIGFzIGlzLgoKU3VycHJpc2luZ2x5IHRoYXQgaXQgYnkgYWNjaWRlbnQgd29ya2Vk
LCB1bnRpbCB3ZSBtZXQgc29tZSBpc3N1ZXMKd2l0aCBNaWNyb3RlY2ggRXRhYi4KCnYyOiBBZGRl
ZCBGaXhlcyB0YWcgYW5kIGNjCnYzOiBBZGRlZCBzdGFibGUgdG8gY2MgYXMgd2VsbC4KClNpZ25l
ZC1vZmYtYnk6IHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tClJldmlld2VkLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KRml4ZXM6IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODgyNgpGaXhlczogYmNjNjU3
MDA0ODQxICgiZHJtL2k5MTUvZ2xrOiBQcm9ncmFtIHR4ZXNjIGNsb2NrIGRpdmlkZXIgZm9yIEdM
SyIpCkNjOiBEZWVwYWsgTSA8bS5kZWVwYWtAaW50ZWwuY29tPgpDYzogTWFkaGF2IENoYXVoYW4g
PG1hZGhhdi5jaGF1aGFuQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYyB8IDQgKystLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMKaW5kZXggOTljYzNlMmU5YzJjLi5mMDE2YTc3NmEzOWUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMKQEAgLTM5Niw4
ICszOTYsOCBAQCBzdGF0aWMgdm9pZCBnbGtfZHNpX3Byb2dyYW1fZXNjX2Nsb2NrKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCiAJZWxzZQogCQl0eGVzYzJfZGl2ID0gMTA7CiAKLQlJOTE1X1dSSVRF
KE1JUElPX1RYRVNDX0NMS19ESVYxLCB0eGVzYzFfZGl2ICYgR0xLX1RYX0VTQ19DTEtfRElWMV9N
QVNLKTsKLQlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19ESVYyLCB0eGVzYzJfZGl2ICYgR0xL
X1RYX0VTQ19DTEtfRElWMl9NQVNLKTsKKwlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19ESVYx
LCAoMSA8PCAodHhlc2MxX2RpdiAtIDEpKSAmIEdMS19UWF9FU0NfQ0xLX0RJVjFfTUFTSyk7CisJ
STkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMiwgKDEgPDwgKHR4ZXNjMl9kaXYgLSAxKSkg
JiBHTEtfVFhfRVNDX0NMS19ESVYyX01BU0spOwogfQogCiAvKiBQcm9ncmFtIEJYVCBNaXBpIGNs
b2NrcyBhbmQgZGl2aWRlcnMgKi8KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
