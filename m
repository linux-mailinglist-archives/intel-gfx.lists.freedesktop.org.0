Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E233B7B8A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2056F7F1;
	Thu, 19 Sep 2019 14:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350DC6F7F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:04:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:57 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="189614176"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 17:03:55 +0300
Message-Id: <332eb864c73e2f04681ac5b8b330a0501521a2f6.1568901239.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 08/13] drm/i915: split
 i915_driver_modeset_remove() to pre/post irq uninstall
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

UHVzaCBpcnEgdW5pbnN0YWxsIGZ1cnRoZXIgdXAsIGJ5IHNwbGl0dGluZyBpOTE1X2RyaXZlcl9t
b2Rlc2V0X3JlbW92ZSgpCnRvIHR3bywgdGhlIHBhcnQgd2l0aCB3b3JraW5nIGlycXMgYmVmb3Jl
IGlycSB1bmluc3RhbGwsIGFuZCB0aGUgcGFydAphZnRlciBpcnEgdW5pbnN0YWxsLiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxNSArKysr
KysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IGYyYWYzYmEyNGNlOS4uZTEwZDNjZTVk
YjA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTQyMiwxMyArNDIyLDE2IEBAIHN0YXRp
YyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0
X3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKKy8qIHBhcnQgIzE6IGNhbGwg
YmVmb3JlIGlycSB1bmluc3RhbGwgKi8KK3N0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX21vZGVzZXRf
cmVtb3ZlX2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgcGNp
X2RldiAqcGRldiA9IGk5MTUtPmRybS5wZGV2OwotCiAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVt
b3ZlX2lycShpOTE1KTsKK30KIAotCWludGVsX2lycV91bmluc3RhbGwoaTkxNSk7CisvKiBwYXJ0
ICMyOiBjYWxsIGFmdGVyIGlycSB1bmluc3RhbGwgKi8KK3N0YXRpYyB2b2lkIGk5MTVfZHJpdmVy
X21vZGVzZXRfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0cnVj
dCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBkZXY7CiAKIAlpbnRlbF9tb2Rlc2V0X2RyaXZl
cl9yZW1vdmUoaTkxNSk7CiAKQEAgLTE2MjQsNiArMTYyNywxMCBAQCB2b2lkIGk5MTVfZHJpdmVy
X3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWludGVsX2d2dF9kcml2
ZXJfcmVtb3ZlKGk5MTUpOwogCisJaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmVfaXJxKGk5MTUp
OworCisJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKKwogCWk5MTVfZHJpdmVyX21vZGVzZXRf
cmVtb3ZlKGk5MTUpOwogCiAJLyogRnJlZSBlcnJvciBzdGF0ZSBhZnRlciBpbnRlcnJ1cHRzIGFy
ZSBmdWxseSBkaXNhYmxlZC4gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
