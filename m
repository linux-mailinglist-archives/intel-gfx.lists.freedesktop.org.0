Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50252172AA7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A61F6ED5F;
	Thu, 27 Feb 2020 22:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79896ED4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:00:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:00:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285467821"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 14:00:15 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:00:55 -0800
Message-Id: <20200227220101.321671-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227220101.321671-1-jose.souza@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/11] drm/i915/tgl: Add note to Wa_1607297627
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

QWRkIG5vdGUgYWJvdXQgdGhlIGNvbmZsaXRpbmcgaW5mb3JtYXRpb24gaW4gQlNwZWMgYWJvdXQg
dGhpcyBXQS4KCkJTcGVjOiA1Mjg5MApBY2tlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYyB8IDEwICsrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKaW5kZXggMzAyMWNjMTI3NDAzLi41ZjVlYWI3ZWIzMDAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTMzOCw5ICsxMzM4LDEzIEBA
IHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVj
dCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCSAgICBHRU45X0NUWF9QUkVFTVBUX1JFRywKIAkJCSAg
ICBHRU4xMl9ESVNBQkxFX1BPU0hfQlVTWV9GRl9ET1BfQ0cpOwogCi0JCS8qIFdhXzE2MDcwMzAz
MTc6dGdsICovCi0JCS8qIFdhXzE2MDcxODY1MDA6dGdsICovCi0JCS8qIFdhXzE2MDcyOTc2Mjc6
dGdsICovCisJCS8qCisJCSAqIFdhXzE2MDcwMzAzMTc6dGdsCisJCSAqIFdhXzE2MDcxODY1MDA6
dGdsCisJCSAqIFdhXzE2MDcyOTc2Mjc6dGdsIHRoZXJlIGlzIDMgZW50cmllcyBmb3IgdGhpcyBX
QSBvbiBCU3BlYywgMgorCQkgKiBvZiB0aGVuIHNheXMgaXQgaXMgZml4ZWQgb24gQjAgdGhlIG90
aGVyIG9uZSBzYXlzIGl0IGlzCisJCSAqIHBlcm1hbmVudAorCQkgKi8KIAkJd2FfbWFza2VkX2Vu
KHdhbCwKIAkJCSAgICAgR0VONl9SQ19TTEVFUF9QU01JX0NPTlRST0wsCiAJCQkgICAgIEdFTjEy
X1dBSVRfRk9SX0VWRU5UX1BPV0VSX0RPV05fRElTQUJMRSB8Ci0tIAoyLjI1LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
