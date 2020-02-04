Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EED27151B8F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661136EEBA;
	Tue,  4 Feb 2020 13:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1326EEBA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:42:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:42:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="403791241"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:42:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:42:23 +0200
Message-Id: <30a2069f1b923ebd7b3451c96344397fa9c85823.1580823606.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580823606.git.jani.nikula@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: split
 i915_driver_modeset_remove() to pre/post irq uninstall
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVzaCBpcnEgdW5pbnN0YWxsIGZ1cnRoZXIgdXAsIGJ5IHNwbGl0dGluZyBpOTE1X2RyaXZlcl9t
b2Rlc2V0X3JlbW92ZSgpCnRvIHR3bywgdGhlIHBhcnQgd2l0aCB3b3JraW5nIGlycXMgYmVmb3Jl
IGlycSB1bmluc3RhbGwsIGFuZCB0aGUgcGFydAphZnRlciBpcnEgdW5pbnN0YWxsLiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTEgKysrKysrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggNTMzMGEwZjEwZTk3Li4yZWY0YjhmYzVmNGMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMzQ1LDEyICszNDUsMTUgQEAgc3RhdGljIGludCBpOTE1
X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJl
dHVybiByZXQ7CiB9CiAKKy8qIHBhcnQgIzE6IGNhbGwgYmVmb3JlIGlycSB1bmluc3RhbGwgKi8K
IHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogewogCWludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShpOTE1KTsKK30K
IAotCWludGVsX2lycV91bmluc3RhbGwoaTkxNSk7Ci0KKy8qIHBhcnQgIzI6IGNhbGwgYWZ0ZXIg
aXJxIHVuaW5zdGFsbCAqLworc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmVf
bm9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CiAJaW50ZWxfbW9kZXNldF9k
cml2ZXJfcmVtb3ZlX25vaXJxKGk5MTUpOwogCiAJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5
MTUpOwpAQCAtMTU5MSw2ICsxNTk0LDEwIEBAIHZvaWQgaTkxNV9kcml2ZXJfcmVtb3ZlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUo
aTkxNSk7CiAKKwlpbnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUpOworCisJaTkxNV9kcml2ZXJfbW9k
ZXNldF9yZW1vdmVfbm9pcnEoaTkxNSk7CisKIAlpOTE1X3Jlc2V0X2Vycm9yX3N0YXRlKGk5MTUp
OwogCWk5MTVfZ2VtX2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
