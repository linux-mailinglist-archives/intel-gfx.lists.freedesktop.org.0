Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9590EE199E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3326EA5B;
	Wed, 23 Oct 2019 12:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54926EA5B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:09:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 05:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="188232463"
Received: from turrican.fi.intel.com ([10.237.72.77])
 by orsmga007.jf.intel.com with ESMTP; 23 Oct 2019 05:09:00 -0700
From: =?UTF-8?q?Tapani=20P=C3=A4lli?= <tapani.palli@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 15:06:18 +0300
Message-Id: <20191023120618.5344-1-tapani.palli@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

QXMgd2l0aCBjb21taXQgM2ZlMDEwN2U0NWFiLCB0aGlzIGNoYW5nZSBmaXhlcyBtdWx0aXBsZSB0
ZXN0cyB0aGF0IGFyZQp1c2luZyB0aGUgaW52b2NhdGlvbiBjb3VudHMuIERvY3VtZW50YXRpb24g
ZG9lc24ndCBsaXN0IHRoZSB3b3JrYXJvdW5kCmZvciBUR0wgYnV0IGFwcGx5aW5nIGl0IGZpeGVz
IHRoZSB0ZXN0cy4KClNpZ25lZC1vZmYtYnk6IFRhcGFuaSBQw6RsbGkgPHRhcGFuaS5wYWxsaUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyB8IDIwICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4
IGFmOGE4MTgzMTU0YS4uODZkZWQyMDNiMmRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEyMTUsNiArMTIxNSwyNiBAQCBzdGF0aWMgdm9pZCBp
Y2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogc3Rh
dGljIHZvaWQgdGdsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiB7CisJc3RydWN0IGk5MTVfd2FfbGlzdCAqdyA9ICZlbmdpbmUtPndoaXRlbGlzdDsKKwor
CXN3aXRjaCAoZW5naW5lLT5jbGFzcykgeworCWNhc2UgUkVOREVSX0NMQVNTOgorCQkvKgorCQkg
KiBXYUFsbG93UE1EZXB0aEFuZEludm9jYXRpb25Db3VudEFjY2Vzc0Zyb21VTUQ6dGdsCisJCSAq
CisJCSAqIFRoaXMgY292ZXJzIDQgcmVnaXN0ZXJzIHdoaWNoIGFyZSBuZXh0IHRvIG9uZSBhbm90
aGVyIDoKKwkJICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlQKKwkJICogICAtIFBTX0lOVk9DQVRJ
T05fQ09VTlRfVURXCisJCSAqICAgLSBQU19ERVBUSF9DT1VOVAorCQkgKiAgIC0gUFNfREVQVEhf
Q09VTlRfVURXCisJCSAqLworCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBQU19JTlZPQ0FUSU9OX0NP
VU5ULAorCQkJCSAgUklOR19GT1JDRV9UT19OT05QUklWX0FDQ0VTU19SRCB8CisJCQkJICBSSU5H
X0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCWJyZWFr
OworCX0KIH0KIAogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF93aGl0ZWxpc3Qoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
