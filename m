Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEBE85193
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69A86E742;
	Wed,  7 Aug 2019 17:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42976E73E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:00:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 10:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="177021382"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 10:00:44 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x77H0h7p010955; Wed, 7 Aug 2019 18:00:43 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:00:28 +0000
Message-Id: <20190807170034.8440-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190807170034.8440-1-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/uc: Prefer dev_info for reporting
 options
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgbW9kcGFyYW1zIGFyZSBnbG9iYWwgZm9yIHRoZSBpOTE1IG1vZHVsZSwgd2UgYXJlIHJl
cG9ydGluZwpzdGF0dXMgb2YgdGhlIHBhcmFtcyBhcHBsaWVkIGFnYWluc3Qgc3BlY2lmaWMgZGV2
aWNlIGluc3RhbmNlLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDI1
ICsrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25z
KCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCmlu
ZGV4IGU4N2I3OTA0YWI3YS4uM2MwMDdlMGUxYTIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMKQEAgLTU5LDExICs1OSwxNCBAQCBzdGF0aWMgaW50IF9faW50ZWxfdWNfcmVz
ZXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKIAogc3RhdGljIHZvaWQgX19jb25maXJtX29wdGlv
bnMoc3RydWN0IGludGVsX3VjICp1YykKIHsKLQlEUk1fREVCVUdfRFJJVkVSKCJlbmFibGVfZ3Vj
PSVkIChndWM6JXMgc3VibWlzc2lvbjolcyBodWM6JXMpXG4iLAotCQkJIGk5MTVfbW9kcGFyYW1z
LmVuYWJsZV9ndWMsCi0JCQkgeWVzbm8oaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSksCi0JCQkg
eWVzbm8oaW50ZWxfdWNfc3VwcG9ydHNfZ3VjX3N1Ym1pc3Npb24odWMpKSwKLQkJCSB5ZXNubyhp
bnRlbF91Y19zdXBwb3J0c19odWModWMpKSk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB1Y190b19ndCh1YyktPmk5MTU7CisKKwlEUk1fREVWX0RFQlVHX0RSSVZFUihpOTE1LT5k
cm0uZGV2LAorCQkJICAgICAiZW5hYmxlX2d1Yz0lZCAoZ3VjOiVzIHN1Ym1pc3Npb246JXMgaHVj
OiVzKVxuIiwKKwkJCSAgICAgaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YywKKwkJCSAgICAgeWVz
bm8oaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSksCisJCQkgICAgIHllc25vKGludGVsX3VjX3N1
cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSksCisJCQkgICAgIHllc25vKGludGVsX3VjX3N1cHBv
cnRzX2h1Yyh1YykpKTsKIAogCWlmIChpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjID09IC0xKQog
CQlyZXR1cm47CkBAIC03NiwyMiArNzksMjYgQEAgc3RhdGljIHZvaWQgX19jb25maXJtX29wdGlv
bnMoc3RydWN0IGludGVsX3VjICp1YykKIAl9CiAKIAlpZiAoIWludGVsX3VjX3N1cHBvcnRzX2d1
Yyh1YykpCi0JCURSTV9JTkZPKCJJbmNvbXBhdGlibGUgb3B0aW9uIGVuYWJsZV9ndWM9JWQgLSAl
c1xuIiwKKwkJZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwKKwkJCSAiSW5jb21wYXRpYmxlIG9wdGlv
biBlbmFibGVfZ3VjPSVkIC0gJXNcbiIsCiAJCQkgaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1Yywg
Ikd1QyBpcyBub3Qgc3VwcG9ydGVkISIpOwogCiAJaWYgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9n
dWMgJiBFTkFCTEVfR1VDX0xPQURfSFVDICYmCiAJICAgICFpbnRlbF91Y19zdXBwb3J0c19odWMo
dWMpKQotCQlEUk1fSU5GTygiSW5jb21wYXRpYmxlIG9wdGlvbiBlbmFibGVfZ3VjPSVkIC0gJXNc
biIsCisJCWRldl9pbmZvKGk5MTUtPmRybS5kZXYsCisJCQkgIkluY29tcGF0aWJsZSBvcHRpb24g
ZW5hYmxlX2d1Yz0lZCAtICVzXG4iLAogCQkJIGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMsICJI
dUMgaXMgbm90IHN1cHBvcnRlZCEiKTsKIAogCWlmIChpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3Vj
ICYgRU5BQkxFX0dVQ19TVUJNSVNTSU9OICYmCiAJICAgICFpbnRlbF91Y19zdXBwb3J0c19ndWNf
c3VibWlzc2lvbih1YykpCi0JCURSTV9JTkZPKCJJbmNvbXBhdGlibGUgb3B0aW9uIGVuYWJsZV9n
dWM9JWQgLSAlc1xuIiwKKwkJZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwKKwkJCSAiSW5jb21wYXRp
YmxlIG9wdGlvbiBlbmFibGVfZ3VjPSVkIC0gJXNcbiIsCiAJCQkgaTkxNV9tb2RwYXJhbXMuZW5h
YmxlX2d1YywgIkd1QyBzdWJtaXNzaW9uIGlzIE4vQSIpOwogCiAJaWYgKGk5MTVfbW9kcGFyYW1z
LmVuYWJsZV9ndWMgJiB+KEVOQUJMRV9HVUNfU1VCTUlTU0lPTiB8CiAJCQkJCSAgRU5BQkxFX0dV
Q19MT0FEX0hVQykpCi0JCURSTV9JTkZPKCJJbmNvbXBhdGlibGUgb3B0aW9uIGVuYWJsZV9ndWM9
JWQgLSAlc1xuIiwKKwkJZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwKKwkJCSAiSW5jb21wYXRpYmxl
IG9wdGlvbiBlbmFibGVfZ3VjPSVkIC0gJXNcbiIsCiAJCQkgaTkxNV9tb2RwYXJhbXMuZW5hYmxl
X2d1YywgInVuZG9jdW1lbnRlZCBmbGFnIik7CiB9CiAKLS0gCjIuMTkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
