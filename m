Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FCA94B85
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 19:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4386E255;
	Mon, 19 Aug 2019 17:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BB26E252;
 Mon, 19 Aug 2019 17:19:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18192631-1500050 
 for multiple; Mon, 19 Aug 2019 18:19:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 18:19:00 +0100
Message-Id: <20190819171900.4501-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Select DMABUF_SELFTESTS for the
 default i915.ko debug build
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5jbHVkZSB0aGUgRE1BQlVGX1NFTEZURVNUUyBhcyBwYXJ0IG9mIHRoZSBzdGFuZGFyZCBidWls
ZCBmb3IgSUdULCBzbwp0aGF0IHRoZXkgY2FuIGJlIHJ1biBieSBpZ3QvZG1hYnVmCgpUZXN0Y2Fz
ZTogaWd0L2RtYWJ1ZgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tj
b25maWcuZGVidWcgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCmluZGV4IDg3
YTM4YzZhYWE0MS4uMDA3ODZhMTQyZmYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9LY29uZmlnLmRlYnVnCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcK
QEAgLTMwLDYgKzMwLDcgQEAgY29uZmlnIERSTV9JOTE1X0RFQlVHCiAgICAgICAgIHNlbGVjdCBE
Uk1fVkdFTSAjIHVzZWQgYnkgaWd0L3ByaW1lX3ZnZW0gKGRtYWJ1ZiBpbnRlcm9wIGNoZWNrcykK
ICAgICAgICAgc2VsZWN0IERSTV9ERUJVR19NTSBpZiBEUk09eQogCXNlbGVjdCBEUk1fREVCVUdf
U0VMRlRFU1QKKwlzZWxlY3QgRE1BQlVGX1NFTEZURVNUUwogCXNlbGVjdCBTV19TWU5DICMgc2ln
bmFsaW5nIHZhbGlkYXRpb24gZnJhbWV3b3JrIChpZ3Qvc3luY29iaiopCiAJc2VsZWN0IERSTV9J
OTE1X1NXX0ZFTkNFX0RFQlVHX09CSkVDVFMKIAlzZWxlY3QgRFJNX0k5MTVfU0VMRlRFU1QKLS0g
CjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
