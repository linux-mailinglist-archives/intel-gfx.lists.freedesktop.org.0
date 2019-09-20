Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE24FB98B0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 22:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1822B6FDED;
	Fri, 20 Sep 2019 20:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F5C6FDEC
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 20:58:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 13:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,530,1559545200"; d="scan'208";a="181908266"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 20 Sep 2019 13:58:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:58:07 -0700
Message-Id: <20190920205810.211048-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920205810.211048-1-jose.souza@intel.com>
References: <20190920205810.211048-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 3/6] drm/i915/tgl/pll: Set update_active_dpll
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpDb21t
aXQgMjRhN2JmZTBjMmQ3ICgiZHJtL2k5MTU6IEtlZXAgdGhlIFR5cGVDIHBvcnQgbW9kZSBmaXhl
ZCB3aGVuIHRoZQpwb3J0IGlzIGFjdGl2ZSIpIGFkZGVkIHRoaXMgbmV3IGhvb2sgd2hpbGUgaW4g
cGFyYWxsZWwgVEdMIHVwc3RyZWFtIHdhcwpoYXBwZW5pbmcgYW5kIHRoaXMgd2FzIG1pc3NlZC4K
CldpdGhvdXQgdGhpcyBkcml2ZXIgd2lsbCBjcmFzaCB3aGVuIFRDIERESSBpcyBhZGRlZCBhbmQg
ZHJpdmVyIGlzCnByZXBhcmluZyB0byBkbyBhIGZ1bGwgbW9kZXNldC4KCkNjOiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5
bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKaW5kZXggOTgyODhl
ZGY4OGYwLi44NGU3MzRkNDQ4MjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMKQEAgLTM0NzksNiArMzQ3OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZHBsbF9tZ3IgdGdsX3BsbF9tZ3IgPSB7CiAJLmRwbGxfaW5mbyA9IHRnbF9wbGxz
LAogCS5nZXRfZHBsbHMgPSBpY2xfZ2V0X2RwbGxzLAogCS5wdXRfZHBsbHMgPSBpY2xfcHV0X2Rw
bGxzLAorCS51cGRhdGVfYWN0aXZlX2RwbGwgPSBpY2xfdXBkYXRlX2FjdGl2ZV9kcGxsLAogCS5k
dW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCiB9OwogCi0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
