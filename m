Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AE02D6AE4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 00:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250176E4E3;
	Thu, 10 Dec 2020 23:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751346E4E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 23:08:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23286970-1500050 
 for multiple; Thu, 10 Dec 2020 23:07:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 23:07:41 +0000
Message-Id: <20201210230741.17140-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Go softly softly on initial
 modeset failure
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
Cc: "H . J . Lu" <hjl.tools@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVkdWNlIHRoZSBtb2R1bGUvZGV2aWNlIHByb2JlIGVycm9yIGludG8gYSBtZXJlIGRlYnVnIHRv
IGhpZGUgaXNzdWVzCndoZXJlIHRoZSBpbml0aWFsIG1vZGVzZXQgaXMgZmFpbGluZyAoYWZ0ZXIg
bGllcyB0b2xkIGJ5IGh3IHByb2JlKSBhbmQKdGhlIHN5c3RlbSBoYW5ncyB3aXRoIGEgbGl2ZWxv
Y2sgaW4gY2xlYW5pbmcgdXAgdGhlIGZhaWxlZCBjb21taXQuCgpSZXBvcnRlZC1ieTogSC5KLiBM
dSA8aGpsLnRvb2xzQGdtYWlsLmNvbT4KQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVs
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjEwNjE5CkZpeGVzOiBiM2JmOTlkYWFlZTkgKCJkcm0vaTkx
NS9kaXNwbGF5OiBEZWZlciBpbml0aWFsIG1vZGVzZXQgdW50aWwgYWZ0ZXIgR0dUVCBpcyBpbml0
aWFsaXNlZCIpCkZpeGVzOiBjY2M5ZTY3YWIyNmYgKCJkcm0vaTkxNS9kaXNwbGF5OiBEZWZlciBp
bml0aWFsIG1vZGVzZXQgdW50aWwgYWZ0ZXIgR0dUVCBpcyBpbml0aWFsaXNlZCIpClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogIlZpbGxl
IFN5cmrDpGzDpCIgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogSC5KLiBMdSA8aGpsLnRvb2xzQGdtYWls
LmNvbT4KQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGM1NjdjMGNhZGE3ZS4uNzYxYmU4ZGVhYTli
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MTg3NTUsNyArMTg3NTUsNyBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogCSAqLwogCXJldCA9IGludGVsX2luaXRpYWxfY29tbWl0KCZpOTE1
LT5kcm0pOwogCWlmIChyZXQpCi0JCXJldHVybiByZXQ7CisJCWRybV9kYmdfa21zKCZpOTE1LT5k
cm0sICJJbml0aWFsIG1vZGVzZXQgZmFpbGVkLCAlZFxuIiwgcmV0KTsKIAogCWludGVsX292ZXJs
YXlfc2V0dXAoaTkxNSk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
