Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C1DB5699
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 22:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2AD6ED3B;
	Tue, 17 Sep 2019 20:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D5316ED3A;
 Tue, 17 Sep 2019 20:01:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28E93A0118;
 Tue, 17 Sep 2019 20:01:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Sep 2019 20:01:43 -0000
Message-ID: <20190917200143.26305.70381@emeril.freedesktop.org>
References: <20190917194746.26710-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190917194746.26710-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Extend_Haswell_GT1_PSMI_workaround_to_all?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4dGVuZCBIYXN3ZWxsIEdU
MSBQU01JIHdvcmthcm91bmQgdG8gYWxsClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82NjgyNi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjA5YmVkOGMwMzg1MSBkcm0vaTkxNTogRXh0
ZW5kIEhhc3dlbGwgR1QxIFBTTUkgd29ya2Fyb3VuZCB0byBhbGwKLToxNDogV0FSTklORzpDT01N
SVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAo
cHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzE0OiAKUmVmZXJlbmNlczogMmM1
NTAxODM0NzZkICgiZHJtL2k5MTU6IERpc2FibGUgUFNNSSBzbGVlcCBtZXNzYWdlcyBvbiBhbGwg
cmluZ3MgYXJvdW5kIGNvbnRleHQgc3dpdGNoZXMiKQoKLToxNDogRVJST1I6R0lUX0NPTU1JVF9J
RDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBj
aGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDJjNTUwMTgzNDc2
ZCAoImRybS9pOTE1OiBEaXNhYmxlIFBTTUkgc2xlZXAgbWVzc2FnZXMgb24gYWxsIHJpbmdzIGFy
b3VuZCBjb250ZXh0IHN3aXRjaGVzIiknCiMxNDogClJlZmVyZW5jZXM6IDJjNTUwMTgzNDc2ZCAo
ImRybS9pOTE1OiBEaXNhYmxlIFBTTUkgc2xlZXAgbWVzc2FnZXMgb24gYWxsIHJpbmdzIGFyb3Vu
ZCBjb250ZXh0IHN3aXRjaGVzIikKCnRvdGFsOiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVj
a3MsIDggbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
