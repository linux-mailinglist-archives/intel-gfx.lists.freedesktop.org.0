Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 132EB867C1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB616E847;
	Thu,  8 Aug 2019 17:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A96366E027;
 Thu,  8 Aug 2019 17:15:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27E62A363D;
 Thu,  8 Aug 2019 17:15:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 08 Aug 2019 17:15:27 -0000
Message-ID: <20190808171527.4819.31096@emeril.freedesktop.org>
References: <20190808151207.31533-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190808151207.31533-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Defer_final_intel=5Fwakeref=5Fput_to_process_con?=
 =?utf-8?q?text?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IERlZmVyIGZpbmFsIGludGVs
X3dha2VyZWZfcHV0IHRvIHByb2Nlc3MgY29udGV4dApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQ5MTYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo0ODZlYjJkOTkzODcgZHJtL2k5
MTU6IERlZmVyIGZpbmFsIGludGVsX3dha2VyZWZfcHV0IHRvIHByb2Nlc3MgY29udGV4dAotOjMx
NTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmls
ZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMzE1OiAKbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKCi06MzIwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFs
Zm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzMyMDogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lLmM6MToKKy8qCgotOjMyMTog
V0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMzMjE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZS5jOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMAoKLTozNTQ6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxm
b3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMzU0OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuaDoxOgorLyoKCi06MzU1OiBX
QVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
ciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzM1NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfZW5naW5lLmg6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wCgotOjM3NDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZv
cm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiMzNzQ6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9wbS5jOjE6CisvKgoKLTozNzU6
IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMzc1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfcG0uYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAKCnRvdGFsOiAwIGVycm9ycywgNyB3YXJuaW5ncywgMCBjaGVja3MsIDcwOCBs
aW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
