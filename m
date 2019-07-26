Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 346F37723A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 21:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4386EE47;
	Fri, 26 Jul 2019 19:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17F1E6EE48;
 Fri, 26 Jul 2019 19:35:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07E0FA00FD;
 Fri, 26 Jul 2019 19:35:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 26 Jul 2019 19:35:25 -0000
Message-ID: <20190726193525.14363.1473@emeril.freedesktop.org>
References: <20190725131447.27515-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725131447.27515-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Add_to_timelin?=
 =?utf-8?q?e_requires_the_timeline_mutex_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvZ3Q6IEFkZCB0byB0aW1lbGluZSByZXF1aXJlcyB0aGUgdGltZWxpbmUgbXV0ZXgg
KHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
NDIyNy8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9y
aWdpbi9kcm0tdGlwCmZmNjJkNTk1YzM4ZSBkcm0vaTkxNTogQWxsb3cgc2hhcmluZyB0aGUgaWRs
ZS1iYXJyaWVyIGZyb20gb3RoZXIga2VybmVsIHJlcXVlc3RzCi06MTIzOiBXQVJOSU5HOkZJTEVf
UEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5U
QUlORVJTIG5lZWQgdXBkYXRpbmc/CiMxMjM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLToxMjg6
IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMTI4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmM6MToKKy8qCgotOjEyOTogV0FSTklORzpTUERYX0xJ
Q0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxp
bmUgMSBpbnN0ZWFkCiMxMjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2NvbnRleHQuYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKCi06NjA3
OiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNlc3NhcnkgYmVmb3JlIGEgY2xv
c2UgYnJhY2UgJ30nCiM2MDc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmM6NDg0OgorCisJfQoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCAxIGNoZWNrcywgNzM1
IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
