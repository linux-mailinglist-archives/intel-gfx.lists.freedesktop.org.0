Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8684142746
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 15:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D67E8931E;
	Wed, 12 Jun 2019 13:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1C0F8931D;
 Wed, 12 Jun 2019 13:15:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAEC9A0005;
 Wed, 12 Jun 2019 13:15:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 12 Jun 2019 13:15:50 -0000
Message-ID: <20190612131550.21002.16148@emeril.freedesktop.org>
References: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/i915=3A_Don=27t_clobber_M?=
 =?utf-8?q?/N_values_during_fastset_check?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTU6IERvbid0IGNsb2JiZXIgTS9OIHZhbHVlcyBkdXJpbmcgZmFzdHNldCBjaGVjawpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE5NjAvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcApiYzI5NjIzYWI1ZTIgZHJtL2k5MTU6IERvbid0IGNsb2JiZXIgTS9OIHZhbHVlcyBkdXJp
bmcgZmFzdHNldCBjaGVjawoyZTRlYjM2OWYwYzQgZHJtL2k5MTU6IENvbnN0aWZ5IGludGVsX3Bp
cGVfY29uZmlnX2NvbXBhcmUoKQoyYjUxN2EyYTA1OTIgZHJtL2k5MTU6IE1ha2UgcGlwZV9jb25m
aWdfZXJyKCkgdnMuIGZhc3RzZXQgbGVzcyBjb25mdXNpbmcKLToxMzI6IFdBUk5JTkc6TE9OR19M
SU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzEzMjogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGlzcGxheS5jOjEyNDI2OgorCQkJCSAgICAgInVuYWJsZSB0byB2ZXJpZnkg
d2hldGhlciBzdGF0ZSBtYXRjaGVzIGV4YWN0bHksIGZvcmNpbmcgbW9kZXNldCAoZXhwZWN0ZWQg
JXMsIGZvdW5kICVzKVxuIiwgXAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgMjU2IGxpbmVzIGNoZWNrZWQKOTBhMWIzNTZlZTQ0IGRybS9pOTE1OiBEcm9wIHRoZSBfSU5D
T01QTEVURSBmb3IgaGFzX2luZm9mcmFtZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
