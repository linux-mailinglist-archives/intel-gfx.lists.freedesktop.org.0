Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9698A9F78F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 02:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0854289B70;
	Wed, 28 Aug 2019 00:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D3C898C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 00:50:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 17:50:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="171378586"
Received: from pachecof-ubuntu.fm.intel.com ([10.1.27.56])
 by orsmga007.jf.intel.com with ESMTP; 27 Aug 2019 17:50:04 -0700
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 17:45:58 -0700
Message-Id: <20190828004558.11903-4-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190828004558.11903-1-fernando.pacheco@intel.com>
References: <20190828004558.11903-1-fernando.pacheco@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Fini hw even if GuC is not
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
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKaW5kZXggYjJlYjM0MGNlODdlLi5hZDViOTI4ZmUzNmEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNTM1LDcgKzUzNSw3IEBA
IHZvaWQgaW50ZWxfdWNfZmluaV9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewogCXN0cnVjdCBp
bnRlbF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwogCi0JaWYgKCFpbnRlbF9ndWNfaXNfcnVubmluZyhn
dWMpKQorCWlmICghaW50ZWxfdWNfZndfaXNfYXZhaWxhYmxlKCZndWMtPmZ3KSkKIAkJcmV0dXJu
OwogCiAJaWYgKGludGVsX2d1Y19pc19zdWJtaXNzaW9uX2VuYWJsZWQoZ3VjKSkKLS0gCjIuMjMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
