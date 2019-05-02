Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F21E11D40
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C779F895CA;
	Thu,  2 May 2019 15:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE46895CA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:32:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="166951079"
Received: from vandita-desktop.iind.intel.com ([10.223.74.201])
 by fmsmga002.fm.intel.com with ESMTP; 02 May 2019 08:32:01 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 20:41:02 +0530
Message-Id: <1556809862-31203-4-git-send-email-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556809862-31203-1-git-send-email-vandita.kulkarni@intel.com>
References: <1556809862-31203-1-git-send-email-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] [v5 4/4] drm/i915: Fix pixel clock and crtc clock
 config mismatch
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiBkdWFsIGxpbmsgbW9kZSwgdGhlIG1vZGUgY2xvY2sgdGhhdCB3ZSBnZXQKZnJv
bSB0aGUgVkJUIGlzIGhhbHZlZC4KCnYyOiBTaW1wbGlmeSB0aGUgY2FsY3VsYXRpb24gKEphbmkp
LgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaWNsX2RzaS5jIHwgNCArKysrCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaWNsX2RzaS5jCmluZGV4IGNk
NmE0ZjMuLjQ2YjNkMzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2ku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pY2xfZHNpLmMKQEAgLTEyMzIsNyArMTIzMiwx
MSBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAkvKiBGSVhNRTogYWRhcHQgaWNsX2RkaV9jbG9ja19nZXQoKSBmb3IgRFNJ
IGFuZCB1c2UgdGhhdD8gKi8KIAlwaXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9CiAJCWNubF9jYWxj
X3dycGxsX2xpbmsoZGV2X3ByaXYsICZwaXBlX2NvbmZpZy0+ZHBsbF9od19zdGF0ZSk7CisKIAlw
aXBlX2NvbmZpZy0+YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfY2xvY2sgPSBpbnRlbF9kc2ktPnBj
bGs7CisJaWYgKGludGVsX2RzaS0+ZHVhbF9saW5rKQorCQlwaXBlX2NvbmZpZy0+YmFzZS5hZGp1
c3RlZF9tb2RlLmNydGNfY2xvY2sgKj0gMjsKKwogCWdlbjExX2RzaV9nZXRfdGltaW5ncyhlbmNv
ZGVyLCBwaXBlX2NvbmZpZyk7CiAJcGlwZV9jb25maWctPm91dHB1dF90eXBlcyB8PSBCSVQoSU5U
RUxfT1VUUFVUX0RTSSk7CiAJcGlwZV9jb25maWctPnBpcGVfYnBwID0gYmR3X2dldF9waXBlbWlz
Y19icHAoY3J0Yyk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
