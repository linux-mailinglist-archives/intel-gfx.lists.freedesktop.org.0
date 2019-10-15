Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B92D7765
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 15:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CC06E258;
	Tue, 15 Oct 2019 13:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC6A16E23F;
 Tue, 15 Oct 2019 13:25:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A57F7A0073;
 Tue, 15 Oct 2019 13:25:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 15 Oct 2019 13:25:55 -0000
Message-ID: <20191015132555.22841.38903@emeril.freedesktop.org>
References: <20191015122250.28884-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191015122250.28884-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm/i915=3A_Expose_engine_propert?=
 =?utf-8?q?ies_via_sysfs?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvN10g
ZHJtL2k5MTU6IEV4cG9zZSBlbmdpbmUgcHJvcGVydGllcyB2aWEgc3lzZnMKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4MDIyLwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVy
c2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTU6IEV4cG9zZSBlbmdpbmUgcHJvcGVydGllcyB2
aWEgc3lzZnMKLQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6
NTI6MTA6IGVycm9yOiBiYWQgaW50ZWdlciBjb25zdGFudCBleHByZXNzaW9uCitkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYzo1MzoxMDogZXJyb3I6IGJhZCBpbnRl
Z2VyIGNvbnN0YW50IGV4cHJlc3Npb24KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9zeXNmcy5jOjU3OjEwOiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lv
bgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6NzM6MjA6IGVy
cm9yOiB1bmRlZmluZWQgaWRlbnRpZmllciAnZW5naW5lJworZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6OTY6OTogZXJyb3I6IGNhbm5vdCBzaXplIGV4cHJlc3Np
b24KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjk5Ojk6IGVy
cm9yOiBjYW5ub3Qgc2l6ZSBleHByZXNzaW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfc3lzZnMuYzo5OTo5OiBlcnJvcjogY2Fubm90IHNpemUgZXhwcmVzc2lvbgorZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6OTk6OTogZXJyb3I6IGNh
bm5vdCBzaXplIGV4cHJlc3Npb24KCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBw
cmVlbXB0aW9uCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBJbnRyb2R1Y2UgYmFycmllciBw
dWxzZXMgYWxvbmcgZW5naW5lcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IENh
bmNlbCBiYW5uZWQgY29udGV4dHMgb24gc2NoZWR1bGUtb3V0Ck9rYXkhCgpDb21taXQ6IGRybS9p
OTE1L2dlbTogQ2FuY2VsIGNvbnRleHRzIHdoZW4gaGFuZ2NoZWNraW5nIGlzIGRpc2FibGVkCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1L2dlbTogTWFrZSBjb250ZXh0IHBlcnNpc3RlbmNlIG9wdGlv
bmFsCk9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
