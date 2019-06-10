Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9563A3B36C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB31890E9;
	Mon, 10 Jun 2019 10:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82F41890C2;
 Mon, 10 Jun 2019 10:44:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C813A0138;
 Mon, 10 Jun 2019 10:44:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Jun 2019 10:44:43 -0000
Message-ID: <20190610104443.9311.76061@emeril.freedesktop.org>
References: <20190610030416.4471-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190610030416.4471-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/i915=3A_Move_fence_regist?=
 =?utf-8?q?er_tracking_from_i915-=3Emm_to_ggtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTU6IE1vdmUgZmVuY2UgcmVnaXN0ZXIgdHJhY2tpbmcgZnJvbSBpOTE1LT5tbSB0byBn
Z3R0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTgy
MS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwCmRjOTdjN2FiMzU1MCBkcm0vaTkxNTogTW92ZSBmZW5jZSByZWdpc3RlciB0cmFj
a2luZyBmcm9tIGk5MTUtPm1tIHRvIGdndHQKLToxODE6IFdBUk5JTkc6UFJFRkVSX1NFUV9QVVRT
OiBQcmVmZXIgc2VxX3B1dHMgdG8gc2VxX3ByaW50ZgojMTgxOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYzoyNDQ6CisJCXNlcV9wcmludGYobSwgIiAoZ2xvYmFsKSIp
OwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNjI5IGxpbmVzIGNoZWNr
ZWQKNDk3MDI5NWFiYWRiIGRybS9pOTE1OiBUcmFjayBnZ3R0IGZlbmNlIHJlc2VydmF0aW9ucyB1
bmRlciBpdHMgb3duIG11dGV4CjIxODk5MDNkMWQ2MiBkcm0vaTkxNTogQ29tYmluZSB1bmJvdW5k
L2JvdW5kIGxpc3QgdHJhY2tpbmcgZm9yIG9iamVjdHMKLToxNzc6IENIRUNLOk1VTFRJUExFX0FT
U0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAojMTc3OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYzozOTY6CisJ
YXZhaWxhYmxlID0gdW5ldmljdGFibGUgPSAwOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdz
LCAxIGNoZWNrcywgNTc0IGxpbmVzIGNoZWNrZWQKNDQ4ZjAwMDI4N2IyIGRybS9pOTE1OiBQcm9t
b3RlIGk5MTUtPm1tLm9ial9sb2NrIHRvIGJlIGlycXNhZmUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
