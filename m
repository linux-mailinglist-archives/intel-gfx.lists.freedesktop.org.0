Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7AC106B0A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 11:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C626E28A;
	Fri, 22 Nov 2019 10:41:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540426E28A
 for <Intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 10:41:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 02:41:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="232627231"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.19.231])
 by fmsmga004.fm.intel.com with ESMTP; 22 Nov 2019 02:41:17 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 10:41:15 +0000
Message-Id: <20191122104115.29610-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/query: Align flavour of engine data
 lookup
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbW1pdCA3
NTBlNzZiNGY5ZjYgKCJkcm0vaTkxNS9ndDogTW92ZSB0aGUgW2NsYXNzXVtpbnN0XSBsb29rdXAg
Zm9yCmVuZ2luZXMgb250byB0aGUgR1QiKSBjaGFuZ2VkIHRoZSBlbmdpbmUgcXVlcnkgdG8gaXRl
cmF0ZSBvdmVyIHVhYmkKZW5naW5lcyBidXQgbGVmdCB0aGUgYnVmZmVyIHNpemUgY2FsY3VsYXRp
b24gbG9vayBhdCB0aGUgcGh5c2ljYWwgZW5naW5lCmNvdW50LiBEaWZmZXJlbmNlIGhhcyBubyBw
cmFjdGljYWwgY29uc2VxdWVuY2UgYnV0IGl0IGlzIG5pY2VyIHRvIGFsaWduCmJvdGggcXVlcmll
cy4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+CkZpeGVzOiA3NTBlNzZiNGY5ZjYgKCJkcm0vaTkxNS9ndDogTW92ZSB0aGUgW2NsYXNzXVtp
bnN0XSBsb29rdXAgZm9yIGVuZ2luZXMgb250byB0aGUgR1QiKQpDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcXVlcnkuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1
ZXJ5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMKaW5kZXggYzI3Y2ZlZjky
ODFjLi5lZjI1Y2U2ZTM5NWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cXVlcnkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMKQEAgLTEwMywx
NSArMTAzLDE4IEBAIHF1ZXJ5X2VuZ2luZV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAogCXN0cnVjdCBkcm1faTkxNV9lbmdpbmVfaW5mbyBfX3VzZXIgKmluZm9fcHRyOwogCXN0
cnVjdCBkcm1faTkxNV9xdWVyeV9lbmdpbmVfaW5mbyBxdWVyeTsKIAlzdHJ1Y3QgZHJtX2k5MTVf
ZW5naW5lX2luZm8gaW5mbyA9IHsgfTsKKwl1bnNpZ25lZCBpbnQgbnVtX3VhYmlfZW5naW5lcyA9
IDA7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCWludCBsZW4sIHJldDsKIAog
CWlmIChxdWVyeV9pdGVtLT5mbGFncykKIAkJcmV0dXJuIC1FSU5WQUw7CiAKKwlmb3JfZWFjaF91
YWJpX2VuZ2luZShlbmdpbmUsIGk5MTUpCisJCW51bV91YWJpX2VuZ2luZXMrKzsKKwogCWxlbiA9
IHNpemVvZihzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfZW5naW5lX2luZm8pICsKLQkgICAgICBSVU5U
SU1FX0lORk8oaTkxNSktPm51bV9lbmdpbmVzICoKLQkgICAgICBzaXplb2Yoc3RydWN0IGRybV9p
OTE1X2VuZ2luZV9pbmZvKTsKKwkgICAgICBudW1fdWFiaV9lbmdpbmVzICogc2l6ZW9mKHN0cnVj
dCBkcm1faTkxNV9lbmdpbmVfaW5mbyk7CiAKIAlyZXQgPSBjb3B5X3F1ZXJ5X2l0ZW0oJnF1ZXJ5
LCBzaXplb2YocXVlcnkpLCBsZW4sIHF1ZXJ5X2l0ZW0pOwogCWlmIChyZXQgIT0gMCkKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
