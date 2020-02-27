Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04069172AA2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35526E980;
	Thu, 27 Feb 2020 22:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE206E980
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:00:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285467802"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 14:00:14 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:00:53 -0800
Message-Id: <20200227220101.321671-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227220101.321671-1-jose.souza@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/11] drm/i915/tgl: Add Wa_1409085225,
 Wa_14010229206
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

RnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgoKRGlzYWJsZSBQ
dXNoIENvbnN0YW50IGJ1ZmZlciBhZGRpdGlvbiBmb3IgVEdMLgoKdjI6IHR5cG9zLCBhZGQgYWRk
aXRpb25hbCBXYSByZWZlcmVuY2UKdjM6IHVzZSBSRUdfQklUIG1hY3JvLCBtb3ZlIHRvIHJjc19l
bmdpbmVfd2FfaW5pdCwgY2xlYW4gdXAgY29tbWl0Cm1lc3NhZ2UuCgpCc3BlYzogNTI4OTAKQ2M6
IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5jb20+CkNjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2Qg
PG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpp
bmRleCA1ZDg1Yjc1MzFmNzYuLjkyN2NmMmJjOWQxNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMzYzLDYgKzEzNjMsMTIgQEAgcmNzX2VuZ2lu
ZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQogCQl3YV9tYXNrZWRfZW4od2FsLAogCQkJICAgICBHRU43X1JPV19DSElDS0VO
MiwKIAkJCSAgICAgR0VOMTJfRElTQUJMRV9FQVJMWV9SRUFEKTsKKworCQkvKgorCQkgKiBXYV8x
NDA5MDg1MjI1OnRnbAorCQkgKiBXYV8xNDAxMDIyOTIwNjp0Z2wKKwkJICovCisJCXdhX21hc2tl
ZF9lbih3YWwsIEdFTjlfUk9XX0NISUNLRU40LCBHRU4xMl9ESVNBQkxFX1RETF9QVVNIKTsKIAl9
CiAKIAlpZiAoSVNfVElHRVJMQUtFKGk5MTUpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCBhY2FjZTAxNmQ0NmMuLjgwY2YwMmE2ZWVjMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC05MTQ5LDYgKzkxNDksOSBAQCBlbnVtIHsKICNkZWZpbmUgICBQVVNIX0NPTlNUQU5UX0RFUkVG
X0RJU0FCTEUJKDEgPDwgOCkKICNkZWZpbmUgICBHRU4xMV9URExfQ0xPQ0tfR0FUSU5HX0ZJWF9E
SVNBQkxFCSgxIDw8IDEpCiAKKyNkZWZpbmUgR0VOOV9ST1dfQ0hJQ0tFTjQJCV9NTUlPKDB4ZTQ4
YykKKyNkZWZpbmUgICBHRU4xMl9ESVNBQkxFX1RETF9QVVNICVJFR19CSVQoOSkKKwogI2RlZmlu
ZSBIU1dfUk9XX0NISUNLRU4zCQlfTU1JTygweGU0OWMpCiAjZGVmaW5lICBIU1dfUk9XX0NISUNL
RU4zX0wzX0dMT0JBTF9BVE9NSUNTX0RJU0FCTEUgICAgKDEgPDwgNikKIAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
