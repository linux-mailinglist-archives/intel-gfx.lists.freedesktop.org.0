Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 540A5BA34B
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 19:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC406E85C;
	Sun, 22 Sep 2019 17:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDFDA6E853
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Sep 2019 17:06:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Sep 2019 10:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,537,1559545200"; d="scan'208";a="389235853"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga006.fm.intel.com with ESMTP; 22 Sep 2019 10:06:46 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Sep 2019 10:08:06 -0700
Message-Id: <20190922170807.12436-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190922170807.12436-1-manasi.d.navare@intel.com>
References: <20190922170807.12436-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/display/icl: Disable transcoder
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
SV9GVU5DX0NUTDIKcmVnaXN0ZXIgZHVyaW5nIGNydGNfZGlzYWJsZSgpLgoKdjI6CiogRGlyZWN0
bHkgd3JpdGUgdGhlIHRyYW5zX3BvcnRfc3luYyByZWcgdmFsdWUgKE1hYXJ0ZW4pCgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2
YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCAyMiArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDEwNDI1YTc4OWI1ZS4uYWY5MzIwNTRiNWY0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNDQ2OSw2ICs0NDY5
LDI1IEBAIHN0YXRpYyB2b2lkIGljbF9lbmFibGVfdHJhbnNfcG9ydF9zeW5jKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlCiAJCSAgIHRyYW5zX2RkaV9mdW5jX2N0bDJf
dmFsKTsKIH0KIAorc3RhdGljIHZvaWQgaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5bmMo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQoreworCXN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+YmFzZS5j
cnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmJhc2UuZGV2KTsKKwlpOTE1X3JlZ190IHJlZzsKKwl1MzIgdHJhbnNfZGRpX2Z1bmNfY3RsMl92
YWw7CisKKwlpZiAob2xkX2NydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyID09IElOVkFMSURf
VFJBTlNDT0RFUikKKwkJcmV0dXJuOworCisJRFJNX0RFQlVHX0tNUygiRGlzYWJsaW5nIFRyYW5z
Y29kZXIgUG9ydCBTeW5jIG9uIFNsYXZlIFRyYW5zY29kZXIgJXNcbiIsCisJCSAgICAgIHRyYW5z
Y29kZXJfbmFtZShvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsKKworCXJlZyA9IFRS
QU5TX0RESV9GVU5DX0NUTDIob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsKKwl0cmFu
c19kZGlfZnVuY19jdGwyX3ZhbCA9IH4oUE9SVF9TWU5DX01PREVfRU5BQkxFIHwKKwkJCQkgICAg
UE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLKTsKKwlJOTE1X1dSSVRFKHJlZywgdHJh
bnNfZGRpX2Z1bmNfY3RsMl92YWwpOworfQorCiBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfcGlw
ZV9jb25maWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAog
CQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQog
ewpAQCAtNjcxOCw2ICs2NzM3LDkgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2Rpc2FibGUo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAogCWlmIChpbnRlbF9jcnRj
X2hhc190eXBlKG9sZF9jcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkKIAkJaW50ZWxf
ZGRpX3NldF92Y19wYXlsb2FkX2FsbG9jKG9sZF9jcnRjX3N0YXRlLCBmYWxzZSk7CiAKKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwkJaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0
X3N5bmMob2xkX2NydGNfc3RhdGUpOworCiAJaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJh
bnNjb2RlcikpCiAJCWludGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhvbGRfY3J0Y19z
dGF0ZSk7CiAKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
