Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658721F0464
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 05:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64B56E97E;
	Sat,  6 Jun 2020 03:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36CF6E97E
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 03:18:58 +0000 (UTC)
IronPort-SDR: hVfa5gLB74nw6CSccHnDPihzSaRNNmj5oulfL4LkZrrq+kxJVUMT4qqghZue76Raj9luMQet+r
 l4ijOQw//ZmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 20:18:58 -0700
IronPort-SDR: JLXHvgPWq8MZVKrinPH/EcUSHxuPWyAJEwl1em2rUuy2p/NenZ05qw3/hLmS/X5Cikw7169Lej
 njDg4u8L0Adw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; d="scan'208";a="294887454"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2020 20:18:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 20:18:03 -0700
Message-Id: <20200606031803.3309624-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Restore DP-E to VBT mapping table
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYWNjaWRlbnRhbGx5IGRyb3BwZWQgbWF0Y2hpbmcgZm9yIERWT19QT1JUX0RQRSBmcm9tIHRo
ZSBWQlQgbWFwcGluZwp0YWJsZSB3aGVuIHdlIHJlZmFjdG9yZWQgdGhlIGZ1bmN0aW9uLiAgUmVz
dG9yZSBpdC4KCkZpeGVzOiA0NjI4MTQyYWVjY2MgKCJkcm0vaTkxNS9ya2w6IHByb3ZpZGUgcG9y
dC9waHkgbWFwcGluZyBmb3IgdmJ0IikKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMKaW5kZXggNGYxYTcyYTkwYjhmLi5jOTc0YzcxNmY4NTkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xNjUwLDcgKzE2NTAsNyBAQCBzdGF0
aWMgZW51bSBwb3J0IGR2b19wb3J0X3RvX3BvcnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQlbUE9SVF9CXSA9IHsgRFZPX1BPUlRfSERNSUIsIERWT19QT1JUX0RQQiwgLTEg
fSwKIAkJW1BPUlRfQ10gPSB7IERWT19QT1JUX0hETUlDLCBEVk9fUE9SVF9EUEMsIC0xIH0sCiAJ
CVtQT1JUX0RdID0geyBEVk9fUE9SVF9IRE1JRCwgRFZPX1BPUlRfRFBELCAtMSB9LAotCQlbUE9S
VF9FXSA9IHsgRFZPX1BPUlRfQ1JULCBEVk9fUE9SVF9IRE1JRSwgLTEgfSwKKwkJW1BPUlRfRV0g
PSB7IERWT19QT1JUX0hETUlFLCBEVk9fUE9SVF9EUEUsIERWT19QT1JUX0NSVCB9LAogCQlbUE9S
VF9GXSA9IHsgRFZPX1BPUlRfSERNSUYsIERWT19QT1JUX0RQRiwgLTEgfSwKIAkJW1BPUlRfR10g
PSB7IERWT19QT1JUX0hETUlHLCBEVk9fUE9SVF9EUEcsIC0xIH0sCiAJfTsKLS0gCjIuMjQuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
