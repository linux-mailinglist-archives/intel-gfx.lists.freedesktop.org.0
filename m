Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F854A6A6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3E06E1E8;
	Tue, 18 Jun 2019 16:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D116E183
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:20:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16943323-1500050 
 for multiple; Tue, 18 Jun 2019 17:19:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 17:19:50 +0100
Message-Id: <20190618161951.28820-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Flush live_evict
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

QmUgc3VyZSB0byBjbGVhbnVwIGFmdGVyIGxpdmVfZXZpY3QgYnkgZmx1c2hpbmcgYW55IHJlc2lk
dWFsIHN0YXRlIG9mZgp0aGUgR1BVIHVzaW5nIGlndF9mbHVzaF90ZXN0LgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgfCAzICsrKwogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfZ2VtX2V2aWN0LmMKaW5kZXggOGM2OTE5OGM3ZTRlLi5hM2NiMGFhZGU2ZjEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5jCkBA
IC0yOCw2ICsyOCw3IEBACiAKICNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCiAKKyNpbmNsdWRl
ICJpZ3RfZmx1c2hfdGVzdC5oIgogI2luY2x1ZGUgImxpYl9zd19mZW5jZS5oIgogI2luY2x1ZGUg
Im1vY2tfZHJtLmgiCiAjaW5jbHVkZSAibW9ja19nZW1fZGV2aWNlLmgiCkBAIC01MDUsNiArNTA2
LDggQEAgc3RhdGljIGludCBpZ3RfZXZpY3RfY29udGV4dHModm9pZCAqYXJnKQogCiAJbXV0ZXhf
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiBvdXRfbG9ja2VkOgorCWlmIChpZ3RfZmx1
c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VEKSkKKwkJZXJyID0gLUVJTzsKIAl3aGlsZSAo
cmVzZXJ2ZWQpIHsKIAkJc3RydWN0IHJlc2VydmVkICpuZXh0ID0gcmVzZXJ2ZWQtPm5leHQ7CiAK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
