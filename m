Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A518F1EF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 19:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E796E9AE;
	Thu, 15 Aug 2019 17:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C4B6E9AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 17:18:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 10:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="328432595"
Received: from unknown (HELO pachecof-ubuntu.fm.intel.com) ([10.1.27.43])
 by orsmga004.jf.intel.com with ESMTP; 15 Aug 2019 10:16:31 -0700
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 10:12:34 -0700
Message-Id: <20190815171234.35349-1-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/uc: Fini hw even if GuC is not
 running
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
aCBHdUMuCgp2MjogYmV0dGVyIHRvIGNoZWNrIGlmIGZ3IGlzIGF2YWlsYWJsZSAoTWljaGFsKQoK
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MDk0MwpTaWduZWQtb2ZmLWJ5OiBGZXJuYW5kbyBQYWNoZWNvIDxmZXJuYW5kby5wYWNoZWNvQGlu
dGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKaW5kZXggMGRjMmIwY2Y0NjA0Li42N2RlYzdkY2MyNmYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNTIxLDcgKzUyMSw3IEBA
IHZvaWQgaW50ZWxfdWNfZmluaV9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewogCXN0cnVjdCBp
bnRlbF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwogCi0JaWYgKCFpbnRlbF9ndWNfaXNfcnVubmluZyhn
dWMpKQorCWlmICghaW50ZWxfdWNfZndfaXNfYXZhaWxhYmxlKCZndWMtPmZ3KSkKIAkJcmV0dXJu
OwogCiAJaWYgKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSkKLS0gCjIuMjIu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
