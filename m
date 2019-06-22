Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F9A4F853
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 23:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C7BD89D5B;
	Sat, 22 Jun 2019 21:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C48E89D3E;
 Sat, 22 Jun 2019 21:43:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62DCBA47E7;
 Sat, 22 Jun 2019 21:43:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 22 Jun 2019 21:43:12 -0000
Message-ID: <20190622214312.17003.55756@emeril.freedesktop.org>
References: <20190622212055.25782-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190622212055.25782-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/10=5D_drm/i915/execlists=3A_Always_cl?=
 =?utf-8?q?ear_ring=5Fpause_if_we_do_not_submit?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEw
XSBkcm0vaTkxNS9leGVjbGlzdHM6IEFsd2F5cyBjbGVhciByaW5nX3BhdXNlIGlmIHdlIGRvIG5v
dCBzdWJtaXQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYyNTk0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmln
aW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xp
c3RzOiBBbHdheXMgY2xlYXIgcmluZ19wYXVzZSBpZiB3ZSBkbyBub3Qgc3VibWl0Ck9rYXkhCgpD
b21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogQ29udmVydCByZWN1cnNpdmUgZGVmZXJfcmVxdWVz
dCgpIGludG8gYW4gaXRlcmFjdGl2ZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogUGFzcyBp
bnRlbF9ndCB0byBwbSByb3V0aW5lcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6
IFNlcmlhbGlzZSBub3AgcmVzZXQgd2l0aCByZXRpcmVtZW50Ck9rYXkhCgpDb21taXQ6IGRybS9p
OTE1L3NlbGZ0ZXN0OiBEcm9wIG1hbnVhbCByZXF1ZXN0IHdha2VyZWZzIGFyb3VuZCBoYW5nY2hl
Y2sKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBGaXh1cCBhdG9taWMgcmVzZXQg
Y2hlY2tpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlbmFtZSBpbnRlbF93YWtlcmVmX1tp
c11fYWN0aXZlCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJu
aW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAw
MDAwMDAgYmVjb21lcyAwKQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIGEgd2FrZXJlZiBnZXR0ZXIg
Zm9yIGlmZiB0aGUgd2FrZXJlZiBpcyBhbHJlYWR5IGFjdGl2ZQpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNTogT25seSByZWNvdmVyIGFjdGl2ZSBlbmdpbmVzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
OiBMaWZ0IGludGVsX2VuZ2luZXNfcmVzdW1lKCkgdG8gY2FsbGVycworZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmM6MTQ2OjU6IHdhcm5pbmc6IHN5bWJvbCAnaW50ZWxf
ZW5naW5lc19yZXN1bWUnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
