Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33682F5279
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 18:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740F76FA30;
	Fri,  8 Nov 2019 17:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22D406FA2F;
 Fri,  8 Nov 2019 17:22:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B52EA0003;
 Fri,  8 Nov 2019 17:22:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 08 Nov 2019 17:22:32 -0000
Message-ID: <157323375210.6461.15470208144879870008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191108134500.29212-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191108134500.29212-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL_=28rev3?=
 =?utf-8?q?=29?=
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
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTEyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmNjZDAzNTQ1NmQ3YSBkcm0vaTkx
NTogRW5hYmxlIHNlY29uZCBkYnVmIHNsaWNlIGZvciBJQ0wgYW5kIFRHTAotOjQ4OiBXQVJOSU5H
OkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0
aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojNDg6IAogICAgLSBTbGlj
ZXMgaW50ZXJzZWN0aW9uIGFmdGVyIHVuaW9uIGlzIHNhbWUgYXMgZmluYWwgcmVzdWx0KE1hdHRo
ZXcgUm9wZXIpCgotOjI2ODogV0FSTklORzpTVVNQRUNUX0NPREVfSU5ERU5UOiBzdXNwZWN0IGNv
ZGUgaW5kZW50IGZvciBjb25kaXRpb25hbCBzdGF0ZW1lbnRzICg4LCAwKQojMjY4OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaDozMTE6CiAJ
Zm9yICgod2YpID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoKGk5MTUpLCAoZG9tYWluKSk7ICh3
Zik7IFwKWy4uLl0KK2ludCBpbnRlbF9kYnVmX21heF9zbGljZXMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KTsKCi06NTY4OiBXQVJOSU5HOkxJTkVfQ09OVElOVUFUSU9OUzogQXZv
aWQgdW5uZWNlc3NhcnkgbGluZSBjb250aW51YXRpb25zCiM1Njg6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmM6Mzk0NDoKKwkJdTMyIHBpcGVfZGJ1Zl9zbGljZV9tYXNrID0g
XAoKLTo1NzA6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBt
YXRjaCBvcGVuIHBhcmVudGhlc2lzCiM1NzA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmM6Mzk0NjoKKwkJCWk5MTVfZ2V0X2FsbG93ZWRfZGJ1Zl9tYXNrKGRldl9wcml2LAor
CQkJCQkJcGlwZSwKCi06Njg2OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2Ug
bXVsdGlwbGUgYmxhbmsgbGluZXMKIzY4NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYzo0Mjk0OgorCisKCi06NjkwOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFs
aWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNjkwOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQyOTg6CisJRFJNX0RFQlVHX0tNUygiUGlwZSAlZCBk
b3duc2NhbGUgYW1vdW50ICVkLiVkXG4iLAorCQkgICAgICAgY3J0Yy0+cGlwZSwgcGlwZV9kb3du
c2NhbGUudmFsID4+IDE2LAoKLTo3MDk6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0
IHVzZSBtdWx0aXBsZSBibGFuayBsaW5lcwojNzA5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jOjQzMTc6CisKKwoKLTo3MTA6IENIRUNLOkNBTUVMQ0FTRTogQXZvaWQgQ2Ft
ZWxDYXNlOiA8REJ1ZjE+CiM3MTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmM6NDMxODoKKyNkZWZpbmUgSUNMX1BJUEVfQV9EQlVGX1NMSUNFUyhEQnVmMSkgIFwKCi06NzE4
OiBDSEVDSzpDQU1FTENBU0U6IEF2b2lkIENhbWVsQ2FzZTogPERCdWYyPgojNzE4OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzMjY6CisjZGVmaW5lIElDTF9QSVBFX0FC
X0RCVUZfU0xJQ0VTKERCdWYxLCBEQnVmMikgICBcCgotOjczMDogQ0hFQ0s6Q0FNRUxDQVNFOiBB
dm9pZCBDYW1lbENhc2U6IDxEQnVmMz4KIzczMDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYzo0MzM4OgorI2RlZmluZSBJQ0xfUElQRV9BQkNfREJVRl9TTElDRVMoREJ1ZjEs
IERCdWYyLCBEQnVmMykgIFwKCi06NzQwOiBDSEVDSzpDQU1FTENBU0U6IEF2b2lkIENhbWVsQ2Fz
ZTogPERCdWY0PgojNzQwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQz
NDg6CisjZGVmaW5lIElDTF9QSVBFX0FCQ0RfREJVRl9TTElDRVMoREJ1ZjEsIERCdWYyLCBEQnVm
MywgREJ1ZjQpICBcCgotOjg0OTogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1l
bnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzg0OTogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYzo0NDU3OgordTMyIGk5MTVfZ2V0X2FsbG93ZWRfZGJ1Zl9tYXNr
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgICAgICBpbnQgcGlwZSwg
dTMyIGFjdGl2ZV9waXBlcywKCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5ncywgOSBjaGVja3Ms
IDc0OSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
