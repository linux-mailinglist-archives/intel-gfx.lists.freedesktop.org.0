Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA365BA6B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 13:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102E789BFC;
	Mon,  1 Jul 2019 11:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8FC88984D;
 Mon,  1 Jul 2019 11:15:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E0CEA363D;
 Mon,  1 Jul 2019 11:15:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jul 2019 11:15:39 -0000
Message-ID: <20190701111539.12150.21081@emeril.freedesktop.org>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190701100502.15639-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/12=5D_drm/i915/guc=3A_Avoid_recla?=
 =?utf-8?q?im_locks_during_reset?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEy
XSBkcm0vaTkxNS9ndWM6IEF2b2lkIHJlY2xhaW0gbG9ja3MgZHVyaW5nIHJlc2V0ClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzAyOS8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ0
ZWE2YzZkNTc2ZSBkcm0vaTkxNS9ndWM6IEF2b2lkIHJlY2xhaW0gbG9ja3MgZHVyaW5nIHJlc2V0
CjJiZDgxNjMzYmYwMiBkcm0vaTkxNTogTWFya3VwIHBvdGVudGlhbCBsb2NrIGZvciBpOTE1X2Fj
dGl2ZQo4OTBlOThiMWM1ZmQgZHJtL2k5MTU6IE1hcmsgdXAgdm1hLT5hY3RpdmUgYXMgc2FmZSBm
b3IgdXNlIGluc2lkZSBzaHJpbmtlcnMKODE5OTg5ZDI2NDJiIGRybS9pOTE1L2V4ZWNsaXN0czog
UmVmYWN0b3IgQ1NCIHN0YXRlIG1hY2hpbmUKYjgwMTkxZjJiMjgwIGRybS9pOTE1L2V4ZWNsaXN0
czogSGVzaXRhdGUgYmVmb3JlIHNsaWNpbmcKM2Y1NjgyZjNjMDZkIGRybS9pOTE1L3NlbGZ0ZXN0
czogTG9jayB0aGUgZHJtX21tIHdoaWxlIG1vZGlmeWluZwplN2U5NmZiNTMwZDIgZHJtL2k5MTU6
IFRlYWNoIGV4ZWNidWZmZXIgdG8gdGFrZSB0aGUgZW5naW5lIHdha2VyZWYgbm90IEdUCjdhNzlm
YmJmMzNhNyBkcm0vaTkxNS9ndDogVHJhY2sgdGltZWxpbmUgYWN0aXZlbmVzcyBpbiBlbnRlci9l
eGl0Cjg2YmI5MDc5Y2VlNSBkcm0vaTkxNS9ndDogQ29udmVydCB0aW1lbGluZSB0cmFja2luZyB0
byBzcGlubG9jawowNGU2Mzg5MzhmZjMgZHJtL2k5MTUvZ3Q6IEd1YXJkIHRpbWVsaW5lIHBpbm5p
bmcgd2l0aCBpdHMgb3duIG11dGV4CmE0ZTNiOTA3ZDU5ZCBkcm0vaTkxNTogUHJvdGVjdCByZXF1
ZXN0IHJldGlyZW1lbnQgd2l0aCB0aW1lbGluZS0+bXV0ZXgKNTQwYzZjNGM1ZDY2IGRybS9pOTE1
OiBSZXBsYWNlIHN0cnVjdF9tdXRleCBmb3IgYmF0Y2ggcG9vbCBzZXJpYWxpc2F0aW9uCi06MzA1
OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxl
KHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMzMDU6IApuZXcgZmlsZSBtb2Rl
IDEwMDY0NAoKLTozMTA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxm
b3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMzEwOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jOjE6CisvKgoKLTozMTE6
IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMzExOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUCgotOjQ4MjogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZv
cm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiM0ODI6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmg6MToKKy8qCgotOjQ4Mzog
V0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM0ODM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmg6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQKCi06NTIyOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9y
bWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzUyMjogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoxOgorLyoKCi06
NTIzOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzUyMzogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoyOgorICogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAoKLTo1Mzk6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHNw
aW5sb2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzUzOTogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoxODoKKwlzcGlubG9ja190
IGxvY2s7Cgp0b3RhbDogMCBlcnJvcnMsIDcgd2FybmluZ3MsIDEgY2hlY2tzLCA1OTUgbGluZXMg
Y2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
