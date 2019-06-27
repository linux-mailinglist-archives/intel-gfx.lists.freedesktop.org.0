Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F39385868D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 17:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C886E088;
	Thu, 27 Jun 2019 15:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DFAF6E064;
 Thu, 27 Jun 2019 15:59:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13B4CA47DA;
 Thu, 27 Jun 2019 15:59:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Jun 2019 15:59:25 -0000
Message-ID: <20190627155925.21375.49358@emeril.freedesktop.org>
References: <20190627112834.15721-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190627112834.15721-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/8=5D_drm/i915/selftests=3A_Lock_the_dr?=
 =?utf-8?q?m=5Fmm_while_modifying?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTUvc2VsZnRlc3RzOiBMb2NrIHRoZSBkcm1fbW0gd2hpbGUgbW9kaWZ5aW5nClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Mjg1MS8KU3RhdGUg
OiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3Bh
cnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L3NlbGZ0ZXN0czogTG9jayB0aGUg
ZHJtX21tIHdoaWxlIG1vZGlmeWluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogVGVhY2ggZXhl
Y2J1ZmZlciB0byB0YWtlIHRoZSBlbmdpbmUgd2FrZXJlZiBub3QgR1QKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTUvZ3Q6IFRyYWNrIHRpbWVsaW5lIGFjdGl2ZW5lc3MgaW4gZW50ZXIvZXhpdApPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogQ29udmVydCB0aW1lbGluZSB0cmFja2luZyB0byBzcGlu
bG9jawpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogR3VhcmQgdGltZWxpbmUgcGlubmluZyB3
aXRoIGl0cyBvd24gbXV0ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEluY2x1ZGUgdGhlIGJy
ZWFkY3J1bWIgd2hlbiBhc3NlcnRpbmcgcmVxdWVzdCBjb21wbGV0aW9uCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBQcm90ZWN0IHJlcXVlc3QgcmV0aXJlbWVudCB3aXRoIHRpbWVsaW5lLT5tdXRl
eApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggZm9yIGJhdGNo
IHBvb2wgc2VyaWFsaXNhdGlvbgorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0
Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4
MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
