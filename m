Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8DB6BA7D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 12:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F3589FDD;
	Wed, 17 Jul 2019 10:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1C489FD3;
 Wed, 17 Jul 2019 10:44:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 03:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="172829930"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga006.jf.intel.com with ESMTP; 17 Jul 2019 03:44:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 11:44:18 +0100
Message-Id: <20190717104418.23809-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Update description of i915.enable_guc
 modparam
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbW1pdCBm
Nzc0ZjA5NjQ5MTkgKCJkcm0vaTkxNS9ndWM6IFR1cm4gb24gR3VDL0h1QyBhdXRvIG1vZGUiKSBj
aGFuZ2VkCnRoZSBkZWZhdWx0IGZyb20gMCB0byAtMSBidXQgZm9yZ290IHRvIHVwZGF0ZSB0aGUg
ZGVzY3JpcHRpb24uCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgpGaXhlczogZjc3NGYwOTY0OTE5ICgiZHJtL2k5MTUvZ3VjOiBUdXJuIG9u
IEd1Qy9IdUMgYXV0byBtb2RlIikKQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6
IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFt
cy5jCmluZGV4IDI5NjQ1MmY5ZWZlNC4uYjRmNDgxZTFlNmI2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmMKQEAgLTE0Niw3ICsxNDYsNyBAQCBpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShl
ZHBfdnN3aW5nLCBpbnQsIDA0MDAsCiBpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfZ3Vj
LCBpbnQsIDA0MDAsCiAJIkVuYWJsZSBHdUMgbG9hZCBmb3IgR3VDIHN1Ym1pc3Npb24gYW5kL29y
IEh1QyBsb2FkLiAiCiAJIlJlcXVpcmVkIGZ1bmN0aW9uYWxpdHkgY2FuIGJlIHNlbGVjdGVkIHVz
aW5nIGJpdG1hc2sgdmFsdWVzLiAiCi0JIigtMT1hdXRvLCAwPWRpc2FibGUgW2RlZmF1bHRdLCAx
PUd1QyBzdWJtaXNzaW9uLCAyPUh1QyBsb2FkKSIpOworCSIoLTE9YXV0byBbZGVmYXVsdF0sIDA9
ZGlzYWJsZSwgMT1HdUMgc3VibWlzc2lvbiwgMj1IdUMgbG9hZCkiKTsKIAogaTkxNV9wYXJhbV9u
YW1lZChndWNfbG9nX2xldmVsLCBpbnQsIDA0MDAsCiAJIkd1QyBmaXJtd2FyZSBsb2dnaW5nIGxl
dmVsLiBSZXF1aXJlcyBHdUMgdG8gYmUgbG9hZGVkLiAiCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
