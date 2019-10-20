Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CE0DDBCB
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Oct 2019 03:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F0F89BB3;
	Sun, 20 Oct 2019 01:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D59CB89BB2;
 Sun, 20 Oct 2019 01:01:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEE6CA47E1;
 Sun, 20 Oct 2019 01:01:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sun, 20 Oct 2019 01:01:20 -0000
Message-ID: <20191020010120.17376.91499@emeril.freedesktop.org>
References: <20191020005045.19730-1-andi@etezian.org>
X-Patchwork-Hint: ignore
In-Reply-To: <20191020005045.19730-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Extract_GT_ring_management?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4dHJhY3QgR1QgcmluZyBt
YW5hZ2VtZW50ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82ODI3MC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCjg5OTI3OGJmZDNkMyBkcm0vaTkxNTogRXh0cmFjdCBHVCByaW5nIG1h
bmFnZW1lbnQKLTo0ODogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9y
IGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojNDg6IApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTo1MzogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNz
aW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiM1
MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbGxjLmM6MToKKy8qCgotOjU0
OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzU0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9sbGMuYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoK
LToxNzk6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMTc5OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9sbGMuaDoxOgorLyoKCi06MTgwOiBXQVJOSU5HOlNQRFhfTElD
RU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGlu
ZSAxIGluc3RlYWQKIzE4MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbGxj
Lmg6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06MjAwOiBXQVJOSU5HOlNQ
RFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyIHRhZyBpbiBsaW5lIDEKIzIwMDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbGxjX3R5cGVzLmg6MToKKy8qCgotOjIwMTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFk
CiMyMDE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xsY190eXBlcy5oOjI6
CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgp0b3RhbDogMCBlcnJvcnMsIDcgd2Fy
bmluZ3MsIDAgY2hlY2tzLCAzNDUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
