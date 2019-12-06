Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA271114C91
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 08:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A936EA04;
	Fri,  6 Dec 2019 07:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2842D6E9EE
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 07:14:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 23:14:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,283,1571727600"; d="scan'208";a="263518235"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2019 23:14:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 23:14:22 -0800
Message-Id: <20191206071422.27138-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206071422.27138-1-lucas.demarchi@intel.com>
References: <20191206071422.27138-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: fix phy name
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGFzcyB0aGUgY29ycmVjdCB2YXJpYWJsZSBhcyBhcmd1bWVudC4KClNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwppbmRleCA1ODZhMDAxOWI5YzcuLmY5NzdiYzljYTNjNSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMDI2LDcgKzMwMjYsNyBAQCBzdGF0
aWMgdm9pZCBpY2xfc2FuaXRpemVfcG9ydF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAkJCWNvbnRpbnVlOwogCiAJCURSTV9OT1RFKCJQSFkgJWMgaXMgZGlzYWJs
ZWQvaW4gRFNJIG1vZGUgd2l0aCBhbiB1bmdhdGVkIERESSBjbG9jaywgZ2F0ZSBpdFxuIiwKLQkJ
CSBwaHlfbmFtZShwb3J0KSk7CisJCQkgcGh5X25hbWUocGh5KSk7CiAJCXZhbCB8PSBpY2xfZHBj
bGthX2NmZ2NyMF9jbGtfb2ZmKGRldl9wcml2LCBwaHkpOwogCQlJOTE1X1dSSVRFKElDTF9EUENM
S0FfQ0ZHQ1IwLCB2YWwpOwogCX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
