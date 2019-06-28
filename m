Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F9E59763
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 11:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACF76E8AB;
	Fri, 28 Jun 2019 09:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C8C86E8AB;
 Fri, 28 Jun 2019 09:24:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12B20A00EF;
 Fri, 28 Jun 2019 09:24:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 28 Jun 2019 09:24:11 -0000
Message-ID: <20190628092411.3158.40514@emeril.freedesktop.org>
References: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Use_intel=5Fcrtc=5Fstate_everywhere!?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVzZSBpbnRlbF9jcnRjX3N0
YXRlIGV2ZXJ5d2hlcmUhClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82MjkyMC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFy
c2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1
OiBQYXNzIGludGVsX2NydGNfc3RhdGUgdG8gbmVlZHNfbW9kZXNldCgpCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBDb252ZXJ0IG1vc3Qgb2YgYXRvbWljIGNvbW1pdCB0byB0YWtlIG1vcmUgaW50
ZWwgc3RhdGUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IENvbnZlcnQgaHcgc3RhdGUgdmVyaWZp
ZXIgdG8gdGFrZSBtb3JlIGludGVsIHN0YXRlLCB2Mi4KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IFVzZSBpbnRlbF9jcnRjX3N0YXRlIGluIHNhbml0aXplX3dhdGVybWFya3MoKSB0b28KT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IFBhc3MgaW50ZWwgc3RhdGUgdG8gcGxhbmUgZnVuY3Rpb25zIGFz
IHdlbGwKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFVzZSBpbnRlbCBzdGF0ZSBhcyBtdWNoIGFz
IHBvc3NpYmxlIGluIHdtIGNvZGUKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzoy
NTIxOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjI1MjE6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6MjU0ODox
Njogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYzoyNTQ4OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzoyNTIxOjE2OiB3YXJu
aW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYzoyNTIxOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzoyNTQ4OjE2OiB3YXJuaW5nOiBleHBy
ZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YzoyNTQ4OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
