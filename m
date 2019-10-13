Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E609D556E
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2019 11:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF706E0AB;
	Sun, 13 Oct 2019 09:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3BD6E0AB
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Oct 2019 09:11:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18820520-1500050 
 for multiple; Sun, 13 Oct 2019 10:11:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 13 Oct 2019 10:11:27 +0100
Message-Id: <20191013091127.1165-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fixup naked 64b divide
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

ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5vOiBpbiBmdW5jdGlvbiBg
aWd0X21vY2tfY29udGlndW91cyc6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRl
bF9tZW1vcnlfcmVnaW9uLmM6MTY2OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBfX3Vtb2RkaTMn
CgpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+CkZpeGVzOiAy
ZjBiOTdjYTAyMTEgKCJkcm0vaTkxNS9yZWdpb246IHN1cHBvcnQgY29udGlndW91cyBhbGxvY2F0
aW9ucyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgfCA0ICsrKy0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYwpp
bmRleCA0ZTQ0YzgxZThlNWIuLjAxM2RmYjc2ODNhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCkBAIC0xNjMsNyArMTYz
LDkgQEAgc3RhdGljIGludCBpZ3RfbW9ja19jb250aWd1b3VzKHZvaWQgKmFyZykKIAlpZ3Rfb2Jq
ZWN0X3JlbGVhc2Uob2JqKTsKIAogCS8qIEludGVybmFsIGZyYWdtZW50YXRpb24gc2hvdWxkIG5v
dCBibGVlZCBpbnRvIHRoZSBvYmplY3Qgc2l6ZSAqLwotCXRhcmdldCA9IHJvdW5kX3VwKHByYW5k
b21fdTMyX3N0YXRlKCZwcm5nKSAlIHRvdGFsLCBQQUdFX1NJWkUpOworCXRhcmdldCA9IGk5MTVf
cHJhbmRvbV91NjRfc3RhdGUoJnBybmcpOworCWRpdjY0X3U2NF9yZW0odGFyZ2V0LCB0b3RhbCwg
JnRhcmdldCk7CisJdGFyZ2V0ID0gcm91bmRfdXAodGFyZ2V0LCBQQUdFX1NJWkUpOwogCXRhcmdl
dCA9IG1heF90KHU2NCwgUEFHRV9TSVpFLCB0YXJnZXQpOwogCiAJb2JqID0gaWd0X29iamVjdF9j
cmVhdGUobWVtLCAmb2JqZWN0cywgdGFyZ2V0LAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
