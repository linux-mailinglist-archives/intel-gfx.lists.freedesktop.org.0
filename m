Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D131849630
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 02:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC02589240;
	Tue, 18 Jun 2019 00:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A445189240;
 Tue, 18 Jun 2019 00:10:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94A45A0099;
 Tue, 18 Jun 2019 00:10:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 18 Jun 2019 00:10:13 -0000
Message-ID: <20190618001013.2340.15385@emeril.freedesktop.org>
References: <20190614180734.13350-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614180734.13350-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/ehl=3A_Allow_combo_PHY_A_to_drive_a_third_external_?=
 =?utf-8?q?display_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZWhsOiBBbGxvdyBjb21ibyBQ
SFkgQSB0byBkcml2ZSBhIHRoaXJkIGV4dGVybmFsIGRpc3BsYXkgKHJldjIpClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjEzMS8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjEyOGVl
MGRkZWY0OCBkcm0vaTkxNS9laGw6IEFsbG93IGNvbWJvIFBIWSBBIHRvIGRyaXZlIGEgdGhpcmQg
ZXh0ZXJuYWwgZGlzcGxheQotOjUwOiBDSEVDSzpDT01QQVJJU09OX1RPX05VTEw6IENvbXBhcmlz
b24gdG8gTlVMTCBjb3VsZCBiZSB3cml0dGVuICJpOTE1LT52YnQuZGRpX3BvcnRfaW5mb1tQT1JU
X0FdLmNoaWxkIgojNTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5LmM6MjY1OgorCWJvb2wgZGRpX2FfcHJlc2VudCA9IGk5MTUtPnZidC5kZGlfcG9y
dF9pbmZvW1BPUlRfQV0uY2hpbGQgIT0gTlVMTDsKCi06NTE6IENIRUNLOkNPTVBBUklTT05fVE9f
TlVMTDogQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxkIGJlIHdyaXR0ZW4gImk5MTUtPnZidC5kZGlf
cG9ydF9pbmZvW1BPUlRfRF0uY2hpbGQiCiM1MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb21ib19waHkuYzoyNjY6CisJYm9vbCBkZGlfZF9wcmVzZW50ID0gaTkx
NS0+dmJ0LmRkaV9wb3J0X2luZm9bUE9SVF9EXS5jaGlsZCAhPSBOVUxMOwoKdG90YWw6IDAgZXJy
b3JzLCAwIHdhcm5pbmdzLCAyIGNoZWNrcywgNjUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
