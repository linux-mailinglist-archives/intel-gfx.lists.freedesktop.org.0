Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2100936CBB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08AE8937C;
	Thu,  6 Jun 2019 07:02:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFF228936E;
 Thu,  6 Jun 2019 07:02:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:02:34 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga008.jf.intel.com with ESMTP; 06 Jun 2019 00:02:33 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  6 Jun 2019 08:02:29 +0100
Message-Id: <20190606070229.11816-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_ctx_shared: Fix vecs0 mmio base
 on Icelake
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCnZlY3MyIGFk
ZHJlc3Mgd2FzIGNvcHkgcGFzdGVkIGJ5IGFjY2lkZW50LgoKU2lnbmVkLW9mZi1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQnVnemlsbGE6IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg0MApDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJl
ZC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jIGIvdGVzdHMvaTkxNS9n
ZW1fY3R4X3NoYXJlZC5jCmluZGV4IDY3ZWNkMDk1MzY4MS4uYjNjZmMxNWRiMDYzIDEwMDY0NAot
LS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4
X3NoYXJlZC5jCkBAIC01NDYsNyArNTQ2LDcgQEAgc3RhdGljIHZvaWQgaW5kZXBlbmRlbnQoaW50
IGk5MTUsIHVuc2lnbmVkIHJpbmcsIHVuc2lnbmVkIGZsYWdzKQogCiAJY2FzZSBJOTE1X0VYRUNf
VkVCT1g6CiAJCWlmIChpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChpOTE1KSkgPj0gMTEp
Ci0JCQltbWlvX2Jhc2UgPSAweDFkODAwMDsKKwkJCW1taW9fYmFzZSA9IDB4MWM4MDAwOwogCQll
bHNlCiAJCQltbWlvX2Jhc2UgPSAweDFhMDAwOwogCQlicmVhazsKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
