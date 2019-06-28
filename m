Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E19F59DE4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41116E93A;
	Fri, 28 Jun 2019 14:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767256E938
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 14:36:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 07:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165079378"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 07:36:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:36:17 +0300
Message-Id: <20190628143635.22066-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628143635.22066-1-imre.deak@intel.com>
References: <20190628143635.22066-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/23] drm/i915: Don't enable the DDI-IO
 power in the TypeC TBT-alt mode
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

QWNjb3JkaW5nIHRvIHRoZSBzcGVjIHdlIHNob3VsZCBub3QgZW5hYmxlIHRoZSBEREktSU8gcG93
ZXIgZG9tYWluIGlmCnRoZSBUeXBlQyBwb3J0IGlzIGluIHRoZSBUQlQtYWx0IG1vZGUsIHNvIGRv
IHRoYXQgb25seSBpbiB0aGUgb3RoZXIKVHlwZUMgbW9kZXMgb3IgZm9yIG5vbi1UeXBlQyBwb3J0
cy4gU2VlIHRoZSBpbnRlcm5hbCBCU3BlYyBJbmRleC8yMjI0My4KCnYyOgotIEFkZCB0aGUgaW50
ZXJuYWwgQlNwZWMgcmVmZXJlbmNlIHRvIHRoZSBsb2cgbWVzc2FnZS4gKEpvc8OpKQoKQ2M6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDExICsrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmlu
ZGV4IDQ0MmNkMzk5NzEwOS4uYzE2ZmE3ODlhOTMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKQEAgLTMxMjQsNyArMzEyNCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogCWlu
dGVsX2RkaV9jbGtfc2VsZWN0KGVuY29kZXIsIGNydGNfc3RhdGUpOwogCi0JaW50ZWxfZGlzcGxh
eV9wb3dlcl9nZXQoZGV2X3ByaXYsIGRpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluKTsKKwlp
ZiAoIWludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpIHx8CisJICAgIGRpZ19wb3J0LT50
Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkKKwkJaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2
X3ByaXYsCisJCQkJCWRpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluKTsKIAogCWljbF9wcm9n
cmFtX21nX2RwX21vZGUoZGlnX3BvcnQpOwogCWljbF9kaXNhYmxlX3BoeV9jbG9ja19nYXRpbmco
ZGlnX3BvcnQpOwpAQCAtMzMwNiw4ICszMzA5LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9w
b3N0X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50ZWxfZWRw
X3BhbmVsX3ZkZF9vbihpbnRlbF9kcCk7CiAJaW50ZWxfZWRwX3BhbmVsX29mZihpbnRlbF9kcCk7
CiAKLQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF91bmNoZWNrZWQoZGV2X3ByaXYsCi0JCQkJCSAg
ZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4pOworCWlmICghaW50ZWxfcG9ydF9pc190Yyhk
ZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCkgfHwKKwkgICAgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENf
UE9SVF9UQlRfQUxUKQorCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF91bmNoZWNrZWQoZGV2X3By
aXYsCisJCQkJCQkgIGRpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluKTsKIAogCWludGVsX2Rk
aV9jbGtfZGlzYWJsZShlbmNvZGVyKTsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
