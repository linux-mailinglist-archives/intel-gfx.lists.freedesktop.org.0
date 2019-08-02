Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94132802D2
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 00:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABC26E2F6;
	Fri,  2 Aug 2019 22:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC0BC6E0A2;
 Fri,  2 Aug 2019 22:33:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C530EA363D;
 Fri,  2 Aug 2019 22:33:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 02 Aug 2019 22:33:25 -0000
Message-ID: <20190802223325.15550.6888@emeril.freedesktop.org>
References: <20190802215356.13563-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190802215356.13563-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Get_transcod?=
 =?utf-8?q?er_power_domain_before_reading_its_register_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
Ml0gZHJtL2k5MTU6IEdldCB0cmFuc2NvZGVyIHBvd2VyIGRvbWFpbiBiZWZvcmUgcmVhZGluZyBp
dHMgcmVnaXN0ZXIgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82NDYzOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBj
aGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmUwNmVjOGJiOTJmMCBkcm0vaTkxNTogR2V0IHRyYW5z
Y29kZXIgcG93ZXIgZG9tYWluIGJlZm9yZSByZWFkaW5nIGl0cyByZWdpc3RlcgotOjQ0OiBXQVJO
SU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM0NDogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYzoyMDIxOgorCQkJCQkJCQkgICBQT1dF
Ul9ET01BSU5fVFJBTlNDT0RFUihjcHVfdHJhbnNjb2RlcikpOwoKdG90YWw6IDAgZXJyb3JzLCAx
IHdhcm5pbmdzLCAwIGNoZWNrcywgMjAgbGluZXMgY2hlY2tlZApmM2RjOWViODBlZWYgZHJtL2k5
MTUvdGdsOiBGaXggdGhlIHJlYWQgb2YgdGhlIERESSB0aGF0IHRyYW5zY29kZXIgaXMgYXR0YWNo
ZWQgdG8KLTo0NTogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwoj
NDU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6OTQzNToKKyNkZWZpbmUg
IFRHTF9QT1JUX1RSQU5TX0RESV9TRUxFQ1QodmFsKSAoKCh2YWwpICYgVEdMX1RSQU5TX0RESV9Q
T1JUX01BU0sgPj4gVEdMX1RSQU5TX0RESV9QT1JUX1NISUZUKSAtIDEpCgp0b3RhbDogMCBlcnJv
cnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
