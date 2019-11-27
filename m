Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2EE10C039
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 23:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7C189852;
	Wed, 27 Nov 2019 22:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D1C8984E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:32:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19367753-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:32:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:32:51 +0000
Message-Id: <20191127223252.3777141-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127223252.3777141-1-chris@chris-wilson.co.uk>
References: <20191127223252.3777141-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/selftests: Flush fput after running
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
ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMgfCA4ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9zZWxmdGVzdC5jCmluZGV4IGQzYmY5ZWVmYjY4Mi4uMDM2ZTMwYjhiNjJkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMKQEAg
LTE1Miw4ICsxNTIsMTAgQEAgc3RhdGljIGludCBfX3J1bl9zZWxmdGVzdHMoY29uc3QgY2hhciAq
bmFtZSwKIAkJCWNvbnRpbnVlOwogCiAJCWNvbmRfcmVzY2hlZCgpOwotCQlpZiAoc2lnbmFsX3Bl
bmRpbmcoY3VycmVudCkpCi0JCQlyZXR1cm4gLUVJTlRSOworCQlpZiAoc2lnbmFsX3BlbmRpbmco
Y3VycmVudCkpIHsKKwkJCWVyciA9IC1FSU5UUjsKKwkJCWdvdG8gb3V0OworCQl9CiAKIAkJcHJf
aW5mbyhEUklWRVJfTkFNRSAiOiBSdW5uaW5nICVzXG4iLCBzdC0+bmFtZSk7CiAJCWlmIChkYXRh
KQpAQCAtMTcxLDYgKzE3Myw4IEBAIHN0YXRpYyBpbnQgX19ydW5fc2VsZnRlc3RzKGNvbnN0IGNo
YXIgKm5hbWUsCiAJCSBzdC0+bmFtZSwgZXJyKSkKIAkJZXJyID0gLTE7CiAKK291dDoKKwlyY3Vf
YmFycmllcigpOyAvKiBmbHVzaCBkZWZlcnJlZCBmcHV0KCkgKi8KIAlyZXR1cm4gZXJyOwogfQog
Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
