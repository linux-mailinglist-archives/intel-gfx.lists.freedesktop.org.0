Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130C097CB2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015546E408;
	Wed, 21 Aug 2019 14:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CAB6E408
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:23:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18215263-1500050 
 for multiple; Wed, 21 Aug 2019 15:23:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 15:23:36 +0100
Message-Id: <20190821142336.21609-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Set priority hint prior to
 submission
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

U2luY2Ugd2Ugbm93IHJ1biBwcm9jZXNzX2NzYigpIG91dHNpZGUgb2YgdGhlIGVuZ2luZS0+YWN0
aXZlLmxvY2ssIHdlCmNhbiBwcm9jZXNzIGEgQ1MtZXZlbnQgaW1tZWRpYXRlbHkgdXBvbiBvdXIg
RUxTUCB3cml0ZS4gQXMgd2UgY3VycmVudGx5Cmluc3BlY3QgdGhlIHBlbmRpbmcgcXVldWUgKmFm
dGVyKiB0aGUgRUxTUCB3cml0ZSwgdGhlcmUgaXMgYW4Kb3Bwb3J0dW5pdHkgZm9yIGEgQ1MtZXZl
bnQgdG8gdXBkYXRlIHRoZSBwZW5kaW5nIHF1ZXVlIGJlZm9yZSB3ZSBjYW4KcmVhZCBpdCwgbWFr
aW5nIG91cnNlbHZlcyBjaGFzZXMgYW4gaW52YWxpZCBwb2ludGVyLgoKRml4ZXM6IGRmNDAzMDY5
MDI5ZCAoImRybS9pOTE1L2V4ZWNsaXN0czogTGlmdCBwcm9jZXNzX2NzYigpIG91dCBvZiB0aGUg
aXJxLW9mZiBzcGlubG9jayIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDQ0NzgwZTdmYWZlYy4uZDQyNTg0NDM5ZjUxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTMzNSw5ICsxMzM1LDkgQEAgc3Rh
dGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogCWlmIChzdWJtaXQpIHsKIAkJKnBvcnQgPSBleGVjbGlzdHNfc2NoZWR1bGVfaW4obGFzdCwg
cG9ydCAtIGV4ZWNsaXN0cy0+cGVuZGluZyk7CiAJCW1lbXNldChwb3J0ICsgMSwgMCwgKGxhc3Rf
cG9ydCAtIHBvcnQpICogc2l6ZW9mKCpwb3J0KSk7Ci0JCWV4ZWNsaXN0c19zdWJtaXRfcG9ydHMo
ZW5naW5lKTsKIAkJZXhlY2xpc3RzLT5zd2l0Y2hfcHJpb3JpdHlfaGludCA9CiAJCQlzd2l0Y2hf
cHJpbyhlbmdpbmUsICpleGVjbGlzdHMtPnBlbmRpbmcpOworCQlleGVjbGlzdHNfc3VibWl0X3Bv
cnRzKGVuZ2luZSk7CiAJfSBlbHNlIHsKIAkJcmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7CiAJ
fQotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
