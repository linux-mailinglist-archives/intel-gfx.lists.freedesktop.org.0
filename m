Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF7A5BA79
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 13:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C5989CA2;
	Mon,  1 Jul 2019 11:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABF8889CA1;
 Mon,  1 Jul 2019 11:20:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A26CCA011B;
 Mon,  1 Jul 2019 11:20:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jul 2019 11:20:37 -0000
Message-ID: <20190701112037.12149.63310@emeril.freedesktop.org>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190701100502.15639-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/12=5D_drm/i915/guc=3A_Avoid_reclaim_l?=
 =?utf-8?q?ocks_during_reset?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEy
XSBkcm0vaTkxNS9ndWM6IEF2b2lkIHJlY2xhaW0gbG9ja3MgZHVyaW5nIHJlc2V0ClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzAyOS8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNl
IHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L2d1YzogQXZvaWQgcmVjbGFpbSBsb2Nr
cyBkdXJpbmcgcmVzZXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1hcmt1cCBwb3RlbnRpYWwg
bG9jayBmb3IgaTkxNV9hY3RpdmUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1hcmsgdXAgdm1h
LT5hY3RpdmUgYXMgc2FmZSBmb3IgdXNlIGluc2lkZSBzaHJpbmtlcnMKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTUvZXhlY2xpc3RzOiBSZWZhY3RvciBDU0Igc3RhdGUgbWFjaGluZQpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IEhlc2l0YXRlIGJlZm9yZSBzbGljaW5nCi1POmRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjg5OToxNjogd2FybmluZzogZXhwcmVzc2lv
biB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmM6ODk5OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6ODk5OjE2OiB3YXJuaW5nOiBleHByZXNzaW9u
IHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6
ODk5OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBk
cm0vaTkxNS9zZWxmdGVzdHM6IExvY2sgdGhlIGRybV9tbSB3aGlsZSBtb2RpZnlpbmcKT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IFRlYWNoIGV4ZWNidWZmZXIgdG8gdGFrZSB0aGUgZW5naW5lIHdh
a2VyZWYgbm90IEdUCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBUcmFjayB0aW1lbGluZSBh
Y3RpdmVuZXNzIGluIGVudGVyL2V4aXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Q6IENvbnZl
cnQgdGltZWxpbmUgdHJhY2tpbmcgdG8gc3BpbmxvY2sKT2theSEKCkNvbW1pdDogZHJtL2k5MTUv
Z3Q6IEd1YXJkIHRpbWVsaW5lIHBpbm5pbmcgd2l0aCBpdHMgb3duIG11dGV4Ck9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBQcm90ZWN0IHJlcXVlc3QgcmV0aXJlbWVudCB3aXRoIHRpbWVsaW5lLT5t
dXRleApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggZm9yIGJh
dGNoIHBvb2wgc2VyaWFsaXNhdGlvbgorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5o
OjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVl
ICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
