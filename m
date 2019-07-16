Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7046A8EB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 14:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458806E116;
	Tue, 16 Jul 2019 12:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B0F6E116
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 12:49:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17342694-1500050 
 for multiple; Tue, 16 Jul 2019 13:49:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jul 2019 13:49:29 +0100
Message-Id: <20190716124931.5870-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716124931.5870-1-chris@chris-wilson.co.uk>
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/execlists: Process interrupted
 context on reset
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

Qnkgc3RvcHBpbmcgdGhlIHJpbmdzLCB3ZSBtYXkgdHJpZ2dlciBhbiBhcmJpdHJhdGlvbiBwb2lu
dCByZXN1bHRpbmcgaW4KYSBwcmVtYXR1cmUgY29udGV4dC1zd2l0Y2ggKGkuZS4gYSBjb21wbGV0
aW9uIGV2ZW50IGJlZm9yZSB0aGUgcmVxdWVzdAppcyBhY3R1YWxseSBjb21wbGV0ZSkuIFRoaXMg
Y2xlYXJzIHRoZSBhY3RpdmUgY29udGV4dCBiZWZvcmUgdGhlIHJlc2V0LApidXQgd2UgbXVzdCBy
ZW1lbWJlciB0byByZXdpbmQgdGhlIGluY29tcGxldGUgY29udGV4dCBmb3IgcmVwbGF5IHVwb24K
cmVzdW1lLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA2ICsrKyst
LQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDliODdhMmZjMTg2Yy4uNzU3MGE5MjU2MDAx
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTQxOSw3ICsxNDE5LDggQEAg
c3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQog
CQkJICogY29oZXJlbnQgKHZpc2libGUgZnJvbSB0aGUgQ1BVKSBiZWZvcmUgdGhlCiAJCQkgKiB1
c2VyIGludGVycnVwdCBhbmQgQ1NCIGlzIHByb2Nlc3NlZC4KIAkJCSAqLwotCQkJR0VNX0JVR19P
TighaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZCgqZXhlY2xpc3RzLT5hY3RpdmUpKTsKKwkJCUdFTV9C
VUdfT04oIWk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoKmV4ZWNsaXN0cy0+YWN0aXZlKSAmJgorCQkJ
CSAgICFyZXNldF9pbl9wcm9ncmVzcyhleGVjbGlzdHMpKTsKIAkJCWV4ZWNsaXN0c19zY2hlZHVs
ZV9vdXQoKmV4ZWNsaXN0cy0+YWN0aXZlKyspOwogCiAJCQlHRU1fQlVHX09OKGV4ZWNsaXN0cy0+
YWN0aXZlIC0gZXhlY2xpc3RzLT5pbmZsaWdodCA+CkBAIC0yMjU0LDcgKzIyNTUsNyBAQCBzdGF0
aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
IGJvb2wgc3RhbGxlZCkKIAkgKi8KIAlycSA9IGV4ZWNsaXN0c19hY3RpdmUoZXhlY2xpc3RzKTsK
IAlpZiAoIXJxKQotCQlyZXR1cm47CisJCWdvdG8gdW53aW5kOwogCiAJY2UgPSBycS0+aHdfY29u
dGV4dDsKIAlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUoJmNlLT5hY3RpdmUpKTsKQEAg
LTIzMzEsNiArMjMzMiw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogCWludGVsX3JpbmdfdXBkYXRl
X3NwYWNlKGNlLT5yaW5nKTsKIAlfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRlKGNlLCBlbmdp
bmUpOwogCit1bndpbmQ6CiAJLyogUHVzaCBiYWNrIGFueSBpbmNvbXBsZXRlIHJlcXVlc3RzIGZv
ciByZXBsYXkgYWZ0ZXIgdGhlIHJlc2V0LiAqLwogCV9fdW53aW5kX2luY29tcGxldGVfcmVxdWVz
dHMoZW5naW5lKTsKIH0KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
