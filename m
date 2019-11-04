Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8724EE1F5
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 15:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E246E488;
	Mon,  4 Nov 2019 14:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEED96E488
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 14:14:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 06:14:47 -0800
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="195464250"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 06:14:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Nov 2019 16:14:36 +0200
Message-Id: <20191104141439.26312-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/dsc: make parameter arrays const
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

Tm8gbmVlZCBmb3IgdGhlbSB0byBiZSBtdXRhYmxlLgoKQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFz
aS5kLm5hdmFyZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwppbmRleCA5
Y2IzNmY4NTVmMDcuLjc2M2YxZDcyMDhlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92ZHNjLmMKQEAgLTMzLDcgKzMzLDcgQEAgZW51bSBDT0xVTU5fSU5ERVhfQlBDIHsK
ICNkZWZpbmUgRFNDX1NVUFBPUlRFRF9WRVJTSU9OX01JTgkJMQogCiAvKiBGcm9tIERTQ192MS4x
MSBzcGVjLCByY19wYXJhbWV0ZXJfU2V0IHN5bnRheCBlbGVtZW50IHR5cGljYWxseSBjb25zdGFu
dCAqLwotc3RhdGljIHUxNiByY19idWZfdGhyZXNoW10gPSB7CitzdGF0aWMgY29uc3QgdTE2IHJj
X2J1Zl90aHJlc2hbXSA9IHsKIAk4OTYsIDE3OTIsIDI2ODgsIDM1ODQsIDQ0ODAsIDUzNzYsIDYy
NzIsIDY3MjAsIDcxNjgsIDc2MTYsCiAJNzc0NCwgNzg3MiwgODAwMCwgODA2NAogfTsKQEAgLTUz
LDcgKzUzLDcgQEAgc3RydWN0IHJjX3BhcmFtZXRlcnMgewogICogU2VsZWN0ZWQgUmF0ZSBDb250
cm9sIFJlbGF0ZWQgUGFyYW1ldGVyIFJlY29tbWVuZGVkIFZhbHVlcwogICogZnJvbSBEU0NfdjEu
MTEgc3BlYyAmIEMgTW9kZWwgcmVsZWFzZTogRFNDX21vZGVsXzIwMTYxMjEyCiAgKi8KLXN0YXRp
YyBzdHJ1Y3QgcmNfcGFyYW1ldGVycyByY19wYXJhbXNbXVtNQVhfQ09MVU1OX0lOREVYXSA9IHsK
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmNfcGFyYW1ldGVycyByY19wYXJhbXNbXVtNQVhfQ09MVU1O
X0lOREVYXSA9IHsKIHsKIAkvKiA2QlBQLzhCUEMgKi8KIAl7IDc2OCwgMTUsIDYxNDQsIDMsIDEz
LCAxMSwgMTEsIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
