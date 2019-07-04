Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0147F5FB99
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 18:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224E06E382;
	Thu,  4 Jul 2019 16:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43566E37C;
 Thu,  4 Jul 2019 16:15:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17131819-1500050 
 for multiple; Thu, 04 Jul 2019 17:15:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 17:15:48 +0100
Message-Id: <20190704161550.15109-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] uapi/i915: Sync to bf73fc0fa9cf
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVsbCBpbiBpOTE1X2RybS5oIHVwIHRvIGNvbW1pdCBiZjczZmMwZmE5Y2YgKCJkcm0vaTkxNTog
U2hvdyBzdXBwb3J0IGZvcgphY2N1cmF0ZSBzdyBQTVUgYnVzeW5lc3MgdHJhY2tpbmciKSBmb3Ig
dGhlIG5ldyBjYXAgYml0cy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIGluY2x1ZGUvZHJtLXVhcGkvaTkxNV9kcm0uaCB8IDEgKwog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0t
dWFwaS9pOTE1X2RybS5oIGIvaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2RybS5oCmluZGV4IDc2MTUx
N2YxNS4uYzRkNTIxMDJlIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS11YXBpL2k5MTVfZHJtLmgK
KysrIGIvaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2RybS5oCkBAIC01MjEsNiArNTIxLDcgQEAgdHlw
ZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfaXJxX3dhaXQgewogI2RlZmluZSAgIEk5MTVfU0NIRURVTEVS
X0NBUF9QUklPUklUWQkoMXVsIDw8IDEpCiAjZGVmaW5lICAgSTkxNV9TQ0hFRFVMRVJfQ0FQX1BS
RUVNUFRJT04JKDF1bCA8PCAyKQogI2RlZmluZSAgIEk5MTVfU0NIRURVTEVSX0NBUF9TRU1BUEhP
UkVTCSgxdWwgPDwgMykKKyNkZWZpbmUgICBJOTE1X1NDSEVEVUxFUl9DQVBfRU5HSU5FX0JVU1lf
U1RBVFMJKDF1bCA8PCA0KQogCiAjZGVmaW5lIEk5MTVfUEFSQU1fSFVDX1NUQVRVUwkJIDQyCiAK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
