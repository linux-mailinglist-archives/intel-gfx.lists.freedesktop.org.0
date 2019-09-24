Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA7FBC256
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 09:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8484B6EA06;
	Tue, 24 Sep 2019 07:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87AD96EA06
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 07:09:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18594557-1500050 
 for multiple; Tue, 24 Sep 2019 08:09:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 08:09:00 +0100
Message-Id: <20190924070900.17342-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923230209.16480-2-chris@chris-wilson.co.uk>
References: <20190923230209.16480-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Swap engines for no rc6/rps (gpu
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
ZSBiZWluZyBkZWJ1Z2dlZC4KClJQUyB3YXMgYWxtb3N0IGVub3VnaCBmb3IgQ0ksIHRocm91Z2gg
aW4gYSBib251cyBubyBSQzYgYXMgd2VsbCEKCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3MTQKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBjMmZhYTY3OTY1OGMuLmExODBhY2IyZTgz
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC03OTgsNyArNzk4LDggQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5mbyA9IHsK
IAkuZGlzcGxheS5oYXNfbW9kdWxhcl9maWEgPSAxLAogCS5lbmdpbmVfbWFzayA9CiAJCUJJVChS
Q1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoVkNTMiksCi0J
LmVuZ2luZV9tYXNrID0gQklUKFJDUzApLCAvKiBYWFggcmVkdWNlZCBmb3IgZGVidWdnaW5nICov
CisJLmhhc19yYzYgPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KKwku
aGFzX3JwcyA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRlYnVnZ2luZyAqLwogfTsKIAog
I3VuZGVmIEdFTgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
