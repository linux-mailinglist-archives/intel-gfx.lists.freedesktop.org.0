Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C84A598B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 16:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583B389458;
	Mon,  2 Sep 2019 14:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31F7589458;
 Mon,  2 Sep 2019 14:40:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 278EBA0099;
 Mon,  2 Sep 2019 14:40:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Heinrich Fink" <heinrich.fink@daqri.com>
Date: Mon, 02 Sep 2019 14:40:46 -0000
Message-ID: <20190902144046.16950.69596@emeril.freedesktop.org>
References: <20190809153639.14193-1-heinrich.fink@daqri.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190809153639.14193-1-heinrich.fink@daqri.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm=3A_Add_high-precision_time_to_vblank_trace_event?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiBBZGQgaGlnaC1wcmVjaXNpb24gdGlt
ZSB0byB2YmxhbmsgdHJhY2UgZXZlbnQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY2MTMyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNzY0ZDZkODI2M2JjIGRybTogQWRkIGhpZ2gt
cHJlY2lzaW9uIHRpbWUgdG8gdmJsYW5rIHRyYWNlIGV2ZW50Ci06NTA6IENIRUNLOlBBUkVOVEhF
U0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM1
MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2RybV90cmFjZS5oOjMxOgorCSAgICBUUF9wcmludGso
ImNydGM9JWQsIHNlcT0ldSwgdGltZT0lbGxkLCBoaWdoLXByZWM9JXMiLAorCQkJX19lbnRyeS0+
Y3J0YywgX19lbnRyeS0+c2VxLCBfX2VudHJ5LT50aW1lLAoKLTo2NTogQ0hFQ0s6UEFSRU5USEVT
SVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzY1
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jOjE3MzU6CisJdHJhY2VfZHJtX3Zi
bGFua19ldmVudChwaXBlLCBzZXEsIG5vdywKKwkJCWRldi0+ZHJpdmVyLT5nZXRfdmJsYW5rX3Rp
bWVzdGFtcCAhPSBOVUxMKTsKCi06NjU6IENIRUNLOkNPTVBBUklTT05fVE9fTlVMTDogQ29tcGFy
aXNvbiB0byBOVUxMIGNvdWxkIGJlIHdyaXR0ZW4gImRldi0+ZHJpdmVyLT5nZXRfdmJsYW5rX3Rp
bWVzdGFtcCIKIzY1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jOjE3MzU6CisJ
CQlkZXYtPmRyaXZlci0+Z2V0X3ZibGFua190aW1lc3RhbXAgIT0gTlVMTCk7Cgp0b3RhbDogMCBl
cnJvcnMsIDAgd2FybmluZ3MsIDMgY2hlY2tzLCAzNiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
