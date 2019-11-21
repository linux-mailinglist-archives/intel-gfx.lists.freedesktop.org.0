Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F246D1048BB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 03:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CA96EAB7;
	Thu, 21 Nov 2019 02:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A00CF6EAB7;
 Thu, 21 Nov 2019 02:49:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97FEEA00E6;
 Thu, 21 Nov 2019 02:49:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <John.C.Harrison@Intel.com>
Date: Thu, 21 Nov 2019 02:49:52 -0000
Message-ID: <157430459259.19250.10855285474849158427@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120235604.29047-1-John.C.Harrison@Intel.com>
In-Reply-To: <20191120235604.29047-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/guc=3A_CTB_improvements?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3VjOiBDVEIgaW1wcm92ZW1l
bnRzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTc4
OC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwCjNkYjE3MTU4ZjMzZCBkcm0vaTkxNS9ndWM6IEFkZCBub24gYmxvY2tpbmcgQ1RC
IHNlbmQgZnVuY3Rpb24KLTo2OiBXQVJOSU5HOlRZUE9fU1BFTExJTkc6ICdmdWN0aW9uJyBtYXkg
YmUgbWlzc3BlbGxlZCAtIHBlcmhhcHMgJ2Z1bmN0aW9uJz8KIzY6IApBZGQgbm9uIGJsb2NraW5n
IENUQiBzZW5kIGZ1Y3Rpb24sIGludGVsX2d1Y19zZW5kX25iLiBJbiBvcmRlciB0bwoKLTo3OiBX
QVJOSU5HOlRZUE9fU1BFTExJTkc6ICdmdWN0aW9uJyBtYXkgYmUgbWlzc3BlbGxlZCAtIHBlcmhh
cHMgJ2Z1bmN0aW9uJz8KIzc6IApzdXBwb3J0IGEgbm9uIGJsb2NraW5nIENUQiBzZW5kIGZ1Y3Rp
b24gYSBzcGluIGxvY2sgaXMgbmVlZGVkIHRvCgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3Ms
IDAgY2hlY2tzLCAyMjMgbGluZXMgY2hlY2tlZAo2MDIyZmM0YzEwYTAgZHJtL2k5MTUvZ3VjOiBP
cHRpbWl6ZWQgQ1RCIHdyaXRlcyBhbmQgcmVhZHMKLTozMzogQ0hFQ0s6TVVMVElQTEVfQVNTSUdO
TUVOVFM6IG11bHRpcGxlIGFzc2lnbm1lbnRzIHNob3VsZCBiZSBhdm9pZGVkCiMzMzogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2N0LmM6Nzk6CisJY3RiLT5zaXpl
ID0gZGVzYy0+c2l6ZSA9IHNpemU7CgotOjQ4OiBDSEVDSzpNVUxUSVBMRV9BU1NJR05NRU5UUzog
bXVsdGlwbGUgYXNzaWdubWVudHMgc2hvdWxkIGJlIGF2b2lkZWQKIzQ4OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYzo5MToKKwljdGItPmhlYWQgPSBkZXNj
LT5oZWFkID0gMDsKCi06NDk6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBh
c3NpZ25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAojNDk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jOjkyOgorCWN0Yi0+dGFpbCA9IGRlc2MtPnRhaWwgPSAw
OwoKLToxMDY6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50
cyBzaG91bGQgYmUgYXZvaWRlZAojMTA2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfY3QuYzozNDc6CisJY3RiLT50YWlsID0gZGVzYy0+dGFpbCA9IHRhaWwgKiA0
OwoKLToyMjQ6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50
cyBzaG91bGQgYmUgYXZvaWRlZAojMjI0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfY3QuYzo2NjI6CisJY3RiLT5oZWFkID0gZGVzYy0+aGVhZCA9IGhlYWQgKiA0
OwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA1IGNoZWNrcywgMjEzIGxpbmVzIGNoZWNr
ZWQKMWM1YjUzYTBhZTBlIGRybS9pOTE1L2d1YzogSW5jcmVhc2Ugc2l6ZSBvZiBDVEIgYnVmZmVy
cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
