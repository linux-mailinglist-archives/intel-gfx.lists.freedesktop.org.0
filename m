Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6691047AA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 01:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3186EAAA;
	Thu, 21 Nov 2019 00:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2A6F6EAA6;
 Thu, 21 Nov 2019 00:37:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97CFEA0BCB;
 Thu, 21 Nov 2019 00:37:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 Nov 2019 00:37:59 -0000
Message-ID: <157429667959.19249.6333101618660634953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gem=3A_Reduce_flush=5Fggtt=28=29_from_a_wait-for-id?=
 =?utf-8?q?le_to_a_mere_barrier_flush_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBSZWR1Y2UgZmx1c2hf
Z2d0dCgpIGZyb20gYSB3YWl0LWZvci1pZGxlIHRvIGEgbWVyZSBiYXJyaWVyIGZsdXNoIChyZXYz
KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjk3NTIv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAplMDU3MjY0MmFlY2EgUmV2ZXJ0ICJkcm0vaTkxNS9ndDogV2FpdCBmb3IgbmV3IHJl
cXVlc3RzIGluIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIgotOjIwOiBFUlJPUjpHSVRfQ09N
TUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8
MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgNzkzNmEy
MmRkNDY2ICgiZHJtL2k5MTUvZ3Q6IFdhaXQgZm9yIG5ldyByZXF1ZXN0cyBpbiBpbnRlbF9ndF9y
ZXRpcmVfcmVxdWVzdHMoKSIpJwojMjA6IApJbiBwcmFjdGljZSwgdGhlIGVmZmVjdCBjb21taXQg
NzkzNmEyMmRkNDY2IHdhcyB0cnlpbmcgdG8gYWNoaWV2ZSBpcwoKLToyNzogV0FSTklORzpDT01N
SVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAo
cHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzI3OiAKUmVmZXJlbmNlczogMTY4
M2QyNGMxNDcwICgiZHJtL2k5MTUvZ3Q6IE1vdmUgbmV3IHRpbWVsaW5lcyB0byB0aGUgZW5kIG9m
IGFjdGl2ZV9saXN0IikKCi06Mjc6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0
IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8
dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAxNjgzZDI0YzE0NzAgKCJkcm0vaTkxNS9ndDog
TW92ZSBuZXcgdGltZWxpbmVzIHRvIHRoZSBlbmQgb2YgYWN0aXZlX2xpc3QiKScKIzI3OiAKUmVm
ZXJlbmNlczogMTY4M2QyNGMxNDcwICgiZHJtL2k5MTUvZ3Q6IE1vdmUgbmV3IHRpbWVsaW5lcyB0
byB0aGUgZW5kIG9mIGFjdGl2ZV9saXN0IikKCnRvdGFsOiAyIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDM0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
