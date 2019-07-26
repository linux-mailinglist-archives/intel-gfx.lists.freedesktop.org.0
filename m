Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D93A766AB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 14:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1847E6ED39;
	Fri, 26 Jul 2019 12:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EEB6ED39
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 12:55:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17629206-1500050 
 for multiple; Fri, 26 Jul 2019 13:54:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 13:54:55 +0100
Message-Id: <20190726125456.31364-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Initialise err to 0 before
 looping over ce->engines
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

U21hdGNoIHdhcm5pbmcgdGhhdCB0aGUgbG9vcCBtYXkgYmUgZW1wdHkgY2F1c2luZyB1cyB0byBj
aGVjayBlcnIgYmVmb3JlCml0IGhhZCBiZWVuIHNldC4gRW5zdXJlIHRoYXQgaXQgaXMgaW5pdGlh
bGlzZWQgdG8gMCwganVzdCBpbiBjYXNlLgoKRml4ZXM6IGE5ODc3ZGEyZDYyOSAoImRybS9pOTE1
L29hOiBSZWNvbmZpZ3VyZSBjb250ZXh0cyBvbiB0aGUgZmx5IikKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jCmluZGV4IDc5YmU5ZDhlYTYyOC4uYTI5NGMwZjUzNjI1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYwpAQCAtMTg3NSw2ICsxODc1LDcgQEAgc3RhdGljIGludCBnZW44X2NvbmZp
Z3VyZV9hbGxfY29udGV4dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWlmIChj
dHggPT0gaTkxNS0+a2VybmVsX2NvbnRleHQpCiAJCQljb250aW51ZTsKIAorCQllcnIgPSAwOwog
CQlmb3JfZWFjaF9nZW1fZW5naW5lKGNlLAogCQkJCSAgICBpOTE1X2dlbV9jb250ZXh0X2xvY2tf
ZW5naW5lcyhjdHgpLAogCQkJCSAgICBpdCkgewotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
