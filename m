Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC205B6FE8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC4C48BD5E;
	Thu, 19 Sep 2019 00:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8035F73FB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="189426737"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2019 17:07:32 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 17:07:16 -0700
Message-Id: <20190919000726.267988-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919000726.267988-1-jose.souza@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/13] drm/i915/tgl/pll: Set
 update_active_dpll
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
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRh
eWxvckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IDk4Mjg4
ZWRmODhmMC4uODRlNzM0ZDQ0ODI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jCkBAIC0zNDc5LDYgKzM0NzksNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RwbGxfbWdyIHRnbF9wbGxfbWdyID0gewogCS5kcGxsX2luZm8gPSB0Z2xfcGxs
cywKIAkuZ2V0X2RwbGxzID0gaWNsX2dldF9kcGxscywKIAkucHV0X2RwbGxzID0gaWNsX3B1dF9k
cGxscywKKwkudXBkYXRlX2FjdGl2ZV9kcGxsID0gaWNsX3VwZGF0ZV9hY3RpdmVfZHBsbCwKIAku
ZHVtcF9od19zdGF0ZSA9IGljbF9kdW1wX2h3X3N0YXRlLAogfTsKIAotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
