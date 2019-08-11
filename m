Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E106189208
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 16:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CEE6E34A;
	Sun, 11 Aug 2019 14:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F5DF6E348;
 Sun, 11 Aug 2019 14:37:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9491CA0073;
 Sun, 11 Aug 2019 14:37:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 11 Aug 2019 14:37:46 -0000
Message-ID: <20190811143746.32132.20081@emeril.freedesktop.org>
References: <20190811142801.2460-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190811142801.2460-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Extract_GT_powerm?=
 =?utf-8?q?anagement_interrupt_handling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IEV4dHJhY3QgR1QgcG93ZXJtYW5hZ2VtZW50IGludGVycnVwdCBoYW5kbGluZwpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjUwNDkvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcAozYjc3YzA4YzM1MzIgZHJtL2k5MTU6IEV4dHJhY3QgR1QgcG93ZXJtYW5hZ2VtZW50IGlu
dGVycnVwdCBoYW5kbGluZwotOjQ1OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwg
bW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/
CiM0NTogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjUwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9U
QUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBs
aW5lIDEKIzUwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbV9pcnEu
YzoxOgorLyoKCi06NTE6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNTE6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtX2lycS5jOjI6CisgKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogTUlUCgotOjE2NDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNz
aW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiMx
NjQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtX2lycS5oOjE6Cisv
KgoKLToxNjU6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMTY1OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbV9pcnEuaDoyOgorICogU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAoKLToxOTU6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHNwaW5s
b2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzE5NTogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaDo3NjoKKwlzcGlubG9ja190IGlycV9sb2NrOwoK
dG90YWw6IDAgZXJyb3JzLCA1IHdhcm5pbmdzLCAxIGNoZWNrcywgNTY2IGxpbmVzIGNoZWNrZWQK
ZjcxMzJiOGE3OGUwIGRybS9pOTE1OiBFeHRyYWN0IGdlbmVyYWwgR1QgaW50ZXJydXB0IGhhbmRs
ZXJzCi06NTU6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBvciBkZWxl
dGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzU1OiAKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKCi06NjA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBv
ciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojNjA6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jOjE6CisvKgoKLTo2MTog
V0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM2MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfaXJxLmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
Ci06NTIxOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzUyMTogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmg6MToKKy8qCgotOjUyMjogV0FSTklORzpTUERY
X0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNl
IGxpbmUgMSBpbnN0ZWFkCiM1MjI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X2lycS5oOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgp0b3RhbDogMCBl
cnJvcnMsIDUgd2FybmluZ3MsIDAgY2hlY2tzLCAxNDk3IGxpbmVzIGNoZWNrZWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
