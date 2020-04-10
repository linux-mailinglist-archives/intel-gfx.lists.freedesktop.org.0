Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A8A1A4799
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 16:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40446ECF1;
	Fri, 10 Apr 2020 14:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428386ECF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 14:44:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20864172-1500050 
 for multiple; Fri, 10 Apr 2020 15:43:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Apr 2020 15:43:28 +0100
Message-Id: <20200410144328.15286-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush async power domains on probe
 failure
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rmx1c2ggdGhlIGFzeW5jIHBvd2VyIGRvbWFpbiB3b3JrIGFmdGVyIGFib3J0aW5nIHRoZSBtb2R1
bGUgcHJvYmU6Cgo8Mz4gWzMwNy43ODU1NTJdIE9ERUJVRzogZnJlZSBhY3RpdmUgKGFjdGl2ZSBz
dGF0ZSAwKSBvYmplY3QgdHlwZTogdGltZXJfbGlzdCBoaW50OiBpbnRlbF9kaXNwbGF5X3Bvd2Vy
X3B1dF9hc3luY193b3JrKzB4MC8weGYwIFtpOTE1XQoKQ2xvc2VzOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzE2NDcKRml4ZXM6IGI2NjQyNTlmM2Zl
MiAoImRybS9pOTE1OiBzcGxpdCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkgdG8gcHJlL3Bv
c3QgaXJxIGluc3RhbGwiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCmluZGV4IGE3YTNiNGI5ODU3Mi4uMTNjMWNlMjQ0MDkyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKQEAgLTk5Niw2ICs5OTYsNyBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUo
c3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiBv
dXRfY2xlYW51cF9tb2Rlc2V0OgogCS8qIEZJWE1FICovCiBvdXRfY2xlYW51cF9odzoKKwlpbnRl
bF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAJaTkxNV9kcml2ZXJfaHdfcmVt
b3ZlKGk5MTUpOwogCWludGVsX21lbW9yeV9yZWdpb25zX2RyaXZlcl9yZWxlYXNlKGk5MTUpOwog
CWk5MTVfZ2d0dF9kcml2ZXJfcmVsZWFzZShpOTE1KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
