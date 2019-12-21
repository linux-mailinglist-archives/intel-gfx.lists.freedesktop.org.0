Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC10A128900
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 13:06:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C965E6E461;
	Sat, 21 Dec 2019 12:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DFB46E457
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 12:06:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Dec 2019 04:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,338,1571727600"; d="scan'208";a="219065243"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 21 Dec 2019 04:06:21 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 14:05:40 +0200
Message-Id: <20191221120543.22816-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191221120543.22816-1-imre.deak@intel.com>
References: <20191221120543.22816-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/tgl: Make sure FBs have a
 correct CCS plane stride
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIENDUyBwbGFuZSBzdHJpZGUgbXVzdCBiZSBmaXhlZCBvbiBUR0wsIGFzIGl0J3Mgbm90IGNv
bmZpZ3VyYWJsZSBmb3IKdGhlIGRpc3BsYXkuIEluc3RlYWQgdGhlIEhXIGhhcyBhIGhhcmR3aXJl
ZCBsb2dpYyB0byBkZXRlcm1pbmUgaXQgZnJvbQp0aGUgbWFpbiBwbGFuZSBzdHJpZGUuIE1ha2Ug
c3VyZSB1c2Vyc3BhY2UgcGFzc2VzIGluIHRoZSBjb3JyZWN0IHN0cmlkZS4KCkNjOiBEaGluYWth
cmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTcgKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1NjA4
MmIyZGVmMGIuLmI1ZTQyYWQ0MzdkZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTI2MjEsNiArMjYyMSwxMiBAQCBib29sIGlzX2Njc19tb2Rp
Zmllcih1NjQgbW9kaWZpZXIpCiAJICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9Z
Zl9USUxFRF9DQ1M7CiB9CiAKK3N0YXRpYyBpbnQgZ2VuMTJfY2NzX2F1eF9zdHJpZGUoc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjY3NfcGxhbmUpCit7CisJcmV0dXJuIERJVl9ST1VO
RF9VUChmYi0+cGl0Y2hlc1tjY3NfdG9fbWFpbl9wbGFuZShmYiwgY2NzX3BsYW5lKV0sCisJCQkg
ICAgNTEyKSAqIDY0OworfQorCiB1MzIgaW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgICAgICB1MzIgcGl4ZWxfZm9ybWF0LCB1
NjQgbW9kaWZpZXIpCiB7CkBAIC0xNjU1MCw2ICsxNjU1NiwxNyBAQCBzdGF0aWMgaW50IGludGVs
X2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiwKIAkJ
CWdvdG8gZXJyOwogCQl9CiAKKwkJaWYgKGlzX2dlbjEyX2Njc19wbGFuZShmYiwgaSkpIHsKKwkJ
CWludCBjY3NfYXV4X3N0cmlkZSA9IGdlbjEyX2Njc19hdXhfc3RyaWRlKGZiLCBpKTsKKworCQkJ
aWYgKGZiLT5waXRjaGVzW2ldICE9IGNjc19hdXhfc3RyaWRlKSB7CisJCQkJRFJNX0RFQlVHX0tN
UygiY2NzIGF1eCBwbGFuZSAlZCBwaXRjaCAoJWQpIG11c3QgYmUgJWRcbiIsCisJCQkJCSAgICAg
IGksCisJCQkJCSAgICAgIGZiLT5waXRjaGVzW2ldLCBjY3NfYXV4X3N0cmlkZSk7CisJCQkJZ290
byBlcnI7CisJCQl9CisJCX0KKwogCQlmYi0+b2JqW2ldID0gJm9iai0+YmFzZTsKIAl9CiAKLS0g
CjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
