Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64C0DBB6F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 04:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCE16E0EF;
	Fri, 18 Oct 2019 02:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A3AA6E0EF;
 Fri, 18 Oct 2019 02:04:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21BDDA0118;
 Fri, 18 Oct 2019 02:04:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 18 Oct 2019 02:04:17 -0000
Message-ID: <20191018020417.5570.14255@emeril.freedesktop.org>
References: <20191016033841.6888-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016033841.6888-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_simplify_set?=
 =?utf-8?q?ting_of_ddi=5Fio=5Fpower=5Fdomain_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NV0gZHJtL2k5MTU6IHNpbXBsaWZ5IHNldHRpbmcgb2YgZGRpX2lvX3Bvd2VyX2RvbWFpbiAocmV2
MykKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4MDY5
LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2lu
L2RybS10aXAKZGE3MDkyY2Q3MWM0IGRybS9pOTE1OiBzaW1wbGlmeSBzZXR0aW5nIG9mIGRkaV9p
b19wb3dlcl9kb21haW4KZjc3NTVlMTIwZDU4IGRybS9pOTE1OiBmaXggcG9ydCBjaGVja3MgZm9y
IE1TVCBzdXBwb3J0IG9uIGdlbiA+PSAxMQowNGIzNDNiODRjNDIgZHJtL2k5MTU6IHJlbW92ZSBl
eHRyYSBuZXcgbGluZSBvbiBwaXBlX2NvbmZpZyBtaXNtYXRjaAotOjUyOiBXQVJOSU5HOkxPTkdf
TElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM1MjogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTI2MTM6CisJCQkJICAgICAidW5hYmxlIHRv
IHZlcmlmeSB3aGV0aGVyIHN0YXRlIG1hdGNoZXMgZXhhY3RseSwgZm9yY2luZyBtb2Rlc2V0IChl
eHBlY3RlZCAlcywgZm91bmQgJXMpIiwgXAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAw
IGNoZWNrcywgODggbGluZXMgY2hlY2tlZApmYjUzYTExYzQ3NjUgZHJtL2k5MTU6IGFkZCBwaXBl
IGlkL25hbWUgdG8gcGlwZSBtaXNtYXRjaCBsb2dzCjk0YWViM2IzMGQ0MSBkcm0vaTkxNTogcHJl
dHRpZnkgTVNUIGRlYnVnIG1lc3NhZ2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
