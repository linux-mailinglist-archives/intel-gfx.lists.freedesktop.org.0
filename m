Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B2E42170
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 11:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B29C8946E;
	Wed, 12 Jun 2019 09:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEA4189467;
 Wed, 12 Jun 2019 09:53:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5FFDA010C;
 Wed, 12 Jun 2019 09:53:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 12 Jun 2019 09:53:02 -0000
Message-ID: <20190612095302.21002.95308@emeril.freedesktop.org>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612093111.11684-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/8=5D_drm/i915=3A_Keep_contexts_pin?=
 =?utf-8?q?ned_until_after_the_next_kernel_context_switch?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTU6IEtlZXAgY29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5l
bCBjb250ZXh0IHN3aXRjaApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjE5NDYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hl
Y2twYXRjaCBvcmlnaW4vZHJtLXRpcAowN2JjNGRlMGFiMzIgZHJtL2k5MTU6IEtlZXAgY29udGV4
dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5lbCBjb250ZXh0IHN3aXRjaAplMWYx
MGU5ZWM4YTYgZHJtL2k5MTU6IFN0b3AgcmV0aXJpbmcgYWxvbmcgZW5naW5lCjQ3NDAzODllMWE3
YSBkcm0vaTkxNTogUmVwbGFjZSBlbmdpbmUtPnRpbWVsaW5lIHdpdGggYSBwbGFpbiBsaXN0Ci06
MTgwOiBDSEVDSzpVTkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzcGlubG9ja190IGRlZmluaXRpb24g
d2l0aG91dCBjb21tZW50CiMxODA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV90eXBlcy5oOjI5MjoKKwkJc3BpbmxvY2tfdCBsb2NrOwoKdG90YWw6IDAgZXJyb3Jz
LCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgOTY4IGxpbmVzIGNoZWNrZWQKMGE2MTUyZDc0ZWYyIGRy
bS9pOTE1OiBGbHVzaCB0aGUgZXhlY3V0aW9uLWNhbGxiYWNrcyBvbiByZXRpcmluZwoyMjg2MjA2
ZTNmZmMgZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kKLToxNDk0OiBDSEVDSzpN
QUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdwX3B0cicgLSBwb3NzaWJsZSBz
aWRlLWVmZmVjdHM/CiMxNDk0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
Lmg6MTM0OgorI2RlZmluZSBwdHJfY291bnRfZGVjKHBfcHRyKSBkbyB7CQkJCQlcCisJdHlwZW9m
KHBfcHRyKSBfX3AgPSAocF9wdHIpOwkJCQkJXAorCXVuc2lnbmVkIGxvbmcgX192ID0gKHVuc2ln
bmVkIGxvbmcpKCpfX3ApOwkJCVwKKwkqX19wID0gKHR5cGVvZigqcF9wdHIpKSgtLV9fdik7CQkJ
CQlcCit9IHdoaWxlICgwKQoKLToxNTAwOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFy
Z3VtZW50IHJldXNlICdwX3B0cicgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMxNTAwOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmg6MTQwOgorI2RlZmluZSBwdHJfY291
bnRfaW5jKHBfcHRyKSBkbyB7CQkJCQlcCisJdHlwZW9mKHBfcHRyKSBfX3AgPSAocF9wdHIpOwkJ
CQkJXAorCXVuc2lnbmVkIGxvbmcgX192ID0gKHVuc2lnbmVkIGxvbmcpKCpfX3ApOwkJCVwKKwkq
X19wID0gKHR5cGVvZigqcF9wdHIpKSgrK19fdik7CQkJCQlcCit9IHdoaWxlICgwKQoKLToxNzgz
OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFy
YXRpb25zCiMxNzgzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlz
c2lvbi5jOjgyMDoKKwkJaW50IHJlbSA9IEFSUkFZX1NJWkUoZXhlY2xpc3RzLT5pbmZsaWdodCkg
LSBpZHg7CisJCW1lbW1vdmUoZXhlY2xpc3RzLT5pbmZsaWdodCwgcG9ydCwgcmVtICogc2l6ZW9m
KCpwb3J0KSk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDIgY2hlY2tzLCAxNjgyIGxp
bmVzIGNoZWNrZWQKMDkwZmYwODdhNDFlIGRybS9pOTE1L2V4ZWNsaXN0czogTWluaW1hbGlzdGlj
IHRpbWVzbGljaW5nCi06MzQ1OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFy
YWN0ZXJzCiMzNDU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5j
OjIxMToKKwkJCSAgICAgIDIgKiBSVU5USU1FX0lORk8ob3V0ZXItPmk5MTUpLT5udW1fZW5naW5l
cyAqIChjb3VudCArIDIpICogKGNvdW50ICsgMykpIDwgMCkgewoKdG90YWw6IDAgZXJyb3JzLCAx
IHdhcm5pbmdzLCAwIGNoZWNrcywgNDI2IGxpbmVzIGNoZWNrZWQKNjVjZTVkNDBkNmRhIGRybS9p
OTE1L2V4ZWNsaXN0czogRm9yY2UgcHJlZW1wdGlvbgoxOTE1YzIxYjIxODYgZHJtL2k5MTU6IEFk
ZCBhIGxhYmVsIGZvciBjb25maWcgRFJNX0k5MTVfU1BJTl9SRVFVRVNUCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
