Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CE4755C2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 19:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13FE6E7F3;
	Thu, 25 Jul 2019 17:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADB0B6E7EC;
 Thu, 25 Jul 2019 17:30:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6767A0087;
 Thu, 25 Jul 2019 17:30:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Thu, 25 Jul 2019 17:30:50 -0000
Message-ID: <20190725173050.29712.19936@emeril.freedesktop.org>
References: <20190725080300.1913-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725080300.1913-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Revert_=22ALSA=3A_hda_-_Fix_intermittent_CORB/RIRB_stall_on_?=
 =?utf-8?q?Intel_chips=22_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmV2ZXJ0ICJBTFNBOiBoZGEgLSBGaXggaW50
ZXJtaXR0ZW50IENPUkIvUklSQiBzdGFsbCBvbiBJbnRlbCBjaGlwcyIgKHJldjQpClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDIxMi8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjRj
Mzc1MDU5ZTM2MSBSZXZlcnQgIkFMU0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJC
IHN0YWxsIG9uIEludGVsIGNoaXBzIgotOjEzOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5F
OiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVt
IDc1IGNoYXJzIHBlciBsaW5lKQojMTM6IAo+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc0NS9maS1pY2wtdTIvaWd0QGk5MTVfbW9kdWxl
X2xvYWRAcmVsb2FkLmh0bWwKCi06MTE3OiBXQVJOSU5HOklGXzA6IENvbnNpZGVyIHJlbW92aW5n
IHRoZSBjb2RlIGVuY2xvc2VkIGJ5IHRoaXMgI2lmIDAgYW5kIGl0cyAjZW5kaWYKIzExNzogRklM
RTogc291bmQvcGNpL2hkYS9wYXRjaF9oZG1pLmM6MjU3ODoKKyNpZiAwIC8vIFhYWAoKLToxMzA6
IFdBUk5JTkc6SUZfMDogQ29uc2lkZXIgcmVtb3ZpbmcgdGhlIGNvZGUgZW5jbG9zZWQgYnkgdGhp
cyAjaWYgMCBhbmQgaXRzICNlbmRpZgojMTMwOiBGSUxFOiBzb3VuZC9wY2kvaGRhL3BhdGNoX2hk
bWkuYzoyNjAwOgorI2lmIDAgLy8gWFhYCgotOjE0MTogRVJST1I6TUlTU0lOR19TSUdOX09GRjog
TWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lKHMpCgp0b3RhbDogMSBlcnJvcnMsIDMgd2Fybmlu
Z3MsIDAgY2hlY2tzLCAzNiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
