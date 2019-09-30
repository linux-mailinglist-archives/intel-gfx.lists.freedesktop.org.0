Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 796D4C2A14
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 00:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0B86E042;
	Mon, 30 Sep 2019 22:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 627746E042;
 Mon, 30 Sep 2019 22:58:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AA75A00E9;
 Mon, 30 Sep 2019 22:58:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Prathap Kumar Valsan" <prathap.kumar.valsan@intel.com>
Date: Mon, 30 Sep 2019 22:58:07 -0000
Message-ID: <20190930225807.32575.22692@emeril.freedesktop.org>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/tgl=3A_Add_sysfs_interface_to_control_class-of-service_?=
 =?utf-8?b?KHJldjMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBBZGQgc3lzZnMgaW50
ZXJmYWNlIHRvIGNvbnRyb2wgY2xhc3Mtb2Ytc2VydmljZSAocmV2MykKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1NzY5LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAg
ICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENI
SyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQ0MgICAgICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgucwpJbiBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1hbmQt
bGluZT46MDowOgouL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuaDo2Mjo0NTog
ZXJyb3I6IOKAmHN0cnVjdCBpbnRlbF9jb250ZXh04oCZIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0
ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9y
IGRlY2xhcmF0aW9uIFstV2Vycm9yXQogdm9pZCBpbnRlbF9tb2NzX2luaXRfcmVnX3N0YXRlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcg
dHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyOTM6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgucycgZmFpbGVkCm1h
a2VbNV06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oLnNdIEVycm9y
IDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndCcgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3RdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9n
cHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBm
b3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMv
Z3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTogcmVjaXBlIGZvciB0
YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJy
b3IgMgpNYWtlZmlsZToxNjcwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1h
a2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
