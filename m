Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB6C179368
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 16:31:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03A36E05C;
	Wed,  4 Mar 2020 15:31:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB276E05C
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 15:31:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 07:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="274707208"
Received: from srware-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.25.112])
 by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2020 07:31:49 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 15:31:44 +0000
Message-Id: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: WaDisableGPGPUMidThreadPreemption
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
dHJQZXJDdHh0UHJlZW1wdGlvbkdyYW51bGFyaXR5Q29udHJvbCBiaXQgYW5kIHNlbGVjdCB0aHJl
YWQtCmdyb3VwIGFzIHRoZSBkZWZhdWx0IHByZWVtcHRpb24gbGV2ZWwuCgp2MjoKICogUmVtb3Zl
IHJlZ2lzdGVyIHdoaXRlbGlzdGluZyAoUmFmYWVsLCBUb255KS4KClNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBNaWNoYcWCIFdpbmlh
cnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBwaW90ci56ZHVub3dza2lAaW50ZWwu
Y29tCkNjOiBtaWNoYWwubXJvemVrQGludGVsLmNvbQpDYzogVG9ueSBZZSA8dG9ueS55ZUBpbnRl
bC5jb20+CkNjOiBSYWZhZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA5ICsr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCBjYjdk
ODVjNDJmMTMuLjdiZTcxYTFhNTcxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCkBAIC02MDEsNiArNjAxLDExIEBAIHN0YXRpYyB2b2lkIHRnbF9jdHhf
d29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJICovCiAJ
d2FfYWRkKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLAogCSAgICAgICBG
Rl9NT0RFMl9URFNfVElNRVJfMTI4LCAwKTsKKworCS8qIFdhRGlzYWJsZUdQR1BVTWlkVGhyZWFk
UHJlZW1wdGlvbjp0Z2wgKi8KKwlXQV9TRVRfRklFTERfTUFTS0VEKEdFTjhfQ1NfQ0hJQ0tFTjEs
CisJCQkgICAgR0VOOV9QUkVFTVBUX0dQR1BVX0xFVkVMX01BU0ssCisJCQkgICAgR0VOOV9QUkVF
TVBUX0dQR1BVX1RIUkVBRF9HUk9VUF9MRVZFTCk7CiB9CiAKIHN0YXRpYyB2b2lkCkBAIC0xNDc1
LDggKzE0ODAsOCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCQkgICAgIFBTRFVOSVRfQ0xLR0FU
RV9ESVMpOwogCX0KIAotCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgOSwgMTEpKSB7Ci0JCS8qIEZ0
clBlckN0eHRQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9sOnNrbCxieHQsa2JsLGNmbCxjbmws
aWNsICovCisJaWYgKElTX0dFTl9SQU5HRShpOTE1LCA5LCAxMikpIHsKKwkJLyogRnRyUGVyQ3R4
dFByZWVtcHRpb25HcmFudWxhcml0eUNvbnRyb2w6c2tsLGJ4dCxrYmwsY2ZsLGNubCxpY2wsdGds
ICovCiAJCXdhX21hc2tlZF9lbih3YWwsCiAJCQkgICAgIEdFTjdfRkZfU0xJQ0VfQ1NfQ0hJQ0tF
TjEsCiAJCQkgICAgIEdFTjlfRkZTQ19QRVJDVFhfUFJFRU1QVF9DVFJMKTsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
