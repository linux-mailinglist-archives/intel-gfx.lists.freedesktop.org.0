Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B16910AF23
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 12:58:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D735D6E0F6;
	Wed, 27 Nov 2019 11:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36086E0F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 11:58:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19357522-1500050 
 for multiple; Wed, 27 Nov 2019 11:58:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 11:58:13 +0000
Message-Id: <20191127115813.3345823-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Defer breadcrumb processing to
 after the irq handler
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

VGhlIGRlc2lnbiBvZiBvdXIgaW50ZXJydXB0IGhhbmRsZXJzIGlzIHRoYXQgd2UgYWNrIHRoZSBy
ZWNlaXB0IG9mIHRoZQppbnRlcnJ1cHQgZmlyc3QsIGluc2lkZSB0aGUgY3JpdGljYWwgc2VjdGlv
biB3aGVyZSB0aGUgbWFzdGVyIGludGVycnVwdApjb250cm9sIGlzIG9mZiBhbmQgb3RoZXIgY3B1
cyBjYW5ub3Qgc3RhcnQgcHJvY2Vzc2luZyB0aGUgbmV4dAppbnRlcnJ1cHQ7IGFuZCB0aGVuIHBy
b2Nlc3MgdGhlIGludGVycnVwdCBldmVudHMgYWZ0ZXJ3YXJkcy4gSG93ZXZlciwKSWNlbGFrZSBp
bnRyb2R1Y2VkIGEgd2hvbGUgbmV3IHNldCBvZiBiYW5rZWQgR1RfSUlSIHRoYXQgYXJlIGluaGVy
ZW50bHkKc2VyaWFsaXNlZCBhbmQgc2xvdyB0byByZXRyaWV2ZSB0aGUgSUlSIGFuZCBtdXN0IGJl
IHByb2Nlc3NlZCB3aXRoaW4gdGhlCmNyaXRpY2FsIHNlY3Rpb24uIFdlIGNhbiBzdGlsbCBwdXNo
IG91ciBicmVhZGNydW1icyBvdXQgb2YgdGhpcyBjcml0aWNhbApzZWN0aW9uIGJ5IHVzaW5nIG91
ciBpcnFfd29ya2VyLiBPbiBiZHcrLCB0aGlzIHNob3VsZCBub3QgbWFrZSB0b28gbXVjaApvZiBh
IGRpZmZlcmVuY2UgYXMgd2Ugb25seSBzbGlnaHRseSBkZWZlciB0aGUgYnJlYWRjcnVtYnMsIGJ1
dCBvbiBpY2wrCnRoaXMgc2hvdWxkIG1ha2UgYSBiaWcgZGlmZmVyZW5jZSB0byBvdXIgdGhyb3Vn
aHB1dCBvZiBpbnRlcnJ1cHRzIGZyb20KY29uY3VycmVudGx5IGV4ZWN1dGluZyBlbmdpbmVzLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X2lycS5jCmluZGV4IDk3M2VlN2VkZWQ2NC4uMzMyYjEyYTU3NGZiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYwpAQCAtMjgsNyArMjgsNyBAQCBjc19p
cnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHUzMiBpaXIpCiAJCXRh
c2tsZXQgPSB0cnVlOwogCiAJaWYgKGlpciAmIEdUX1JFTkRFUl9VU0VSX0lOVEVSUlVQVCkgewot
CQlpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxKGVuZ2luZSk7CisJCWludGVsX2VuZ2luZV9x
dWV1ZV9icmVhZGNydW1icyhlbmdpbmUpOwogCQl0YXNrbGV0IHw9IGludGVsX2VuZ2luZV9uZWVk
c19icmVhZGNydW1iX3Rhc2tsZXQoZW5naW5lKTsKIAl9CiAKLS0gCjIuMjQuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
