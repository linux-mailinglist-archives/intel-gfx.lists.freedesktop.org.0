Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB3B4C338
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 23:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A0E6E47A;
	Wed, 19 Jun 2019 21:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586406E47A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 21:44:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 14:44:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="153925248"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 14:44:06 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 14:43:49 -0700
Message-Id: <20190619214351.12000-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] GuC messaging enable/disable tweaks
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

Rml4IHRoZSBvcmRlciBvZiBvcGVyYXRpb25zIGFuZCB0YWtlIGNhcmUgb2YgbGF0ZSBtZXNzYWdl
cy4KQXQgdGhlIG1vbWVudCB3ZSBvbmx5IGNhcmUgYWJvdXQgbGF0ZSBtZXNzYWdlcyBpZiB0aGUg
bG9nIHJlbGF5CmlzIGFjdGl2ZSwgc28gdGhlIHNlY29uZCBwYXRjaCBpcyBub3QgZXNzZW50aWFs
LiBTaW5jZSB3ZSBub3cgaGF2ZQp0aGUgYWJpbGl0eSBvZiBzYXZpbmcgYSBiaWdnZXIgbG9nIHdp
dGggcXVpdGUgYSBiaXQgb2YgaGlzdG9yeSwgSSdkCnBlcnNvbmFsbHkgcHJlZmVyIHRvIGdldCBy
aWQgb2YgdGhlIHJlbGF5IGxvZ2ljIGVudGlyZWx5LCBidXQgSSdtCm5vdCBzdXJlIGlmIHRoZXJl
IGlzIGEgZ29vZCByZWFzb24gdG8ga2VlcCBpdC4KCkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgogCkRhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIpOgogIGRybS9pOTE1L2d1Yzog
cmVvcmRlciBlbmFibGUvZGlzYWJsZSBjb21tdW5pY2F0aW9uIHN0ZXBzCiAgZHJtL2k5MTUvZ3Vj
OiBoYW5kbGUgR3VDIG1lc3NhZ2VzIHJlY2VpdmVkIHdpdGggQ1RCIGRpc2FibGVkCgogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmggICAgfCAgNSArKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjX2N0LmMgfCAxNSArLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjX2N0LmggfCAgNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyAgICAgfCA5
MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLQogNCBmaWxlcyBjaGFuZ2VkLCAxMDAgaW5z
ZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
