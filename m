Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 724365697E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 14:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C800A6E3F7;
	Wed, 26 Jun 2019 12:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A5256E3F7;
 Wed, 26 Jun 2019 12:41:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75909A00E9;
 Wed, 26 Jun 2019 12:41:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Wed, 26 Jun 2019 12:41:29 -0000
Message-ID: <20190626124129.9081.31698@emeril.freedesktop.org>
References: <20190626122310.1498-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190626122310.1498-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/6=5D_dma-buf=3A_add_dynamic_DMA-buf_ha?=
 =?utf-8?q?ndling_v13?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNl0g
ZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1BLWJ1ZiBoYW5kbGluZyB2MTMKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNzc3LwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lv
bjogdjAuNS4yCkNvbW1pdDogZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1BLWJ1ZiBoYW5kbGluZyB2
MTMKT2theSEKCkNvbW1pdDogZHJtL3R0bTogcmVtb3ZlIHRoZSBiYWNraW5nIHN0b3JlIGlmIG5v
IHBsYWNlbWVudCBpcyBnaXZlbgpPa2F5IQoKQ29tbWl0OiBkcm0vdHRtOiB1c2UgdGhlIHBhcmVu
dCByZXN2IGZvciBnaG9zdCBvYmplY3RzIHYyCk9rYXkhCgpDb21taXQ6IGRybS9hbWRncHU6IHVz
ZSBhbGxvd2VkX2RvbWFpbnMgZm9yIGV4cG9ydGVkIERNQS1idWZzCk9rYXkhCgpDb21taXQ6IGRy
bS9hbWRncHU6IGFkZCBpbmRlcGVuZGVudCBETUEtYnVmIGV4cG9ydCB2NgotZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYzo4OTo1OiB3YXJuaW5nOiBzeW1ib2wgJ2Ft
ZGdwdV9nZW1fcHJpbWVfbW1hcCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRp
Yz8KLWRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmM6MzMzOjI3OiB3
YXJuaW5nOiBzeW1ib2wgJ2FtZGdwdV9nZW1fcHJpbWVfcmVzX29iaicgd2FzIG5vdCBkZWNsYXJl
ZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KLU86ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RtYV9idWYuYzozMjQ6MjY6IHdhcm5pbmc6IHN5bWJvbCAnYW1kZ3B1X2RtYWJ1Zl9vcHMn
IHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Ci1kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jOjQwNjoxNjogd2FybmluZzogc3ltYm9sICdhbWRn
cHVfZ2VtX3ByaW1lX2V4cG9ydCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRp
Yz8KLWRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmM6NDM4OjIzOiB3
YXJuaW5nOiBzeW1ib2wgJ2FtZGdwdV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlJyB3YXMgbm90
IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwotZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2RtYV9idWYuYzo0ODc6MjM6IHdhcm5pbmc6IHN5bWJvbCAnYW1kZ3B1X2dlbV9w
cmltZV9pbXBvcnQnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Ci1POmRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmM6NDk6MTc6IHdhcm5pbmc6
IHN5bWJvbCAnYW1kZ3B1X2dlbV9wcmltZV9nZXRfc2dfdGFibGUnIHdhcyBub3QgZGVjbGFyZWQu
IFNob3VsZCBpdCBiZSBzdGF0aWM/Ci1kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZG1hX2J1Zi5jOjUxOjY6IHdhcm5pbmc6IHN5bWJvbCAnYW1kZ3B1X2dlbV9wcmltZV92bWFwJyB3
YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwotZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYzo3MTo2OiB3YXJuaW5nOiBzeW1ib2wgJ2FtZGdwdV9n
ZW1fcHJpbWVfdnVubWFwJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoK
Q29tbWl0OiBkcm0vYW1kZ3B1OiBhZGQgaW5kZXBlbmRlbnQgRE1BLWJ1ZiBpbXBvcnQgdjcKT2th
eSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
