Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CE610797
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110DE892BD;
	Wed,  1 May 2019 11:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C70890BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 11:45:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16415733-1500050 
 for multiple; Wed, 01 May 2019 12:45:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 12:45:30 +0100
Message-Id: <20190501114541.10077-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/14] drm/i915/execlists: Flush the tasklet on
 parking
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

VGlkeSB1cCB0aGUgY2xlYW51cCBzZXF1ZW5jZSBieSBhbHdheXMgZW5zdXJlIHRoYXQgdGhlIHRh
c2tsZXQgaXMKZmx1c2hlZCBvbiBwYXJraW5nIChiZWZvcmUgd2UgY2xlYW51cCkuIFRoZSBwYXJr
aW5nIHByb3ZpZGVzIGEKY29udmVuaWVudCBwb2ludCB0byBlbnN1cmUgdGhhdCB0aGUgYmFja2Vu
ZCBpcyB0cnVseSBpZGxlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
ICAgICAgICB8IDcgKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1p
c3Npb24uYyB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDg1MWU2MmRkY2I4Ny4u
N2JlNTRiODY4ZDhlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjMzMSw2
ICsyMzMxLDExIEBAIHN0YXRpYyBpbnQgZ2VuOF9pbml0X3Jjc19jb250ZXh0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQogCXJldHVybiBpOTE1X2dlbV9yZW5kZXJfc3RhdGVfZW1pdChycSk7CiB9
CiAKK3N0YXRpYyB2b2lkIGV4ZWNsaXN0c19wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKK3sKKwl0YXNrbGV0X2tpbGwoJmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOworfQor
CiB2b2lkIGludGVsX2V4ZWNsaXN0c19zZXRfZGVmYXVsdF9zdWJtaXNzaW9uKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAllbmdpbmUtPnN1Ym1pdF9yZXF1ZXN0ID0gZXhlY2xp
c3RzX3N1Ym1pdF9yZXF1ZXN0OwpAQCAtMjM0Miw3ICsyMzQ3LDcgQEAgdm9pZCBpbnRlbF9leGVj
bGlzdHNfc2V0X2RlZmF1bHRfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiAJZW5naW5lLT5yZXNldC5yZXNldCA9IGV4ZWNsaXN0c19yZXNldDsKIAllbmdpbmUtPnJl
c2V0LmZpbmlzaCA9IGV4ZWNsaXN0c19yZXNldF9maW5pc2g7CiAKLQllbmdpbmUtPnBhcmsgPSBO
VUxMOworCWVuZ2luZS0+cGFyayA9IGV4ZWNsaXN0c19wYXJrOwogCWVuZ2luZS0+dW5wYXJrID0g
TlVMTDsKIAogCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfU1VQUE9SVFNfU1RBVFM7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwppbmRleCA0YzgxNDM0
NDgwOWMuLmVkOTQwMDEwMjhmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZ3VjX3N1Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNf
c3VibWlzc2lvbi5jCkBAIC0xMzYzLDYgKzEzNjMsNyBAQCBzdGF0aWMgdm9pZCBndWNfaW50ZXJy
dXB0c19yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogc3RhdGlj
IHZvaWQgZ3VjX3N1Ym1pc3Npb25fcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
CiB7CisJdGFza2xldF9raWxsKCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKIAlpbnRlbF9l
bmdpbmVfdW5waW5fYnJlYWRjcnVtYnNfaXJxKGVuZ2luZSk7CiAJZW5naW5lLT5mbGFncyAmPSB+
STkxNV9FTkdJTkVfTkVFRFNfQlJFQURDUlVNQl9UQVNLTEVUOwogfQotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
