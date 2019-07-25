Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772757494F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 10:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B036E69F;
	Thu, 25 Jul 2019 08:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91FA16E69A;
 Thu, 25 Jul 2019 08:44:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 896D3A00EA;
 Thu, 25 Jul 2019 08:44:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 25 Jul 2019 08:44:45 -0000
Message-ID: <20190725084445.29716.83546@emeril.freedesktop.org>
References: <20190725080348.2080-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725080348.2080-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Revert_=22ALSA=3A_line6=3A_sizeof_=28byte=29_is_always_1=2C_?=
 =?utf-8?q?use_that_fact=2E=22?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmV2ZXJ0ICJBTFNBOiBsaW5lNjogc2l6ZW9m
IChieXRlKSBpcyBhbHdheXMgMSwgdXNlIHRoYXQgZmFjdC4iClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDIxMy8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjAxZmQ5MmVlMjYyYiBS
ZXZlcnQgIkFMU0E6IGxpbmU2OiBzaXplb2YgKGJ5dGUpIGlzIGFsd2F5cyAxLCB1c2UgdGhhdCBm
YWN0LiIKLTo5OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBw
ZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5l
KQojOTogCjw0PiBbMzE1LjQ3ODgzMF0gc25kX2hkYV9pbnRlbCAwMDAwOjAwOjFmLjM6IGF6eF9n
ZXRfcmVzcG9uc2UgdGltZW91dCwgc3dpdGNoaW5nIHRvIHBvbGxpbmcgbW9kZTogbGFzdCBjbWQ9
MHgyMDJmODEwMAoKLToxMzogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29t
bWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRs
ZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDI3NTZkOTE0M2FhNSAoIkFMU0E6IGhkYSAtIEZpeCBp
bnRlcm1pdHRlbnQgQ09SQi9SSVJCIHN0YWxsIG9uIEludGVsIGNoaXBzIiknCiMxMzogCmZvbGxv
d2luZyBjb21taXRzIDI3NTZkOTE0M2FhNSAoIkFMU0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQg
Q09SQi9SSVJCCgotOjE0OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21t
aXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxl
IGxpbmU+IiknIC0gaWU6ICdjb21taXQgYTMwZjE3NDNlNGY1ICgiQUxTQTogbGluZTY6IHNpemVv
ZiAoYnl0ZSkgaXMgYWx3YXlzIDEsIHVzZSB0aGF0IGZhY3QuIiknCiMxNDogCnN0YWxsIG9uIElu
dGVsIGNoaXBzIikgYW5kIGEzMGYxNzQzZTRmNSAoIkFMU0E6IGxpbmU2OiBzaXplb2YgKGJ5dGUp
IGlzCgotOjQwOiBFUlJPUjpNSVNTSU5HX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6
IGxpbmUocykKCnRvdGFsOiAzIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDE2IGxpbmVz
IGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
