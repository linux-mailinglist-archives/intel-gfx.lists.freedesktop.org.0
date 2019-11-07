Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F85F3742
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 19:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532506F785;
	Thu,  7 Nov 2019 18:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 041506F781;
 Thu,  7 Nov 2019 18:31:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED2CFA0BCB;
 Thu,  7 Nov 2019 18:31:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Wang" <jasowang@redhat.com>
Date: Thu, 07 Nov 2019 18:31:11 -0000
Message-ID: <157315147194.21751.14768546797249469582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107151109.23261-1-jasowang@redhat.com>
In-Reply-To: <20191107151109.23261-1-jasowang@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_mdev_based_hardware_virtio_offloading_support?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbWRldiBiYXNlZCBoYXJkd2FyZSB2aXJ0aW8g
b2ZmbG9hZGluZyBzdXBwb3J0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTEzNS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBj
aGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjk1MDdiNTM1N2Q3YiBtZGV2OiBjbGFzcyBpZCBzdXBw
b3J0CjU4YWYwOWM4ZGEwMCBtb2Rwb3N0OiBhZGQgc3VwcG9ydCBmb3IgbWRldiBjbGFzcyBpZApl
OTRmOTQ4MDQwZjUgbWRldjogaW50cm9kdWNlIGRldmljZSBzcGVjaWZpYyBvcHMKLTo1MDA6IFdB
Uk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyks
IGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzUwMDogCm5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA2MTggbGluZXMgY2hl
Y2tlZAoxNjQzZDI5YjhjZDYgbWRldjogaW50cm9kdWNlIHZpcnRpbyBkZXZpY2UgYW5kIGl0cyBk
ZXZpY2Ugb3BzCi06MTA4OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQg
b3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMxMDg6
IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMjE5IGxpbmVzIGNoZWNrZWQKOWY0MmEwYWM4ZGFiIHZpcnRpbzogaW50cm9kdWNlIGEg
bWRldiBiYXNlZCB0cmFuc3BvcnQKLTo1MzogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRk
ZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0
aW5nPwojNTM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLToxMTM6IFdBUk5JTkc6VU5TUEVDSUZJ
RURfSU5UOiBQcmVmZXIgJ3Vuc2lnbmVkIGludCcgdG8gYmFyZSB1c2Ugb2YgJ3Vuc2lnbmVkJwoj
MTEzOiBGSUxFOiBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fbWRldi5jOjU2Ogorc3RhdGljIHZvaWQg
dmlydGlvX21kZXZfZ2V0KHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2LCB1bnNpZ25lZCBvZmZz
ZXQsCgotOjExNDogV0FSTklORzpVTlNQRUNJRklFRF9JTlQ6IFByZWZlciAndW5zaWduZWQgaW50
JyB0byBiYXJlIHVzZSBvZiAndW5zaWduZWQnCiMxMTQ6IEZJTEU6IGRyaXZlcnMvdmlydGlvL3Zp
cnRpb19tZGV2LmM6NTc6CisJCQkgICAgdm9pZCAqYnVmLCB1bnNpZ25lZCBsZW4pCgotOjEyMjog
V0FSTklORzpVTlNQRUNJRklFRF9JTlQ6IFByZWZlciAndW5zaWduZWQgaW50JyB0byBiYXJlIHVz
ZSBvZiAndW5zaWduZWQnCiMxMjI6IEZJTEU6IGRyaXZlcnMvdmlydGlvL3ZpcnRpb19tZGV2LmM6
NjU6CitzdGF0aWMgdm9pZCB2aXJ0aW9fbWRldl9zZXQoc3RydWN0IHZpcnRpb19kZXZpY2UgKnZk
ZXYsIHVuc2lnbmVkIG9mZnNldCwKCi06MTIzOiBXQVJOSU5HOlVOU1BFQ0lGSUVEX0lOVDogUHJl
ZmVyICd1bnNpZ25lZCBpbnQnIHRvIGJhcmUgdXNlIG9mICd1bnNpZ25lZCcKIzEyMzogRklMRTog
ZHJpdmVycy92aXJ0aW8vdmlydGlvX21kZXYuYzo2NjoKKwkJCSAgICBjb25zdCB2b2lkICpidWYs
IHVuc2lnbmVkIGxlbikKCi06MzAzOiBXQVJOSU5HOlVOU1BFQ0lGSUVEX0lOVDogUHJlZmVyICd1
bnNpZ25lZCBpbnQnIHRvIGJhcmUgdXNlIG9mICd1bnNpZ25lZCcKIzMwMzogRklMRTogZHJpdmVy
cy92aXJ0aW8vdmlydGlvX21kZXYuYzoyNDY6CitzdGF0aWMgaW50IHZpcnRpb19tZGV2X2ZpbmRf
dnFzKHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2LCB1bnNpZ25lZCBudnFzLAoKdG90YWw6IDAg
ZXJyb3JzLCA2IHdhcm5pbmdzLCAwIGNoZWNrcywgNDI5IGxpbmVzIGNoZWNrZWQKMjAyNTE1YWQw
YTgxIGRvY3M6IHNhbXBsZSBkcml2ZXIgdG8gZGVtb25zdHJhdGUgaG93IHRvIGltcGxlbWVudCB2
aXJ0aW8tbWRldiBmcmFtZXdvcmsKLTo2MzogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRk
ZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0
aW5nPwojNjM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5p
bmdzLCAwIGNoZWNrcywgNzE0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
