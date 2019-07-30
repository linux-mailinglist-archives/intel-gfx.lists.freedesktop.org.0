Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B00A67A8CE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 14:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4EA96E4D4;
	Tue, 30 Jul 2019 12:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E85006E4D2;
 Tue, 30 Jul 2019 12:39:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF695A0019;
 Tue, 30 Jul 2019 12:39:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 30 Jul 2019 12:39:58 -0000
Message-ID: <20190730123958.20693.89155@emeril.freedesktop.org>
References: <20190730112151.5633-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190730112151.5633-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/execlists=3A_Always_?=
 =?utf-8?q?clear_pending=26inflight_requests_on_reset?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBBbHdheXMgY2xlYXIgcGVuZGluZyZpbmZsaWdodCByZXF1ZXN0
cyBvbiByZXNldApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjQ0MjYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAo4NzlhNTY5MWQ0ZjEgZHJtL2k5MTUvZXhlY2xpc3RzOiBBbHdheXMg
Y2xlYXIgcGVuZGluZyZpbmZsaWdodCByZXF1ZXN0cyBvbiByZXNldAotOjI5OiBXQVJOSU5HOkNP
TU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9u
IChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMjk6IAo8Nz4gWzQxNi40OTI4
NjNdIGhhbmdjaGVjayAJRXhlY2xpc3Qgc3RhdHVzOiAweDAwMDE4MDAxIDAwMDAwMDAwLCBlbnRy
aWVzIDEyCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyNSBsaW5lcyBj
aGVja2VkCjYyOWI4YTk3ODc2MyBkcm0vaTkxNTogQWxsb3cgc2hhcmluZyB0aGUgaWRsZS1iYXJy
aWVyIGZyb20gb3RoZXIga2VybmVsIHJlcXVlc3RzCi06MTIzOiBXQVJOSU5HOkZJTEVfUEFUSF9D
SEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJT
IG5lZWQgdXBkYXRpbmc/CiMxMjM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLToxMjg6IFdBUk5J
Tkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMTI4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9jb250ZXh0LmM6MToKKy8qCgotOjEyOTogV0FSTklORzpTUERYX0xJQ0VOU0Vf
VEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBp
bnN0ZWFkCiMxMjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRl
eHQuYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKCnRvdGFsOiAwIGVy
cm9ycywgMyB3YXJuaW5ncywgMCBjaGVja3MsIDc2NSBsaW5lcyBjaGVja2VkCjMyZmNiZjFiODVl
OSBkcm0vaTkxNTogRmx1c2ggZXh0cmEgaGFyZCBhZnRlciB3cml0aW5nIHJlbG9jYXRpb25zIHRo
cm91Z2ggdGhlIEdUVAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
