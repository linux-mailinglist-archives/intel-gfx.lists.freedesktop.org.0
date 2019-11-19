Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C96102C5D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 20:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442666E3F4;
	Tue, 19 Nov 2019 19:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA6ED6E3C1;
 Tue, 19 Nov 2019 19:10:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9217A0138;
 Tue, 19 Nov 2019 19:10:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 19 Nov 2019 19:10:28 -0000
Message-ID: <157419062872.32165.4590928468083865962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119151818.67531-1-hdegoede@redhat.com>
In-Reply-To: <20191119151818.67531-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915_/_LPSS_/_mfd=3A_Select_correct_PWM_controller_to_us?=
 =?utf-8?q?e_based_on_VBT?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUgLyBMUFNTIC8gbWZkOiBTZWxl
Y3QgY29ycmVjdCBQV00gY29udHJvbGxlciB0byB1c2UgYmFzZWQgb24gVkJUClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTY4Ni8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjA3NmVl
NjcxMzE4MSBBQ1BJIC8gTFBTUzogUmVuYW1lIHB3bV9iYWNrbGlnaHQgcHdtLWxvb2t1cCB0byBw
d21fc29jX2JhY2tsaWdodAo5ZTFhY2FjYzVhMWMgbWZkOiBpbnRlbF9zb2NfcG1pYzogUmVuYW1l
IHB3bV9iYWNrbGlnaHQgcHdtLWxvb2t1cCB0byBwd21fcG1pY19iYWNrbGlnaHQKLTo0ODogV0FS
TklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNDg6IEZJTEU6IGRyaXZl
cnMvbWZkL2ludGVsX3NvY19wbWljX2NvcmUuYzo0MToKKwlQV01fTE9PS1VQKCJjcnlzdGFsX2Nv
dmVfcHdtIiwgMCwgIjAwMDA6MDA6MDIuMCIsICJwd21fcG1pY19iYWNrbGlnaHQiLCAwLCBQV01f
UE9MQVJJVFlfTk9STUFMKSwKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3Ms
IDggbGluZXMgY2hlY2tlZAphMDMwZGY0MmVlNDQgZHJtL2k5MTU6IERTSTogc2VsZWN0IGNvcnJl
Y3QgUFdNIGNvbnRyb2xsZXIgdG8gdXNlIGJhc2VkIG9uIHRoZSBWQlQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
