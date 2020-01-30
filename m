Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1277214D9CD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 12:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D164B6F958;
	Thu, 30 Jan 2020 11:31:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A378F6F955
 for <Intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 11:31:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 03:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="262143548"
Received: from lodierna-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.22.225])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2020 03:31:13 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 11:31:08 +0000
Message-Id: <20200130113108.10441-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
References: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/2] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
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
Cc: piotr.zdunowski@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1ha2UgdGhy
ZWFkLWdyb3VwIHByZWVtcHRpb24gZGVmYXVsdCBiZWNhdXNlLi4uPwoKU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IE1pY2hhxYIgV2lu
aWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IHBpb3RyLnpkdW5vd3NraUBpbnRl
bC5jb20KQ2M6IG1pY2hhbC5tcm96ZWtAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YwppbmRleCA1ZDJhOGNiNzBlMTYuLjgwOWJiNTZlYjE2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC01OTMsNiArNTkzLDExIEBAIHN0YXRpYyB2
b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsCiAJd2FfYWRkKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWws
CiAJICAgICAgIElTX1RHTF9SRVZJRChlbmdpbmUtPmk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JF
VklEX0EwKSA/IDAgOgogCQkJICAgIEZGX01PREUyX1REU19USU1FUl9NQVNLKTsKKworCS8qIFdh
RGlzYWJsZUdQR1BVTWlkVGhyZWFkUHJlZW1wdGlvbjp0Z2wgKi8KKwlXQV9TRVRfRklFTERfTUFT
S0VEKEdFTjhfQ1NfQ0hJQ0tFTjEsCisJCQkgICAgR0VOOV9QUkVFTVBUX0dQR1BVX0xFVkVMX01B
U0ssCisJCQkgICAgR0VOOV9QUkVFTVBUX0dQR1BVX1RIUkVBRF9HUk9VUF9MRVZFTCk7CiB9CiAK
IHN0YXRpYyB2b2lkCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
