Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C9E1C46C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 10:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7A489319;
	Tue, 14 May 2019 08:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 474EC89317;
 Tue, 14 May 2019 08:10:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E3E9A0106;
 Tue, 14 May 2019 08:10:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 May 2019 08:10:09 -0000
Message-ID: <20190514081009.20124.67840@emeril.freedesktop.org>
References: <20190514074409.23456-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190514074409.23456-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Mark_semaphores_a?=
 =?utf-8?q?s_complete_on_unsubmit_out_if_payload_was_started_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IE1hcmsgc2VtYXBob3JlcyBhcyBjb21wbGV0ZSBvbiB1bnN1Ym1pdCBvdXQgaWYg
cGF5bG9hZCB3YXMgc3RhcnRlZCAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzYwNjE0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0K
CiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNGZiZGRlOWRjMWMzIGRybS9pOTE1OiBN
YXJrIHNlbWFwaG9yZXMgYXMgY29tcGxldGUgb24gdW5zdWJtaXQgb3V0IGlmIHBheWxvYWQgd2Fz
IHN0YXJ0ZWQKLToxMDogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53
cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIg
bGluZSkKIzEwOiAKUmVmZXJlbmNlczogY2E2ZTU2ZjY1NGU3ICgiZHJtL2k5MTU6IERpc2FibGUg
c2VtYXBob3JlIGJ1c3l3YWl0cyBvbiBzYXR1cmF0ZWQgc3lzdGVtcyIpCgotOjEwOiBFUlJPUjpH
SVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2Nv
bW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQg
Y2E2ZTU2ZjY1NGU3ICgiZHJtL2k5MTU6IERpc2FibGUgc2VtYXBob3JlIGJ1c3l3YWl0cyBvbiBz
YXR1cmF0ZWQgc3lzdGVtcyIpJwojMTA6IApSZWZlcmVuY2VzOiBjYTZlNTZmNjU0ZTcgKCJkcm0v
aTkxNTogRGlzYWJsZSBzZW1hcGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBzeXN0ZW1zIikK
CnRvdGFsOiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDEwIGxpbmVzIGNoZWNrZWQK
MTAwOTU2NmY5Mzg5IGRybS9pOTE1OiBUcnVseSBidW1wIHJlYWR5IHRhc2tzIGFoZWFkIG9mIGJ1
c3l3YWl0cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
