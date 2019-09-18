Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD3DB63EB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 14:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C10B6EF3A;
	Wed, 18 Sep 2019 12:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F9CF6EF3C;
 Wed, 18 Sep 2019 12:59:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 092EDA0091;
 Wed, 18 Sep 2019 12:59:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Sep 2019 12:59:48 -0000
Message-ID: <20190918125948.21836.21657@emeril.freedesktop.org>
References: <20190918092303.23078-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190918092303.23078-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Expose_engine_properties_via_sysfs_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4cG9zZSBlbmdpbmUgcHJv
cGVydGllcyB2aWEgc3lzZnMgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82Njg0OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmJjYjk5NDg1NDk3MyBkcm0vaTkxNTogRXhw
b3NlIGVuZ2luZSBwcm9wZXJ0aWVzIHZpYSBzeXNmcwotOjM2OiBXQVJOSU5HOkZJTEVfUEFUSF9D
SEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJT
IG5lZWQgdXBkYXRpbmc/CiMzNjogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjQxOiBXQVJOSU5H
OlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyIHRhZyBpbiBsaW5lIDEKIzQxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfc3lzZnMuYzoxOgorLyoKCi06NDI6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5z
dGVhZAojNDI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNm
cy5jOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjE2MDogV0FSTklORzpT
UERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllciB0YWcgaW4gbGluZSAxCiMxNjA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9zeXNmcy5oOjE6CisvKgoKLToxNjE6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5z
dGVhZAojMTYxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lz
ZnMuaDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6IDAgZXJyb3Jz
LCA1IHdhcm5pbmdzLCAwIGNoZWNrcywgMTUzIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
