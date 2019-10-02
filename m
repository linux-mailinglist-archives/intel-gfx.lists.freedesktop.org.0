Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5089C8A28
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 15:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9E76E0F0;
	Wed,  2 Oct 2019 13:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 186606E0F0;
 Wed,  2 Oct 2019 13:49:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12924A0096;
 Wed,  2 Oct 2019 13:49:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 02 Oct 2019 13:49:18 -0000
Message-ID: <20191002134918.9786.89279@emeril.freedesktop.org>
References: <20191002122430.23205-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191002122430.23205-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Extract_random=5Foffset=28=29_for_use_?=
 =?utf-8?q?with_a_prng?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeHRyYWN0
IHJhbmRvbV9vZmZzZXQoKSBmb3IgdXNlIHdpdGggYSBwcm5nClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzQ4OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjYyMTI2MjMwZWRkNyBk
cm0vaTkxNS9zZWxmdGVzdHM6IEV4dHJhY3QgcmFuZG9tX29mZnNldCgpIGZvciB1c2Ugd2l0aCBh
IHBybmcKLTozNzogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAn
KicgKGN0eDpWeFYpCiMzNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfZ2VtX2d0dC5jOjE0MzE6CisJCQkJCSAgIDIqSTkxNV9HVFRfUEFHRV9TSVpFLAogCQkJCQkg
ICAgXgoKLTo4NTogV0FSTklORzpBVk9JRF9CVUc6IEF2b2lkIGNyYXNoaW5nIHRoZSBrZXJuZWwg
LSB0cnkgdXNpbmcgV0FSTl9PTiAmIHJlY292ZXJ5IGNvZGUgcmF0aGVyIHRoYW4gQlVHKCkgb3Ig
QlVHX09OKCkKIzg1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9y
YW5kb20uYzo5ODoKKwlCVUdfT04ocmFuZ2Vfb3ZlcmZsb3dzKHN0YXJ0LCBsZW4sIGVuZCkpOwoK
LTo4NjogV0FSTklORzpBVk9JRF9CVUc6IEF2b2lkIGNyYXNoaW5nIHRoZSBrZXJuZWwgLSB0cnkg
dXNpbmcgV0FSTl9PTiAmIHJlY292ZXJ5IGNvZGUgcmF0aGVyIHRoYW4gQlVHKCkgb3IgQlVHX09O
KCkKIzg2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yYW5kb20u
Yzo5OToKKwlCVUdfT04ocm91bmRfdXAoc3RhcnQsIGFsaWduKSA+IHJvdW5kX2Rvd24oZW5kIC0g
bGVuLCBhbGlnbikpOwoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAxIGNoZWNrcywgNzUg
bGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
