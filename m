Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3620795E42
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 14:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D552A6E395;
	Tue, 20 Aug 2019 12:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F043F6E317;
 Tue, 20 Aug 2019 12:21:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18201640-1500050 
 for multiple; Tue, 20 Aug 2019 13:21:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Tue, 20 Aug 2019 13:21:18 +0100
Message-Id: <20190820122118.13698-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dmabuf: Mark up onstack timer for selftests
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRtYS1mZW5jZSBzZWxmdGVzdCB1c2VzIGFuIG9uLXN0YWNrIHRpbWVyIHRoYXQgcmVxdWly
ZXMgZXhwbGljaXQKYW5ub3RhdGlvbiBmb3IgZGVidWdvYmplY3RzLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVu
Y2UuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jCmluZGV4IDZmYmFlNmJmNjU3Ni4uZTU5MzA2NDM0MWM4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMKKysrIGIvZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jCkBAIC0zNzMsNyArMzczLDcgQEAgc3RhdGljIGludCB0
ZXN0X3dhaXRfdGltZW91dCh2b2lkICphcmcpCiAJc3RydWN0IHdhaXRfdGltZXIgd3Q7CiAJaW50
IGVyciA9IC1FSU5WQUw7CiAKLQl0aW1lcl9zZXR1cCgmd3QudGltZXIsIHdhaXRfdGltZXIsIDAp
OworCXRpbWVyX3NldHVwX29uX3N0YWNrKCZ3dC50aW1lciwgd2FpdF90aW1lciwgMCk7CiAKIAl3
dC5mID0gbW9ja19mZW5jZSgpOwogCWlmICghd3QuZikKQEAgLTM5OSw2ICszOTksNyBAQCBzdGF0
aWMgaW50IHRlc3Rfd2FpdF90aW1lb3V0KHZvaWQgKmFyZykKIAllcnIgPSAwOwogZXJyX2ZyZWU6
CiAJZGVsX3RpbWVyX3N5bmMoJnd0LnRpbWVyKTsKKwlkZXN0cm95X3RpbWVyX29uX3N0YWNrKCZ3
dC50aW1lcik7CiAJZG1hX2ZlbmNlX3NpZ25hbCh3dC5mKTsKIAlkbWFfZmVuY2VfcHV0KHd0LmYp
OwogCXJldHVybiBlcnI7Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
