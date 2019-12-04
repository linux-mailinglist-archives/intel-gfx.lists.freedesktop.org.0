Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DCF11385B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 00:48:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33456E95F;
	Wed,  4 Dec 2019 23:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49AB46E95F;
 Wed,  4 Dec 2019 23:48:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4078AA00E8;
 Wed,  4 Dec 2019 23:48:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 04 Dec 2019 23:48:04 -0000
Message-ID: <157550328424.12194.14354122526125359394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Cleanups_around_intel=5Fattached=5Fencoder=28=29?=
 =?utf-8?b?ICYgY28u?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENsZWFudXBzIGFyb3VuZCBp
bnRlbF9hdHRhY2hlZF9lbmNvZGVyKCkgJiBjby4KVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwNDU2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkg
PT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMTk5ZjI5M2M2MWY2IGRybS9pOTE1
L2hkY3A6IE51a2UgaW50ZWxfaGRjcF90cmFuc2NvZGVyX2NvbmZpZygpCjY4MDJiNjhhOGM4OSBk
cm0vaTkxNTogUGFzcyBpbnRlbF9jb25uZWN0b3IgdG8gaW50ZWxfYXR0YWNoZWRfKigpCi06NTU3
OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM1NTc6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jOjQ1MTI6CisJCWludGVsX2RwID0g
ZW5jX3RvX2ludGVsX2RwKCZpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKHRvX2ludGVsX2Nvbm5lY3Rv
cihjb25uZWN0b3IpKS0+YmFzZSk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hl
Y2tzLCA0MjcgbGluZXMgY2hlY2tlZApkZTg0NjEzNWRjYjkgZHJtL2k5MTU6IFBhc3MgaW50ZWxf
ZW5jb2RlciB0byBlbmNfdG9fKigpCi06NTIwOiBFUlJPUjpDT0RFX0lOREVOVDogY29kZSBpbmRl
bnQgc2hvdWxkIHVzZSB0YWJzIHdoZXJlIHBvc3NpYmxlCiM1MjA6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmM6NDE1MDoKK15JXkkgICAgICAgICAgICAgICBy
ZXF1aXJlZF9sYW5lcyk7JAoKLTo1MjA6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxp
Z25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM1MjA6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmM6NDE1MDoKKwlpbnRlbF90Y19wb3J0X2dl
dF9saW5rKGVuY190b19kaWdfcG9ydChlbmNvZGVyKSwKKwkJICAgICAgICAgICAgICAgcmVxdWly
ZWRfbGFuZXMpOwoKLToxNDk5OiBDSEVDSzpDT01QQVJJU09OX1RPX05VTEw6IENvbXBhcmlzb24g
dG8gTlVMTCBjb3VsZCBiZSB3cml0dGVuICJocGRfcHVsc2UiCiMxNDk5OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYzozMDU6CisJCWVuY190b19kaWdf
cG9ydChlbmNvZGVyKS0+aHBkX3B1bHNlICE9IE5VTEw7Cgp0b3RhbDogMSBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDIgY2hlY2tzLCAxNjEwIGxpbmVzIGNoZWNrZWQKYTZlNmY4NWZkMjY4IGRybS9pOTE1
OiBVc2UgdGhlIHBhc3NlZCBpbiBlbmNvZGVyCjI5MTJhYThlMzJhZSBkcm0vaTkxNTogVXNlIGlu
dGVsX2F0dGFjaGVkX2VuY29kZXIoKQotOjE2ODogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3Zl
ciAxMDAgY2hhcmFjdGVycwojMTY4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jOjUwODoKKwkJaWYgKCFpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKGNvbm5l
Y3RvciktPmdldF9od19zdGF0ZShpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKGNvbm5lY3RvciksICZw
aXBlKSkKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDIwNiBsaW5lcyBj
aGVja2VkCjc3ZjQ0MDU5ZmU1YyBkcm0vaTkxNTogUmVsb2NhdGUgaW50ZWxfYXR0YWNoZWRfZHAo
KQpkMzZhNDcwOGM5N2YgZHJtL2k5MTU6IFVzZSBpbnRlbF9hdHRhY2hlZF9kcCgpIGluc3RlYWQg
b2YgaGFuZCByb2xsaW5nIGl0Cjk5NGY4ODNiMmU3YiBkcm0vaTkxNTogUmVuYW1lIGNvbm5fdG9f
ZGlnX3BvcnQoKSB0byBpbnRlbF9hdHRhY2hlZF9kaWdfcG9ydCgpCjdjYzI5NWZjOWFhMCBkcm0v
aTkxNS9oZGNwOiBDbGVhbiB1cCBsb2NhbCB2YXJpYWJsZXMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
