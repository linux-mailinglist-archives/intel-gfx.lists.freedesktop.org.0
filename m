Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C31157D925
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376B06E467;
	Thu,  1 Aug 2019 10:18:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86BF6E464
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 10:18:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 03:18:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="324194340"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2019 03:18:28 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 11:18:21 +0100
Message-Id: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/4] PMU update for more than one card
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkEgYml0IG9m
IHRpZHlpbmcgdXAgZmlyc3QsIHdpdGggdGhlIGxhc3QgcGF0Y2ggYWxsb3dpbmcgZm9yIG1vcmUg
dGhhbiBvbmUgY2FyZApyZWdpc3RlcmluZyB3aXRoIFBNVS4KCkRpc2N1c3Npb24gcG9pbnRzIGFy
ZSBhcHBlbmRlZCB0byB0aGUgbGFzdCBjb21taXQgbWVzc2FnZS4KClR2cnRrbyBVcnN1bGluICg0
KToKICBkcm0vaTkxNS9wbXU6IE1ha2UgbW9yZSBzdHJ1Y3QgaTkxNV9wbXUgY2VudHJpYwogIGRy
bS9pOTE1L3BtdTogQ29udmVydCBlbmdpbmUgc2FtcGxpbmcgdG8gdW5jb3JlIG1taW8KICBkcm0v
aTkxNS9wbXU6IENvbnZlcnQgc2FtcGxpbmcgdG8gZ3QKICBkcm0vaTkxNS9wbXU6IFN1cHBvcnQg
bXVsdGlwbGUgR1BVcwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgfCAyNzQgKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cG11LmggfCAgIDggKwogMiBmaWxlcyBjaGFuZ2VkLCAxNjQgaW5zZXJ0aW9ucygrKSwgMTE4IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
