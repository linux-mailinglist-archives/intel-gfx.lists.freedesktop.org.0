Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969B08BE9A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 18:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC24C897F5;
	Tue, 13 Aug 2019 16:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A839A897F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 16:30:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 09:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="351581232"
Received: from pachecof-ubuntu.fm.intel.com ([10.1.27.43])
 by orsmga005.jf.intel.com with ESMTP; 13 Aug 2019 09:30:24 -0700
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 09:26:28 -0700
Message-Id: <20190813162628.18531-1-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Fini hw even if GuC is not running
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

V2Ugc2hvdWxkIG5vdCBiZSBza2lwcGluZyB1Y19maW5pX2h3IG9uIGZpbmRpbmcgR3VDCmlzIG5v
IGxvbmdlciBydW5uaW5nLiBUaGVyZSBpcyBwbGVudHkgb2YgaHcgYW5kIGludGVybmFsCnN0YXRl
IHRoYXQgY2FuIGJlIGNsZWFuZWQgdXAgd2l0aG91dCBoYXZpbmcgdG8gY29tbXVuaWNhdGUKd2l0
aCBHdUMuCgpTaWduZWQtb2ZmLWJ5OiBGZXJuYW5kbyBQYWNoZWNvIDxmZXJuYW5kby5wYWNoZWNv
QGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKaW5kZXggMGRjMmIwY2Y0NjA0Li5jNjk4Y2RkYzE0
ZGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNTIxLDcgKzUyMSw3
IEBAIHZvaWQgaW50ZWxfdWNfZmluaV9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewogCXN0cnVj
dCBpbnRlbF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwogCi0JaWYgKCFpbnRlbF9ndWNfaXNfcnVubmlu
ZyhndWMpKQorCWlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKIAkJcmV0dXJuOwogCiAJ
aWYgKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSkKLS0gCjIuMjIuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
