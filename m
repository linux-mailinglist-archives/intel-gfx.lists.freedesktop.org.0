Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4150750274
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 08:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 464DE897FB;
	Mon, 24 Jun 2019 06:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4FC5897F9;
 Mon, 24 Jun 2019 06:39:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABDB0A00A0;
 Mon, 24 Jun 2019 06:39:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Jun 2019 06:39:43 -0000
Message-ID: <20190624063943.1477.94130@emeril.freedesktop.org>
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190624054315.18910-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/19=5D_drm/i915/execlists=3A_Always_cl?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE5
XSBkcm0vaTkxNS9leGVjbGlzdHM6IEFsd2F5cyBjbGVhciByaW5nX3BhdXNlIGlmIHdlIGRvIG5v
dCBzdWJtaXQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYyNjEyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmln
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
OiBMaWZ0IGludGVsX2VuZ2luZXNfcmVzdW1lKCkgdG8gY2FsbGVycwpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogVGVhY2ggZXhlY2J1ZmZlciB0byB0YWtlIHRoZSBlbmdpbmUgd2FrZXJlZiBub3Qg
R1QKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Q6IFRyYWNrIHRpbWVsaW5lIGFjdGl2ZW5lc3Mg
aW4gZW50ZXIvZXhpdApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogQ29udmVydCB0aW1lbGlu
ZSB0cmFja2luZyB0byBzcGlubG9jawpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogR3VhcmQg
dGltZWxpbmUgcGlubmluZyB3aXRoIGl0cyBvd24gbXV0ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5
MTUvc2VsZnRlc3RzOiBIb2xkIHJlZiBvbiByZXF1ZXN0IGFjcm9zcyB3YWl0cwpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9ndDogQWx3YXlzIGNhbGwga3JlZl9pbml0IGZvciB0aGUgdGltZWxpbmUK
T2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Q6IERyb3Agc3RhbGUgY29tbWVudGFyeSBmb3IgdGlt
ZWxpbmUgZGVuc2l0eQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUHJvdGVjdCByZXF1ZXN0IHJl
dGlyZW1lbnQgd2l0aCB0aW1lbGluZS0+bXV0ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJl
cGxhY2Ugc3RydWN0X211dGV4IGZvciBiYXRjaCBwb29sIHNlcmlhbGlzYXRpb24KKy4vaW5jbHVk
ZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVz
IGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
