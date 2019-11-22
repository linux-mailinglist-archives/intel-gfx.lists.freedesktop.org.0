Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3438D106B50
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 11:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7D16F51D;
	Fri, 22 Nov 2019 10:43:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94DE86F50F;
 Fri, 22 Nov 2019 10:43:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 02:43:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="197584060"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.19.231])
 by orsmga007.jf.intel.com with ESMTP; 22 Nov 2019 02:43:13 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 22 Nov 2019 10:43:07 +0000
Message-Id: <20191122104307.30412-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/query: Check no buffer
 overwrite
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNoZWNrIHRo
YXQgdGhlIGVuZ2luZSBxdWVyeSBpcyBub3QgcG9sbHV0aW5nIHRoZSBidWZmZXIgcGFzdCB0aGUg
c2l6ZSBpdAppbmRpY2F0ZWQgaXQgd291bGQgd3JpdGUuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvaTkxNV9x
dWVyeS5jIHwgMTcgKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X3F1ZXJ5
LmMgYi90ZXN0cy9pOTE1L2k5MTVfcXVlcnkuYwppbmRleCBlY2JlYzNhZTE0MWQuLjkyZGQ4ZjQ4
YTVkMCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9pOTE1X3F1ZXJ5LmMKKysrIGIvdGVzdHMvaTkx
NS9pOTE1X3F1ZXJ5LmMKQEAgLTQ5Niw3ICs0OTYsOCBAQCBzdGF0aWMgdm9pZCBlbmdpbmVzX2lu
dmFsaWQoaW50IGZkKQogewogCXN0cnVjdCBkcm1faTkxNV9xdWVyeV9lbmdpbmVfaW5mbyAqZW5n
aW5lczsKIAlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSBpdGVtOwotCXVuc2lnbmVkIGludCBs
ZW47CisJdW5zaWduZWQgaW50IGksIGxlbjsKKwljaGFyICpidWY7CiAKIAkvKiBGbGFncyBpcyBN
QlouICovCiAJbWVtc2V0KCZpdGVtLCAwLCBzaXplb2YoaXRlbSkpOwpAQCAtNTc0LDYgKzU3NSwy
MCBAQCBzdGF0aWMgdm9pZCBlbmdpbmVzX2ludmFsaWQoaW50IGZkKQogCQkgICAgICAgLTEsIDAp
OwogCWlndF9hc3NlcnQoZW5naW5lcyAhPSBNQVBfRkFJTEVEKTsKIAorCS8qIENoZWNrIG5vIHdy
aXRlIHBhc3QgbGVuLiAqLworCW1lbXNldChlbmdpbmVzLCAwLCA0MDk2KTsKKwltZW1zZXQoJml0
ZW0sIDAsIHNpemVvZihpdGVtKSk7CisJaXRlbS5xdWVyeV9pZCA9IERSTV9JOTE1X1FVRVJZX0VO
R0lORV9JTkZPOworCWl0ZW0ubGVuZ3RoID0gbGVuOworCWl0ZW0uZGF0YV9wdHIgPSB0b191c2Vy
X3BvaW50ZXIoZW5naW5lcyk7CisJaTkxNV9xdWVyeV9pdGVtcyhmZCwgJml0ZW0sIDEpOworCWln
dF9hc3NlcnRfZXEoaXRlbS5sZW5ndGgsIGxlbik7CisJYnVmID0gKGNoYXIgKillbmdpbmVzOwor
CWJ1ZiArPSBsZW47CisJZm9yIChpID0gMDsgaSA8IDQwOTYgLSBsZW47IGkrKywgYnVmKyspCisJ
CWlndF9hc3NlcnRfZigqYnVmID09IDAsICJHYXJiYWdlICV1IGJ5dGVzIGFmdGVyIGJ1ZmZlciEg
KCV4KVxuIiwKKwkJCSAgICAgaSwgKmJ1Zik7CisKIAkvKiBQUk9UX05PTkUgaXMgc2ltaWxhciB0
byB1bm1hcHBlZCBhcmVhLiAqLwogCW1lbXNldChlbmdpbmVzLCAwLCBsZW4pOwogCWlndF9hc3Nl
cnRfZXEobXByb3RlY3QoZW5naW5lcywgbGVuLCBQUk9UX05PTkUpLCAwKTsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
