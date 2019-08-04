Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD7580B0B
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Aug 2019 14:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9604489D4D;
	Sun,  4 Aug 2019 12:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AE7B89D3E;
 Sun,  4 Aug 2019 12:58:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53CF2A00FA;
 Sun,  4 Aug 2019 12:58:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 04 Aug 2019 12:58:28 -0000
Message-ID: <20190804125828.14184.38384@emeril.freedesktop.org>
References: <20190804124826.30272-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190804124826.30272-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Teach_execbu?=
 =?utf-8?q?ffer_to_take_the_engine_wakeref_not_GT?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTU6IFRlYWNoIGV4ZWNidWZmZXIgdG8gdGFrZSB0aGUgZW5naW5lIHdha2VyZWYg
bm90IEdUClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
NDY2NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9y
aWdpbi9kcm0tdGlwCmQ4MDFiNjg4Y2MzYiBkcm0vaTkxNTogVGVhY2ggZXhlY2J1ZmZlciB0byB0
YWtlIHRoZSBlbmdpbmUgd2FrZXJlZiBub3QgR1QKYjg3ZDRiZmYwZTFlIGRybS9pOTE1OiBSZXBs
YWNlIHN0cnVjdF9tdXRleCBmb3IgYmF0Y2ggcG9vbCBzZXJpYWxpc2F0aW9uCi06MzA1OiBXQVJO
SU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBk
b2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMzMDU6IApuZXcgZmlsZSBtb2RlIDEwMDY0
NAoKLTozMTA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMzEwOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jOjE6CisvKgoKLTozMTE6IFdBUk5J
Tkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRh
ZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMzExOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfcG9vbC5jOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
CgotOjQ5MzogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiM0OTM6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmg6MToKKy8qCgotOjQ5NDogV0FSTklO
RzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFn
IC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM0OTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wb29sLmg6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
Ci06NTMzOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzUzMzogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoxOgorLyoKCi06NTM0OiBX
QVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
ciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzUzNDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAoKLTo1NTA6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHNwaW5sb2Nr
X3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzU1MDogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoxODoKKwlzcGlubG9ja190IGxvY2s7
Cgp0b3RhbDogMCBlcnJvcnMsIDcgd2FybmluZ3MsIDEgY2hlY2tzLCA2MDUgbGluZXMgY2hlY2tl
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
