Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82869A9531
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1FA489C85;
	Wed,  4 Sep 2019 21:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7172C89BC2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 21:34:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 14:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="199121696"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 14:34:29 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:34:13 -0700
Message-Id: <20190904213419.27547-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Tiger Lake batch 3.5 v2
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

NiBvZiA3IHBhdGNoZXMgZnJvbSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY1OTgyLwp3aXRoIFJldmlld2VkLWJ5IGFkZGVkIGFuZCBjb21tZW50cyBhZGRyZXNzZWQu
Ckp1c3QgbWlzc2luZyBhIFJldmlld2VkLWJ5IG9uICJkcm0vaTkxNTogcHJvdGVjdCBhY2Nlc3Mg
dG8gRFBfVFBfKiBvbgpub24tZHAiLgoKSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoMik6CiAgZHJt
L2k5MTUvcHNyOiBPbmx5IGhhbmRsZSBpbnRlcnJ1cHRpb25zIG9mIHRoZSB0cmFuc2NvZGVyIGlu
IHVzZQogIGRybS9pOTE1L3RnbDogQWNjZXNzIHRoZSByaWdodCByZWdpc3RlciB3aGVuIGhhbmRs
aW5nIFBTUgogICAgaW50ZXJydXB0aW9ucwoKTHVjYXMgRGUgTWFyY2hpICg0KToKICBkcm0vaTkx
NTogcHJvdGVjdCBhY2Nlc3MgdG8gRFBfVFBfKiBvbiBub24tZHAKICBkcm0vaTkxNS90Z2w6IG1v
dmUgRFBfVFBfKiB0byB0cmFuc2NvZGVyCiAgZHJtL2k5MTUvdGdsOiBkaXNhYmxlIFNBR1YgdGVt
cG9yYXJpbHkKICBkcm0vaTkxNS90Z2w6IGFkZCBnZW4xMiB0byBzdG9sZW4gaW5pdGlhbGl6YXRp
b24KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgNDkg
KysrKy0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAg
IDkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDEz
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jICAgfCAgIDgg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICB8IDE2NCAr
KysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9s
ZW4uYyAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAg
ICAgICAgIHwgIDUxICsrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICAgIHwgIDI3ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAg
ICAgICAgICAgIHwgICA0ICsKIDkgZmlsZXMgY2hhbmdlZCwgMjAzIGluc2VydGlvbnMoKyksIDEy
NyBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
