Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21ECCD3EAC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 13:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0A26EC21;
	Fri, 11 Oct 2019 11:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23D896EC20;
 Fri, 11 Oct 2019 11:45:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C06EA0087;
 Fri, 11 Oct 2019 11:45:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 11 Oct 2019 11:45:56 -0000
Message-ID: <20191011114556.18209.74507@emeril.freedesktop.org>
References: <20191011113620.4671-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191011113620.4671-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Expose_engine_properties_via_sysfs_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4cG9zZSBlbmdpbmUgcHJv
cGVydGllcyB2aWEgc3lzZnMgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82Njg0OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjM3OWM4ZGIzZDAzNiBkcm0vaTkxNTogRXhw
b3NlIGVuZ2luZSBwcm9wZXJ0aWVzIHZpYSBzeXNmcwotOjY2OiBXQVJOSU5HOkZJTEVfUEFUSF9D
SEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJT
IG5lZWQgdXBkYXRpbmc/CiM2NjogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjcxOiBXQVJOSU5H
OlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyIHRhZyBpbiBsaW5lIDEKIzcxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfc3lzZnMuYzoxOgorLyoKCi06NzI6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5z
dGVhZAojNzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNm
cy5jOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjEzNTogV0FSTklORzpT
VEFUSUNfQ09OU1RfQ0hBUl9BUlJBWTogc3RhdGljIGNvbnN0IGNoYXIgKiBhcnJheSBzaG91bGQg
cHJvYmFibHkgYmUgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdAojMTM1OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYzo2NToKKwlzdGF0aWMgY29uc3Qg
Y2hhciAqdmNzX3JlcHJbXSA9IHsKCi06MTM5OiBXQVJOSU5HOlNUQVRJQ19DT05TVF9DSEFSX0FS
UkFZOiBzdGF0aWMgY29uc3QgY2hhciAqIGFycmF5IHNob3VsZCBwcm9iYWJseSBiZSBzdGF0aWMg
Y29uc3QgY2hhciAqIGNvbnN0CiMxMzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9zeXNmcy5jOjY5OgorCXN0YXRpYyBjb25zdCBjaGFyICp2ZWNzX3JlcHJbXSA9
IHsKCi06MjU0OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVk
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzI1NDogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmg6MToKKy8qCgotOjI1NTogV0FS
TklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIg
dGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMyNTU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCgp0b3RhbDogMCBlcnJvcnMsIDcgd2FybmluZ3MsIDAgY2hlY2tzLCAyMTYgbGluZXMgY2hl
Y2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
