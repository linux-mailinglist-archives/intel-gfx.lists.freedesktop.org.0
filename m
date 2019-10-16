Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F255D999F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 20:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BC66E422;
	Wed, 16 Oct 2019 18:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD4E6E413;
 Wed, 16 Oct 2019 18:56:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18861315-1500050 
 for multiple; Wed, 16 Oct 2019 19:56:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 19:56:42 +0100
Message-Id: <20191016185642.16181-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_persistent_relocs: Manage the
 domain for the GGTT access
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

U2luY2UgdGhlIEdHVFQgZmF1bHQgd2lsbCBvdmVybGFwIHdpdGggdGhlIHB3cml0ZSBhY2Nlc3Ms
IHRoZXJlIGlzIG5vCmltcGxpY2l0IG1vbWVudCBhdCB3aGljaCB0aGUga2VybmVsIHdpbGwgYXV0
b21hZ2ljYWxseSBmbHVzaCB0aGUgYmFja2luZwpzdG9yZS4gVXNlcnNwYWNlIGhhcyB0byBiZSBl
eHBsaWNpdCBpbiBpdHMgZG9tYWluIGNvbnRyb2wsIG9yIGRvIGl0c2VsZi4KCkJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwMzcKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVz
dHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9y
ZWxvY3MuYyBiL3Rlc3RzL2k5MTUvZ2VtX3BlcnNpc3RlbnRfcmVsb2NzLmMKaW5kZXggMmFiNzA5
MWFkLi4yMGVlMDMwMjcgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX3BlcnNpc3RlbnRfcmVs
b2NzLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYwpAQCAtMjI0LDgg
KzIyNCwxMSBAQCBzdGF0aWMgdm9pZCBkb190ZXN0KGludCBmZCwgYm9vbCBmYXVsdGluZ19yZWxv
YykKIAogCQlyZWxvY3NfYm9faGFuZGxlW2ldID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7CiAJCWdl
bV93cml0ZShmZCwgcmVsb2NzX2JvX2hhbmRsZVtpXSwgMCwgcmVsb2MsIHNpemVvZihyZWxvYykp
OworCiAJCWd0dF9yZWxvY3NfcHRyW2ldID0gZ2VtX21tYXBfX2d0dChmZCwgcmVsb2NzX2JvX2hh
bmRsZVtpXSwgNDA5NiwKIAkJCQkJCSAgUFJPVF9SRUFEIHwgUFJPVF9XUklURSk7CisJCWdlbV9z
ZXRfZG9tYWluKGZkLCByZWxvY3NfYm9faGFuZGxlW2ldLAorCQkJICAgICAgIEk5MTVfR0VNX0RP
TUFJTl9HVFQsIEk5MTVfR0VNX0RPTUFJTl9HVFQpOwogCX0KIAogCS8qIHJlcGVhdCBtdXN0IGJl
IHNtYWxsZXIgdGhhbiA0MDk2L3NtYWxsX3BpdGNoICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
