Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D6D1FD9FD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5BC6E1F3;
	Thu, 18 Jun 2020 00:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92BC46E1F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:00:15 +0000 (UTC)
IronPort-SDR: FnHi+gzQg6D2Vp91CHd9iLsIY4GjlJ/LRcPy2xXnZq/3dr5B/u54OVTSpI3dAPmM63C7Kvw5yZ
 XJDO2t2AzX7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:00:14 -0700
IronPort-SDR: FqBmyVirxjX5CvGyX4U4+8Ob4V5X88tWb0dYbGsPBB6admSVZXGBOs54kNyOPRw/8yyY/7FL1O
 VxMSIlHlYMzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="352246026"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga001.jf.intel.com with ESMTP; 17 Jun 2020 17:00:14 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:24 -0700
Message-Id: <20200618000124.29036-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200618000124.29036-1-manasi.d.navare@intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: Wait or poll with timeout
 for DDI BUF non idle after enable
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

QmFzZWQgb24gdGhlIHBsYXRmb3JtLCBCc3BlYyBleHBlY3RzIHVzIHRvIHdhaXQgb3IgcG9sbCB3
aXRoCnRpbWVvdXQgZm9yIERESSBCVUYgSURMRSBiaXQgdG8gYmUgc2V0IHRvIDAgKG5vbiBpZGxl
KQphZmV0ciBlbmFibGluZyBERElfQlVGX0NUTC4gVXNlIHRoZSBleGlzdGluZyB3YWl0X2Zvcl9i
dWZfaWRsZSgpCnRvIGRvIHRoaXMuCgp2MjoKKiBCYXNlZCBvbiBwbGF0Zm9ybSwgZml4ZWQgZGVs
YXkgb3IgcG9sbCAoVmlsbGUpCiogVXNlIGEgaGVscGVyIHRvIGRvIHRoaXMgKEltcmUsIFZpbGxl
KQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNj
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBO
YXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCmluZGV4IGU0NzM4YzNiNmQ0NC4uNzg4YzJiZThmYTczIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTQwMzEsNyArNDAzMSw3IEBAIHN0YXRpYyB2b2lk
IGludGVsX2RkaV9wcmVwYXJlX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQogCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSwgaW50ZWxfZHAt
PkRQKTsKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQp
KTsKIAotCXVkZWxheSg2MDApOworCWludGVsX3dhaXRfZGRpX2J1Zl9pZGxlKGRldl9wcml2LCBw
b3J0LCBmYWxzZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9zZXRfbGlua190cmFpbihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
