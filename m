Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E5248A4D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 19:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F4019892B9;
	Mon, 17 Jun 2019 17:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19506892B9;
 Mon, 17 Jun 2019 17:37:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 133DBA0106;
 Mon, 17 Jun 2019 17:37:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 17 Jun 2019 17:37:43 -0000
Message-ID: <20190617173743.2338.51820@emeril.freedesktop.org>
References: <20190617113413.1869-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190617113413.1869-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/6=5D_dma-buf=3A_add_dynamic_DMA-buf_handl?=
 =?utf-8?q?ing_v10?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNl0g
ZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1BLWJ1ZiBoYW5kbGluZyB2MTAKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyMjA0LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkbWEtYnVmOiBhZGQgZHluYW1pYyBETUEtYnVmIGhh
bmRsaW5nIHYxMApBcHBseWluZzogZHJtL3R0bTogcmVtb3ZlIHRoZSBiYWNraW5nIHN0b3JlIGlm
IG5vIHBsYWNlbWVudCBpcyBnaXZlbgpBcHBseWluZzogZHJtL3R0bTogdXNlIHRoZSBwYXJlbnQg
cmVzdiBmb3IgZ2hvc3Qgb2JqZWN0cyB2MgpBcHBseWluZzogZHJtL2FtZGdwdTogdXNlIGFsbG93
ZWRfZG9tYWlucyBmb3IgZXhwb3J0ZWQgRE1BLWJ1ZnMKZXJyb3I6IHNoYTEgaW5mb3JtYXRpb24g
aXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
Y3MuYykuCmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dp
dCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2gg
ZmFpbGVkIGF0IDAwMDQgZHJtL2FtZGdwdTogdXNlIGFsbG93ZWRfZG9tYWlucyBmb3IgZXhwb3J0
ZWQgRE1BLWJ1ZnMKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0
IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJn
aXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5k
IHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
