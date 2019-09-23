Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D09BBC86
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 21:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489956E92F;
	Mon, 23 Sep 2019 19:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16236E894
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 19:55:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 12:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="179238341"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga007.jf.intel.com with ESMTP; 23 Sep 2019 12:55:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 12:55:12 -0700
Message-Id: <20190923195513.207536-9-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923195513.207536-1-jose.souza@intel.com>
References: <20190923195513.207536-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915/tgl: Return the mg/dkl pll as
 DDI clock for new TC ports
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VEdMIGFkZGVkIDIgbW9yZSBUQyBwb3J0cyB0aGF0IGN1cnJlbnRseSBhcmUgbm90IGJlaW5nIGhh
bmRsZWQgYnkKaWNsX3BsbF90b19kZGlfY2xrX3NlbCgpLCBzbyBhZGRpbmcgdGhvc2UuCgpDYzog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+ClJlcG9ydGVkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOTM4NjM5Njc1NTI5Li5lNTBmNDkyYjMx
MDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTA3Niw2
ICsxMDc2LDggQEAgc3RhdGljIHUzMiBpY2xfcGxsX3RvX2RkaV9jbGtfc2VsKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAogCWNhc2UgRFBMTF9JRF9JQ0xfTUdQTEwyOgogCWNhc2UgRFBM
TF9JRF9JQ0xfTUdQTEwzOgogCWNhc2UgRFBMTF9JRF9JQ0xfTUdQTEw0OgorCWNhc2UgRFBMTF9J
RF9UR0xfTUdQTEw1OgorCWNhc2UgRFBMTF9JRF9UR0xfTUdQTEw2OgogCQlyZXR1cm4gRERJX0NM
S19TRUxfTUc7CiAJfQogfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
