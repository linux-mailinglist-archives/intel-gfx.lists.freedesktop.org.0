Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B54DBFC346
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 10:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8786E185;
	Thu, 14 Nov 2019 09:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15B496E17F;
 Thu, 14 Nov 2019 09:58:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EE0AA432F;
 Thu, 14 Nov 2019 09:58:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Nov 2019 09:58:56 -0000
Message-ID: <157372553603.31206.209361608287411626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191114083436.2261-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191114083436.2261-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Exercise_rc6_handling_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lz
ZSByYzYgaGFuZGxpbmcgKHJldjQpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82OTQ1NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjczMDIwZDQ4ZGIwNiBkcm0vaTkxNS9zZWxmdGVz
dHM6IEV4ZXJjaXNlIHJjNiBoYW5kbGluZwotOjU0OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VT
OiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQg
dXBkYXRpbmc/CiM1NDogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjU5OiBXQVJOSU5HOlNQRFhf
TElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
IHRhZyBpbiBsaW5lIDEKIzU5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9yYzYuYzoxOgorLyoKCi06NjA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2Vk
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNjA6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jOjI6CisgKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjE0MDogV0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3Np
bmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwojMTQwOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYzo4MjoKKwl1bnNpZ25lZCBpbnQgbiwgY291bnQ7
CisJSTkxNV9STkRfU1RBVEUocHJuZyk7CgotOjIwNDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFH
OiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGlu
ZSAxCiMyMDQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5oOjE6
CisvKgoKLToyMDU6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMjA1OiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuaDoyOgorICogU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAoKdG90YWw6IDAgZXJyb3JzLCA2IHdhcm5pbmdzLCAwIGNoZWNrcywgMTg0
IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
