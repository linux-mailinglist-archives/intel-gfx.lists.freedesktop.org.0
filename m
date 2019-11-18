Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDA2100382
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 12:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372A989755;
	Mon, 18 Nov 2019 11:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92C6589725;
 Mon, 18 Nov 2019 11:05:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B7FEA0118;
 Mon, 18 Nov 2019 11:05:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 Nov 2019 11:05:58 -0000
Message-ID: <157407515855.2240.10918833667444735368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191118094342.2193485-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191118094342.2193485-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Add_intel=5Fgt=5Fdriver=5Flate=5Frelea?=
 =?utf-8?q?se_for_mock_device?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgaW50
ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFzZSBmb3IgbW9jayBkZXZpY2UKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5NjA5LwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZGRjMGZjZDU2
NjFmIGRybS9pOTE1L3NlbGZ0ZXN0czogQWRkIGludGVsX2d0X2RyaXZlcl9sYXRlX3JlbGVhc2Ug
Zm9yIG1vY2sgZGV2aWNlCi06MTA6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3Np
YmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hh
cnMgcGVyIGxpbmUpCiMxMDogClJlZmVyZW5jZXM6IGRlYTM5N2U4MThiMSAoImRybS9pOTE1L2d0
OiBGbHVzaCByZXRpcmUud29yayB0aW1lciBvYmplY3Qgb24gdW5sb2FkIikKCi06MTA6IEVSUk9S
OkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAn
Y29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1p
dCBkZWEzOTdlODE4YjEgKCJkcm0vaTkxNS9ndDogRmx1c2ggcmV0aXJlLndvcmsgdGltZXIgb2Jq
ZWN0IG9uIHVubG9hZCIpJwojMTA6IApSZWZlcmVuY2VzOiBkZWEzOTdlODE4YjEgKCJkcm0vaTkx
NS9ndDogRmx1c2ggcmV0aXJlLndvcmsgdGltZXIgb2JqZWN0IG9uIHVubG9hZCIpCgotOjExOiBF
UlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5
bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdj
b21taXQgMjQ2MzVjNTE1MmFmICgiZHJtL2k5MTU6IE1vdmUgaW50ZWxfZ3QgaW5pdGlhbGl6YXRp
b24gdG8gYSBzZXBhcmF0ZSBmaWxlIiknCiMxMTogClJlZmVyZW5jZXM6IDI0NjM1YzUxNTJhZiAo
ImRybS9pOTE1OiBNb3ZlIGludGVsX2d0IGluaXRpYWxpemF0aW9uIHRvIGEgc2VwYXJhdGUgZmls
ZSIpCgp0b3RhbDogMiBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNCBsaW5lcyBjaGVj
a2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
