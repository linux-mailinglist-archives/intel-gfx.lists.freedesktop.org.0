Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1337BC2EF1
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 10:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C426E57E;
	Tue,  1 Oct 2019 08:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9726E57A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 08:35:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18675707-1500050 
 for multiple; Tue, 01 Oct 2019 09:35:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 09:35:29 +0100
Message-Id: <20191001083529.13549-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] HAX: Force kmemleak off
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

LS0tCiBtbS9rbWVtbGVhay5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9tbS9rbWVtbGVhay5jIGIvbW0va21lbWxlYWsuYwppbmRleCBmNmU2
MDI5MThkYWMuLmNmMzkyNjE1YWQ0MCAxMDA2NDQKLS0tIGEvbW0va21lbWxlYWsuYworKysgYi9t
bS9rbWVtbGVhay5jCkBAIC0yMDE1LDYgKzIwMTUsOSBAQCB2b2lkIF9faW5pdCBrbWVtbGVha19p
bml0KHZvaWQpCiAJfQogI2VuZGlmCiAKKwlrbWVtbGVha19kaXNhYmxlKCk7CisJcmV0dXJuOwor
CiAJamlmZmllc19taW5fYWdlID0gbXNlY3NfdG9famlmZmllcyhNU0VDU19NSU5fQUdFKTsKIAlq
aWZmaWVzX3NjYW5fd2FpdCA9IG1zZWNzX3RvX2ppZmZpZXMoU0VDU19TQ0FOX1dBSVQgKiAxMDAw
KTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
