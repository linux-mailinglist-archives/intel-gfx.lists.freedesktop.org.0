Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035B3DA779
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 10:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DF86EA01;
	Thu, 17 Oct 2019 08:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23B9F6E455;
 Thu, 17 Oct 2019 08:34:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BF21A47E2;
 Thu, 17 Oct 2019 08:34:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 08:34:56 -0000
Message-ID: <20191017083456.5570.33108@emeril.freedesktop.org>
References: <20191017080144.16899-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017080144.16899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Add_coverage_of_mocs_registers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgY292
ZXJhZ2Ugb2YgbW9jcyByZWdpc3RlcnMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY4MTM1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZTVmYWQ5OTY3YTE1IGRybS9pOTE1L3NlbGZ0
ZXN0czogQWRkIGNvdmVyYWdlIG9mIG1vY3MgcmVnaXN0ZXJzCi06Mjg6IFdBUk5JTkc6RklMRV9Q
QVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRB
SU5FUlMgbmVlZCB1cGRhdGluZz8KIzI4OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06MzM6IFdB
Uk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMzM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X21vY3MuYzoxOgorLyoKCi06MzQ6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RB
RzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5z
dGVhZAojMzQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYzoy
OgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLToyMTc6IENIRUNLOlNQQUNJTkc6
IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJy8nIChjdHg6VnhWKQojMjE3OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MTg1OgorCW1lbXNldDMyKGFy
Zy0+dmFkZHIsIFNUQUNLX01BR0lDLCBQQUdFX1NJWkUvc2l6ZW9mKHUzMikpOwogCSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgotOjIyNjogRVJST1I6U1BBQ0lO
Rzogc3BhY2UgcmVxdWlyZWQgYmVmb3JlIHRoZSBvcGVuIHBhcmVudGhlc2lzICcoJwojMjI2OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MTk0OgorCWlmKGVy
cikKCi06MjgzOiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNlc3NhcnkgYmVm
b3JlIGEgY2xvc2UgYnJhY2UgJ30nCiMyODM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X21vY3MuYzoyNTE6CisKK30KCi06Mjg0OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBs
ZWFzZSB1c2UgYSBibGFuayBsaW5lIGFmdGVyIGZ1bmN0aW9uL3N0cnVjdC91bmlvbi9lbnVtIGRl
Y2xhcmF0aW9ucwojMjg0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9t
b2NzLmM6MjUyOgorfQorc3RhdGljIGludCBsaXZlX21vY3NfcmVzZXQodm9pZCAqYXJnKQoKdG90
YWw6IDEgZXJyb3JzLCAzIHdhcm5pbmdzLCAzIGNoZWNrcywgMzIzIGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
