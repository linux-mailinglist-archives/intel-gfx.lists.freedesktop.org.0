Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8386888460
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 23:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7086EE9B;
	Fri,  9 Aug 2019 21:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA336EE9A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 21:01:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17948010-1500050 
 for multiple; Fri, 09 Aug 2019 22:01:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 22:01:42 +0100
Message-Id: <20190809210142.30619-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190809210142.30619-1-chris@chris-wilson.co.uk>
References: <20190809210142.30619-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Keep the engine awake until
 the tasklet is idle
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

Rm9yIHRoZSBndWMsIHdlIG5lZWQgdG8ga2VlcCB0aGUgZW5naW5lIGF3YWtlIChhbmQgbm90IHBh
cmtlZCkgYW5kIG5vdApqdXN0IHRoZSBndC4gSWYgd2UgbGV0IHRoZSBlbmdpbmUgcGFyaywgd2Ug
ZGlzYWJsZSB0aGUgaXJxIGFuZCBzdG9wCnByb2Nlc3NpbmcgdGhlIHRhc2tsZXQsIGxlYXZpbmcg
c3RhdGUgb3V0c3RhbmRpbmcgaW5zaWRlIHRoZSB0YXNrbGV0LgoKUmVwb3J0ZWQtYnk6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9u
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCmlu
ZGV4IDhiODM3NTBjZjk2Yy4uNTc3ZGU4NjM5YzgzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKQEAgLTUzOSw3ICs1MzksNyBAQCBz
dGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAqc2NoZWR1bGVfaW4oc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsIGludCBpZHgpCiAJaWYgKCFycS0+aHdfY29udGV4dC0+aW5mbGlnaHQpCiAJCXJxLT5o
d19jb250ZXh0LT5pbmZsaWdodCA9IHJxLT5lbmdpbmU7CiAJaW50ZWxfY29udGV4dF9pbmZsaWdo
dF9pbmMocnEtPmh3X2NvbnRleHQpOwotCWludGVsX2d0X3BtX2dldChycS0+ZW5naW5lLT5ndCk7
CisJaW50ZWxfZW5naW5lX3BtX2dldChycS0+ZW5naW5lKTsKIAogCXJldHVybiBpOTE1X3JlcXVl
c3RfZ2V0KHJxKTsKIH0KQEAgLTU1Miw3ICs1NTIsNyBAQCBzdGF0aWMgdm9pZCBzY2hlZHVsZV9v
dXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJaWYgKCFpbnRlbF9jb250ZXh0X2luZmxpZ2h0
X2NvdW50KHJxLT5od19jb250ZXh0KSkKIAkJcnEtPmh3X2NvbnRleHQtPmluZmxpZ2h0ID0gTlVM
TDsKIAotCWludGVsX2d0X3BtX3B1dChycS0+ZW5naW5lLT5ndCk7CisJaW50ZWxfZW5naW5lX3Bt
X3B1dChycS0+ZW5naW5lKTsKIAlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKIH0KIAotLSAKMi4yMy4w
LnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
