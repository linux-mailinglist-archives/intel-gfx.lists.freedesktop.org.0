Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 765BC87145
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 07:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E2B6ECFE;
	Fri,  9 Aug 2019 05:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9C66ECFE
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 05:14:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17937677-1500050 
 for multiple; Fri, 09 Aug 2019 06:13:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 06:13:54 +0100
Message-Id: <20190809051354.29981-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check for a second VCS engine more
 carefully
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

VG8gdXNlIHRoZSBsZWdhY3kgQlNEIHNlbGVjdG9yLCB5b3UgbXVzdCBoYXZlIGEgc2Vjb25kIFZD
UyBlbmdpbmUsIG9yCmVsc2UgdGhlIEFCSSBzaW1wbHkgbWFwcyB0aGUgcmVxdWVzdCBmb3IgYW5v
dGhlciBlbmdpbmUgb250byBWQ1MwLgpIb3dldmVyLCB3ZSBvbmx5IGNoZWNrZWQgYSBzaW5nbGUg
VkNTMSBsb2NhdGlvbiBhbmQgb3Zlcmxvb2tpbmcgdGhlCnBvc3NpYmlsaXR5IG9mIGEgc3BhcnNl
IFZDUyBzZXQgYmVpbmcgbWFwcGVkIHRvIHRoZSBkZW5zZSBBQkkuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggNTY2ZThhNDg0NGNmLi5hNDNhOWJkNDhiYzUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpA
QCAtMjIwMCw3ICsyMjAwLDEwIEBAIGViX3NlbGVjdF9sZWdhY3lfcmluZyhzdHJ1Y3QgaTkxNV9l
eGVjYnVmZmVyICplYiwKIAkJcmV0dXJuIC0xOwogCX0KIAotCWlmICh1c2VyX3JpbmdfaWQgPT0g
STkxNV9FWEVDX0JTRCAmJiBIQVNfRU5HSU5FKGk5MTUsIFZDUzEpKSB7CisJQlVJTERfQlVHX09O
KEk5MTVfTUFYX1ZDUyA+IDgpOyAvKiBzZWUgaHdlaWdodDgoKSBiZWxvdyAqLworCWlmICh1c2Vy
X3JpbmdfaWQgPT0gSTkxNV9FWEVDX0JTRCAmJgorCSAgICBod2VpZ2h0OCgoSU5URUxfSU5GTyhp
OTE1KS0+ZW5naW5lX21hc2sgPj4gVkNTMCkgJgorCQkgICAgIChCSVQoSTkxNV9NQVhfVkNTKSAt
IDEpKSA+IDEpIHsgLyogc2lsbHkgYWJpIGlzIGFiaSAqLwogCQl1bnNpZ25lZCBpbnQgYnNkX2lk
eCA9IGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0JTRF9NQVNLOwogCiAJCWlmIChic2RfaWR4ID09
IEk5MTVfRVhFQ19CU0RfREVGQVVMVCkgewotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
