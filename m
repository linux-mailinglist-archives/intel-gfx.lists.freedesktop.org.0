Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A5014D9CC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 12:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DC96F955;
	Thu, 30 Jan 2020 11:31:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD1F6F955
 for <Intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 11:31:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 03:31:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="262143536"
Received: from lodierna-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.22.225])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2020 03:31:11 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 11:31:07 +0000
Message-Id: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/2] drm/i915/tgl:
 WaEnablePreemptionGranularityControlByUMD
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkVuYWJsZSBG
dHJQZXJDdHh0UHJlZW1wdGlvbkdyYW51bGFyaXR5Q29udHJvbCBiaXQgYW5kIHdoaXRlbGlzdApH
RU44X0NTX0NISUNLRU4xIHNvIFdhRW5hYmxlUHJlZW1wdGlvbkdyYW51bGFyaXR5Q29udHJvbEJ5
VU1EIGlzCmltcGxlbWVudGVkLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFy
c2tpQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4
LmludGVsLmNvbT4KQ2M6IHBpb3RyLnpkdW5vd3NraUBpbnRlbC5jb20KQ2M6IG1pY2hhbC5tcm96
ZWtAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpp
bmRleCA1YTdkYjI3OWY3MDIuLjVkMmE4Y2I3MGUxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMjU0LDYgKzEyNTQsOSBAQCBzdGF0aWMgdm9p
ZCB0Z2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJ
d2hpdGVsaXN0X3JlZ19leHQodywgUFNfSU5WT0NBVElPTl9DT1VOVCwKIAkJCQkgIFJJTkdfRk9S
Q0VfVE9fTk9OUFJJVl9BQ0NFU1NfUkQgfAogCQkJCSAgUklOR19GT1JDRV9UT19OT05QUklWX1JB
TkdFXzQpOworCisJCS8qIFdhRW5hYmxlUHJlZW1wdGlvbkdyYW51bGFyaXR5Q29udHJvbEJ5VU1E
OnRnbCAqLworCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjhfQ1NfQ0hJQ0tFTjEpOwogCQlicmVhazsK
IAlkZWZhdWx0OgogCQlicmVhazsKQEAgLTE0MTIsOCArMTQxNSw4IEBAIHJjc19lbmdpbmVfd2Ff
aW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCkKIAkJCQkgICAwKTsKIAl9CiAKLQlpZiAoSVNfR0VOX1JBTkdFKGk5MTUsIDksIDExKSkg
ewotCQkvKiBGdHJQZXJDdHh0UHJlZW1wdGlvbkdyYW51bGFyaXR5Q29udHJvbDpza2wsYnh0LGti
bCxjZmwsY25sLGljbCAqLworCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgOSwgMTIpKSB7CisJCS8q
IEZ0clBlckN0eHRQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9sOnNrbCxieHQsa2JsLGNmbCxj
bmwsaWNsLHRnbCAqLwogCQl3YV9tYXNrZWRfZW4od2FsLAogCQkJICAgICBHRU43X0ZGX1NMSUNF
X0NTX0NISUNLRU4xLAogCQkJICAgICBHRU45X0ZGU0NfUEVSQ1RYX1BSRUVNUFRfQ1RSTCk7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
