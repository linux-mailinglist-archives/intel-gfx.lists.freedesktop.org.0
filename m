Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D02C57C9C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 08:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20636E5B5;
	Thu, 27 Jun 2019 06:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C5446E5B3;
 Thu, 27 Jun 2019 06:58:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 336B5A0119;
 Thu, 27 Jun 2019 06:58:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Jun 2019 06:58:21 -0000
Message-ID: <20190627065821.21380.98382@emeril.freedesktop.org>
References: <20190627063044.11858-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190627063044.11858-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm/i915=3A_Teach_execbuffer_to_t?=
 =?utf-8?q?ake_the_engine_wakeref_not_GT?=
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
ZHJtL2k5MTU6IFRlYWNoIGV4ZWNidWZmZXIgdG8gdGFrZSB0aGUgZW5naW5lIHdha2VyZWYgbm90
IEdUClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Mjgx
NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2Ry
bS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1OiBUZWFjaCBleGVj
YnVmZmVyIHRvIHRha2UgdGhlIGVuZ2luZSB3YWtlcmVmIG5vdCBHVApPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNS9ndDogVHJhY2sgdGltZWxpbmUgYWN0aXZlbmVzcyBpbiBlbnRlci9leGl0Ck9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNraW5nIHRvIHNwaW5s
b2NrCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBHdWFyZCB0aW1lbGluZSBwaW5uaW5nIHdp
dGggaXRzIG93biBtdXRleApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogSW5jbHVkZSB0aGUgYnJl
YWRjcnVtYiB3aGVuIGFzc2VydGluZyByZXF1ZXN0IGNvbXBsZXRpb24KT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IFByb3RlY3QgcmVxdWVzdCByZXRpcmVtZW50IHdpdGggdGltZWxpbmUtPm11dGV4
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIHN0cnVjdF9tdXRleCBmb3IgYmF0Y2gg
cG9vbCBzZXJpYWxpc2F0aW9uCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3
OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgw
MDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
