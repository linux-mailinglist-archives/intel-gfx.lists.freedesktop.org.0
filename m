Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B7AF1136
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 09:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2246EC55;
	Wed,  6 Nov 2019 08:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CD8D6EC54;
 Wed,  6 Nov 2019 08:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68B1EA00E7;
 Wed,  6 Nov 2019 08:37:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Nov 2019 08:37:27 -0000
Message-ID: <157302944742.12036.14615924788578369549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106073209.25829-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191106073209.25829-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/userptr=3A_Try_to_acquire_the_page_lock_around_set?=
 =?utf-8?b?X3BhZ2VfZGlydHkoKQ==?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdXNlcnB0cjogVHJ5IHRvIGFj
cXVpcmUgdGhlIHBhZ2UgbG9jayBhcm91bmQgc2V0X3BhZ2VfZGlydHkoKQpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjkwMzcvClN0YXRlIDogd2Fybmlu
ZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApkZGE2Yzk1
MDYzMTIgZHJtL2k5MTUvdXNlcnB0cjogVHJ5IHRvIGFjcXVpcmUgdGhlIHBhZ2UgbG9jayBhcm91
bmQgc2V0X3BhZ2VfZGlydHkoKQotOjI5OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQ
b3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1
IGNoYXJzIHBlciBsaW5lKQojMjk6IApSZWZlcmVuY2VzOiBjYjZkN2M3ZGM3ZmYgKCJkcm0vaTkx
NS91c2VycHRyOiBBY3F1aXJlIHRoZSBwYWdlIGxvY2sgYXJvdW5kIHNldF9wYWdlX2RpcnR5KCki
KQoKLToyOTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2Ny
aXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIp
JyAtIGllOiAnY29tbWl0IGNiNmQ3YzdkYzdmZiAoImRybS9pOTE1L3VzZXJwdHI6IEFjcXVpcmUg
dGhlIHBhZ2UgbG9jayBhcm91bmQgc2V0X3BhZ2VfZGlydHkoKSIpJwojMjk6IApSZWZlcmVuY2Vz
OiBjYjZkN2M3ZGM3ZmYgKCJkcm0vaTkxNS91c2VycHRyOiBBY3F1aXJlIHRoZSBwYWdlIGxvY2sg
YXJvdW5kIHNldF9wYWdlX2RpcnR5KCkiKQoKLTozMDogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxl
YXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBv
ZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDUwNWE4ZWM3ZTExYSAoIlJl
dmVydCAiZHJtL2k5MTUvdXNlcnB0cjogQWNxdWlyZSB0aGUgcGFnZSBsb2NrIGFyb3VuZCBzZXRf
cGFnZV9kaXJ0eSgpIiIpJwojMzA6IApSZWZlcmVuY2VzOiA1MDVhOGVjN2UxMWEgKCJSZXZlcnQg
ImRybS9pOTE1L3VzZXJwdHI6IEFjcXVpcmUgdGhlIHBhZ2UgbG9jayBhcm91bmQgc2V0X3BhZ2Vf
ZGlydHkoKSIiKQoKLTozMTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29t
bWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRs
ZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDZkY2M2OTNiYzU3ZiAoImV4dDQ6IHdhcm4gd2hlbiBw
YWdlIGlzIGRpcnRpZWQgd2l0aG91dCBidWZmZXJzIiknCiMzMTogClJlZmVyZW5jZXM6IDZkY2M2
OTNiYzU3ZiAoImV4dDQ6IHdhcm4gd2hlbiBwYWdlIGlzIGRpcnRpZWQgd2l0aG91dCBidWZmZXJz
IikKCnRvdGFsOiAzIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDI5IGxpbmVzIGNoZWNr
ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
