Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E8D3D66FB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 20:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB23D6E902;
	Mon, 26 Jul 2021 18:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B49B36E838;
 Mon, 26 Jul 2021 18:58:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD889A882E;
 Mon, 26 Jul 2021 18:58:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Mon, 26 Jul 2021 18:58:27 -0000
Message-ID: <162732590768.2616.11093194338965555693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210726185156.27183-1-swati2.sharma@intel.com>
In-Reply-To: <20210726185156.27183-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_Drop_redundant_debug_print?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZGlzcGxheTogRHJvcCByZWR1
bmRhbnQgZGVidWcgcHJpbnQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzkzMDI1LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNBTEwgICAg
c2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1h
dG9taWNzLnNoCiAgREVTQ0VORCBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9j
b21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
bwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmM6IEluIGZ1bmN0aW9uIOKA
mGludGVsX2RwX2NoZWNrX2xpbmtfc2VydmljZV9pcnHigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYzozODY3OjI3OiBlcnJvcjogdW51c2VkIHZhcmlhYmxlIOKAmGk5
MTXigJkgWy1XZXJyb3I9dW51c2VkLXZhcmlhYmxlXQogIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDoyNzE6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAub10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjUxNDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFr
ZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxl
LmJ1aWxkOjUxNDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1h
a2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6NTE0OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAq
KiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE4NDI6IHJlY2lwZSBmb3IgdGFyZ2V0
ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJvciAyCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
