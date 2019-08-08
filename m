Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F31D8677E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 18:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818116E844;
	Thu,  8 Aug 2019 16:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1C56E844
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 16:53:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17933947-1500050 
 for multiple; Thu, 08 Aug 2019 17:53:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 17:53:25 +0100
Message-Id: <20190808165325.23298-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fixup a missing legacy_idx
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R3JyLCBtaXNzZWQgb25lLiBGb3IgdXNpbmcgdGhlIGxlZ2FjeSBlbmdpbmUgbWFwLCB3ZSBzaG91
bGQgdXNlCmVuZ2luZS0+bGVnYWN5X2lkeC4gSWRlYWxseSwgd2Ugc2hvdWxkIGtub3cgdGhlIGlu
dGVsX2NvbnRleHQgaW4gdGhlCnNlbGZ0ZXN0IGFuZCBhdm9pZCBhbGwgdGhlIGZpZGRsaW5nIGFy
b3VuZCB3aXRoIHVud2FudGVkIEdFTSBjb250ZXh0cy4KCkZpeGVzOiBmMWM0ZDE1N2FiOWIgKCJk
cm0vaTkxNTogRml4IHVwIHRoZSBpbnZlcnNlIG1hcHBpbmcgZm9yIGRlZmF1bHQgY3R4LT5lbmdp
bmVzW10iKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMKaW5kZXggMmUwZmQ3MDFiY2E3Li4zOTM3
ZDQzYzI5NjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1
ZXN0LmMKQEAgLTMzOSw3ICszMzksNyBAQCBzdGF0aWMgaW50IF9faWd0X2JyZWFkY3J1bWJzX3Nt
b2tldGVzdCh2b2lkICphcmcpCiAKIAkJCW11dGV4X2xvY2soQktMKTsKIAotCQkJY2UgPSBpOTE1
X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCB0LT5lbmdpbmUtPmlkKTsKKwkJCWNlID0gaTkx
NV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0eCwgdC0+ZW5naW5lLT5sZWdhY3lfaWR4KTsKIAkJ
CUdFTV9CVUdfT04oSVNfRVJSKGNlKSk7CiAJCQlycSA9IHQtPnJlcXVlc3RfYWxsb2MoY2UpOwog
CQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOwotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
