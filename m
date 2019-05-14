Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9181C41D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 09:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF88892E6;
	Tue, 14 May 2019 07:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C6B892E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 07:44:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16547921-1500050 
 for multiple; Tue, 14 May 2019 08:44:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 08:44:08 +0100
Message-Id: <20190514074409.23456-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Mark semaphores as complete on
 unsubmit out if payload was started
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

QXZvaWQgY2hhcmdpbmcgdXMgZm9yIHRoZSBwcmVzdW1lZCBidXN5d2FpdCBpZiB0aGUgcmVxdWVz
dCB3YXMgcHJlZW1wdGVkCmFmdGVyIHN1Y2Nlc3NmdWxseSB1c2luZyBzZW1hcGhvcmVzIHRvIHJl
ZHVjZSBpbnRlci1lbmdpbmUgbGF0ZW5jeS4KClJlZmVyZW5jZXM6IGNhNmU1NmY2NTRlNyAoImRy
bS9pOTE1OiBEaXNhYmxlIHNlbWFwaG9yZSBidXN5d2FpdHMgb24gc2F0dXJhdGVkIHN5c3RlbXMi
KQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IGJlZDIx
MzE0OGNiYi4uNGU2YTdmMzdmZmZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpA
QCAtNTA5LDYgKzUwOSwxMCBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3Vuc3VibWl0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJLyogVHJhbnNmZXIgYmFjayBmcm9tIHRoZSBnbG9iYWwg
cGVyLWVuZ2luZSB0aW1lbGluZSB0byBwZXItY29udGV4dCAqLwogCW1vdmVfdG9fdGltZWxpbmUo
cmVxdWVzdCwgcmVxdWVzdC0+dGltZWxpbmUpOwogCisJLyogV2UndmUgYWxyZWFkeSBzcHVuLCBk
b24ndCBjaGFyZ2Ugb24gcmVzdWJtaXR0aW5nLiAqLworCWlmIChyZXF1ZXN0LT5zY2hlZC5zZW1h
cGhvcmVzICYmIGk5MTVfcmVxdWVzdF9zdGFydGVkKHJlcXVlc3QpKQorCQlyZXF1ZXN0LT5zY2hl
ZC5zZW1hcGhvcmVzID0gMDsKKwogCS8qCiAJICogV2UgZG9uJ3QgbmVlZCB0byB3YWtlX3VwIGFu
eSB3YWl0ZXJzIG9uIHJlcXVlc3QtPmV4ZWN1dGUsIHRoZXkKIAkgKiB3aWxsIGdldCB3b2tlbiBi
eSBhbnkgb3RoZXIgZXZlbnQgb3IgdXMgcmUtYWRkaW5nIHRoaXMgcmVxdWVzdAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
