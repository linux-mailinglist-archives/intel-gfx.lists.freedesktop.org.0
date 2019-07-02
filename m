Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5C05D3CA
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 18:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E3389FDB;
	Tue,  2 Jul 2019 16:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9B3889FDB;
 Tue,  2 Jul 2019 16:00:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2F3FA0020;
 Tue,  2 Jul 2019 16:00:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Tue, 02 Jul 2019 16:00:50 -0000
Message-ID: <20190702160050.28694.13930@emeril.freedesktop.org>
References: <20190702113149.21200-1-michal.winiarski@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190702113149.21200-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_Revert_=22drm/i915=3A_Introdu?=
 =?utf-8?q?ce_private_PAT_management=22?=
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
UmV2ZXJ0ICJkcm0vaTkxNTogSW50cm9kdWNlIHByaXZhdGUgUEFUIG1hbmFnZW1lbnQiClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzA2NS8KU3RhdGUg
OiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlw
CjczMDc3Yjc1Yzk4NSBSZXZlcnQgImRybS9pOTE1OiBJbnRyb2R1Y2UgcHJpdmF0ZSBQQVQgbWFu
YWdlbWVudCIKLToyNjc6IFdBUk5JTkc6TE9OR19MSU5FX0NPTU1FTlQ6IGxpbmUgb3ZlciAxMDAg
Y2hhcmFjdGVycwojMjY3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YzozMDY2OgorCQlwYXQgPSBHRU44X1BQQVQoMCwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xM
QykgfAkvKiBmb3Igbm9ybWFsIG9iamVjdHMsIG5vIGVMTEMgKi8KCi06MjY4OiBXQVJOSU5HOkxP
TkdfTElORV9DT01NRU5UOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzI2ODogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MzA2NzoKKwkJICAgICAgR0VOOF9QUEFU
KDEsIEdFTjhfUFBBVF9XQyB8IEdFTjhfUFBBVF9MTENFTExDKSB8CS8qIGZvciBzb21ldGhpbmcg
cG9pbnRpbmcgdG8gcHRlcz8gKi8KCi06MjcwOiBXQVJOSU5HOkxPTkdfTElORV9DT01NRU5UOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzI3MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmM6MzA2OToKKwkJICAgICAgR0VOOF9QUEFUKDMsIEdFTjhfUFBBVF9VQykg
fAkJCS8qIFVuY2FjaGVkIG9iamVjdHMsIG1vc3RseSBmb3Igc2Nhbm91dCAqLwoKdG90YWw6IDAg
ZXJyb3JzLCAzIHdhcm5pbmdzLCAwIGNoZWNrcywgMzgxIGxpbmVzIGNoZWNrZWQKNTc3M2YzMjY5
OGM3IGRybS9pOTE1L2d0dDogRG9uJ3QgY2hlY2sgUFBHVFQgcHJlc2VuY2Ugb24gUFBHVFQtb25s
eSBwbGF0Zm9ybXMKLToxNTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29t
bWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRs
ZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDRiZGFmYjlkZGZhNCAoImRybS9pOTE1OiBSZW1vdmUg
aTkxNS5lbmFibGVfcHBndHQgb3ZlcnJpZGUiKScKIzE1OiAKUmVmZXJlbmNlczogNGJkYWZiOWRk
ZmE0ICgiZHJtL2k5MTU6IFJlbW92ZSBpOTE1LmVuYWJsZV9wcGd0dCBvdmVycmlkZSIpCgotOjU0
OiBXQVJOSU5HOkxPTkdfTElORV9DT01NRU5UOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzU0
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzozMDUxOgorCSAgICAg
IEdFTjhfUFBBVCgxLCBHRU44X1BQQVRfV0MgfCBHRU44X1BQQVRfTExDRUxMQykgfAkvKiBmb3Ig
c29tZXRoaW5nIHBvaW50aW5nIHRvIHB0ZXM/ICovCgotOjU2OiBXQVJOSU5HOkxPTkdfTElORV9D
T01NRU5UOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzU2OiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYzozMDUzOgorCSAgICAgIEdFTjhfUFBBVCgzLCBHRU44X1BQ
QVRfVUMpIHwJCQkvKiBVbmNhY2hlZCBvYmplY3RzLCBtb3N0bHkgZm9yIHNjYW5vdXQgKi8KCnRv
dGFsOiAxIGVycm9ycywgMiB3YXJuaW5ncywgMCBjaGVja3MsIDQ3IGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
