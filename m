Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD5A3C6051
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 18:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132A2895B5;
	Mon, 12 Jul 2021 16:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B80D89388
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 16:18:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="231801673"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="231801673"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 09:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="426309315"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 12 Jul 2021 09:18:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Jul 2021 19:18:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 19:18:14 +0300
Message-Id: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Silence __iomem sparse warn
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IGNhcmUgYWJvdXQgX19pb21lbSBtaXNtYXRjaCB3aGVuIGRlYWxpbmcgd2l0aCBlcnJv
cgpwb2ludGVycy4gU2lsZW5jZSBpdCB3aXRoIEVSUl9DQVNUKCkuCgpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxODk2OjIxOiAgICBleHBlY3RlZCBzdHJ1Y3Qg
aTkxNV92bWEgKlthc3NpZ25lZF0gdm1hCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jOjE4OTY6MjE6ICAgIGdvdCB2b2lkIFtub2RlcmVmXSBfX2lvbWVtICpbYXNz
aWduZWRdIGlvbWVtCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
OjE4OTY6MjE6IHdhcm5pbmc6IGluY29ycmVjdCB0eXBlIGluIGFzc2lnbm1lbnQgKGRpZmZlcmVu
dCBhZGRyZXNzIHNwYWNlcykKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IDAyNmMyOGM2MTJmMC4uNDk2YjcyZjEwYjRlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTg5Myw3ICsxODkzLDcgQEAg
c3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZHB0X3BpbihzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSkKIAlpb21lbSA9IGk5MTVfdm1hX3Bpbl9pb21hcCh2bWEpOwogCWk5MTVfdm1h
X3VucGluKHZtYSk7CiAJaWYgKElTX0VSUihpb21lbSkpIHsKLQkJdm1hID0gaW9tZW07CisJCXZt
YSA9IEVSUl9DQVNUKGlvbWVtKTsKIAkJZ290byBlcnI7CiAJfQogCi0tIAoyLjMxLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
