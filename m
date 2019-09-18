Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D46B5909
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 02:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3526EDA3;
	Wed, 18 Sep 2019 00:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961DF6EBAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 00:32:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 17:32:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,518,1559545200"; d="scan'208";a="211672668"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2019 17:32:17 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 17:33:51 -0700
Message-Id: <20190918003352.26322-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190918003352.26322-1-manasi.d.navare@intel.com>
References: <20190918003352.26322-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915/display/icl: Disable transcoder port
 sync as part of crtc_disable() sequence
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
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMjMgKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwppbmRleCAwNDVjYTg1MDg5YTYuLjY2ZjljMzg4Y2VkMyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTQ0NTYsNiArNDQ1NiwyNiBA
QCBzdGF0aWMgdm9pZCBpY2xfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQogCQkgICB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7
CiB9CiAKK3N0YXRpYyB2b2lkIGljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMob2xkX2NydGNfc3RhdGUtPmJhc2UuY3J0Yyk7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7CisJaTkxNV9yZWdfdCByZWc7CisJdTMyIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsOwor
CisJaWYgKG9sZF9jcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9PSBJTlZBTElEX1RSQU5T
Q09ERVIpCisJCXJldHVybjsKKworCURSTV9ERUJVR19LTVMoIkRpc2FibGluZyBUcmFuc2NvZGVy
IFBvcnQgU3luYyBvbiBTbGF2ZSBUcmFuc2NvZGVyICVzXG4iLAorCQkgICAgICB0cmFuc2NvZGVy
X25hbWUob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7CisKKwlyZWcgPSBUUkFOU19E
RElfRlVOQ19DVEwyKG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7CisJdHJhbnNfZGRp
X2Z1bmNfY3RsMl92YWwgPSBJOTE1X1JFQUQocmVnKTsKKwl0cmFuc19kZGlfZnVuY19jdGwyX3Zh
bCAmPSB+KFBPUlRfU1lOQ19NT0RFX0VOQUJMRSB8CisJCQkJICAgICBQT1JUX1NZTkNfTU9ERV9N
QVNURVJfU0VMRUNUX01BU0spOworCUk5MTVfV1JJVEUocmVnLCB0cmFuc19kZGlfZnVuY19jdGwy
X3ZhbCk7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAJCQkJICAgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiB7CkBAIC02NzA1LDYgKzY3
MjUsOSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAJaWYgKGludGVsX2NydGNfaGFzX3R5cGUob2xkX2Ny
dGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQogCQlpbnRlbF9kZGlfc2V0X3ZjX3BheWxv
YWRfYWxsb2Mob2xkX2NydGNfc3RhdGUsIGZhbHNlKTsKIAorCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKQorCQlpY2xfZGlzYWJsZV90cmFuc2NvZGVyX3BvcnRfc3luYyhvbGRfY3J0Y19z
dGF0ZSk7CisKIAlpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKSkKIAkJaW50
ZWxfZGRpX2Rpc2FibGVfdHJhbnNjb2Rlcl9mdW5jKG9sZF9jcnRjX3N0YXRlKTsKIAotLSAKMi4x
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
