Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0650A661FE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 00:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF65E6E294;
	Thu, 11 Jul 2019 22:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D3856E293;
 Thu, 11 Jul 2019 22:53:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04491A0075;
 Thu, 11 Jul 2019 22:53:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jul 2019 22:53:02 -0000
Message-ID: <20190711225302.9537.47555@emeril.freedesktop.org>
References: <20190711222030.18442-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190711222030.18442-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Use_shallow_dma_pages_for_scratch?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBVc2Ugc2hhbGxvdyBk
bWEgcGFnZXMgZm9yIHNjcmF0Y2gKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzYzNTk1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGlt
IGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZjBiNjgwY2JhMWY0IGRybS9pOTE1L2d0dDogVXNl
IHNoYWxsb3cgZG1hIHBhZ2VzIGZvciBzY3JhdGNoCi06NTQwOiBDSEVDSzpNQUNST19BUkdfUkVV
U0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdweCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM1
NDA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oOjI2MjoKKyNkZWZp
bmUgcHhfYmFzZShweCkgXAorCV9fcHhfY2hvb3NlX2V4cHIocHgsIHN0cnVjdCBpOTE1X3BhZ2Vf
ZG1hICosIF9feCwgXAorCV9fcHhfY2hvb3NlX2V4cHIocHgsIHN0cnVjdCBpOTE1X3BhZ2VfdGFi
bGUgKiwgJl9feC0+YmFzZSwgXAorCV9fcHhfY2hvb3NlX2V4cHIocHgsIHN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5ICosICZfX3gtPmJhc2UsIFwKKwkodm9pZCkwKSkpCgp0b3RhbDogMCBlcnJv
cnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA1MDEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
