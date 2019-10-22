Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F1EDFF34
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 10:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E00E6E43B;
	Tue, 22 Oct 2019 08:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF2276E43A;
 Tue, 22 Oct 2019 08:14:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8806A01BB;
 Tue, 22 Oct 2019 08:14:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 22 Oct 2019 08:14:30 -0000
Message-ID: <20191022081430.9305.13417@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191022075151.5781-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191022075151.5781-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Add_cov?=
 =?utf-8?q?erage_of_mocs_registers?=
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
ZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgY292ZXJhZ2Ugb2YgbW9jcyByZWdpc3RlcnMKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4MzY3LwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
NmYwZmUxZmJkYzU3IGRybS9pOTE1L3NlbGZ0ZXN0czogQWRkIGNvdmVyYWdlIG9mIG1vY3MgcmVn
aXN0ZXJzCi06MTM5OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3Ig
ZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMxMzk6IApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAoKLToxNDQ6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlz
c2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQoj
MTQ0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MToKKy8q
CgotOjE0NTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMxNDU6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAoKLTozODc6IENIRUNLOlBSRUZFUl9LRVJORUxfVFlQRVM6IFByZWZlciBrZXJu
ZWwgdHlwZSAndTMyJyBvdmVyICd1aW50MzJfdCcKIzM4NzogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfbW9jcy5jOjI0NDoKKwl1aW50MzJfdCBvZmZzZXQ7CgotOjM4ODog
Q0hFQ0s6UFJFRkVSX0tFUk5FTF9UWVBFUzogUHJlZmVyIGtlcm5lbCB0eXBlICd1MzInIG92ZXIg
J3VpbnQzMl90JwojMzg4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9t
b2NzLmM6MjQ1OgorCXVpbnQzMl90ICp2YWRkcjsKCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5n
cywgMiBjaGVja3MsIDU2MiBsaW5lcyBjaGVja2VkCjY1ZDRkOGEwOThiNyBkcm0vaTkxNS9ndDog
RGVmZXIgbW9jcyBzZXR1cCB1bnRpbCBhZnRlciB0aGUgaW5pdGlhbCBjb250ZXh0IGlzIGxvYWRl
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
