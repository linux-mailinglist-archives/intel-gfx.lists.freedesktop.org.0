Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B98B116487
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 01:43:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4876E131;
	Mon,  9 Dec 2019 00:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 960B36E06D;
 Mon,  9 Dec 2019 00:43:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D54EA00C7;
 Mon,  9 Dec 2019 00:43:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 09 Dec 2019 00:43:39 -0000
Message-ID: <157585221954.14782.10143665370094822692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191208233456.3074345-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191208233456.3074345-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gt=3A_Suppress_unclaimed_mmio_warnings_for_irq_enab?=
 =?utf-8?q?ling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFN1cHByZXNzIHVuY2xh
aW1lZCBtbWlvIHdhcm5pbmdzIGZvciBpcnEgZW5hYmxpbmcKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwNjAzLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNTYyNmE1MjRiNjBiIGRy
bS9pOTE1L2d0OiBTdXBwcmVzcyB1bmNsYWltZWQgbW1pbyB3YXJuaW5ncyBmb3IgaXJxIGVuYWJs
aW5nCi06Mzk6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBl
ZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUp
CiMzOTogClJlZmVyZW5jZXM6IDA0NWQxZmI3OTYxNiAoImRybS9pOTE1L2d0OiBBY3F1aXJlIGEg
R1Qgd2FrZXJlZiBmb3IgdGhlIGJyZWFkY3J1bWIgaW50ZXJydXB0IikKCi06Mzk6IEVSUk9SOkdJ
VF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29t
bWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAw
NDVkMWZiNzk2MTYgKCJkcm0vaTkxNS9ndDogQWNxdWlyZSBhIEdUIHdha2VyZWYgZm9yIHRoZSBi
cmVhZGNydW1iIGludGVycnVwdCIpJwojMzk6IApSZWZlcmVuY2VzOiAwNDVkMWZiNzk2MTYgKCJk
cm0vaTkxNS9ndDogQWNxdWlyZSBhIEdUIHdha2VyZWYgZm9yIHRoZSBicmVhZGNydW1iIGludGVy
cnVwdCIpCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxOSBsaW5lcyBj
aGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
