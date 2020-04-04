Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF17819E46B
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 12:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2593D6E0F6;
	Sat,  4 Apr 2020 10:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8309E6E0F6
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2020 10:12:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20797832-1500050 
 for multiple; Sat, 04 Apr 2020 11:12:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 Apr 2020 11:12:06 +0100
Message-Id: <20200404101206.1187827-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/igt_dummyload: Give the timer thread
 a RT priority boost
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IGxlYXZlIGl0IHVwIHRvIHRoZSBsYXp5IHNjaGVkdWxlciB3aGVuIHRoZSB0aW1lb3V0
IGlzIGFwcGxpZWQgdG8KdGhlIGJhdGNoLCBmb3JjZSBpdCB0byBiZSByZWFsLXRpbWUhCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1p
Y2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiBsaWIvaWd0
X2R1bW15bG9hZC5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9kdW1teWxvYWQuYyBi
L2xpYi9pZ3RfZHVtbXlsb2FkLmMKaW5kZXggNjk0ZDkwN2RiLi5kNWY2MjJjZjggMTAwNjQ0Ci0t
LSBhL2xpYi9pZ3RfZHVtbXlsb2FkLmMKKysrIGIvbGliL2lndF9kdW1teWxvYWQuYwpAQCAtNDIy
LDcgKzQyMiw5IEBAIHN0YXRpYyB2b2lkICp0aW1lcl90aHJlYWQodm9pZCAqZGF0YSkKICAqLwog
dm9pZCBpZ3Rfc3Bpbl9zZXRfdGltZW91dChpZ3Rfc3Bpbl90ICpzcGluLCBpbnQ2NF90IG5zKQog
eworCXN0cnVjdCBzY2hlZF9wYXJhbSBwYXJhbSA9IHsgLnNjaGVkX3ByaW9yaXR5ID0gOTkgfTsK
IAlzdHJ1Y3QgaXRpbWVyc3BlYyBpdHM7CisJcHRocmVhZF9hdHRyX3QgYXR0cjsKIAlpbnQgdGlt
ZXJmZDsKIAogCWlndF9hc3NlcnQobnMgPiAwKTsKQEAgLTQzNCw3ICs0MzYsMTQgQEAgdm9pZCBp
Z3Rfc3Bpbl9zZXRfdGltZW91dChpZ3Rfc3Bpbl90ICpzcGluLCBpbnQ2NF90IG5zKQogCWlndF9h
c3NlcnQodGltZXJmZCA+PSAwKTsKIAlzcGluLT50aW1lcmZkID0gdGltZXJmZDsKIAotCXB0aHJl
YWRfY3JlYXRlKCZzcGluLT50aW1lcl90aHJlYWQsIE5VTEwsIHRpbWVyX3RocmVhZCwgc3Bpbik7
CisJcHRocmVhZF9hdHRyX2luaXQoJmF0dHIpOworCXB0aHJlYWRfYXR0cl9zZXRpbmhlcml0c2No
ZWQoJmF0dHIsIFBUSFJFQURfRVhQTElDSVRfU0NIRUQpOworCXB0aHJlYWRfYXR0cl9zZXRzY2hl
ZHBvbGljeSgmYXR0ciwgU0NIRURfRklGTyk7CisJcHRocmVhZF9hdHRyX3NldHNjaGVkcGFyYW0o
JmF0dHIsICZwYXJhbSk7CisKKwlpZ3RfYXNzZXJ0KHB0aHJlYWRfY3JlYXRlKCZzcGluLT50aW1l
cl90aHJlYWQsICZhdHRyLAorCQkJCSAgdGltZXJfdGhyZWFkLCBzcGluKSA9PSAwKTsKKwlwdGhy
ZWFkX2F0dHJfZGVzdHJveSgmYXR0cik7CiAKIAltZW1zZXQoJml0cywgMCwgc2l6ZW9mKGl0cykp
OwogCWl0cy5pdF92YWx1ZS50dl9zZWMgPSBucyAvIE5TRUNfUEVSX1NFQzsKLS0gCjIuMjYuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
