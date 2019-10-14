Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30325D6BF7
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 01:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7EC76E5BD;
	Mon, 14 Oct 2019 23:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A8B36E348;
 Mon, 14 Oct 2019 23:15:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3415DA0094;
 Mon, 14 Oct 2019 23:15:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Oct 2019 23:15:07 -0000
Message-ID: <20191014231507.23966.61453@emeril.freedesktop.org>
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191014220534.1662-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/10=5D_drm/i915/gem=3A_Distinguish_eac?=
 =?utf-8?q?h_object_type?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEw
XSBkcm0vaTkxNS9nZW06IERpc3Rpbmd1aXNoIGVhY2ggb2JqZWN0IHR5cGUKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3OTkzLwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVy
c2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTUvZ2VtOiBEaXN0aW5ndWlzaCBlYWNoIG9iamVj
dCB0eXBlCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogQ2xlYXIgc2VtYXBob3Jl
IGltbWVkaWF0ZWx5IHVwb24gRUxTUCBwcm9tb3Rpb24KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IEV4cG9zZSBlbmdpbmUgcHJvcGVydGllcyB2aWEgc3lzZnMKLQorZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6NTI6MTA6IGVycm9yOiBiYWQgaW50ZWdlciBjb25z
dGFudCBleHByZXNzaW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lz
ZnMuYzo1MzoxMDogZXJyb3I6IGJhZCBpbnRlZ2VyIGNvbnN0YW50IGV4cHJlc3Npb24KK2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjU3OjEwOiBlcnJvcjogYmFk
IGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3N5c2ZzLmM6NzM6MjA6IGVycm9yOiB1bmRlZmluZWQgaWRlbnRpZmllciAnZW5n
aW5lJworZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6OTY6OTog
ZXJyb3I6IGNhbm5vdCBzaXplIGV4cHJlc3Npb24KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9zeXNmcy5jOjk5Ojk6IGVycm9yOiBjYW5ub3Qgc2l6ZSBleHByZXNzaW9uCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYzo5OTo5OiBlcnJvcjog
Y2Fubm90IHNpemUgZXhwcmVzc2lvbgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3N5c2ZzLmM6OTk6OTogZXJyb3I6IGNhbm5vdCBzaXplIGV4cHJlc3Npb24KCkNvbW1pdDog
ZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1L2d0OiBJbnRyb2R1Y2UgYmFycmllciBwdWxzZXMgYWxvbmcgZW5naW5lcwpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IENhbmNlbCBiYW5uZWQgY29udGV4dHMgb24gc2NoZWR1
bGUtb3V0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2dlbTogQ2FuY2VsIG5vbi1wZXJzaXN0ZW50
IGNvbnRleHRzIG9uIGNsb3NlCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIGhhbmdj
aGVjayBieSBoZWFydGJlYXRzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0OiBUcmlt
IGltbWVkaWF0ZSB0aW1lc2xpY2UgZXhwaXJ5Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGbHVz
aCBpZGxlIGJhcnJpZXJzIHdoZW4gd2FpdGluZwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
