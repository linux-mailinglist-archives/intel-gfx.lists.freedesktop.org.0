Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC966B7360
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 08:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903B86F73E;
	Thu, 19 Sep 2019 06:47:13 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2C96F716
 for <Intel-GFX@lists.freedesktop.org>; Thu, 19 Sep 2019 06:47:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 23:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="362426228"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2019 23:47:10 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 18 Sep 2019 23:47:08 -0700
Message-Id: <20190919064710.16559-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: Engine relative MMIO
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCk5ld2VyIGhh
cmR3YXJlIGhhcyBzdXBwb3J0IGZvciBtYWtpbmcgTFJJIGFjY2Vzc2VzIHRvIE1NSU8gcmVnaXN0
ZXJzCnJlbGF0aXZlIHRvIHRoZSBlbmdpbmUgdGhhdCBpcyBleGVjdXRpbmcgdGhlIExSSSBpbnN0
cnVjdGlvbi4gVGhpcyBpcwpyZXF1aXJlZCBmb3IgdGhpbmdzIGxpa2UgaGFyZHdhcmUgYmFzZWQg
bG9hZCBiYWxhbmNpbmcgYWNyb3NzIGVuZ2luZXMuCgpKb2huIEhhcnJpc29uICgyKToKICBkcm0v
aTkxNTogRW5naW5lIHJlbGF0aXZlIE1NSU8KICBkcm0vaTkxNTogRW5naW5lIHJlbGF0aXZlIE1N
SU8gZm9yIEdlbjEyCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
YyAgfCAgNyArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAg
ICB8IDQzICsrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdHlwZXMuaCB8ICA0ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
cHVfY29tbWFuZHMuaCB8ICA4ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jICAgICAgICAgIHwgNDAgKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9tb2NzLmMgICAgICAgICB8IDEyICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jICAgfCAxMiArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jICAgICAgICAgICAgIHwgIDkgKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAxNCArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICB8ICAxICsKIDExIGZpbGVzIGNoYW5nZWQsIDExNCBp
bnNlcnRpb25zKCspLCAzOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
