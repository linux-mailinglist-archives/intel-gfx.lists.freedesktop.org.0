Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C64A714F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 19:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BF28957B;
	Tue,  3 Sep 2019 17:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14CE089568;
 Tue,  3 Sep 2019 17:05:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BCAFA0134;
 Tue,  3 Sep 2019 17:05:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shashank Sharma" <shashank.sharma@intel.com>
Date: Tue, 03 Sep 2019 17:05:37 -0000
Message-ID: <20190903170537.6072.41597@emeril.freedesktop.org>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190903165227.6056-1-shashank.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Enable_Nearest-neighbor_for_Integer_mode_scaling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRW5hYmxlIE5lYXJlc3QtbmVpZ2hib3IgZm9y
IEludGVnZXIgbW9kZSBzY2FsaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82NjE3NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjcwNWUwN2E0ZjEwNSBkcm0vaTkxNTogSW5kaWNh
dGUgaW50ZWdlciB1cC1zY2FsaW5nIHJhdGlvcwpkMzMyNGIyZjBkZjkgZHJtL2k5MTU6IFBpY2sg
bmVhcmVzdC1uZWlnaGJvciBtb2RlIGZvciBpbnRlZ2VyIHNjYWxpbmcgcmF0aW9zCi06MTgwOiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdpZCcgLSBwb3NzaWJs
ZSBzaWRlLWVmZmVjdHM/CiMxODA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
Lmg6NzIxMDoKKyNkZWZpbmUgU0tMX1BTX0NPRUZfREFUQV9TRVQwKHBpcGUsIGlkKSAgX01NSU9f
UElQRShwaXBlLCAgICAgXAorCQkJX0lEKGlkLCBfUFNfQ09FRl9TRVQwX0RBVEFfMUEsIF9QU19D
T0VGX1NFVDBfREFUQV8yQSksIFwKKwkJCV9JRChpZCwgX1BTX0NPRUZfU0VUMF9EQVRBXzFCLCBf
UFNfQ09FRl9TRVQwX0RBVEFfMUIpKQoKLToxODM6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFj
cm8gYXJndW1lbnQgcmV1c2UgJ2lkJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzE4MzogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDo3MjEzOgorI2RlZmluZSBTS0xfUFNf
Q09FRl9EQVRBX1NFVDEocGlwZSwgaWQpICBfTU1JT19QSVBFKHBpcGUsICAgICBcCisJCQlfSUQo
aWQsIF9QU19DT0VGX1NFVDFfREFUQV8xQSwgX1BTX0NPRUZfU0VUMV9EQVRBXzJBKSwgXAorCQkJ
X0lEKGlkLCBfUFNfQ09FRl9TRVQxX0RBVEFfMUIsIF9QU19DT0VGX1NFVDFfREFUQV8xQikpCgot
OjE4NjogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnaWQnIC0g
cG9zc2libGUgc2lkZS1lZmZlY3RzPwojMTg2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oOjcyMTY6CisjZGVmaW5lIFNLTF9QU19DT0VGX0lOREVYX1NFVDAocGlwZSwgaWQp
ICBfTU1JT19QSVBFKHBpcGUsICAgICBcCisJCQlfSUQoaWQsIF9QU19DT0VGX1NFVDBfSU5ERVhf
MUEsIF9QU19DT0VGX1NFVDBfSU5ERVhfMkEpLCBcCisJCQlfSUQoaWQsIF9QU19DT0VGX1NFVDBf
SU5ERVhfMUIsIF9QU19DT0VGX1NFVDBfSU5ERVhfMUIpKQoKLToxODk6IENIRUNLOk1BQ1JPX0FS
R19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ2lkJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0
cz8KIzE4OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDo3MjE5OgorI2Rl
ZmluZSBTS0xfUFNfQ09FRl9JTkRFWF9TRVQxKHBpcGUsIGlkKSAgX01NSU9fUElQRShwaXBlLCAg
ICAgXAorCQkJX0lEKGlkLCBfUFNfQ09FRl9TRVQxX0lOREVYXzFBLCBfUFNfQ09FRl9TRVQxX0lO
REVYXzJBKSwgXAorCQkJX0lEKGlkLCBfUFNfQ09FRl9TRVQxX0lOREVYXzFCLCBfUFNfQ09FRl9T
RVQxX0lOREVYXzFCKSkKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgNCBjaGVja3MsIDE1
MCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
