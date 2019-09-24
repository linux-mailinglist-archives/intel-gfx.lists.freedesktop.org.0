Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E7BBD0BF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 19:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0830289F49;
	Tue, 24 Sep 2019 17:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B350789F49
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 17:35:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18603426-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 18:35:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 18:35:01 +0100
Message-Id: <20190924173501.21956-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/tgl: Swap engines for no rc6/rps (gpu
 powersave and reclocking)
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

SWYgd2UgZGlzYWJsZSBycHMsIGl0IGFwcGVhcnMgdGhlIFRpZ2VybGFrZSBpcyBzdGFibGUgZW5v
dWdoIHRvIHJ1bgptdWx0aXBsZSBlbmdpbmVzIHNpbXVsdGFuZW91c2x5IGluIENJLiBBcyBkaXNh
YmxpbmcgcnBzIHNob3VsZCBvbmx5CmNhdXNlIHRoZSBleGVjdXRpb24gYmVpbmcgc2xvdywgd2hl
cmVhcyBtYW55IGZlYXR1cmVzIGRlcGVuZCBvbiB0aGUKZGlmZmVyZW50IGVuZ2luZXMsIHdlIHdv
dWxkIHByZWZlciB0byBoYXZlIHRoZSBlbmdpbmVzIGVuYWJsZWQgd2hpbGUgdGhlCmhhbmdzIGFy
ZSBiZWluZyBkZWJ1Z2dlZC4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTE3MTQKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KQWNrZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYwppbmRleCBjMmZhYTY3OTY1OGMuLjc5NmEzMWVlNjNlYSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jCkBAIC03OTgsNyArNzk4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5mbyA9IHsKIAkuZGlzcGxheS5o
YXNfbW9kdWxhcl9maWEgPSAxLAogCS5lbmdpbmVfbWFzayA9CiAJCUJJVChSQ1MwKSB8IEJJVChC
Q1MwKSB8IEJJVChWRUNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoVkNTMiksCi0JLmVuZ2luZV9tYXNr
ID0gQklUKFJDUzApLCAvKiBYWFggcmVkdWNlZCBmb3IgZGVidWdnaW5nICovCisJLmhhc19ycHMg
PSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KIH07CiAKICN1bmRlZiBH
RU4KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
