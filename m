Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3F141C1C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 08:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3B5891E1;
	Wed, 12 Jun 2019 06:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E2D891E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 06:20:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 23:20:09 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jun 2019 23:20:06 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 12:14:56 +0530
Message-Id: <1560321900-18318-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v4 0/4] Enable Multi-segmented-gamma for ICL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlcyBwcm9ncmFtbWluZyBvZiBNdWx0aS1zZWdtZW50ZWQt
Z2FtbWEKcGFsZXR0ZSBmb3IgSUNMLgoKTm90ZTogRHVlIHRvIHRoZSByb3VuZHVwIGFuZCBldmVu
dHVhbCBwcmVjaXNpb24gbG9zcywgdGhlcmUgYXJlIENSQwpmYWlsdXJlcyB3aXRoIElHVCBjb2xv
ciB0ZXN0cyB3aGVuIG11bHRpIHNlZ21lbnRlZCBnYW1tYSBtb2RlIGlzIGVuYWJsZWQuCgp2NDog
UmViYXNlIGFuZCBhZGRyZXNzZWQgVmlsbGUncyByZXZpZXcgY29tbWVudHMuCgpTaGFzaGFuayBT
aGFybWEgKDMpOgogIGRybS9pOTE1OiBDaGFuZ2UgZ2FtbWEvZGVnYW1tYV9sdXRfc2l6ZSBkYXRh
IHR5cGUgdG8gdTMyCiAgZHJtL2k5MTU6IFJlbmFtZSBpdmJfbG9hZF9sdXRfMTBfbWF4CiAgZHJt
L2k5MTUvaWNsOiBBZGQgTXVsdGktc2VnbWVudGVkIGdhbW1hIHN1cHBvcnQKClVtYSBTaGFua2Fy
ICgxKToKICBkcm0vaTkxNS9pY2w6IEFkZCByZWdpc3RlciBkZWZpbml0aW9ucyBmb3IgTXVsdGkg
U2VnbWVudGVkIGdhbW1hCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAg
ICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICAx
OSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyAgICAgICB8IDE0MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5oIHwgICA0ICstCiA0IGZpbGVzIGNoYW5nZWQsIDE1MCBpbnNlcnRpb25z
KCspLCAxNSBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
