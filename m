Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9882B2871
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CEAA6F490;
	Fri, 13 Sep 2019 22:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F51B6F488
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:32:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="337037966"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 13 Sep 2019 15:32:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 15:32:41 -0700
Message-Id: <20190913223251.354877-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190913223251.354877-1-jose.souza@intel.com>
References: <20190913223251.354877-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915/tgl: Fix driver crash when
 update_active_dpll is called
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
Cc: Taylor@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIlRheWxvciwgQ2xpbnRvbiBBIiA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpU
R0wgUExMIGZ1bmN0aW9uIHRhYmxlIGRvZXNuJ3QgaW5jbHVkZSBhbmQgdXBkYXRlX2FjdGl2ZV9w
bGwgZnVuY3Rpb24uClRoZSBkcml2ZXIgYXR0ZW1wdHMgdG8gbWFrZSBhIGNhbGwgdG8gdGhpcyBm
dW5jdGlvbiBhbmQgY3Jhc2hlcyBkdXJpbmcKUExMIGNoYW5nZXMuCgpTaWduZWQtb2ZmLWJ5OiBU
YXlsb3IsIENsaW50b24gQSA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMSArCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmMKaW5kZXggOTgyODhlZGY4OGYwLi44NGU3MzRkNDQ4MjggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTM0NzksNiAr
MzQ3OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9tZ3IgdGdsX3BsbF9tZ3Ig
PSB7CiAJLmRwbGxfaW5mbyA9IHRnbF9wbGxzLAogCS5nZXRfZHBsbHMgPSBpY2xfZ2V0X2RwbGxz
LAogCS5wdXRfZHBsbHMgPSBpY2xfcHV0X2RwbGxzLAorCS51cGRhdGVfYWN0aXZlX2RwbGwgPSBp
Y2xfdXBkYXRlX2FjdGl2ZV9kcGxsLAogCS5kdW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3Rh
dGUsCiB9OwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
