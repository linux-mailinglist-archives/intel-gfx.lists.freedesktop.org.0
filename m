Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591EFE559D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 23:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576056EB0A;
	Fri, 25 Oct 2019 21:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4846EB0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 21:06:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18969274-1500050 
 for multiple; Fri, 25 Oct 2019 22:05:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 22:05:46 +0100
Message-Id: <20191025210546.27511-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Limit the blitter sizes to ensure
 low preemption latency
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHdlIGluc2VydCBhIGFyYml0cmF0aW9uIHBvaW50IGV2ZXJ5IDEyOE1pQiBkdXJp
bmcgYSBibGl0dGVyCmNvcHkuIEF0IDhHaUIvcywgdGhpcyBpcyBhcm91bmQgMzBtcy4gVGhpcyBp
cyBhIGxpdHRsZSBvbiB0aGUgbGFyZ2Ugc2lkZQppZiB3ZSBuZWVkIHRvIGluamVjdCBhIGhpZ2gg
cHJpb3JpdHkgd29yaywgc28gcmVkdWNlZCBpdCBkb3duIHRvIDhNaUIgb3IKcm91Z2hseSAxbXMu
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCk9rLCBJIG5lZWQg
dG8gZG8gYSBzZWxmdGVzdCB0byBlbnN1cmUgd2UgYXJlIGV4Y2VlZGluZyB0aGUgZXN0aW1hdGVk
CmJsaXR0ZXIgdGhyb3VnaHRwdXQsIGFuZCBJIHdvdWxkIGFsc28gbGlrZSBhIHRlc3QgdG8gbWVh
c3VyZSB0aGUKcHJlZW1wdGlvbiBsYXRlbmN5IGRpcmVjdGx5LiBSZW1pbmQgbWUhCi0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCmluZGV4IDUxNmU2MWU5OTIxMi4u
N2UyNWYwNTkzOWJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X2JsdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfYmx0LmMKQEAgLTE3LDcgKzE3LDcgQEAgc3RydWN0IGk5MTVfdm1hICppbnRlbF9lbWl0
X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCQkJCSB1MzIgdmFsdWUp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjZS0+dm0tPmk5MTU7Ci0JY29u
c3QgdTMyIGJsb2NrX3NpemUgPSBTMTZfTUFYICogUEFHRV9TSVpFOworCWNvbnN0IHUzMiBibG9j
a19zaXplID0gU1pfOE07IC8qIH4xbXMgYXQgOEdpQi9zIHByZWVtcHRpb24gZGVsYXkgKi8KIAlz
dHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsKIAlzdHJ1Y3QgaTkxNV92bWEgKmJh
dGNoOwogCXU2NCBvZmZzZXQ7Ci0tIAoyLjI0LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
