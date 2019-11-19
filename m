Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA38B102CE3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 20:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53E36E3E5;
	Tue, 19 Nov 2019 19:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BFFE6E07F;
 Tue, 19 Nov 2019 19:37:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51D4EA0118;
 Tue, 19 Nov 2019 19:37:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 19:37:07 -0000
Message-ID: <157419222730.32167.9587442624686833060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119154723.3311814-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191119154723.3311814-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Exercise_rc6_w/a_handling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lz
ZSByYzYgdy9hIGhhbmRsaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTY4Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBj
aGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjIzMzdhMjk4OGM3ZiBkcm0vaTkxNS9zZWxmdGVzdHM6
IEV4ZXJjaXNlIHJjNiB3L2EgaGFuZGxpbmcKLTo2MTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdF
UzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVk
IHVwZGF0aW5nPwojNjE6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTo2NjogV0FSTklORzpTUERY
X0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
ciB0YWcgaW4gbGluZSAxCiM2NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfcmM2LmM6MToKKy8qCgotOjY3OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNl
ZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzY3OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYzoyOgorICogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLToxNDc6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBNaXNz
aW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzE0NzogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmM6ODI6CisJdW5zaWduZWQgaW50IG4sIGNvdW50
OworCUk5MTVfUk5EX1NUQVRFKHBybmcpOwoKLToyMTg6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxp
bmUgMQojMjE4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuaDox
OgorLyoKCi06MjE5OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzIxOTogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2Lmg6MjoKKyAqIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQKCnRvdGFsOiAwIGVycm9ycywgNiB3YXJuaW5ncywgMCBjaGVja3MsIDE5
NiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
