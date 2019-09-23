Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43508BB718
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 16:49:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EA716E935;
	Mon, 23 Sep 2019 14:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 618296E934;
 Mon, 23 Sep 2019 14:49:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 580D7A0091;
 Mon, 23 Sep 2019 14:49:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Sep 2019 14:49:11 -0000
Message-ID: <20190923144911.29099.16409@emeril.freedesktop.org>
References: <20190923110056.15176-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190923110056.15176-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/4=5D_drm/i915/execlists=3A_Re?=
 =?utf-8?q?lax_assertion_for_a_pinned_context_image_on_reset?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NF0gZHJtL2k5MTUvZXhlY2xpc3RzOiBSZWxheCBhc3NlcnRpb24gZm9yIGEgcGlubmVkIGNvbnRl
eHQgaW1hZ2Ugb24gcmVzZXQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzY3MDgwLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNo
ZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOWVlMDQxMWI4OWFlIGRybS9pOTE1L2V4ZWNsaXN0czog
UmVsYXggYXNzZXJ0aW9uIGZvciBhIHBpbm5lZCBjb250ZXh0IGltYWdlIG9uIHJlc2V0CmI3Y2U3
MWZjMTZhMSBkcm0vaTkxNS9leGVjbGlzdHM6IERyb3AgcmVkdW5kYW50IGxpc3RfZGVsX2luaXQo
JnJxLT5zY2hlZC5saW5rKQotOjEyOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3Nz
aWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNo
YXJzIHBlciBsaW5lKQojMTI6IApSZWZlcmVuY2VzOiA0MjJkN2RmNGYwOTAgKCJkcm0vaTkxNTog
UmVwbGFjZSBlbmdpbmUtPnRpbWVsaW5lIHdpdGggYSBwbGFpbiBsaXN0IikKCi06MTI6IEVSUk9S
OkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAn
Y29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1p
dCA0MjJkN2RmNGYwOTAgKCJkcm0vaTkxNTogUmVwbGFjZSBlbmdpbmUtPnRpbWVsaW5lIHdpdGgg
YSBwbGFpbiBsaXN0IiknCiMxMjogClJlZmVyZW5jZXM6IDQyMmQ3ZGY0ZjA5MCAoImRybS9pOTE1
OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUgd2l0aCBhIHBsYWluIGxpc3QiKQoKdG90YWw6IDEg
ZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNyBsaW5lcyBjaGVja2VkCjgwODQwMzM0ZGFl
OCBkcm0vaTkxNTogT25seSBlbnF1ZXVlIGFscmVhZHkgY29tcGxldGVkIHJlcXVlc3RzCi06MTE1
OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMxMTU6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjEzMjM6CisJCQkJCSpwb3J0ID0g
ZXhlY2xpc3RzX3NjaGVkdWxlX2luKGxhc3QsIHBvcnQgLSBleGVjbGlzdHMtPnBlbmRpbmcpOwoK
dG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTgxIGxpbmVzIGNoZWNrZWQK
MTViYTdlN2QyNmQxIGRybS9pOTE1L2V4ZWNsaXN0czogUmVmYWN0b3IgLUVJTyBtYXJrdXAgb2Yg
aHVuZyByZXF1ZXN0cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
