Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BBDADE4C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 19:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7401A893DB;
	Mon,  9 Sep 2019 17:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE08B893DB;
 Mon,  9 Sep 2019 17:55:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA154A0118;
 Mon,  9 Sep 2019 17:55:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Date: Mon, 09 Sep 2019 17:55:23 -0000
Message-ID: <20190909175523.8305.23977@emeril.freedesktop.org>
References: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_adding_gamma_state_checker_for_CHV_and_i965_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogYWRkaW5nIGdhbW1hIHN0YXRlIGNoZWNrZXIg
Zm9yIENIViBhbmQgaTk2NSAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY2Mjk3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZDAyZTAxOGM5MmZlIGRybS9pOTE1L2Rpc3Bs
YXk6IEFkZCBnYW1tYSBwcmVjaXNpb24gZnVuY3Rpb24gZm9yIENIVgo3Mzc1MTYyNGRlNDggZHJt
L2k5MTUvZGlzcGxheTogRXh0cmFjdCBpOTY1X3JlYWRfbHV0cygpCi06MjI6IFdBUk5JTkc6Q09N
TUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24g
KHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMyMjogCiAgICAgLVJlbmFtZWQg
aTk2NV9yZWFkX2dhbW1hX2x1dF8xMHA2KCkgdG8gaTk2NV9yZWFkX2x1dF8xMHA2KCkgW1ZpbGxl
LCBVbWFdCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA3OCBsaW5lcyBj
aGVja2VkCjFlZWFlMzRlMjg4YSBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGNodl9yZWFkX2x1
dHMoKQotOjU3OiBDSEVDSzpPUEVOX0VOREVEX0xJTkU6IExpbmVzIHNob3VsZCBub3QgZW5kIHdp
dGggYSAnKCcKIzU3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmM6MTY0MjoKKwkJYmxvYl9kYXRhW2ldLmdyZWVuID0gaW50ZWxfY29sb3JfbHV0X3BhY2so
UkVHX0ZJRUxEX0dFVCgKCi06NTk6IENIRUNLOk9QRU5fRU5ERURfTElORTogTGluZXMgc2hvdWxk
IG5vdCBlbmQgd2l0aCBhICcoJwojNTk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYzoxNjQ0OgorCQlibG9iX2RhdGFbaV0uYmx1ZSA9IGludGVsX2NvbG9y
X2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoCgotOjYzOiBDSEVDSzpPUEVOX0VOREVEX0xJTkU6IExp
bmVzIHNob3VsZCBub3QgZW5kIHdpdGggYSAnKCcKIzYzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM6MTY0ODoKKwkJYmxvYl9kYXRhW2ldLnJlZCA9IGlu
dGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoCgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDMgY2hlY2tzLCA2NCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
