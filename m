Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B444DC8B78
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2461B6E079;
	Wed,  2 Oct 2019 14:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5ED76E0AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:41:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:41:44 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="343346105"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:41:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 17:41:38 +0300
Message-Id: <20191002144138.7917-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/dp: remove static variable for aux
 last status
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

QWRkIGF1eF9idXN5X2xhc3Rfc3RhdHVzIHRvIGludGVsX2RwLiBEb24ndCBib3RoZXIgd2l0aCBp
bml0aWFsaXppbmcgdG8KYWxsIG9uZXM7IHRoZSBvbmx5IGRpZmZlcmVuY2UgaXMgcG90ZW50aWFs
bHkgbWlzc2luZyBsb2dnaW5nIGZvciBvbmUKZXJyb3IgY2FzZSBpZiB0aGUgcmVhZG91dCBpcyBh
bGwgemVyb3MuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAg
ICAgICB8IDUgKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKaW5kZXggOTc2NjY5ZjAxYThjLi4xNjAyYWFjN2NhMGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC0x
MTg1LDYgKzExODUsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgewogCS8qIHNpbmsgb3IgYnJhbmNoIGRl
c2NyaXB0b3IgKi8KIAlzdHJ1Y3QgZHJtX2RwX2Rlc2MgZGVzYzsKIAlzdHJ1Y3QgZHJtX2RwX2F1
eCBhdXg7CisJdTMyIGF1eF9idXN5X2xhc3Rfc3RhdHVzOwogCXU4IHRyYWluX3NldFs0XTsKIAlp
bnQgcGFuZWxfcG93ZXJfdXBfZGVsYXk7CiAJaW50IHBhbmVsX3Bvd2VyX2Rvd25fZGVsYXk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggZjlmYzlhMTM4M2UzLi5j
Njk3ZjU1MWExYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTEzNDcsMTMgKzEzNDcsMTIgQEAgaW50ZWxfZHBfYXV4X3hmZXIoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKIAl0cmFjZV9pOTE1X3JlZ19ydyhmYWxzZSwgY2hfY3RsLCBzdGF0dXMsIHNpemVv
ZihzdGF0dXMpLCB0cnVlKTsKIAogCWlmICh0cnkgPT0gMykgewotCQlzdGF0aWMgdTMyIGxhc3Rf
c3RhdHVzID0gLTE7CiAJCWNvbnN0IHUzMiBzdGF0dXMgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIGNoX2N0bCk7CiAKLQkJaWYgKHN0YXR1cyAhPSBsYXN0X3N0YXR1cykgeworCQlpZiAoc3Rh
dHVzICE9IGludGVsX2RwLT5hdXhfYnVzeV9sYXN0X3N0YXR1cykgewogCQkJV0FSTigxLCAiZHBf
YXV4X2NoIG5vdCBzdGFydGVkIHN0YXR1cyAweCUwOHhcbiIsCiAJCQkgICAgIHN0YXR1cyk7Ci0J
CQlsYXN0X3N0YXR1cyA9IHN0YXR1czsKKwkJCWludGVsX2RwLT5hdXhfYnVzeV9sYXN0X3N0YXR1
cyA9IHN0YXR1czsKIAkJfQogCiAJCXJldCA9IC1FQlVTWTsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
