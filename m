Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1708F99C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 15:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3496789110;
	Tue, 30 Apr 2019 13:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02B2A88DFC;
 Tue, 30 Apr 2019 13:12:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0206A0099;
 Tue, 30 Apr 2019 13:12:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 30 Apr 2019 13:12:18 -0000
Message-ID: <20190430131218.26874.81762@emeril.freedesktop.org>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190429180020.27274-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/5=5D_drm/i915=3A_Wait_for_the_struct?=
 =?utf-8?q?=5Fmutex_on_idling_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IFdhaXQgZm9yIHRoZSBzdHJ1Y3RfbXV0ZXggb24gaWRsaW5nIChyZXYyKQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAwNzIvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNw
YXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTogV2FpdCBmb3IgdGhlIHN0cnVj
dF9tdXRleCBvbiBpZGxpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE9ubHkgcmVzY2hlZHVs
ZSB0aGUgc3VibWlzc2lvbiB0YXNrbGV0IGlmIHByZWVtcHRpb24gaXMgcG9zc2libGUKLU86ZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmg6MTI0OjIzOiB3YXJuaW5nOiBleHBy
ZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmUuaDoxMjQ6MjM6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQp
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oOjcwOjIzOiB3YXJuaW5nOiBl
eHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
Y2hlZHVsZXIuaDo3MDoyMzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmg6NzA6MjM6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1OiBEZWxheSBzZW1h
cGhvcmUgc3VibWlzc2lvbiB1bnRpbCB0aGUgc3RhcnQgb2YgdGhlIHNpZ25hbGVyCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBEaXNhYmxlIHNlbWFwaG9yZSBidXN5d2FpdHMgb24gc2F0dXJhdGVk
IHN5c3RlbXMKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5p
bmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAw
MDAwMCBiZWNvbWVzIDApCgpDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogRG9uJ3QgYXBwbHkg
cHJpb3JpdHkgYm9vc3QgZm9yIHJlc2V0cwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
