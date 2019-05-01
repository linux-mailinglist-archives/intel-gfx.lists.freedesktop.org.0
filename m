Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EE410BDD
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 19:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0A689261;
	Wed,  1 May 2019 17:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04CFF89261;
 Wed,  1 May 2019 17:16:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00030A363B;
 Wed,  1 May 2019 17:16:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 01 May 2019 17:16:12 -0000
Message-ID: <20190501171612.14434.83836@emeril.freedesktop.org>
References: <20190501165046.30375-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190501165046.30375-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915/perf=3A_Refactor_oa_object_to_better_manage_resources?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogUmVmYWN0b3Igb2Eg
b2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVzb3VyY2VzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDE3Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUu
MgpDb21taXQ6IGRybS9pOTE1L3BlcmY6IFJlZmFjdG9yIG9hIG9iamVjdCB0byBiZXR0ZXIgbWFu
YWdlIHJlc291cmNlcwotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoxNDMwOjE1
OiB3YXJuaW5nOiBtZW1zZXQgd2l0aCBieXRlIGNvdW50IG9mIDE2Nzc3MjE2Ci1POmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjE0ODg6MTU6IHdhcm5pbmc6IG1lbXNldCB3aXRoIGJ5
dGUgY291bnQgb2YgMTY3NzcyMTYKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjE0
MzY6MTU6IHdhcm5pbmc6IG1lbXNldCB3aXRoIGJ5dGUgY291bnQgb2YgMTY3NzcyMTYKK2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjE0OTU6MTU6IHdhcm5pbmc6IG1lbXNldCB3aXRo
IGJ5dGUgY291bnQgb2YgMTY3NzcyMTYKLWRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy8u
Li9pOTE1X2Rydi5oOjM0NDg6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZv
aWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvLi4vaTkxNV9kcnYuaDozNDQzOjE2
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
