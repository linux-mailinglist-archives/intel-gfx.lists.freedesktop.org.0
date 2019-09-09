Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D20AD25B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 05:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6943B89715;
	Mon,  9 Sep 2019 03:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BED894EA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 03:42:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Sep 2019 20:42:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,483,1559545200"; d="scan'208";a="383846703"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 08 Sep 2019 20:42:08 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Sep 2019 20:43:24 -0700
Message-Id: <20190909034325.20006-6-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190909034325.20006-1-manasi.d.navare@intel.com>
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/display/icl: Disable transcoder
 port sync as part of crtc_disable() sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBjbGVhcnMgdGhlIHRyYW5zY29kZXIgcG9ydCBzeW5jIGJpdHMgb2YgdGhlIFRSQU5TX0RE
SV9GVU5DX0NUTDIKcmVnaXN0ZXIgZHVyaW5nIGNydGNfZGlzYWJsZSgpLgoKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAyMyArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmlu
ZGV4IDM1MWM5MGFkNzA1OS4uMDdkZWIwYjkzZjVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNDQzOCw2ICs0NDM4LDI2IEBAIHN0YXRpYyB2
b2lkIGljbF9lbmFibGVfdHJhbnNfcG9ydF9zeW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlCiAJCSAgIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsKIH0KIAorc3Rh
dGljIHZvaWQgaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5bmMoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwlp
OTE1X3JlZ190IHJlZzsKKwl1MzIgdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWw7CisKKwlpZiAob2xk
X2NydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyID09IElOVkFMSURfVFJBTlNDT0RFUikKKwkJ
cmV0dXJuOworCisJRFJNX0RFQlVHX0tNUygiRGlzYWJsaW5nIFRyYW5zY29kZXIgUG9ydCBTeW5j
IG9uIFNsYXZlIFRyYW5zY29kZXIgJXNcbiIsCisJCSAgICAgIHRyYW5zY29kZXJfbmFtZShvbGRf
Y3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsKKworCXJlZyA9IFRSQU5TX0RESV9GVU5DX0NU
TDIob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsKKwl0cmFuc19kZGlfZnVuY19jdGwy
X3ZhbCA9IEk5MTVfUkVBRChyZWcpOworCXRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsICY9IH4oUE9S
VF9TWU5DX01PREVfRU5BQkxFIHwKKwkJCQkgICAgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxF
Q1RfTUFTSyk7CisJSTkxNV9XUklURShyZWcsIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsKK30K
Kwogc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIHsKQEAgLTY2ODcsNiArNjcwNyw5IEBAIHN0
YXRpYyB2b2lkIGhhc3dlbGxfY3J0Y19kaXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpv
bGRfY3J0Y19zdGF0ZSwKIAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShvbGRfY3J0Y19zdGF0ZSwg
SU5URUxfT1VUUFVUX0RQX01TVCkpCiAJCWludGVsX2RkaV9zZXRfdmNfcGF5bG9hZF9hbGxvYyhv
bGRfY3J0Y19zdGF0ZSwgZmFsc2UpOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEp
CisJCWljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKG9sZF9jcnRjX3N0YXRlKTsKKwog
CWlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5zY29kZXIpKQogCQlpbnRlbF9kZGlfZGlz
YWJsZV90cmFuc2NvZGVyX2Z1bmMob2xkX2NydGNfc3RhdGUpOwogCi0tIAoyLjE5LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
