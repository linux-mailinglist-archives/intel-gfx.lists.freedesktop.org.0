Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B515C87F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 06:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AEE489709;
	Tue,  2 Jul 2019 04:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F16A789709
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 04:44:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 21:44:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="157506387"
Received: from vandita-desktop.iind.intel.com ([10.223.74.126])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2019 21:44:17 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 09:48:46 +0530
Message-Id: <20190702041850.4293-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Support mipi dsi video mode on TGL
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgZG9lc24ndCBpbmNsdWRlIHRoZSBwYXRjaCB0byBhZGQgZHNpIGluaXQgaW4K
c2V0dXBfb3V0cHV0cy4gV2FpdGluZyBmb3IgdGhlIHBsYXRmb3JtIGVuYWJsZW1uZXQgcGF0Y2hl
cyB0byBiZQptZXJnZWQuCgpWYW5kaXRhIEt1bGthcm5pICg0KToKICBkcm0vaTkxNS90Z2wvZHNp
OiBQcm9ncmFtIFRSQU5TX1ZCTEFOSyByZWdpc3RlcgogIGRybS9pOTE1L3RnbC9kc2k6IFNldCBs
YXRlbmN5IFBDU19EVzEgZm9yIHRnbAogIGRybS9pOTE1L3RnbC9kc2k6IERvIG5vdCBvdmVycmlk
ZSBUQV9TVVJFCiAgZHJtL2k5MTUvdGdsL2RzaTogR2F0ZSB0aGUgZGRpIGNsb2NrcyBhZnRlciBw
bGwgbWFwcGluZwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgNTAg
KysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzNCBpbnNlcnRpb25z
KCspLCAxNiBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
