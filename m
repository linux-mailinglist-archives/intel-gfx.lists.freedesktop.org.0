Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DD7B44BB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 01:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D9A6EAB1;
	Mon, 16 Sep 2019 23:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32BBD6EAB1;
 Mon, 16 Sep 2019 23:55:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EA9FA0087;
 Mon, 16 Sep 2019 23:55:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 16 Sep 2019 23:55:51 -0000
Message-ID: <20190916235551.577.36473@emeril.freedesktop.org>
References: <20190916233251.387-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190916233251.387-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/cml=3A_Add_second_PCH_ID_for_CMP?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvY21sOiBBZGQgc2Vjb25kIFBD
SCBJRCBmb3IgQ01QClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82Njc4Mi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjk2NTIwZWI5ZDVlOCBkcm0vaTkxNS9jbWw6IEFkZCBzZWNvbmQg
UENIIElEIGZvciBDTVAKLTo2OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJs
ZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJz
IHBlciBsaW5lKQojNjogClRoZSBDTVAgUENIIElEIHdlIGhhdmUgaW4gdGhlIGRyaXZlciBpcyBj
b3JyZWN0IGZvciB0aGUgQ01MLVUgbWFjaGluZXMgd2UgaGF2ZQoKLToxMjogRVJST1I6R0lUX0NP
TU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQg
PDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDcyOWFl
MzMwYTBmMiAoImRybS9pOTE1L2NtbDogSW50cm9kdWNlIENvbWV0IExha2UgUENIIiknCiMxMjog
ClJlZmVyZW5jZXM6IDcyOWFlMzMwYTBmMmUyICgiZHJtL2k5MTUvY21sOiBJbnRyb2R1Y2UgQ29t
ZXQgTGFrZSBQQ0giKQoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTQg
bGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
