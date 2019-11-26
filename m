Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B879410986F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 06:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EAA86E1FB;
	Tue, 26 Nov 2019 05:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B005E6E1FB;
 Tue, 26 Nov 2019 05:01:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3764A0009;
 Tue, 26 Nov 2019 05:01:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Navik" <ankit.p.navik@intel.com>
Date: Tue, 26 Nov 2019 05:01:56 -0000
Message-ID: <157474451664.11653.5032097625647925913@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
In-Reply-To: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Dynamic_EU_configuration_of_Slice/Sub-slice/EU_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRHluYW1pYyBFVSBjb25maWd1cmF0aW9uIG9m
IFNsaWNlL1N1Yi1zbGljZS9FVSAocmV2NCkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzY5OTgwLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0K
CiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNTI5ZjU1OTBkOTAzIGRybS9pOTE1OiBH
ZXQgYWN0aXZlIHBlbmRpbmcgcmVxdWVzdCBmb3IgZ2l2ZW4gY29udGV4dApjY2I1YmEyOWYzNDYg
ZHJtL2k5MTU6IHNldCBvcHRpbXVtIGV1L3NsaWNlL3N1Yi1zbGljZSBjb25maWd1cmF0aW9uIGJh
c2VkIG9uIGxvYWQgdHlwZQotOjg1OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdu
bWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojODU6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0Lmg6MTgxOgordm9pZCBpOTE1X2dlbV9jb250
ZXh0X3NldF9sb2FkX3R5cGUoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKKwkJCQllbnVt
IGdlbV9sb2FkX3R5cGUgdHlwZSk7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hl
Y2tzLCAyNDEgbGluZXMgY2hlY2tlZAo2ZGUyMDkzYjVmYmEgZHJtL2k5MTU6IFByZWRpY3RpdmUg
Z292ZXJub3IgdG8gY29udHJvbCBzbGljZS9zdWJzbGljZS9ldQotOjUyOiBXQVJOSU5HOkZJTEVf
UEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5U
QUlORVJTIG5lZWQgdXBkYXRpbmc/CiM1MjogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjU3OiBX
QVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzU3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9kZXUuYzoxOgorLyoKCi06MTU0OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1F
TlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTU0OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuYzo5ODoKKwkJCWhydGltZXJfc3RhcnRf
cmFuZ2VfbnMoJmRldl9wcml2LT5wcmVkX3RpbWVyLAorCQkJbXNfdG9fa3RpbWUoZGV2X3ByaXYt
PnByZWRpY3RpdmVfbG9hZF9lbmFibGUpLAoKLToxNjc6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxp
bmUgMQojMTY3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuaDoxOgor
LyoKCi06MjE1OiBDSEVDSzpBVk9JRF9FWFRFUk5TOiBleHRlcm4gcHJvdG90eXBlcyBzaG91bGQg
YmUgYXZvaWRlZCBpbiAuaCBmaWxlcwojMjE1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oOjE3NzM6CitleHRlcm4gZW51bSBocnRpbWVyX3Jlc3RhcnQgcHJlZGljdGl2ZV9s
b2FkX2NiKHN0cnVjdCBocnRpbWVyICpocnRpbWVyKTsKCi06MjUxOiBDSEVDSzpQQVJFTlRIRVNJ
U19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMjUx
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jOjEwNToKK2k5MTVfcGFy
YW1fbmFtZWRfdW5zYWZlKGRldV9lbmFibGUsIGludCwgMDYwMCwKKwkiRW5hYmxlIGR5bmFtaWMg
RVUgY29udHJvbCBmb3IgcG93ZXIgc2F2aW5ncyAiCgp0b3RhbDogMCBlcnJvcnMsIDMgd2Fybmlu
Z3MsIDMgY2hlY2tzLCAxOTEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
