Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B959CB07B2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03EB96E31D;
	Thu, 12 Sep 2019 04:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D0886E029
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 01:10:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 18:10:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="179203229"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 11 Sep 2019 18:10:28 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 18:10:16 -0700
Message-Id: <20190912011016.8353-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912011016.8353-1-jose.souza@intel.com>
References: <20190912011016.8353-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/tgl: Fix driver crash when
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
