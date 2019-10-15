Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0772AD8430
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 01:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D456E8AA;
	Tue, 15 Oct 2019 23:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775486E8A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 23:03:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 16:03:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,301,1566889200"; d="scan'208";a="225590078"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 15 Oct 2019 16:03:24 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 16:05:18 -0700
Message-Id: <20191015230519.15022-6-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191015230519.15022-1-manasi.d.navare@intel.com>
References: <20191015230519.15022-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 5/6] drm/i915/display/icl: Disable transcoder
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
SV9GVU5DX0NUTDIKcmVnaXN0ZXIgZHVyaW5nIGNydGNfZGlzYWJsZSgpLgoKdjM6CiogUmViYXNl
IG9uIG1hYXJ0ZW4ncyBwYXRjaGVzCnYyOgoqIERpcmVjdGx5IHdyaXRlIHRoZSB0cmFuc19wb3J0
X3N5bmMgcmVnIHZhbHVlIChNYWFydGVuKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjIg
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBiZGUx
NDI2MDdkYWMuLmM3ZGJiYTIzNzE4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTQ0NDMsNiArNDQ0MywyNSBAQCBzdGF0aWMgdm9pZCBpY2xf
ZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZQogCQkgICB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7CiB9CiAKK3N0YXRpYyB2b2lk
IGljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRv
X2ludGVsX2NydGMob2xkX2NydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJaTkxNV9yZWdf
dCByZWc7CisJdTMyIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsOworCisJaWYgKG9sZF9jcnRjX3N0
YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9PSBJTlZBTElEX1RSQU5TQ09ERVIpCisJCXJldHVybjsK
KworCURSTV9ERUJVR19LTVMoIkRpc2FibGluZyBUcmFuc2NvZGVyIFBvcnQgU3luYyBvbiBTbGF2
ZSBUcmFuc2NvZGVyICVzXG4iLAorCQkgICAgICB0cmFuc2NvZGVyX25hbWUob2xkX2NydGNfc3Rh
dGUtPmNwdV90cmFuc2NvZGVyKSk7CisKKwlyZWcgPSBUUkFOU19ERElfRlVOQ19DVEwyKG9sZF9j
cnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7CisJdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwgPSB+
KFBPUlRfU1lOQ19NT0RFX0VOQUJMRSB8CisJCQkJICAgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9T
RUxFQ1RfTUFTSyk7CisJSTkxNV9XUklURShyZWcsIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsK
K30KKwogc3RhdGljIHZvaWQgaW50ZWxfZmRpX25vcm1hbF90cmFpbihzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CkBA
IC02NjQ4LDYgKzY2NjcsOSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlzYWJsZShzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAJaWYgKGludGVsX2NydGNfaGFz
X3R5cGUob2xkX2NydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQogCQlpbnRlbF9kZGlf
c2V0X3ZjX3BheWxvYWRfYWxsb2Mob2xkX2NydGNfc3RhdGUsIGZhbHNlKTsKIAorCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKQorCQlpY2xfZGlzYWJsZV90cmFuc2NvZGVyX3BvcnRfc3lu
YyhvbGRfY3J0Y19zdGF0ZSk7CisKIAlpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2Nv
ZGVyKSkKIAkJaW50ZWxfZGRpX2Rpc2FibGVfdHJhbnNjb2Rlcl9mdW5jKG9sZF9jcnRjX3N0YXRl
KTsKIAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
