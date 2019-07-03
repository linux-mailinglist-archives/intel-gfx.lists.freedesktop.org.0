Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF745E14D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0898E6E108;
	Wed,  3 Jul 2019 09:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A959C6E10F;
 Wed,  3 Jul 2019 09:47:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0564A0005;
 Wed,  3 Jul 2019 09:47:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Jul 2019 09:47:17 -0000
Message-ID: <20190703094717.7777.21591@emeril.freedesktop.org>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/15=5D_drm/i915/selftests=3A_Common_li?=
 =?utf-8?q?ve_setup/teardown?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE1
XSBkcm0vaTkxNS9zZWxmdGVzdHM6IENvbW1vbiBsaXZlIHNldHVwL3RlYXJkb3duClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzExNC8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNl
IHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L3NlbGZ0ZXN0czogQ29tbW9uIGxpdmUg
c2V0dXAvdGVhcmRvd24KT2theSEKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBMb2NrIHRo
ZSBkcm1fbW0gd2hpbGUgbW9kaWZ5aW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBVc2Ug
Y2FsbGVyIHByb3ZpZGVkIGZvcmNld2FrZSBmb3IgaW50ZWxfbW9jc19pbml0X2VuZ2luZQpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogQXNzdW1lIHdlIGhvbGQgZm9yY2V3YWtlIGZvciBleGVj
bGlzdHMgcmVzdW1lCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBJZ25vcmUgZm9yY2V3YWtl
IGFjcXVpc2l0aW9uIGZvciBwb3N0aW5nX3JlYWRzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2dl
bTogRnJlZSBwYWdlcyBiZWZvcmUgcmN1LWZyZWVpbmcgdGhlIG9iamVjdApPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogTWFya3VwIHBvdGVudGlhbCBsb2NrIGZvciBpOTE1X2FjdGl2ZQpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNTogTWFyayB1cCB2bWEtPmFjdGl2ZSBhcyBzYWZlIGZvciB1c2UgaW5z
aWRlIHNocmlua2VycwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IEhlc2l0YXRl
IGJlZm9yZSBzbGljaW5nCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjg5
OToxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6ODk5OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6ODk5
OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6ODk5OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNTogVGVhY2ggZXhlY2J1ZmZlciB0byB0YWtl
IHRoZSBlbmdpbmUgd2FrZXJlZiBub3QgR1QKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Q6IFRy
YWNrIHRpbWVsaW5lIGFjdGl2ZW5lc3MgaW4gZW50ZXIvZXhpdApPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS9ndDogQ29udmVydCB0aW1lbGluZSB0cmFja2luZyB0byBzcGlubG9jawpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9ndDogR3VhcmQgdGltZWxpbmUgcGlubmluZyB3aXRoIGl0cyBvd24gbXV0
ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFByb3RlY3QgcmVxdWVzdCByZXRpcmVtZW50IHdp
dGggdGltZWxpbmUtPm11dGV4Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIHN0cnVj
dF9tdXRleCBmb3IgYmF0Y2ggcG9vbCBzZXJpYWxpc2F0aW9uCisuL2luY2x1ZGUvdWFwaS9saW51
eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20g
Y29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
