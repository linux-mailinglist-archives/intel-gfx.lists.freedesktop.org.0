Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F36310C56A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 09:48:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A4D6E787;
	Thu, 28 Nov 2019 08:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D24036E787
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 08:48:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19371080-1500050 
 for multiple; Thu, 28 Nov 2019 08:48:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 08:48:30 +0000
Message-Id: <20191128084830.3782532-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127223252.3777141-2-chris@chris-wilson.co.uk>
References: <20191127223252.3777141-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Flush fput after running
 selftests
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

VXNlIGFuIHJjdV9iYXJyaWVyKCkgdG8gZmx1c2ggYW55IG1vY2sgZmlsZXMgdXNlZCBieSB0aGUg
c2VsZnRlc3RzIGFzCnRoZSBkZWZlcnJlZCBjbGVhbnVwIG1heSBiZSBob2xkaW5nIHJlc291cmNl
cyB0aGF0IHdlIG5lZWQgdG8gY2xlYW51cC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMgfCAxMCArKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5jCmluZGV4IGQzYmY5ZWVmYjY4Mi4uZTNhODExMGQ3OWJh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVz
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMK
QEAgLTE1Miw4ICsxNTIsMTAgQEAgc3RhdGljIGludCBfX3J1bl9zZWxmdGVzdHMoY29uc3QgY2hh
ciAqbmFtZSwKIAkJCWNvbnRpbnVlOwogCiAJCWNvbmRfcmVzY2hlZCgpOwotCQlpZiAoc2lnbmFs
X3BlbmRpbmcoY3VycmVudCkpCi0JCQlyZXR1cm4gLUVJTlRSOworCQlpZiAoc2lnbmFsX3BlbmRp
bmcoY3VycmVudCkpIHsKKwkJCWVyciA9IC1FSU5UUjsKKwkJCWdvdG8gb3V0OworCQl9CiAKIAkJ
cHJfaW5mbyhEUklWRVJfTkFNRSAiOiBSdW5uaW5nICVzXG4iLCBzdC0+bmFtZSk7CiAJCWlmIChk
YXRhKQpAQCAtMTcxLDYgKzE3MywxMCBAQCBzdGF0aWMgaW50IF9fcnVuX3NlbGZ0ZXN0cyhjb25z
dCBjaGFyICpuYW1lLAogCQkgc3QtPm5hbWUsIGVycikpCiAJCWVyciA9IC0xOwogCitvdXQ6CisJ
cmN1X2JhcnJpZXIoKTsgLyogZmx1c2ggZGVmZXJyZWQgZnB1dCgpICovCisJeWllbGQoKTsKKwly
Y3VfYmFycmllcigpOyAvKiBhbmQgb25jZSBtb3JlIGZvciBhbnl0aGluZyBmcmVlZCBmcm9tIHRo
ZSBmaWxlcyAqLwogCXJldHVybiBlcnI7CiB9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
