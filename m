Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F79E115969
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 23:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9B96FAA1;
	Fri,  6 Dec 2019 22:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAF306FAA0;
 Fri,  6 Dec 2019 22:50:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A224EA0075;
 Fri,  6 Dec 2019 22:50:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Fri, 06 Dec 2019 22:50:48 -0000
Message-ID: <157567264863.31671.4063720474562931385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191206212417.20178-1-andi@etezian.org>
In-Reply-To: <20191206212417.20178-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gt=3A_Replace_I915=5FWRITE_with_its_uncore_counterp?=
 =?utf-8?q?art?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFJlcGxhY2UgSTkxNV9X
UklURSB3aXRoIGl0cyB1bmNvcmUgY291bnRlcnBhcnQKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwNTc1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYWRkY2FkNmI4Y2YxIGRybS9p
OTE1L2d0OiBSZXBsYWNlIEk5MTVfV1JJVEUgd2l0aCBpdHMgdW5jb3JlIGNvdW50ZXJwYXJ0Ci06
ODQ6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBv
cGVuIHBhcmVudGhlc2lzCiM4NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ19zdWJtaXNzaW9uLmM6ODU5OgorCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBFQ09T
S1BELAogCQkJICAgX01BU0tFRF9CSVRfRU5BQkxFKEVDT19DT05TVEFOVF9CVUZGRVJfU1JfRElT
QUJMRSkpOwoKLToxMTE6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNo
b3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxMTE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jOjg4MDoKKwkJaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwgR0ZYX01PREUsCiAJCQkgICBfTUFTS0VEX0JJVF9FTkFCTEUoR0ZYX1RMQl9JTlZB
TElEQVRFX0VYUExJQ0lUKSk7CgotOjExODogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBB
bGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzExODogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmM6ODg1OgorCQlpbnRlbF91
bmNvcmVfd3JpdGUodW5jb3JlLCBHRlhfTU9ERV9HRU43LAogCQkJICAgX01BU0tFRF9CSVRfRU5B
QkxFKEdGWF9UTEJfSU5WQUxJREFURV9FWFBMSUNJVCkgfAoKLToxMzA6IENIRUNLOlBBUkVOVEhF
U0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMx
MzA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5j
Ojg5NToKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgQ0FDSEVfTU9ERV8wLAogCQkJICAg
X01BU0tFRF9CSVRfRElTQUJMRShDTTBfU1RDX0VWSUNUX0RJU0FCTEVfTFJBX1NOQikpOwoKdG90
YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA0IGNoZWNrcywgMTIwIGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
