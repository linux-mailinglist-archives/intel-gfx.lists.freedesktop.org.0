Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4651CDF9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 19:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC14389301;
	Tue, 14 May 2019 17:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A038289301;
 Tue, 14 May 2019 17:29:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BAA4A00FA;
 Tue, 14 May 2019 17:29:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 14 May 2019 17:29:53 -0000
Message-ID: <20190514172953.20124.91606@emeril.freedesktop.org>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_HDR_Metadata_Parsing_and_handling_in_DRM_layer_=28rev10?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIEhEUiBNZXRhZGF0YSBQYXJzaW5nIGFu
ZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIgKHJldjEwKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMjUwOTEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApkN2IxN2Y5OThmZDkgZHJtOiBB
ZGQgSERSIHNvdXJjZSBtZXRhZGF0YSBwcm9wZXJ0eQotOjcyOiBDSEVDSzpQQVJFTlRIRVNJU19B
TElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNzI6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYzo3MzM6CisJCXJldCA9IGRybV9h
dG9taWNfcmVwbGFjZV9wcm9wZXJ0eV9ibG9iX2Zyb21faWQoZGV2LAorCQkJCSZzdGF0ZS0+aGRy
X291dHB1dF9tZXRhZGF0YSwKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3Ms
IDE1NCBsaW5lcyBjaGVja2VkCmEwMzY4NGYyNDY1MyBkcm06IEFkZCByZWZlcmVuY2UgY291bnRp
bmcgb24gSERSIG1ldGFkYXRhIGJsb2IKODEyMTNkM2NjNDJiIGRybTogUGFyc2UgSERSIG1ldGFk
YXRhIGluZm8gZnJvbSBFRElECjJiNmJmZTg3MmM1YyBkcm06IEVuYWJsZSBIRFIgaW5mb2ZyYW1l
IHN1cHBvcnQKNmU3NTBhZDU4YWVhIGRybS9pOTE1OiBBdHRhY2ggSERSIG1ldGFkYXRhIHByb3Bl
cnR5IHRvIGNvbm5lY3RvcgphZDhhZjJmN2JmZTEgZHJtL2k5MTU6IFdyaXRlIEhEUiBpbmZvZnJh
bWUgYW5kIHNlbmQgdG8gcGFuZWwKNWY5ODIyNzU0NTJiIGRybTogQWRkIEhMRyBFT1RGCmIzZTBl
MGU4NGFjZiBkcm0vaTkxNTogRW5hYmxlIGluZm9mcmFtZXMgb24gR0xLKyBmb3IgSERSCi06NTc6
IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzU3OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjgxOTA6CisjZGVmaW5lIEdMS19UVklERU9f
RElQX0RSTV9EQVRBKHRyYW5zLCBpKQlfTU1JT19UUkFOUzIodHJhbnMsIF9HTEtfVklERU9fRElQ
X0RSTV9EQVRBX0EgKyAoaSkgKiA0KQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgNzIgbGluZXMgY2hlY2tlZApjZTY3NTI5MGE2MGMgZHJtL2k5MTU6RW5hYmxlZCBNb2Rl
c2V0IHdoZW4gSERSIEluZm9mcmFtZSBjaGFuZ2VzCi06ODQ6IENIRUNLOlBBUkVOVEhFU0lTX0FM
SUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM4NDogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jOjgzOToKKwlpZiAoIWlzX2VvdGZf
c3VwcG9ydGVkKGhkcl9tZXRhZGF0YS0+aGRtaV9tZXRhZGF0YV90eXBlMS5lb3RmLAorCSAgICBj
b25uZWN0b3ItPmhkcl9zaW5rX21ldGFkYXRhLmhkbWlfdHlwZTEuZW90ZikpIHsKCnRvdGFsOiAw
IGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDU3IGxpbmVzIGNoZWNrZWQKMDk5YmMwMTQz
N2IwIGRybS9pOTE1OiBBZGRlZCBEUk0gSW5mb2ZyYW1lIGhhbmRsaW5nIGZvciBCWVQvQ0hUCmM1
NTFkZjA0OWI0YiB2aWRlby9oZG1pOiBBZGQgVW5wYWNrIGZ1bmN0aW9uIGZvciBEUk0gaW5mb2Zy
YW1lCjQxOWYxZjFhYTAxMyBkcm0vaTkxNTogQWRkIHN0YXRlIHJlYWRvdXQgZm9yIERSTSBpbmZv
ZnJhbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
