Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07518B0AF3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 11:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1212E6EC84;
	Thu, 12 Sep 2019 09:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E93426EC83;
 Thu, 12 Sep 2019 09:07:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2EAFA011B;
 Thu, 12 Sep 2019 09:07:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Sep 2019 09:07:48 -0000
Message-ID: <20190912090748.12409.94480@emeril.freedesktop.org>
References: <20190912070925.11526-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190912070925.11526-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Add_a_parano?=
 =?utf-8?q?id_flush_of_the_CSB_pointers_upon_reset?=
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
ZHJtL2k5MTUvZXhlY2xpc3RzOiBBZGQgYSBwYXJhbm9pZCBmbHVzaCBvZiB0aGUgQ1NCIHBvaW50
ZXJzIHVwb24gcmVzZXQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY2NTc5LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBk
cm0vaTkxNS9leGVjbGlzdHM6IEFkZCBhIHBhcmFub2lkIGZsdXNoIG9mIHRoZSBDU0IgcG9pbnRl
cnMgdXBvbiByZXNldApBcHBseWluZzogZHJtL2k5MTUvZXhlY2xpc3RzOiBFbnN1cmUgdGhlIGNv
bnRleHQgaXMgcmVsb2FkZWQgYWZ0ZXIgYSBHUFUgcmVzZXQKZXJyb3I6IHNoYTEgaW5mb3JtYXRp
b24gaXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYykuCmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dp
dCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2gg
ZmFpbGVkIGF0IDAwMDIgZHJtL2k5MTUvZXhlY2xpc3RzOiBFbnN1cmUgdGhlIGNvbnRleHQgaXMg
cmVsb2FkZWQgYWZ0ZXIgYSBHUFUgcmVzZXQKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHBy
b2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhp
cyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmln
aW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
