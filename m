Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3095BC8713
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D466E930;
	Wed,  2 Oct 2019 11:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1836E930;
 Wed,  2 Oct 2019 11:19:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692009-1500050 
 for multiple; Wed, 02 Oct 2019 12:19:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:43 +0100
Message-Id: <20191002111943.12227-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Relax timeout for forced
 resets
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

SXQgYXBwZWFycyB3ZSBjYW5ub3QgY29uc2lzdGVudGx5IGhpdCBvdXIgc2VsZi1pbXBvc2VkIFFv
UyB0YXJnZXQgb2YgMnMKZm9yIHBlcmZvcm1pbmcgdGhlIHJlc2V0IChteSB0aGVvcnkgaXMgdGhh
dCBpcyBzb21lIFJDVSBzY2hlZHVsaW5nCnF1aXJrKSwgc28gcmVsYXggdGhlIGFzc2VydGlvbiB0
byBhIG1lYXNseSAxMHMuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA1OTU3ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2Vpby5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
dGVzdHMvaTkxNS9nZW1fZWlvLmMgYi90ZXN0cy9pOTE1L2dlbV9laW8uYwppbmRleCA3YWRiNTQ2
N2YuLjAwN2I5ZmI3MCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMKKysrIGIvdGVz
dHMvaTkxNS9nZW1fZWlvLmMKQEAgLTgyLDcgKzgyLDcgQEAgc3RhdGljIHZvaWQgdHJpZ2dlcl9y
ZXNldChpbnQgZmQpCiAJaWd0X2Ryb3BfY2FjaGVzX3NldChmZCwgRFJPUF9BQ1RJVkUpOwogCiAJ
LyogV2UgZXhwZWN0IGZvcmNlZCByZXNldCBhbmQgaGVhbHRoIGNoZWNrIHRvIGJlIHF1aWNrLiAq
LwotCWlndF9hc3NlcnQoaWd0X3NlY29uZHNfZWxhcHNlZCgmdHMpIDwgMik7CisJaWd0X2Fzc2Vy
dF9sdGUoaWd0X3NlY29uZHNfZWxhcHNlZCgmdHMpLCAxMCk7CiB9CiAKIHN0YXRpYyB2b2lkIG1h
bnVhbF9oYW5nKGludCBkcm1fZmQpCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
