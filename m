Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC51D75C6D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 03:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FEF6E855;
	Fri, 26 Jul 2019 01:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 787FA6E846;
 Fri, 26 Jul 2019 01:16:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D980A0073;
 Fri, 26 Jul 2019 01:16:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 26 Jul 2019 01:16:04 -0000
Message-ID: <20190726011604.29715.15311@emeril.freedesktop.org>
References: <20190725233954.15501-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725233954.15501-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915/tgl=3A_skip_set?=
 =?utf-8?q?ting_PORT=5FCL=5FDW12=5F*_on_initialization?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTUvdGdsOiBza2lwIHNldHRpbmcgUE9SVF9DTF9EVzEyXyogb24gaW5pdGlhbGl6
YXRpb24KVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0
MjcxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKNDNmOTkxY2EzODg2IGRybS9pOTE1L3RnbDogc2tpcCBzZXR0aW5nIFBPUlRf
Q0xfRFcxMl8qIG9uIGluaXRpYWxpemF0aW9uCjFlZjBmYTlkN2U5OCBkcm0vaTkxNS90Z2w6IHNl
bGVjdCBjb3JyZWN0IGJpdCBmb3IgcG9ydCBzZWxlY3QKZGIwZWJhMzMzZTU0IGRybS9pOTE1L3Rn
bDogdXBkYXRlIGRkaS90YyBjbG9ja19vZmYgYml0cwotOjI3OiBDSEVDSzpNQUNST19BUkdfUkVV
U0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd0Y19wb3J0JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0
cz8KIzI3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjk3NDU6CisjZGVm
aW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9UQ19DTEtfT0ZGKHRjX3BvcnQpCSgxIDw8ICgodGNfcG9y
dCkgPCBQT1JUX1RDNCA/IFwKKwkJCQkJCSAgICAgICAodGNfcG9ydCkgKyAxMiA6IFwKKwkJCQkJ
CSAgICAgICAodGNfcG9ydCkgLSBQT1JUX1RDNCArIDIxKSkKCnRvdGFsOiAwIGVycm9ycywgMCB3
YXJuaW5ncywgMSBjaGVja3MsIDExIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
