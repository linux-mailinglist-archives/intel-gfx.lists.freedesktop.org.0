Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2660AE3C80
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 21:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786BB6E673;
	Thu, 24 Oct 2019 19:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1F46E62C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 19:51:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 12:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="349807097"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga004.jf.intel.com with ESMTP; 24 Oct 2019 12:51:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 12:51:21 -0700
Message-Id: <20191024195122.22877-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024195122.22877-1-lucas.demarchi@intel.com>
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: do not set MOCS control values on
 dgfx
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

T24gZGdmeCB0aGVyZSdzIG5vIExMQyBhbmQgZURSQU0gY29udHJvbCB0YWJsZS4gU2luY2Ugbm93
IHRoaXMKYWxzbyBtZWFucyB0aGUgZGV2aWNlIGhhcyBnbG9iYWwgTU9DUywganVzdCByZXR1cm4g
ZWFybHkgb24gdGhlCmluaXRpYWxpemF0aW9uIGZ1bmN0aW9uLgoKTDMgc2V0dGluZ3Mgc3RpbGwg
YXBwbHkgYW5kIHN0aWxsIG5lZWQgdG8gYmUgdHdlYWtlZC4KCkJzcGVjOiA0NTEwMQoKQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8IDYgKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5jCmluZGV4IDkzMjgzM2U1YjcxMi4uOWUxOTYzN2UwMjI1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbW9jcy5jCkBAIC00NjIsNiArNDYyLDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX21v
Y3NfaW5pdF9nbG9iYWwoc3RydWN0IGludGVsX2d0ICpndCkKIAlzdHJ1Y3QgZHJtX2k5MTVfbW9j
c190YWJsZSB0YWJsZTsKIAl1bnNpZ25lZCBpbnQgaW5kZXg7CiAKKwkvKgorCSAqIExMQyBhbmQg
ZURSQU0gY29udHJvbCB2YWx1ZXMgYXJlIG5vdCBvbmx5IGFwcGxpY2FibGUgdG8gZGdmeAorCSAq
LworCWlmIChJU19ER0ZYKGd0LT5pOTE1KSkKKwkJcmV0dXJuOworCiAJR0VNX0JVR19PTighSEFT
X0dMT0JBTF9NT0NTX1JFR0lTVEVSUyhndC0+aTkxNSkpOwogCiAJaWYgKCFnZXRfbW9jc19zZXR0
aW5ncyhndC0+aTkxNSwgJnRhYmxlKSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
