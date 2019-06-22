Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F794F576
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 13:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E11E36E96C;
	Sat, 22 Jun 2019 11:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCABB6E96B;
 Sat, 22 Jun 2019 11:06:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D49D8A011A;
 Sat, 22 Jun 2019 11:06:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 22 Jun 2019 11:06:16 -0000
Message-ID: <20190622110616.17004.87662@emeril.freedesktop.org>
References: <20190622104216.24201-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190622104216.24201-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm/i915/execlists=3A_Always_clea?=
 =?utf-8?q?r_ring=5Fpause_if_we_do_not_submit?=
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
ZHJtL2k5MTUvZXhlY2xpc3RzOiBBbHdheXMgY2xlYXIgcmluZ19wYXVzZSBpZiB3ZSBkbyBub3Qg
c3VibWl0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
MjU3Mi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2lu
L2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0
czogQWx3YXlzIGNsZWFyIHJpbmdfcGF1c2UgaWYgd2UgZG8gbm90IHN1Ym1pdApPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IENvbnZlcnQgcmVjdXJzaXZlIGRlZmVyX3JlcXVlc3Qo
KSBpbnRvIGFuIGl0ZXJhY3RpdmUKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBT
ZXJpYWxpc2Ugbm9wIHJlc2V0IHdpdGggcmV0aXJlbWVudApPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NS9zZWxmdGVzdDogRHJvcCBtYW51YWwgcmVxdWVzdCB3YWtlcmVmcyBhcm91bmQgaGFuZ2NoZWNr
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZW5hbWUgaW50ZWxfd2FrZXJlZl9baXNdX2FjdGl2
ZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIGEgd2FrZXJlZiBnZXR0ZXIgZm9yIGlmZiB0
aGUgd2FrZXJlZiBpcyBhbHJlYWR5IGFjdGl2ZQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9l
dmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50
IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKCkNvbW1pdDogZHJtL2k5MTU6IE9u
bHkgcmVjb3ZlciBhY3RpdmUgZW5naW5lcwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
