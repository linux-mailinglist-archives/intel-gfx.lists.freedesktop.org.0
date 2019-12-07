Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFB1115A74
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 02:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBD66FAC5;
	Sat,  7 Dec 2019 01:00:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76AC76FABC
 for <Intel-GFX@lists.freedesktop.org>; Sat,  7 Dec 2019 01:00:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 17:00:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,286,1571727600"; d="scan'208";a="209584819"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga008.fm.intel.com with ESMTP; 06 Dec 2019 17:00:33 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  6 Dec 2019 17:00:33 -0800
Message-Id: <20191207010033.24667-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Update uncore access path in
 flush_ggtt_writes
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

RnJvbTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+CgpUaGUgcHJlZmVy
cmVkIHdheSB0byBhY2Nlc3MgdGhlIHVuY29yZSBpcyB0aHJvdWdoIHRoZSBHVCBzdHJ1Y3R1cmUu
ClVwZGF0ZSB0aGUgR3VDIGZ1bmN0aW9uLCBmbHVzaF9nZ3R0X3dyaXRlcywgdG8gdXNlIHRoaXMg
cGF0aC4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwu
Y29tPgpDYzogSm9obiBIYXJyaXNvbiA8am9obi5jLmhhcnJpc29uQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgNSArKy0t
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwppbmRl
eCA2Zjk0YWY3YWQxZGUuLjRkZjI5NmE1ZTdjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCkBAIC00ODgsMTAgKzQ4OCw5IEBAIHN0
YXRpYyB2b2lkIGd1Y19hZGRfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQogICovCiBzdGF0aWMgdm9pZCBmbHVzaF9nZ3R0X3dyaXRlcyhzdHJ1
Y3QgaTkxNV92bWEgKnZtYSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHZt
YS0+dm0tPmk5MTU7Ci0KIAlpZiAoaTkxNV92bWFfaXNfbWFwX2FuZF9mZW5jZWFibGUodm1hKSkK
LQkJaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZF9mdygmaTkxNS0+dW5jb3JlLCBHVUNfU1RBVFVT
KTsKKwkJaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZF9mdyh2bWEtPnZtLT5ndC0+dW5jb3JlLAor
CQkJCQkgICAgIEdVQ19TVEFUVVMpOwogfQogCiBzdGF0aWMgdm9pZCBndWNfc3VibWl0KHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
