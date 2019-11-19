Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A752102531
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED54C6E282;
	Tue, 19 Nov 2019 13:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 638AD6E282;
 Tue, 19 Nov 2019 13:09:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59712A0137;
 Tue, 19 Nov 2019 13:09:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Tue, 19 Nov 2019 13:09:58 -0000
Message-ID: <157416899833.32165.16411461681707874585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119123316.5094-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191119123316.5094-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_support_for_mipi_dsi_cmd_mode_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIHN1cHBvcnQgZm9yIG1pcGkgZHNpIGNt
ZCBtb2RlIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjkyOTAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2tw
YXRjaCBvcmlnaW4vZHJtLXRpcApmZGMyMWQ4MWJiOWUgZHJtL2k5MTUvZHNpOiBDb25maWd1cmUg
dHJhbnNjb2RlciBvcGVyYXRpb24gZm9yIGNvbW1hbmQgbW9kZS4KLTo2MDogQ0hFQ0s6QlJBQ0VT
OiBicmFjZXMge30gc2hvdWxkIGJlIHVzZWQgb24gYWxsIGFybXMgb2YgdGhpcyBzdGF0ZW1lbnQK
IzYwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYzo5ODg6CisJ
aWYgKGVuYWJsZSkgewpbLi4uXQorCX0gZWxzZQpbLi4uXQoKLTo2MzogQ0hFQ0s6QlJBQ0VTOiBV
bmJhbGFuY2VkIGJyYWNlcyBhcm91bmQgZWxzZSBzdGF0ZW1lbnQKIzYzOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYzo5OTE6CisJfSBlbHNlCgp0b3RhbDogMCBl
cnJvcnMsIDAgd2FybmluZ3MsIDIgY2hlY2tzLCA4MiBsaW5lcyBjaGVja2VkCjE0ZWY1OGI4MmUz
ZCBkcm0vaTkxNS9kc2k6IEFkZCB2YmxhbmsgY2FsY3VsYXRpb24gZm9yIGNvbW1hbmQgbW9kZQot
OjQxOiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM0MTogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmM6ODYwOgorCQlsaW5lX3Rp
bWVfdXMgPSAoaHRvdGFsICogKGJwcCAvIDgpICogYnl0ZV9jbGtfcGVyaW9kX25zKSAvICgxMDAw
ICogaW50ZWxfZHNpLT5sYW5lX2NvdW50KTsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDczIGxpbmVzIGNoZWNrZWQKZWZlYjJlMDc2Y2MxIGRybS9pOTE1L2RzaTogQWRk
IGNtZCBtb2RlIGZsYWdzIGluIGRpc3BsYXkgbW9kZSBwcml2YXRlIGZsYWdzCi06MzA6IENIRUNL
OlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzMw
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aDo2NjQ6CisjZGVmaW5lIEk5MTVfTU9ERV9GTEFHX0RTSV9VU0VfVEUwICgxPDwzKQogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06MzI6IENIRUNLOlNQQUNJTkc6IHNw
YWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzMyOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaDo2NjY6CisjZGVm
aW5lIEk5MTVfTU9ERV9GTEFHX0RTSV9VU0VfVEUxICgxPDw0KQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF4KCi06MzQ6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJy
ZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzM0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaDo2Njg6CisjZGVmaW5lIEk5MTVfTU9E
RV9GTEFHX0RTSV9QRVJJT0RJQ19DTURfTU9ERSAoMTw8NSkKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXgoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdz
LCAzIGNoZWNrcywgMTYgbGluZXMgY2hlY2tlZAplZjQ1Y2ExYThlZWQgZHJtL2k5MTUvZHNpOiBB
ZGQgY2hlY2sgZm9yIHBlcmlvZGljIGNvbW1hbmQgbW9kZQo0MWZkOTI0Y2RhNDkgZHJtL2k5MTUv
ZHNpOiBVc2UgcHJpdmF0ZSBmbGFncyB0byBpbmRpY2F0ZSBURSBpbiBjbWQgbW9kZQo2MjIyYzAx
NzZiY2IgZHJtL2k5MTUvZHNpOiBDb25maWd1cmUgVEUgaW50ZXJydXB0IGZvciBjbWQgbW9kZQpj
NjFkMjE4NGNkN2IgZHJtL2k5MTUvZHNpOiBBZGQgVEUgaGFuZGxlciBmb3IgZHNpIGNtZCBtb2Rl
Lgo4ZDFkYjliZGRmYTcgZHJtL2k5MTUvZHNpOiBJbml0aWF0ZSBmYW1lIHJlcXVlc3QgaW4gY21k
IG1vZGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
