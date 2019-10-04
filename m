Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF70CBA3C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 14:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376A06EB5D;
	Fri,  4 Oct 2019 12:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F394E6EB5D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 12:20:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 05:20:36 -0700
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="367350564"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 05:20:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 15:20:19 +0300
Message-Id: <20191004122019.12009-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004122019.12009-1-jani.nikula@intel.com>
References: <20191004122019.12009-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 3/3] drm/i915: move gmbus setup down to
 intel_modeset_init()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGFpciB0aGUgZ21idXMgc2V0dXAgYW5kIHRlYXJkb3duIGluIHRoZSBzYW1lIGxheWVyLiBUaGlz
IGFsc28gZml4ZXMgdGhlCmRvdWJsZSBnbWJ1cyB0ZWFyZG93biBvbiB0aGUgaTkxNV9kcml2ZXJf
bW9kZXNldF9wcm9iZSgpIGVycm9yIHBhdGguCgpNb3ZlIHRoZSBnbWJ1cyBzZXR1cCBhIGJpdCBs
YXRlciBpbiB0aGUgc2VxdWVuY2UgdG8gbWFrZSB0aGUgZm9sbG93LXVwCnJlZmFjdG9yaW5nIGVh
c2llciwgYW5kIHRvIHBpbnBvaW50IGFueSB1bmV4cGVjdGVkIGNvbnNlcXVlbmNlcyBvZiB0aGlz
CmNoYW5nZSByaWdodCBoZXJlLCBpbnN0ZWFkIG9mIHRoZSBsYXRlciByZWZhY3RvcmluZy4KClJl
dmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgfCA0IC0tLS0KIDIgZmls
ZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYzNhYzVhNWM1MTg1Li43
NDc2MGJiN2I2ZjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0xNjI0OCw2ICsxNjI0OCw4IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlpbnRlbF9wYW5lbF9zYW5pdGl6ZV9zc2Mo
aTkxNSk7CiAKKwlpbnRlbF9nbWJ1c19zZXR1cChpOTE1KTsKKwogCURSTV9ERUJVR19LTVMoIiVk
IGRpc3BsYXkgcGlwZSVzIGF2YWlsYWJsZS5cbiIsCiAJCSAgICAgIElOVEVMX05VTV9QSVBFUyhp
OTE1KSwKIAkJICAgICAgSU5URUxfTlVNX1BJUEVTKGk5MTUpID4gMSA/ICJzIiA6ICIiKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDczNDlmZDhjOTc5Ni4uZGZhZWUzODk5N2M3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTUzLDcgKzUzLDYgQEAKICNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2RwLmgiCiAj
aW5jbHVkZSAiZGlzcGxheS9pbnRlbF9mYmRldi5oIgotI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxf
Z21idXMuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2hvdHBsdWcuaCIKICNpbmNsdWRlICJk
aXNwbGF5L2ludGVsX292ZXJsYXkuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3BpcGVfY3Jj
LmgiCkBAIC0zMDcsOCArMzA2LDYgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3By
b2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWlmIChyZXQpCiAJCWdvdG8gY2xl
YW51cF9jc3I7CiAKLQlpbnRlbF9nbWJ1c19zZXR1cChpOTE1KTsKLQogCS8qIEltcG9ydGFudDog
VGhlIG91dHB1dCBzZXR1cCBmdW5jdGlvbnMgY2FsbGVkIGJ5IG1vZGVzZXRfaW5pdCBuZWVkCiAJ
ICogd29ya2luZyBpcnFzIGZvciBlLmcuIGdtYnVzIGFuZCBkcCBhdXggdHJhbnNmZXJzLiAqLwog
CXJldCA9IGludGVsX21vZGVzZXRfaW5pdChpOTE1KTsKQEAgLTM0Myw3ICszNDAsNiBAQCBzdGF0
aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKGk5MTUpOwogY2xlYW51cF9pcnE6
CiAJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKLQlpbnRlbF9nbWJ1c190ZWFyZG93bihpOTE1
KTsKIGNsZWFudXBfY3NyOgogCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUpOwogCWludGVsX3Bv
d2VyX2RvbWFpbnNfZHJpdmVyX3JlbW92ZShpOTE1KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
