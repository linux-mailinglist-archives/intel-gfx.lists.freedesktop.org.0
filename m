Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BCD3927D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 18:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3864D89A98;
	Fri,  7 Jun 2019 16:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3001F89A98;
 Fri,  7 Jun 2019 16:49:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2928CA3ECB;
 Fri,  7 Jun 2019 16:49:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 07 Jun 2019 16:49:07 -0000
Message-ID: <20190607164907.32140.36046@emeril.freedesktop.org>
References: <20190607162611.23514-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190607162611.23514-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/fb-helper=3A_Do_not_assum?=
 =?utf-8?q?e_drm=5Fmode=5Fcreate=5Ffrom=5Fcmdline=5Fmode=28=29_can=27t_fai?=
 =?utf-8?q?l?=
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
ZHJtL2ZiLWhlbHBlcjogRG8gbm90IGFzc3VtZSBkcm1fbW9kZV9jcmVhdGVfZnJvbV9jbWRsaW5l
X21vZGUoKSBjYW4ndCBmYWlsClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82MTc4MS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBj
aGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjMzYzUyNTY0Mzc3ZCBkcm0vZmItaGVscGVyOiBEbyBu
b3QgYXNzdW1lIGRybV9tb2RlX2NyZWF0ZV9mcm9tX2NtZGxpbmVfbW9kZSgpIGNhbid0IGZhaWwK
YTAzNDdkOGYwZjE3IGRybTogUmVmdXNlIHRvIGNyZWF0ZSB6ZXJvIHdpZHRoL2hlaWdodCBjbWRs
aW5lIG1vZGVzCjI3YzY4YTIxZjQzOSBkcm0vZmItaGVscGVyOiBTZXQgdXAgZ2FtbWFfbHV0IGR1
cmluZyByZXN0b3JlX2ZiZGV2X21vZGVfYXRvbWljKCkKYjU5ZDIzZjY1ZWRkIGRybS9pOTE1OiBU
aHJvdyBhd2F5IHRoZSBCSU9TIGZiIGlmIGhhcyB0aGUgd3JvbmcgZGVwdGgvYnBwCi06MzI6IENI
RUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91bGQgYmUg
YXZvaWRlZAojMzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiZGV2LmM6MjEx
OgorCQlpbnRlbF9mYiA9IGlmYmRldi0+ZmIgPSBOVUxMOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdh
cm5pbmdzLCAxIGNoZWNrcywgMTcgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
