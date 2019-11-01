Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E373EBE34
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 07:56:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916396F725;
	Fri,  1 Nov 2019 06:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFDC96F71F;
 Fri,  1 Nov 2019 06:56:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7867A47E1;
 Fri,  1 Nov 2019 06:56:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 01 Nov 2019 06:56:31 -0000
Message-ID: <20191101065631.19148.72515@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191031111407.12493-1-jani.nikula@intel.com>
In-Reply-To: <20191031111407.12493-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_update_rawclk_also_on_resume_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IHVwZGF0ZSByYXdjbGsgYWxz
byBvbiByZXN1bWUgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82ODgxNy8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWlu
ZzogZHJtL2k5MTU6IHVwZGF0ZSByYXdjbGsgYWxzbyBvbiByZXN1bWUKVXNpbmcgaW5kZXggaW5m
byB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0
by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQ09ORkxJQ1QgKGNvbnRl
bnQpOiBNZXJnZSBjb25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkF1
dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYwplcnJvcjogRmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dp
dCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2gg
ZmFpbGVkIGF0IDAwMDEgZHJtL2k5MTU6IHVwZGF0ZSByYXdjbGsgYWxzbyBvbiByZXN1bWUKV2hl
biB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUi
LgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBp
bnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcs
IHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
