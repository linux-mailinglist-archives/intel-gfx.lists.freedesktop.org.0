Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D833FEC81A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 18:44:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDFB6E512;
	Fri,  1 Nov 2019 17:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B35E6E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 17:44:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19051060-1500050 
 for multiple; Fri, 01 Nov 2019 17:44:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 17:44:05 +0000
Message-Id: <20191101174405.7389-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Add intel_gt_suspend_prepare
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

Q2FsbCBzdXNwZW5kX3ByZXBhcmUgZmlyc3Qgc28gdGhhdCB3ZSBkb24ndCBsZWF2ZSBHdUMgc28g
Y29uZnVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jIHwg
MSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfZ3RfcG0uYwppbmRleCAzZDRlNmEwMDhhZjguLmQxNzUyZjE1NzAyYSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3RfcG0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCkBAIC0xNSw2ICsxNSw3IEBA
IHN0YXRpYyBpbnQgbGl2ZV9ndF9yZXN1bWUodm9pZCAqYXJnKQogCiAJLyogRG8gc2V2ZXJhbCBz
dXNwZW5kL3Jlc3VtZSBjeWNsZXMgdG8gY2hlY2sgd2UgZG9uJ3QgZXhwbG9kZSEgKi8KIAlkbyB7
CisJCWludGVsX2d0X3N1c3BlbmRfcHJlcGFyZShndCk7CiAJCWludGVsX2d0X3N1c3BlbmRfbGF0
ZShndCk7CiAKIAkJaWYgKGd0LT5yYzYuZW5hYmxlZCkgewotLSAKMi4yNC4wLnJjMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
