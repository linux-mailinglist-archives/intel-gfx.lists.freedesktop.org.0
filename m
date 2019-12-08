Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F51116271
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Dec 2019 15:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7F96E2DF;
	Sun,  8 Dec 2019 14:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5D66E2DF
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Dec 2019 14:47:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19503604-1500050 
 for multiple; Sun, 08 Dec 2019 14:47:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Dec 2019 14:46:58 +0000
Message-Id: <20191208144658.3015255-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Change i915_vma_unbind() to report
 -EAGAIN on activity
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgc29tZW9uZSBlbHNlIGFjcXVpcmVzIHRoZSBpOTE1X3ZtYSBiZWZvcmUgd2UgY29tcGxldGUg
b3VyIHdhaXQgYW5kCnVuYmluZCBpdCwgd2UgY3VycmVudGx5IGVycm9yIG91dCB3aXRoIC1FQlVT
WS4gVXNlIC1FQUdBSU4gaW5zdGVhZCBzbwp0aGF0IGlmIG5lY2Vzc2FyeSB0aGUgY2FsbGVyIGlz
IHByZXBhcmVkIHRvIHRyeSBhZ2Fpbi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV92bWEuYwppbmRleCA5Y2E2NjY0YzE5MGMuLjY3OTRjNzQyZmJiZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jCkBAIC0xMTgxLDcgKzExODEsNyBAQCBpbnQgX19pOTE1X3ZtYV91bmJpbmQoc3Ry
dWN0IGk5MTVfdm1hICp2bWEpCiAJR0VNX0JVR19PTihpOTE1X3ZtYV9pc19hY3RpdmUodm1hKSk7
CiAJaWYgKGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKSB7CiAJCXZtYV9wcmludF9hbGxvY2F0b3Io
dm1hLCAiaXMgcGlubmVkIik7Ci0JCXJldHVybiAtRUJVU1k7CisJCXJldHVybiAtRUFHQUlOOwog
CX0KIAogCUdFTV9CVUdfT04oaTkxNV92bWFfaXNfYWN0aXZlKHZtYSkpOwotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
