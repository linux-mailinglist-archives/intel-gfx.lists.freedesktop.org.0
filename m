Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C813F35D5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 18:40:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A0166F766;
	Thu,  7 Nov 2019 17:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFC766F766;
 Thu,  7 Nov 2019 17:40:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8735A0118;
 Thu,  7 Nov 2019 17:40:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 07 Nov 2019 17:40:26 -0000
Message-ID: <157314842681.21751.2589154899097725906@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107131020.12869-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191107131020.12869-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEVuYWJsZSBzZWNvbmQgZGJ1
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY5MTI0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMmZkZmMzYjUxYzViIGRybS9pOTE1OiBFbmFi
bGUgc2Vjb25kIGRidWYgc2xpY2UgZm9yIElDTCBhbmQgVEdMCi06MjIxOiBXQVJOSU5HOlNVU1BF
Q1RfQ09ERV9JTkRFTlQ6IHN1c3BlY3QgY29kZSBpbmRlbnQgZm9yIGNvbmRpdGlvbmFsIHN0YXRl
bWVudHMgKDgsIDApCiMyMjE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5oOjMxMToKIAlmb3IgKCh3ZikgPSBpbnRlbF9kaXNwbGF5X3Bvd2Vy
X2dldCgoaTkxNSksIChkb21haW4pKTsgKHdmKTsgXApbLi4uXQordTggaW50ZWxfZGJ1Zl9tYXhf
c2xpY2VzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CgotOjQ2NzogV0FSTklO
RzpMSU5FX0NPTlRJTlVBVElPTlM6IEF2b2lkIHVubmVjZXNzYXJ5IGxpbmUgY29udGludWF0aW9u
cwojNDY3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjM5NTM6CisJCXUz
MiBwaXBlX2RidWZfc2xpY2VfbWFzayA9IFwKCi06NDY5OiBDSEVDSzpQQVJFTlRIRVNJU19BTElH
Tk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNDY5OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjM5NTU6CisJCQlpOTE1X2dldF9hbGxv
d2VkX2RidWZfbWFzayhkZXZfcHJpdiwKKwkJCQkJCXBpcGUsCgotOjU4NTogQ0hFQ0s6TElORV9T
UEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNlIG11bHRpcGxlIGJsYW5rIGxpbmVzCiM1ODU6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDMwMzoKKworCgotOjU4OTogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzU4OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzA3Ogor
CURSTV9ERUJVR19LTVMoIlBpcGUgJWQgZG93bnNjYWxlIGFtb3VudCAlZC4lZFxuIiwKKwkJICAg
ICAgIGNydGMtPnBpcGUsIHBpcGVfZG93bnNjYWxlLnZhbCA+PiAxNiwKCi06NjA4OiBDSEVDSzpM
SU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGluZXMKIzYwODog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzI2OgorCisKCi06NjA5OiBD
SEVDSzpDQU1FTENBU0U6IEF2b2lkIENhbWVsQ2FzZTogPERCdWYxPgojNjA5OiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzMjc6CisjZGVmaW5lIElDTF9QSVBFX0FfREJV
Rl9TTElDRVMoREJ1ZjEpICBcCgotOjYxNzogQ0hFQ0s6Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENh
c2U6IDxEQnVmMj4KIzYxNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0
MzM1OgorI2RlZmluZSBJQ0xfUElQRV9BQl9EQlVGX1NMSUNFUyhEQnVmMSwgREJ1ZjIpICAgXAoK
LTo2Mjk6IENIRUNLOkNBTUVMQ0FTRTogQXZvaWQgQ2FtZWxDYXNlOiA8REJ1ZjM+CiM2Mjk6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDM0NzoKKyNkZWZpbmUgSUNMX1BJ
UEVfQUJDX0RCVUZfU0xJQ0VTKERCdWYxLCBEQnVmMiwgREJ1ZjMpICBcCgotOjYzOTogQ0hFQ0s6
Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENhc2U6IDxEQnVmND4KIzYzOTogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzU3OgorI2RlZmluZSBJQ0xfUElQRV9BQkNEX0RCVUZf
U0xJQ0VTKERCdWYxLCBEQnVmMiwgREJ1ZjMsIERCdWY0KSAgXAoKLTo3NDg6IENIRUNLOlBBUkVO
VEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lz
CiM3NDg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDQ2NjoKK3UzMiBp
OTE1X2dldF9hbGxvd2VkX2RidWZfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCisJCQkJICAgICAgaW50IHBpcGUsIHUzMiBhY3RpdmVfcGlwZXMsCgp0b3RhbDogMCBlcnJv
cnMsIDIgd2FybmluZ3MsIDkgY2hlY2tzLCA2ODAgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
