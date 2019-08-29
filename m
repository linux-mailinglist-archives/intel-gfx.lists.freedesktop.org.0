Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFF6A212E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 18:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8139E6E12C;
	Thu, 29 Aug 2019 16:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CD786E12C;
 Thu, 29 Aug 2019 16:43:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9020A0134;
 Thu, 29 Aug 2019 16:43:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Thu, 29 Aug 2019 16:43:29 -0000
Message-ID: <20190829164329.10003.60023@emeril.freedesktop.org>
References: <20190829142917.13058-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190829142917.13058-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_dma-buf=3A_change_DMA-buf_locking?=
 =?utf-8?q?_convention?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZG1hLWJ1ZjogY2hhbmdlIERNQS1idWYgbG9ja2luZyBjb252ZW50aW9uClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NjAwNi8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNp
b246IHYwLjYuMApDb21taXQ6IGRtYS1idWY6IGNoYW5nZSBETUEtYnVmIGxvY2tpbmcgY29udmVu
dGlvbgpPa2F5IQoKQ29tbWl0OiBkcm0vdHRtOiB1c2UgdGhlIHBhcmVudCByZXN2IGZvciBnaG9z
dCBvYmplY3RzIHYyCk9rYXkhCgpDb21taXQ6IGRybS9hbWRncHU6IGFkZCBpbmRlcGVuZGVudCBE
TUEtYnVmIGV4cG9ydCB2NwotZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYzozNTM6MTY6IHdhcm5pbmc6IHN5bWJvbCAnYW1kZ3B1X2dlbV9wcmltZV9leHBvcnQnIHdh
cyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Ci1kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jOjM4NToyMzogd2FybmluZzogc3ltYm9sICdhbWRncHVf
Z2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZScgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJl
IHN0YXRpYz8KLWRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmM6NDM0
OjIzOiB3YXJuaW5nOiBzeW1ib2wgJ2FtZGdwdV9nZW1fcHJpbWVfaW1wb3J0JyB3YXMgbm90IGRl
Y2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwotZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYzo1MTo2OiB3YXJuaW5nOiBzeW1ib2wgJ2FtZGdwdV9nZW1fcHJpbWVf
dm1hcCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KLWRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmM6NzE6Njogd2FybmluZzogc3ltYm9sICdh
bWRncHVfZ2VtX3ByaW1lX3Z1bm1hcCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0
YXRpYz8KLWRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmM6ODk6NTog
d2FybmluZzogc3ltYm9sICdhbWRncHVfZ2VtX3ByaW1lX21tYXAnIHdhcyBub3QgZGVjbGFyZWQu
IFNob3VsZCBpdCBiZSBzdGF0aWM/Ci1POmRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmM6MzEwOjI2OiB3YXJuaW5nOiBzeW1ib2wgJ2FtZGdwdV9kbWFidWZfb3BzJyB3
YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwotTzpkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jOjQ5OjE3OiB3YXJuaW5nOiBzeW1ib2wgJ2FtZGdw
dV9nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUg
c3RhdGljPwoKQ29tbWl0OiBkcm0vYW1kZ3B1OiBhZGQgaW5kZXBlbmRlbnQgRE1BLWJ1ZiBpbXBv
cnQgdjgKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
