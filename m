Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F85F9E17
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 00:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5666EC28;
	Tue, 12 Nov 2019 23:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 471B76EC27;
 Tue, 12 Nov 2019 23:19:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40AF5A0094;
 Tue, 12 Nov 2019 23:19:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 12 Nov 2019 23:19:57 -0000
Message-ID: <157360079726.31293.12793087881021217583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191112223600.30993-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191112223600.30993-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/i915/gt=3A_Set_unused_moc?=
 =?utf-8?q?s_entry_to_follow_PTE_on_tgl_as_on_all_others?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTUvZ3Q6IFNldCB1bnVzZWQgbW9jcyBlbnRyeSB0byBmb2xsb3cgUFRFIG9uIHRnbCBh
cyBvbiBhbGwgb3RoZXJzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82OTM4Mi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjM4NzZhZjNhMjA2OSBkcm0vaTkxNS9ndDogU2V0IHVudXNl
ZCBtb2NzIGVudHJ5IHRvIGZvbGxvdyBQVEUgb24gdGdsIGFzIG9uIGFsbCBvdGhlcnMKMzJiN2Q0
YjYwNDA3IGRybS9pOTE1L2d0OiBUaWR5IHVwIGRlYnVnLXdhcm5zIGZvciB0aGUgbW9jcyBjb250
cm9sIHRhYmxlCjcyNjYwMzQ3MmRmNSBkcm0vaTkxNS9ndDogUmVmYWN0b3IgbW9jcyBsb29wcyBp
bnRvIHNpbmdsZSBjb250cm9sIG1hY3JvCi06NjY6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFj
cm8gYXJndW1lbnQgcmV1c2UgJ3QnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNjY6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYzozNDU6CisjZGVmaW5lIGZvcl9l
YWNoX21vY3MobW9jcywgdCwgaSkgXAorCWZvciAoaSA9IDA7IFwKKwkgICAgIGkgPCAodCktPm5f
ZW50cmllcyA/IChtb2NzID0gZ2V0X2VudHJ5X2NvbnRyb2woKHQpLCBpKSksIDEgOiAwO1wKKwkg
ICAgIGkrKykKCi06NjY6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1
c2UgJ2knIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX21vY3MuYzozNDU6CisjZGVmaW5lIGZvcl9lYWNoX21vY3MobW9jcywg
dCwgaSkgXAorCWZvciAoaSA9IDA7IFwKKwkgICAgIGkgPCAodCktPm5fZW50cmllcyA/IChtb2Nz
ID0gZ2V0X2VudHJ5X2NvbnRyb2woKHQpLCBpKSksIDEgOiAwO1wKKwkgICAgIGkrKykKCi06MTI4
OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd0JyAtIHBvc3Np
YmxlIHNpZGUtZWZmZWN0cz8KIzEyODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5jOjQwMDoKKyNkZWZpbmUgZm9yX2VhY2hfbDNjYyhsM2NjLCB0LCBpKSBcCisJZm9y
IChpID0gMDsgXAorCSAgICAgaSA8ICgodCktPm5fZW50cmllcyArIDEpIC8gMiA/IFwKKwkgICAg
IChsM2NjID0gbDNjY19jb21iaW5lKGdldF9lbnRyeV9sM2NjKCh0KSwgMiAqIGkpLCBcCisJCQkJ
ICBnZXRfZW50cnlfbDNjYygodCksIDIgKiBpICsgMSkpKSwgMSA6IFwKKwkgICAgIDA7IFwKKwkg
ICAgIGkrKykKCi06MTI4OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJl
dXNlICdpJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzEyODogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jOjQwMDoKKyNkZWZpbmUgZm9yX2VhY2hfbDNjYyhsM2Nj
LCB0LCBpKSBcCisJZm9yIChpID0gMDsgXAorCSAgICAgaSA8ICgodCktPm5fZW50cmllcyArIDEp
IC8gMiA/IFwKKwkgICAgIChsM2NjID0gbDNjY19jb21iaW5lKGdldF9lbnRyeV9sM2NjKCh0KSwg
MiAqIGkpLCBcCisJCQkJICBnZXRfZW50cnlfbDNjYygodCksIDIgKiBpICsgMSkpKSwgMSA6IFwK
KwkgICAgIDA7IFwKKwkgICAgIGkrKykKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgNCBj
aGVja3MsIDIxNyBsaW5lcyBjaGVja2VkCmViMWM3NzgzNGNmZiBkcm0vaTkxNS9zZWxmdGVzdHM6
IEFkZCBjb3ZlcmFnZSBvZiBtb2NzIHJlZ2lzdGVycwotOjMwOiBXQVJOSU5HOkZJTEVfUEFUSF9D
SEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJT
IG5lZWQgdXBkYXRpbmc/CiMzMDogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjM1OiBXQVJOSU5H
OlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyIHRhZyBpbiBsaW5lIDEKIzM1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9tb2NzLmM6MToKKy8qCgotOjM2OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1p
c3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQK
IzM2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MjoKKyAq
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5n
cywgMCBjaGVja3MsIDQzMyBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
