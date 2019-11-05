Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0D4F00E0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 16:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4460A6EAA4;
	Tue,  5 Nov 2019 15:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96FF36E0AC;
 Tue,  5 Nov 2019 15:12:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90699A011B;
 Tue,  5 Nov 2019 15:12:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 Nov 2019 15:12:30 -0000
Message-ID: <157296675056.20548.16755069200762474295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191105145127.28616-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191105145127.28616-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_GitLab=2EPipeline=3A_warning_for_?=
 =?utf-8?q?i915/gem=5Fmmap=5Fgtt=3A_Skip_if_we_have_no_aperture_and_no_mma?=
 =?utf-8?q?p=5Fgtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaTkxNS9nZW1fbW1hcF9ndHQ6IFNraXAgaWYg
d2UgaGF2ZSBubyBhcGVydHVyZSBhbmQgbm8gbW1hcF9ndHQKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5MDAwLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCkRpZCBub3QgZ2V0IGxpc3Qgb2YgdW5kb2N1bWVudGVkIHRlc3RzIGZvciB0aGlz
IHJ1biwgc29tZXRoaW5nIGlzIHdyb25nIQoKT3RoZXIgdGhhbiB0aGF0LCBwaXBlbGluZSBzdGF0
dXM6IEZBSUxFRC4KCnNlZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2ln
dC1jaS10YWdzL3BpcGVsaW5lcy83NjM4NiBmb3IgbW9yZSBkZXRhaWxzCgo9PSBMb2dzID09CgpG
b3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9pZ3QtY2ktdGFncy9waXBlbGluZXMvNzYzODYKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
