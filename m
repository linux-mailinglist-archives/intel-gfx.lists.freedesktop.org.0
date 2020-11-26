Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D68C2C5282
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 11:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAF06E88D;
	Thu, 26 Nov 2020 10:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8ED56E88D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 10:55:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23115059-1500050 
 for multiple; Thu, 26 Nov 2020 10:55:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 10:55:39 +0000
Message-Id: <20201126105539.2661-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Program mocs:63 for cache eviction
 on gen9
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VmlsbGUgbm90aWNlZCB0aGF0IHRoZSBsYXN0IG1vY3MgZW50cnkgaXMgdXNlZCB1bmNvbmRpdGlv
bmFsbHkgYnkgdGhlIEhXCndoZW4gaXQgcGVyZm9ybXMgY2FjaGUgZXZpY3Rpb25zLCBhbmQgbm90
ZWQgdGhhdCB3aGlsZSB0aGUgdmFsdWUgaXMgbm90Cm1lYW50IHRvIGJlIHdyaXRhYmxlIGJ5IHRo
ZSBkcml2ZXIsIHdlIHNob3VsZCBwcm9ncmFtIGl0IHRvIGEgcmVhc29uYWJsZQp2YWx1ZSBuZXZl
cnRoZWxlc3MuCgpBcyBpdCB0dXJucyBvdXQsIHdlIGNhbiBjaGFuZ2UgdGhlIHZhbHVlIG9mIG1v
Y3M6NjMgYW5kIHRoZSB2YWx1ZSB3ZQp3ZXJlIHByb2dyYW1taW5nIGludG8gaXQgd291bGQgY2F1
c2UgaGFyZCBoYW5ncyBpbiBjb25qdW5jdGlvbiB3aXRoCmF0b21pYyBvcGVyYXRpb25zLgoKU3Vn
Z2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1
ZXMvMjcwNwpGaXhlczogM2JiYWJhMGNlYWEyICgiZHJtL2k5MTU6IEFkZGVkIFByb2dyYW1taW5n
IG9mIHRoZSBNT0NTIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgpDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgpDYzogPHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjQuMysKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCmluZGV4IDI1
NDg3M2UxNjQ2ZS4uNmFlNTEyODQ3ZjY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5jCkBAIC0xMzEsNyArMTMxLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9j
c19lbnRyeSBza2xfbW9jc190YWJsZVtdID0gewogCUdFTjlfTU9DU19FTlRSSUVTLAogCU1PQ1Nf
RU5UUlkoSTkxNV9NT0NTX0NBQ0hFRCwKIAkJICAgTEVfM19XQiB8IExFX1RDXzJfTExDX0VMTEMg
fCBMRV9MUlVNKDMpLAotCQkgICBMM18zX1dCKQorCQkgICBMM18zX1dCKSwKKwlNT0NTX0VOVFJZ
KDYzLAorCQkgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDMpLAorCQkgICBMM18x
X1VDKQogfTsKIAogLyogTk9URTogdGhlIExFX1RHVF9DQUNIRSBpcyBub3QgdXNlZCBvbiBCcm94
dG9uICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
