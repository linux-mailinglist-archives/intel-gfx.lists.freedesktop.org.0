Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF095E828
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 17:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602086E16B;
	Wed,  3 Jul 2019 15:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B016D6E169
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 15:52:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17117753-1500050 
 for multiple; Wed, 03 Jul 2019 16:52:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 16:52:25 +0100
Message-Id: <20190703155225.9501-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703155225.9501-1-chris@chris-wilson.co.uk>
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Ignore forcewake acquisition
 for posting_reads
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

V2UgZG9uJ3QgY2FyZSBhYm91dCB0aGUgcmVzdWx0IG9mIHRoZSByZWFkLCBzbyBpdCBtYXkgYmUg
Z2FyYmFnZSwgd2UKb25seSBjYXJlIHRoYXQgdGhlIG1taW8gaXMgZmx1c2hlZC4gQXMgc3VjaCwg
d2UgY2FuIGZvcmdvIHVzaW5nIGFuCmluZGl2aWR1YWwgZm9yY2V3YWtlIGFuZCBsb2NrIGFyb3Vu
ZCBhbnkgcG9zdGluZy1yZWFkIGZvciBhbiBlbmdpbmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4
IDU1N2IwOGIxM2ZlYi4uMDMzMWU5YWMyNDg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmUuaApAQCAtNTEsNyArNTEsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7CiAjZGVmaW5l
IEVOR0lORV9SRUFEMTYoLi4uKQlfX0VOR0lORV9SRUFEX09QKHJlYWQxNiwgX19WQV9BUkdTX18p
CiAjZGVmaW5lIEVOR0lORV9SRUFEKC4uLikJX19FTkdJTkVfUkVBRF9PUChyZWFkLCBfX1ZBX0FS
R1NfXykKICNkZWZpbmUgRU5HSU5FX1JFQURfRlcoLi4uKQlfX0VOR0lORV9SRUFEX09QKHJlYWRf
ZncsIF9fVkFfQVJHU19fKQotI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEKC4uLikgX19FTkdJ
TkVfUkVBRF9PUChwb3N0aW5nX3JlYWQsIF9fVkFfQVJHU19fKQorI2RlZmluZSBFTkdJTkVfUE9T
VElOR19SRUFEKC4uLikgX19FTkdJTkVfUkVBRF9PUChwb3N0aW5nX3JlYWRfZncsIF9fVkFfQVJH
U19fKQogI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEMTYoLi4uKSBfX0VOR0lORV9SRUFEX09Q
KHBvc3RpbmdfcmVhZDE2LCBfX1ZBX0FSR1NfXykKIAogI2RlZmluZSBFTkdJTkVfUkVBRDY0KGVu
Z2luZV9fLCBsb3dlcl9yZWdfXywgdXBwZXJfcmVnX18pIFwKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
