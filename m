Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7B218C67
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 16:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC04D89D02;
	Thu,  9 May 2019 14:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DBDE89CF6;
 Thu,  9 May 2019 14:54:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38F33A00A0;
 Thu,  9 May 2019 14:54:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 09 May 2019 14:54:02 -0000
Message-ID: <20190509145402.12519.96180@emeril.freedesktop.org>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_GTT_remapping_for_display?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEdUVCByZW1hcHBpbmcgZm9y
IGRpc3BsYXkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYwNDY5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2gg
b3JpZ2luL2RybS10aXAKZTFhNDRlM2NhOTJlIGRybS9pOTE1OiBBZGQgYSBuZXcgInJlbWFwcGVk
IiBndHRfdmlldwotOjk4OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVs
dGlwbGUgYmxhbmsgbGluZXMKIzk4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jOjUxMDY6CisKKwoKLToyNDY6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJv
dW5kIHRoYXQgJyonIChjdHg6VnhWKQojMjQ2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuaDoxOTY6CisJQlVJTERfQlVHX09OKHNpemVvZihzdHJ1Y3QgaW50ZWxfcmVt
YXBwZWRfaW5mbykgIT0gOSpzaXplb2YodW5zaWduZWQgaW50KSk7CiAJICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KCnRvdGFsOiAwIGVycm9ycywg
MCB3YXJuaW5ncywgMiBjaGVja3MsIDI4NiBsaW5lcyBjaGVja2VkCjA4NDkzMzQ4YmU5ZCBkcm0v
aTkxNS9zZWxmdGVzdHM6IEFkZCBtb2NrIHNlbGZ0ZXN0IGZvciByZW1hcHBlZCB2bWFzCi06NzY6
IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJy0nIChjdHg6VnhW
KQojNzY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jOjQz
NjoKKwkJCWlmIChsZWZ0IDwgUEFHRV9TSVpFIHx8IGxlZnQgJiAoUEFHRV9TSVpFLTEpKSB7CiAJ
CQkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06OTI6IENIRUNL
OkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBibGFuayBsaW5lcwojOTI6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jOjQ1MjoKKwor
CgotOjEyODogV0FSTklORzpTVVNQRUNUX0NPREVfSU5ERU5UOiBzdXNwZWN0IGNvZGUgaW5kZW50
IGZvciBjb25kaXRpb25hbCBzdGF0ZW1lbnRzICg4LCA4KQojMTI4OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYzo1MDY6CisJZm9yICh0ID0gdHlwZXM7ICp0
OyB0KyspIHsKIAlmb3IgKGEgPSBwbGFuZXM7IGEtPndpZHRoOyBhKyspIHsKCi06MTcyOiBXQVJO
SU5HOkRFRVBfSU5ERU5UQVRJT046IFRvbyBtYW55IGxlYWRpbmcgdGFicyAtIGNvbnNpZGVyIGNv
ZGUgcmVmYWN0b3JpbmcKIzE3MjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfdm1hLmM6NTc2OgorCQkJCQkJaWYgKHZpZXcudHlwZSA9PSBJOTE1X0dHVFRfVklFV19S
T1RBVEVEKQoKLToxNzM6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3Rl
cnMKIzE3MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmM6
NTc3OgorCQkJCQkJCXNnID0gYXNzZXJ0X3JvdGF0ZWQob2JqLCAmdmlldy5yb3RhdGVkLCBuLCBz
Zyk7CgotOjE3NDogV0FSTklORzpERUVQX0lOREVOVEFUSU9OOiBUb28gbWFueSBsZWFkaW5nIHRh
YnMgLSBjb25zaWRlciBjb2RlIHJlZmFjdG9yaW5nCiMxNzQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jOjU3ODoKKwkJCQkJCWVsc2UKCi06MTc1OiBXQVJO
SU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMxNzU6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jOjU3OToKKwkJCQkJCQlzZyA9IGFz
c2VydF9yZW1hcHBlZChvYmosICZ2aWV3LnJlbWFwcGVkLCBuLCBzZyk7Cgp0b3RhbDogMCBlcnJv
cnMsIDUgd2FybmluZ3MsIDIgY2hlY2tzLCAxNjUgbGluZXMgY2hlY2tlZAo4NmNmYTdmZTFlMGIg
ZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgbGl2ZSB2bWEgc2VsZnRlc3QKNWYwOGYzM2JiOTkyIGRy
bS9pOTE1OiBTaHVmZmxlIHN0cmlkZSBjaGVja2luZyBjb2RlIGFyb3VuZApmN2JiMjI2M2NkNjkg
ZHJtL2k5MTU6IE92ZXJjb21lIGRpc3BsYXkgZW5naW5lIHN0cmlkZSBsaW1pdHMgdmlhIEdUVCBy
ZW1hcHBpbmcKNDk0ZWM1ZDEzNDQwIGRybS9pOTE1OiBBbGlnbiBkdW1iIGJ1ZmZlciBzdHJpZGUg
dG8gNGsgdG8gYWxsb3cgZm9yIGd0dCByZW1hcHBpbmcKNWZjMTQ0NjJiMTliIGRybS9pOTE1OiBC
dW1wIGZiIHN0cmlkZSBsaW1pdCB0byAxMjhLaUIgZm9yIGdlbjQrIGFuZCAyNTZLaUIgZm9yIGdl
bjcrCi06NDQ6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJyon
IChjdHg6VnhWKQojNDQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
YzoyNTMwOgorCQkJcmV0dXJuIDI1NioxMDI0OwogCQkJICAgICAgICAgIF4KCi06NDY6IENIRUNL
OlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJyonIChjdHg6VnhWKQojNDY6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYzoyNTMyOgorCQkJcmV0
dXJuIDEyOCoxMDI0OwogCQkJICAgICAgICAgIF4KCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5n
cywgMiBjaGVja3MsIDE5IGxpbmVzIGNoZWNrZWQKODUzOTM4Yjg3YmE2IGRybS9pOTE1OiBCdW1w
IGdlbjcrIGZiIHNpemUgbGltaXRzIHRvIDE2a3gxNmsKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
