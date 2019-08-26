Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 988649CFDA
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 14:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFDD89A35;
	Mon, 26 Aug 2019 12:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E93DF89A35;
 Mon, 26 Aug 2019 12:51:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 556F2A363E;
 Mon, 26 Aug 2019 12:51:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Mon, 26 Aug 2019 12:51:25 -0000
Message-ID: <20190826125125.13705.85283@emeril.freedesktop.org>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915=3A_Allow_i915_to_man?=
 =?utf-8?q?age_the_vma_offset_nodes_instead_of_drm_core?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IEFsbG93IGk5MTUgdG8gbWFuYWdlIHRoZSB2bWEgb2Zmc2V0IG5vZGVzIGluc3Rl
YWQgb2YgZHJtIGNvcmUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY1NzkzLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNr
cGF0Y2ggb3JpZ2luL2RybS10aXAKZjViZjk2NWY1MWE4IGRybS9pOTE1OiBBbGxvdyBpOTE1IHRv
IG1hbmFnZSB0aGUgdm1hIG9mZnNldCBub2RlcyBpbnN0ZWFkIG9mIGRybSBjb3JlCi06NDI1OiBD
SEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGluZXMK
IzQyNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9t
bWFuLmM6Mzg3OgogCisKCi06NDc1OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdu
bWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNDc1OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jOjY1MzoKKwkJCXVubWFwX21hcHBpbmdfcmFuZ2Uo
Z3QtPmk5MTUtPmRybS5hbm9uX2lub2RlLT5pX21hcHBpbmcsCiAJCQkJICAgIGRybV92bWFfbm9k
ZV9vZmZzZXRfYWRkcihub2RlKSArIHZtYV9vZmZzZXQsCgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDIgY2hlY2tzLCA0ODQgbGluZXMgY2hlY2tlZApiMWUwYTBmOGQwZDkgZHJtL2k5MTU6
IEludHJvZHVjZSBEUk1fSTkxNV9HRU1fTU1BUF9PRkZTRVQKLToxMjc6IFdBUk5JTkc6TE9OR19M
SU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzEyNzogRklMRTogaW5jbHVkZS91YXBpL2Ry
bS9pOTE1X2RybS5oOjQyNToKKyNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX01NQVBfT0ZGU0VU
CQlEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX01NQVBfT0ZGU0VULCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0KQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5p
bmdzLCAwIGNoZWNrcywgMTI3IGxpbmVzIGNoZWNrZWQKMjgyNGQ4ODcxY2M2IGRybS9pOTE1OiBB
ZGQgY3B1IGZhdWx0IGhhbmRsZXIgZm9yIG1tYXBfb2Zmc2V0CmExNWIyODc3YjIzNSBkcm0vaTkx
NTogZGVmaW5lIEhBU19NQVBQQUJMRV9BUEVSVFVSRQotOjIwOiBDSEVDSzpNQUNST19BUkdfUFJF
Q0VERU5DRTogTWFjcm8gYXJndW1lbnQgJ2Rldl9wcml2JyBtYXkgYmUgYmV0dGVyIGFzICcoZGV2
X3ByaXYpJyB0byBhdm9pZCBwcmVjZWRlbmNlIGlzc3VlcwojMjA6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MjExMzoKKyNkZWZpbmUgSEFTX01BUFBBQkxFX0FQRVJUVVJF
KGRldl9wcml2KSAoZGV2X3ByaXYtPmdndHQubWFwcGFibGVfZW5kID4gMCkKCnRvdGFsOiAwIGVy
cm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDggbGluZXMgY2hlY2tlZApkYjZhNDFiYzI4NDAg
ZHJtL2k5MTU6IGNwdS1tYXAgYmFzZWQgZHVtYiBidWZmZXJzCi06MjU6IENIRUNLOlBBUkVOVEhF
U0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMy
NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYzo2MjA6Citp
OTE1X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxlLAorCQkgIHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCgotOjYyOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVu
dCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNjI6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2Lmg6MjMwNDoKK2ludCBpOTE1X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRy
bV9maWxlICpmaWxlX3ByaXYsIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCSAgICAgIHUzMiBo
YW5kbGUsIHU2NCAqb2Zmc2V0KTsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMiBjaGVj
a3MsIDM1IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
