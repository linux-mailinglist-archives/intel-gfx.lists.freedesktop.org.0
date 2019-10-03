Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7B7CB1F2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 00:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBC96EA8F;
	Thu,  3 Oct 2019 22:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 960D26EA8B;
 Thu,  3 Oct 2019 22:38:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CEF4A0019;
 Thu,  3 Oct 2019 22:38:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 03 Oct 2019 22:38:45 -0000
Message-ID: <20191003223845.3224.28245@emeril.freedesktop.org>
References: <20191003210100.22250-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191003210100.22250-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915/execlists=3A_Skip_re?=
 =?utf-8?q?dundant_resubmission?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBTa2lwIHJlZHVuZGFudCByZXN1Ym1pc3Npb24KVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NTY2LwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKODg1
MmI4NGNmOWU3IGRybS9pOTE1L2V4ZWNsaXN0czogU2tpcCByZWR1bmRhbnQgcmVzdWJtaXNzaW9u
CmIzNDY3N2I0NzVmOCBkbWEtZmVuY2U6IFNlcmlhbGlzZSBzaWduYWwgZW5hYmxpbmcgKGRtYV9m
ZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKQotOjE0OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVh
c2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9m
IHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMGZjODliNjgwMmJhICgiZG1h
LWZlbmNlOiBTaW1wbHkgd3JhcCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCB3aXRoIGRtYV9mZW5j
ZV9zaWduYWwiKScKIzE0OiAKU2VlIGFsc28gMGZjODliNjgwMmJhICgiZG1hLWZlbmNlOiBTaW1w
bHkgd3JhcCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZAoKdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5p
bmdzLCAwIGNoZWNrcywgMTIwIGxpbmVzIGNoZWNrZWQKNTU0ZmMzNzUzYzkwIGRybS9tbTogVXNl
IGhlbHBlcnMgZm9yIGRybV9tbV9ub2RlIGJvb2xlYW5zCjg0ZjBlNTgyNTQxNSBkcm0vbW06IENv
bnZlcnQgZHJtX21tX25vZGUgYm9vbGVhbnMgdG8gYml0b3BzCjQ1YThiMGEyZWM5MSBkcm0vbW06
IFVzZSBjbGVhcl9iaXRfdW5sb2NrKCkgZm9yIHJlbGVhc2luZyB0aGUgZHJtX21tX25vZGUoKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
