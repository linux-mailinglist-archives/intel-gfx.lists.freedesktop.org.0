Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34357C8B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 08:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E358A6E5BA;
	Thu, 27 Jun 2019 06:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0397E6E5B2;
 Thu, 27 Jun 2019 06:54:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFF8BA00A0;
 Thu, 27 Jun 2019 06:54:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Jun 2019 06:54:22 -0000
Message-ID: <20190627065422.21378.98275@emeril.freedesktop.org>
References: <20190627063044.11858-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190627063044.11858-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/7=5D_drm/i915=3A_Teach_execbuffer_?=
 =?utf-8?q?to_take_the_engine_wakeref_not_GT?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvN10g
ZHJtL2k5MTU6IFRlYWNoIGV4ZWNidWZmZXIgdG8gdGFrZSB0aGUgZW5naW5lIHdha2VyZWYgbm90
IEdUClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Mjgx
NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwCjcyMWY4ZmY4OTE4ZiBkcm0vaTkxNTogVGVhY2ggZXhlY2J1ZmZlciB0byB0YWtl
IHRoZSBlbmdpbmUgd2FrZXJlZiBub3QgR1QKMDY4NjBlMWVkY2M3IGRybS9pOTE1L2d0OiBUcmFj
ayB0aW1lbGluZSBhY3RpdmVuZXNzIGluIGVudGVyL2V4aXQKNTQ3NjFiZTFmMjQ2IGRybS9pOTE1
L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNraW5nIHRvIHNwaW5sb2NrCmYxOThmNDYyZGFjYSBk
cm0vaTkxNS9ndDogR3VhcmQgdGltZWxpbmUgcGlubmluZyB3aXRoIGl0cyBvd24gbXV0ZXgKMzcz
NmY0ZDliOWViIGRybS9pOTE1OiBJbmNsdWRlIHRoZSBicmVhZGNydW1iIHdoZW4gYXNzZXJ0aW5n
IHJlcXVlc3QgY29tcGxldGlvbgo1NjFiN2RmYmY4N2QgZHJtL2k5MTU6IFByb3RlY3QgcmVxdWVz
dCByZXRpcmVtZW50IHdpdGggdGltZWxpbmUtPm11dGV4Cjg5NTJmODEwMTQ2MCBkcm0vaTkxNTog
UmVwbGFjZSBzdHJ1Y3RfbXV0ZXggZm9yIGJhdGNoIHBvb2wgc2VyaWFsaXNhdGlvbgotOjMwNTog
V0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShz
KSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMzA1OiAKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKCi06MzEwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9y
bWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzMxMDogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuYzoxOgorLyoKCi06MzExOiBX
QVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
ciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzMxMTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAoKLTo0ODI6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3Jt
ZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojNDgyOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oOjE6CisvKgoKLTo0ODM6IFdB
Uk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
IHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNDgzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCgotOjUyMjogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1l
ZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiM1MjI6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmg6MToKKy8qCgotOjUy
MzogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM1MjM6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmg6MjoKKyAqIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQKCi06NTM5OiBDSEVDSzpVTkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzcGlu
bG9ja190IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiM1Mzk6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmg6MTg6CisJc3BpbmxvY2tfdCBs
b2NrOwoKdG90YWw6IDAgZXJyb3JzLCA3IHdhcm5pbmdzLCAxIGNoZWNrcywgNTk1IGxpbmVzIGNo
ZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
