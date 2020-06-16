Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E431FB40B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 16:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2AFD6E8CA;
	Tue, 16 Jun 2020 14:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB4B6E8CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 14:19:06 +0000 (UTC)
IronPort-SDR: 7rdEhSDSdd12TDw+JKJvpIgM1EYs7E97ZRVFY82f8AhJyGxlf8Nz/kJQcsBckZBjpEOR9o5Zd7
 LEBSf5F0tZeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 07:19:06 -0700
IronPort-SDR: 5YNspGHsh1lEAZrGITs06iw8TN9JTgyPOGMqy1SzDk1+8DkuLLSPWmTGdJk8q7RSxKGG85fJ8H
 sXclXbFqSEdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="273165008"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 07:19:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 17:18:53 +0300
Message-Id: <20200616141855.746-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/dp_mst: Clear only the ACT sent
 flag from DP_TP_STATUS
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

SXQncyBub3QgY2xlYXIgaWYgdGhlIERQX1RQX1NUQVRVUyBmbGFncyBvdGhlciB0aGFuIHRoZSBB
Q1Qgc2VudCBmbGFnCmhhdmUgc29tZSBzaWRlLWVmZmVjdCwgc28gZG9uJ3QgY2xlYXIgdGhvc2U7
IHdlIGRvbid0IGRlcGVuZCBvbiB0aGUKc3RhdGUgb2YgdGhlc2UgZmxhZ3MgYW55d2F5LgoKU3Vn
Z2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwppbmRleCAzOTc3ZWU0ZjcxNzYuLmI2NmI1NmEwNzBlNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCkBAIC0zMjIs
NyArMzIyLDcgQEAgc3RhdGljIHZvaWQgY2xlYXJfYWN0X3NlbnQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOwogCiAJaW50ZWxfZGVfd3JpdGUoaTkxNSwgaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3Rh
dHVzLAotCQkgICAgICAgaW50ZWxfZGVfcmVhZChpOTE1LCBpbnRlbF9kcC0+cmVncy5kcF90cF9z
dGF0dXMpKTsKKwkJICAgICAgIERQX1RQX1NUQVRVU19BQ1RfU0VOVCk7CiB9CiAKIHN0YXRpYyB2
b2lkIHdhaXRfZm9yX2FjdF9zZW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCi0tIAoyLjIz
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
