Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91A4D1465
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 18:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059AC6EA13;
	Wed,  9 Oct 2019 16:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFEF56EA13;
 Wed,  9 Oct 2019 16:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C93EDA73C7;
 Wed,  9 Oct 2019 16:47:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 09 Oct 2019 16:47:18 -0000
Message-ID: <20191009164718.31955.16260@emeril.freedesktop.org>
References: <cover.1570635293.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1570635293.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/print=3A_cleanup_and_new_drm=5Fdevice_based_logging?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL3ByaW50OiBjbGVhbnVwIGFuZCBuZXcg
ZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82Nzc5NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjg5YWE3MjBmYmI5YSBkcm0vaTkxNTogdXNl
IGRybV9kZWJ1Z19lbmFibGVkKCkgdG8gY2hlY2sgZm9yIGRlYnVnIGNhdGVnb3JpZXMKYWQwYWZk
NGE4YWMyIGRybS9ub3V2ZWF1OiB1c2UgZHJtX2RlYnVnX2VuYWJsZWQoKSB0byBjaGVjayBmb3Ig
ZGVidWcgY2F0ZWdvcmllcwpmMTljZDVmYTRlMWQgZHJtL2FtZGdwdTogdXNlIGRybV9kZWJ1Z19l
bmFibGVkKCkgdG8gY2hlY2sgZm9yIGRlYnVnIGNhdGVnb3JpZXMKNDE2OTc5OWIxM2RmIGRybS9w
cmludDogcmVuYW1lIGRybV9kZWJ1ZyB0byBfX2RybV9kZWJ1ZyB0byBkaXNjb3VyYWdlIHVzZQoy
MTczZjNjODc0OTUgZHJtL3ByaW50OiB1bmRlcnNjb3JlIHByZWZpeCBmdW5jdGlvbnMgdGhhdCBz
aG91bGQgYmUgcHJpdmF0ZSB0byBwcmludApjNDQ5MzhlOWFhN2MgZHJtL3ByaW50OiBjb252ZXJ0
IGRlYnVnIGNhdGVnb3J5IG1hY3JvcyBpbnRvIGFuIGVudW0KNWY4NTM2Y2FiZDUyIGRybS9wcmlu
dDogZ3JvdXAgbG9nZ2luZyBmdW5jdGlvbnMgYnkgcHJpbmsgb3IgZGV2aWNlIGJhc2VkCi06MjAy
OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGlu
ZXMKIzIwMjogRklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NDc4OgorCisKCnRvdGFsOiAw
IGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDE5MyBsaW5lcyBjaGVja2VkCjQ4YzljMDIx
MjYxMSBkcm0vcHJpbnQ6IGludHJvZHVjZSBuZXcgc3RydWN0IGRybV9kZXZpY2UgYmFzZWQgbG9n
Z2luZyBtYWNyb3MKLTo3MzogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFyZ3Vt
ZW50ICdkcm0nIG1heSBiZSBiZXR0ZXIgYXMgJyhkcm0pJyB0byBhdm9pZCBwcmVjZWRlbmNlIGlz
c3VlcwojNzM6IEZJTEU6IGluY2x1ZGUvZHJtL2RybV9wcmludC5oOjQyOToKKyNkZWZpbmUgX19k
cm1fcHJpbnRrKGRybSwgbGV2ZWwsIHR5cGUsIGZtdCwgLi4uKQkJCVwKKwlkZXZfIyNsZXZlbCMj
dHlwZShkcm0tPmRldiwgIltkcm1dICIgZm10LCAjI19fVkFfQVJHU19fKQoKLTo3NjogQ0hFQ0s6
TElORV9TUEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNlIG11bHRpcGxlIGJsYW5rIGxpbmVzCiM3Njog
RklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NDMyOgorCisKCi06Nzg6IEVSUk9SOlNQQUNJ
Tkc6IHNwYWNlIHJlcXVpcmVkIGFmdGVyIHRoYXQgJywnIChjdHg6VnhPKQojNzg6IEZJTEU6IGlu
Y2x1ZGUvZHJtL2RybV9wcmludC5oOjQzNDoKKwlfX2RybV9wcmludGsoZHJtLCBpbmZvLCwgZm10
LCAjI19fVkFfQVJHU19fKQogCSAgICAgICAgICAgICAgICAgICAgICBeCgotOjgxOiBFUlJPUjpT
UEFDSU5HOiBzcGFjZSByZXF1aXJlZCBhZnRlciB0aGF0ICcsJyAoY3R4OlZ4TykKIzgxOiBGSUxF
OiBpbmNsdWRlL2RybS9kcm1fcHJpbnQuaDo0Mzc6CisJX19kcm1fcHJpbnRrKGRybSwgbm90aWNl
LCwgZm10LCAjI19fVkFfQVJHU19fKQogCSAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06ODQ6
IEVSUk9SOlNQQUNJTkc6IHNwYWNlIHJlcXVpcmVkIGFmdGVyIHRoYXQgJywnIChjdHg6VnhPKQoj
ODQ6IEZJTEU6IGluY2x1ZGUvZHJtL2RybV9wcmludC5oOjQ0MDoKKwlfX2RybV9wcmludGsoZHJt
LCB3YXJuLCwgZm10LCAjI19fVkFfQVJHU19fKQogCSAgICAgICAgICAgICAgICAgICAgICBeCgot
Ojg3OiBFUlJPUjpTUEFDSU5HOiBzcGFjZSByZXF1aXJlZCBhZnRlciB0aGF0ICcsJyAoY3R4OlZ4
TykKIzg3OiBGSUxFOiBpbmNsdWRlL2RybS9kcm1fcHJpbnQuaDo0NDM6CisJX19kcm1fcHJpbnRr
KGRybSwgZXJyLCwgIipFUlJPUiogIiBmbXQsICMjX19WQV9BUkdTX18pCiAJICAgICAgICAgICAg
ICAgICAgICAgXgoKLTo4OTogQ0hFQ0s6TElORV9TUEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNlIG11
bHRpcGxlIGJsYW5rIGxpbmVzCiM4OTogRklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NDQ1
OgorCisKCi06MTAyOiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlw
bGUgYmxhbmsgbGluZXMKIzEwMjogRklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NDU4Ogor
CisKCi06MTA2OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUg
YmxhbmsgbGluZXMKIzEwNjogRklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NDYyOgorCisK
Ci06MTA3OiBDSEVDSzpNQUNST19BUkdfUFJFQ0VERU5DRTogTWFjcm8gYXJndW1lbnQgJ2RybScg
bWF5IGJlIGJldHRlciBhcyAnKGRybSknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNzdWVzCiMxMDc6
IEZJTEU6IGluY2x1ZGUvZHJtL2RybV9wcmludC5oOjQ2MzoKKyNkZWZpbmUgZHJtX2RiZ19jb3Jl
KGRybSwgZm10LCAuLi4pCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJtLT5kZXYsIERSTV9VVF9DT1JF
LCBmbXQsICMjX19WQV9BUkdTX18pCgotOjEwOTogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6
IE1hY3JvIGFyZ3VtZW50ICdkcm0nIG1heSBiZSBiZXR0ZXIgYXMgJyhkcm0pJyB0byBhdm9pZCBw
cmVjZWRlbmNlIGlzc3VlcwojMTA5OiBGSUxFOiBpbmNsdWRlL2RybS9kcm1fcHJpbnQuaDo0NjU6
CisjZGVmaW5lIGRybV9kYmcoZHJtLCBmbXQsIC4uLikJCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJt
LT5kZXYsIERSTV9VVF9EUklWRVIsIGZtdCwgIyNfX1ZBX0FSR1NfXykKCi06MTExOiBDSEVDSzpN
QUNST19BUkdfUFJFQ0VERU5DRTogTWFjcm8gYXJndW1lbnQgJ2RybScgbWF5IGJlIGJldHRlciBh
cyAnKGRybSknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNzdWVzCiMxMTE6IEZJTEU6IGluY2x1ZGUv
ZHJtL2RybV9wcmludC5oOjQ2NzoKKyNkZWZpbmUgZHJtX2RiZ19rbXMoZHJtLCBmbXQsIC4uLikJ
CQkJCVwKKwlkcm1fZGV2X2RiZyhkcm0tPmRldiwgRFJNX1VUX0tNUywgZm10LCAjI19fVkFfQVJH
U19fKQoKLToxMTM6IENIRUNLOk1BQ1JPX0FSR19QUkVDRURFTkNFOiBNYWNybyBhcmd1bWVudCAn
ZHJtJyBtYXkgYmUgYmV0dGVyIGFzICcoZHJtKScgdG8gYXZvaWQgcHJlY2VkZW5jZSBpc3N1ZXMK
IzExMzogRklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NDY5OgorI2RlZmluZSBkcm1fZGJn
X3ByaW1lKGRybSwgZm10LCAuLi4pCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJtLT5kZXYsIERSTV9V
VF9QUklNRSwgZm10LCAjI19fVkFfQVJHU19fKQoKLToxMTU6IENIRUNLOk1BQ1JPX0FSR19QUkVD
RURFTkNFOiBNYWNybyBhcmd1bWVudCAnZHJtJyBtYXkgYmUgYmV0dGVyIGFzICcoZHJtKScgdG8g
YXZvaWQgcHJlY2VkZW5jZSBpc3N1ZXMKIzExNTogRklMRTogaW5jbHVkZS9kcm0vZHJtX3ByaW50
Lmg6NDcxOgorI2RlZmluZSBkcm1fZGJnX2F0b21pYyhkcm0sIGZtdCwgLi4uKQkJCQkJXAorCWRy
bV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1fVVRfQVRPTUlDLCBmbXQsICMjX19WQV9BUkdTX18pCgot
OjExNzogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFyZ3VtZW50ICdkcm0nIG1h
eSBiZSBiZXR0ZXIgYXMgJyhkcm0pJyB0byBhdm9pZCBwcmVjZWRlbmNlIGlzc3VlcwojMTE3OiBG
SUxFOiBpbmNsdWRlL2RybS9kcm1fcHJpbnQuaDo0NzM6CisjZGVmaW5lIGRybV9kYmdfdmJsKGRy
bSwgZm10LCAuLi4pCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJtLT5kZXYsIERSTV9VVF9WQkwsIGZt
dCwgIyNfX1ZBX0FSR1NfXykKCi06MTE5OiBDSEVDSzpNQUNST19BUkdfUFJFQ0VERU5DRTogTWFj
cm8gYXJndW1lbnQgJ2RybScgbWF5IGJlIGJldHRlciBhcyAnKGRybSknIHRvIGF2b2lkIHByZWNl
ZGVuY2UgaXNzdWVzCiMxMTk6IEZJTEU6IGluY2x1ZGUvZHJtL2RybV9wcmludC5oOjQ3NToKKyNk
ZWZpbmUgZHJtX2RiZ19zdGF0ZShkcm0sIGZtdCwgLi4uKQkJCQkJXAorCWRybV9kZXZfZGJnKGRy
bS0+ZGV2LCBEUk1fVVRfU1RBVEUsIGZtdCwgIyNfX1ZBX0FSR1NfXykKCi06MTIxOiBDSEVDSzpN
QUNST19BUkdfUFJFQ0VERU5DRTogTWFjcm8gYXJndW1lbnQgJ2RybScgbWF5IGJlIGJldHRlciBh
cyAnKGRybSknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNzdWVzCiMxMjE6IEZJTEU6IGluY2x1ZGUv
ZHJtL2RybV9wcmludC5oOjQ3NzoKKyNkZWZpbmUgZHJtX2RiZ19sZWFzZShkcm0sIGZtdCwgLi4u
KQkJCQkJXAorCWRybV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1fVVRfTEVBU0UsIGZtdCwgIyNfX1ZB
X0FSR1NfXykKCi06MTIzOiBDSEVDSzpNQUNST19BUkdfUFJFQ0VERU5DRTogTWFjcm8gYXJndW1l
bnQgJ2RybScgbWF5IGJlIGJldHRlciBhcyAnKGRybSknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNz
dWVzCiMxMjM6IEZJTEU6IGluY2x1ZGUvZHJtL2RybV9wcmludC5oOjQ3OToKKyNkZWZpbmUgZHJt
X2RiZ19kcChkcm0sIGZtdCwgLi4uKQkJCQkJXAorCWRybV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1f
VVRfRFAsIGZtdCwgIyNfX1ZBX0FSR1NfXykKCi06MTI2OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBs
ZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGluZXMKIzEyNjogRklMRTogaW5jbHVkZS9k
cm0vZHJtX3ByaW50Lmg6NDgyOgorCisKCnRvdGFsOiA0IGVycm9ycywgMCB3YXJuaW5ncywgMTUg
Y2hlY2tzLCA3OSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
