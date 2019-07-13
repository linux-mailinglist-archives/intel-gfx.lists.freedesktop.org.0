Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BEB67782
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78686E3A8;
	Sat, 13 Jul 2019 01:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A894F6E3A8;
 Sat, 13 Jul 2019 01:19:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FE67A3C0D;
 Sat, 13 Jul 2019 01:19:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 13 Jul 2019 01:19:54 -0000
Message-ID: <20190713011954.29168.65578@emeril.freedesktop.org>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Tiger_Lake_part_2?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogVGlnZXIgTGFrZSBwYXJ0IDIKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYzNjcwLwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNGYy
NDEzODEzMGExIGRybS9pOTE1L3RnbDogc2tpcCBzZXR0aW5nIFBPUlRfQ0xfRFcxMl8qIG9uIGlu
aXRpYWxpemF0aW9uCjA1MTA0YzNjMDU2MSBkcm0vaTkxNS90Z2w6IHNlbGVjdCBjb3JyZWN0IGJp
dCBmb3IgcG9ydCBzZWxlY3QKZTYxN2Y2MGI0NDA1IGRybS9pOTE1L3RnbDogdXBkYXRlIGRkaS90
YyBjbG9ja19vZmYgYml0cwotOjI0OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3Vt
ZW50IHJldXNlICd0Y19wb3J0JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzI0OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjk3NTI6CisjZGVmaW5lICBJQ0xfRFBDTEtB
X0NGR0NSMF9UQ19DTEtfT0ZGKHRjX3BvcnQpCSgxIDw8ICgodGNfcG9ydCkgPCBQT1JUX1RDNCA/
IFwKKwkJCQkJCSAgICAgICAodGNfcG9ydCkgKyAxMiA6IFwKKwkJCQkJCSAgICAgICAodGNfcG9y
dCkgLSBQT1JUX1RDNCArIDIxKSkKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVj
a3MsIDExIGxpbmVzIGNoZWNrZWQKNTdhMWM4MzEzNDlkIGRybS9pOTE1L3RnbDogQWRkIGhwZCBp
bnRlcnJ1cHQgaGFuZGxpbmcKZjJkYWU3MTY5MmU5IGRybS9pOTE1L3RnbDogVXBkYXRlIG5vcnRo
IGRpc3BsYXkgaG90cGx1ZyBkZXRlY3Rpb24gdG8gVEdMIGNvbm5lY3Rpb25zCjUzY2NmNjNkMDc2
NyBkcm0vaTkxNS90Z2w6IGhhbmRsZSBEUCBhdXggaW50ZXJydXB0cwowOWJiYjkzMTQzYjAgZHJt
L2k5MTUvZG1jOiBMb2FkIERNQyBvbiBUR0wKNjg5NDhjNGNkOGM2IGRybS9pOTE1L3RnbDogQWRk
IERLTCBwaHkgcGxsIHJlZ2lzdGVycwplYjZlMWZhZGUzZTQgZHJtL2k5MTUvdGdsOiByZS1pbmRl
bnQgY29kZSB0byBwcmVwYXJlIGZvciBES0wgY2hhbmdlcwoyYWI5NGRmMTc3NzYgZHJtL2k5MTUv
dGdsOiBBZGQgREtMIHBoeSBwbGwgc3RhdGUgY2FsY3VsYXRpb25zCjNiNjVkZjAzM2QyZCBkcm0v
aTkxNS90Z2w6IHN0YXJ0IGFkZGluZyB0aGUgREtMIFBMTHMgdG8gdXNlIG9uIFRDIHBvcnRzCmFm
YzE0ZWU5YjI5ZCBkcm0vaTkxNS90Z2w6IEFkZCBzdXBwb3J0IGZvciBka2wgcGxsIHdyaXRlCjc1
Yzk5YmE2Y2U0ZCBkcm0vaTkxNS9nZW4xMjogYWRkIHN1cHBvcnQgZm9yIHJlYWRpbmcgdGhlIHRp
bWVzdGFtcCBmcmVxdWVuY3kKMjA4YzgyMDY1Y2ZkIGRybS9pOTE1L3RnbDogYWxsb3cgdGhlIHJl
Z19yZWFkIGlvY3RsIHRvIHJlYWQgdGhlIFJDUyBUSU1FU1RBTVAgcmVnaXN0ZXIKODZjYTcwNTg4
MWU0IGRybS9pOTE1L3RnbDogSW50cm9kdWNlIGluaXRpYWwgVGlnZXJsYWtlIFdvcmthcm91bmRz
CjRhM2IyMDNmNjY3MCBkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBXYV8xNjA0NTU1NjA3CmI3ZTZk
NzU0NTgxMiBkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBXYV8xNDA2OTQxNDUzCjE1NWMxMDc2YjIw
MCBkcm0vaTkxNS90Z2w6IERlZmluZSBNT0NTIGVudHJpZXMgZm9yIFRpZ2VybGFrZQpmMGVmYzY0
YmI5MWEgZHJtL2k5MTUvdGdsOiBUaWdlcmxha2Ugb25seSBoYXMgZ2xvYmFsIE1PQ1MgcmVnaXN0
ZXJzCjViYzY3NDM4MjNkMyBkcm0vaTkxNTogTW92ZSBNT0NTIHNldHVwIHRvIGludGVsX21vY3Mu
YwoyMjRiNjIyNjg4NTUgZHJtL2k5MTUvdGdsOiBBZGQgYW5kIHVzZSBuZXcgREM1IGFuZCBEQzYg
cmVzaWRlbmN5IGNvdW50ZXIgcmVnaXN0ZXJzCmEwOTNmNzE1NWU0OCBkcm0vaTkxNS9tc3Q6IERv
IG5vdCBoYXJkY29kZWQgdGhlIGNydGNzIHRoYXQgZW5jb2RlciBjYW4gY29ubmVjdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
