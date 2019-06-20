Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3624D566
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 19:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62F76E5DE;
	Thu, 20 Jun 2019 17:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97E566E5DC;
 Thu, 20 Jun 2019 17:43:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 905DDA3C0D;
 Thu, 20 Jun 2019 17:43:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Jun 2019 17:43:08 -0000
Message-ID: <20190620174308.12826.78033@emeril.freedesktop.org>
References: <20190620142052.19311-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620142052.19311-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915/execlists=3A_Pr?=
 =?utf-8?q?eempt-to-busy?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDYxLwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNTEzMTA1MjIwYTgw
IGRybS9pOTE1L2V4ZWNsaXN0czogUHJlZW1wdC10by1idXN5Ci06MzkzOiBXQVJOSU5HOk1FTU9S
WV9CQVJSSUVSOiBtZW1vcnkgYmFycmllciB3aXRob3V0IGNvbW1lbnQKIzM5MzogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MjQyOgorCXdtYigpOwoKLToxNTQyOiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdwX3B0cicgLSBwb3Nz
aWJsZSBzaWRlLWVmZmVjdHM/CiMxNTQyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3V0aWxzLmg6MTM0OgorI2RlZmluZSBwdHJfY291bnRfZGVjKHBfcHRyKSBkbyB7CQkJCQlcCisJ
dHlwZW9mKHBfcHRyKSBfX3AgPSAocF9wdHIpOwkJCQkJXAorCXVuc2lnbmVkIGxvbmcgX192ID0g
KHVuc2lnbmVkIGxvbmcpKCpfX3ApOwkJCVwKKwkqX19wID0gKHR5cGVvZigqcF9wdHIpKSgtLV9f
dik7CQkJCQlcCit9IHdoaWxlICgwKQoKLToxNTQ4OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1h
Y3JvIGFyZ3VtZW50IHJldXNlICdwX3B0cicgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMxNTQ4
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmg6MTQwOgorI2RlZmluZSBw
dHJfY291bnRfaW5jKHBfcHRyKSBkbyB7CQkJCQlcCisJdHlwZW9mKHBfcHRyKSBfX3AgPSAocF9w
dHIpOwkJCQkJXAorCXVuc2lnbmVkIGxvbmcgX192ID0gKHVuc2lnbmVkIGxvbmcpKCpfX3ApOwkJ
CVwKKwkqX19wID0gKHR5cGVvZigqcF9wdHIpKSgrK19fdik7CQkJCQlcCit9IHdoaWxlICgwKQoK
LToxODMxOiBXQVJOSU5HOkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIg
ZGVjbGFyYXRpb25zCiMxODMxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNf
c3VibWlzc2lvbi5jOjgyMDoKKwkJaW50IHJlbSA9IEFSUkFZX1NJWkUoZXhlY2xpc3RzLT5pbmZs
aWdodCkgLSBpZHg7CisJCW1lbW1vdmUoZXhlY2xpc3RzLT5pbmZsaWdodCwgcG9ydCwgcmVtICog
c2l6ZW9mKCpwb3J0KSk7Cgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDIgY2hlY2tzLCAx
NzI2IGxpbmVzIGNoZWNrZWQKM2M4MjU5ZWFiZDBiIGRybS9pOTE1L2V4ZWNsaXN0czogTWluaW1h
bGlzdGljIHRpbWVzbGljaW5nCi06MzUxOiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEw
MCBjaGFyYWN0ZXJzCiMzNTE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2xyYy5jOjIxMToKKwkJCSAgICAgIDIgKiBSVU5USU1FX0lORk8ob3V0ZXItPmk5MTUpLT5udW1f
ZW5naW5lcyAqIChjb3VudCArIDIpICogKGNvdW50ICsgMykpIDwgMCkgewoKdG90YWw6IDAgZXJy
b3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNDMxIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
