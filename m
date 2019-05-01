Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF7310BD8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 19:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D3E289229;
	Wed,  1 May 2019 17:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8A6A89229;
 Wed,  1 May 2019 17:15:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B03D4A363B;
 Wed,  1 May 2019 17:15:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 01 May 2019 17:15:05 -0000
Message-ID: <20190501171505.14435.28304@emeril.freedesktop.org>
References: <20190501165046.30375-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190501165046.30375-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/perf=3A_Refactor_oa_object_to_better_manage_resourc?=
 =?utf-8?q?es?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogUmVmYWN0b3Igb2Eg
b2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVzb3VyY2VzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDE3Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmFlYzRjNTAzNzVhMCBkcm0v
aTkxNS9wZXJmOiBSZWZhY3RvciBvYSBvYmplY3QgdG8gYmV0dGVyIG1hbmFnZSByZXNvdXJjZXMK
LToxMTYxOiBDSEVDSzpVTk5FQ0VTU0FSWV9QQVJFTlRIRVNFUzogVW5uZWNlc3NhcnkgcGFyZW50
aGVzZXMgYXJvdW5kICdzdHJlYW0tPm9hX2J1ZmZlci5sYXN0X2N0eF9pZCA9PQogCQkgICAgIHN0
cmVhbS0+c3BlY2lmaWNfY3R4X2lkJwojMTE2MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmM6NzkxOgorCQlpZiAoIWRldl9wcml2LT5wZXJmLmV4Y2x1c2l2ZV9zdHJlYW0t
PmN0eCB8fAorCQkgICAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWQgPT0gY3R4X2lkIHx8CisJCSAg
ICAoc3RyZWFtLT5vYV9idWZmZXIubGFzdF9jdHhfaWQgPT0KKwkJICAgICBzdHJlYW0tPnNwZWNp
ZmljX2N0eF9pZCkgfHwKIAkJICAgIHJlYXNvbiAmIE9BUkVQT1JUX1JFQVNPTl9DVFhfU1dJVENI
KSB7CgotOjE1MjA6IFdBUk5JTkc6QVZPSURfQlVHOiBBdm9pZCBjcmFzaGluZyB0aGUga2VybmVs
IC0gdHJ5IHVzaW5nIFdBUk5fT04gJiByZWNvdmVyeSBjb2RlIHJhdGhlciB0aGFuIEJVRygpIG9y
IEJVR19PTigpCiMxNTIwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzox
MzY3OgorCUJVR19PTihzdHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYuZXhjbHVzaXZlX3N0cmVhbSk7
CgotOjE3OTI6IENIRUNLOk9QRU5fRU5ERURfTElORTogTGluZXMgc2hvdWxkIG5vdCBlbmQgd2l0
aCBhICcoJwojMTc5MjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MTgz
ODoKKwkJCSAgIF9NQVNLRURfQklUX0VOQUJMRSgKCi06MjI3MTogQ0hFQ0s6U1BBQ0lORzogc3Bh
Y2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQojMjI3MTogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MzQ3OToKKwkJCQlkZXZfcHJpdi0+cGVyZi5n
ZW44X3ZhbGlkX2N0eF9iaXQgPSAoMTw8MjUpOwogCQkJCSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXgoKLToyMjc5OiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJlZmVycmVk
IGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiMyMjc5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYzozNDg0OgorCQkJCWRldl9wcml2LT5wZXJmLmdlbjhfdmFsaWRfY3R4
X2JpdCA9ICgxPDwxNik7CiAJCQkJICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCgotOjIzMDU6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQg
Jzw8JyAoY3R4OlZ4VikKIzIzMDU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jOjM1MDI6CisJCQlkZXZfcHJpdi0+cGVyZi5nZW44X3ZhbGlkX2N0eF9iaXQgPSAoMTw8MTYp
OwogCQkJICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgp0b3RhbDogMCBl
cnJvcnMsIDEgd2FybmluZ3MsIDUgY2hlY2tzLCAyMTYzIGxpbmVzIGNoZWNrZWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
