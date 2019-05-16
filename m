Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4D621081
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 00:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE71A8928B;
	Thu, 16 May 2019 22:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBA9789274;
 Thu, 16 May 2019 22:25:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D168BA0094;
 Thu, 16 May 2019 22:25:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 16 May 2019 22:25:30 -0000
Message-ID: <20190516222530.26008.57966@emeril.freedesktop.org>
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Runtime_PM_encapsulation?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUnVudGltZSBQTSBlbmNhcHN1bGF0aW9uClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDc1MS8KU3Rh
dGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0t
dGlwCjZhYmU2ZGU5ZDY5YyBkcm0vaTkxNTogcHJlZmVyIGk5MTVfcnVudGltZV9wbSBpbiBpbnRl
bF9ydW50aW1lIGZ1bmN0aW9uCjQ1OWNlMTZlYTc5NiBkcm0vaTkxNTogUmVtb3ZlIHJwbSBhc3Nl
cnRzIHRoYXQgdXNlIGk5MTUKMzc4NmJhNTlmYjQ0IGRybS9pOTE1OiBtYWtlIGVuYWJsZS9kaXNh
YmxlIHJwbSBhc3NlcnQgZnVuY3Rpb24gdXNlIHRoZSBycG0gc3RydWN0dXJlCmY5ZmQwZjMxNzgx
NCBkcm0vaTkxNTogbW92ZSBhbmQgcmVuYW1lIGk5MTVfcnVudGltZV9wbQotOjUyNzogQ0hFQ0s6
VU5DT01NRU5URURfREVGSU5JVElPTjogc3BpbmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQgY29t
bWVudAojNTI3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmg6
NjI6CisJCXNwaW5sb2NrX3QgbG9jazsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBj
aGVja3MsIDU4NSBsaW5lcyBjaGVja2VkCjVmYWRlNDU2YjBiZiBkcm0vaTkxNTogbW92ZSBhIGZl
dyBtb3JlIGZ1bmN0aW9ucyB0byBhY2NlcHQgdGhlIHJwbSBzdHJ1Y3R1cmUKMTRjM2E1ZjIwZWQ2
IGRybS9pOTE1OiB1cGRhdGUgcnBtX2dldC9wdXQgdG8gdXNlIHRoZSBycG0gc3RydWN0dXJlCjI3
MDEwMjZiNmY5OCBkcm0vaTkxNTogdXBkYXRlIHdpdGhfaW50ZWxfcnVudGltZV9wbSB0byB1c2Ug
dGhlIHJwbSBzdHJ1Y3R1cmUKLTozOTk6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJn
dW1lbnQgcmV1c2UgJ3JwbScgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMzOTk6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaDoyNTM6CisjZGVmaW5lIHdpdGhf
aW50ZWxfcnVudGltZV9wbShycG0sIHdmKSBcCisJZm9yICgod2YpID0gaW50ZWxfcnVudGltZV9w
bV9nZXQocnBtKTsgKHdmKTsgXAorCSAgICAgaW50ZWxfcnVudGltZV9wbV9wdXQoKHJwbSksICh3
ZikpLCAod2YpID0gMCkKCi06Mzk5OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3Vt
ZW50IHJldXNlICd3ZicgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMzOTk6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaDoyNTM6CisjZGVmaW5lIHdpdGhfaW50
ZWxfcnVudGltZV9wbShycG0sIHdmKSBcCisJZm9yICgod2YpID0gaW50ZWxfcnVudGltZV9wbV9n
ZXQocnBtKTsgKHdmKTsgXAorCSAgICAgaW50ZWxfcnVudGltZV9wbV9wdXQoKHJwbSksICh3Zikp
LCAod2YpID0gMCkKCi06NDA2OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50
IHJldXNlICdycG0nIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNDA2OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmg6MjU3OgorI2RlZmluZSB3aXRoX2ludGVs
X3J1bnRpbWVfcG1faWZfaW5fdXNlKHJwbSwgd2YpIFwKKwlmb3IgKCh3ZikgPSBpbnRlbF9ydW50
aW1lX3BtX2dldF9pZl9pbl91c2UocnBtKTsgKHdmKTsgXAorCSAgICAgaW50ZWxfcnVudGltZV9w
bV9wdXQoKHJwbSksICh3ZikpLCAod2YpID0gMCkKCi06NDA2OiBDSEVDSzpNQUNST19BUkdfUkVV
U0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd3ZicgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM0
MDY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaDoyNTc6Cisj
ZGVmaW5lIHdpdGhfaW50ZWxfcnVudGltZV9wbV9pZl9pbl91c2UocnBtLCB3ZikgXAorCWZvciAo
KHdmKSA9IGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZShycG0pOyAod2YpOyBcCisJICAg
ICBpbnRlbF9ydW50aW1lX3BtX3B1dCgocnBtKSwgKHdmKSksICh3ZikgPSAwKQoKdG90YWw6IDAg
ZXJyb3JzLCAwIHdhcm5pbmdzLCA0IGNoZWNrcywgMzk2IGxpbmVzIGNoZWNrZWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
