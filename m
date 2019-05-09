Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4518C84
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 16:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09DC89D49;
	Thu,  9 May 2019 14:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6DB989D46
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 14:58:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 07:58:17 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga002.jf.intel.com with ESMTP; 09 May 2019 07:58:15 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:55:10 +0530
Message-Id: <1557415510-2365-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v2] drm/i915/icl: Handle YCbCr to RGB conversion for
 BT2020 case
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
Cc: ville.syrjala@intel.com, maarten.lankhorst@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IGlucHV0IGNzYyBmb3IgWUNiQ1IgdG8gUkdCIGNvbnZlcnNpb24gaGFuZGxlcyBv
bmx5CkJUNjAxIGFuZCBCdDcwOS4gRXh0ZW5kaW5nIGl0IHRvIHN1cHBvcnQgQlQyMDIwIGFzIHdl
bGwuCgp2MjogRml4ZWQgdGhlIGNvLWVmZmljaWVudHMgZm9yIExSIHRvIEZSIGNvbnZlcnNpb24s
CmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hh
bmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJp
dGUuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI0IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJp
dGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCmluZGV4IDI5MTNlODku
LjRmNTEzNjAwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwpAQCAtNDMzLDYgKzQz
MywxOCBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCQkweDlFRjgsIDB4NzgwMCwgMHhBQkY4LAog
CQkJMHgwLCAweDc4MDAsICAweDdFRDgsCiAJCX0sCisJCS8qCisJCSAqIEJULjIwMjAgZnVsbCBy
YW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgorCQkgKiBUaGUgbWF0cml4IHJlcXVpcmVkIGlz
IDoKKwkJICogWzEuMDAwLCAwLjAwMCwgMS40NzQsCisJCSAqICAxLjAwMCwgLTAuMTY0NSwgLTAu
NTcxMywKKwkJICogIDEuMDAwLCAxLjg4MTQsIDAuMDAwMF0KKwkJICovCisJCVtEUk1fQ09MT1Jf
WUNCQ1JfQlQyMDIwXSA9IHsKKwkJCTB4N0JDOCwgMHg3ODAwLCAweDAsCisJCQkweDg5MjgsIDB4
NzgwMCwgMHhBQTg4LAorCQkJMHgwLCAweDc4MDAsIDB4N0YxMCwKKwkJfSwKIAl9OwogCiAJLyog
TWF0cml4IGZvciBMaW1pdGVkIFJhbmdlIHRvIEZ1bGwgUmFuZ2UgQ29udmVyc2lvbiAqLwpAQCAt
NDYxLDYgKzQ3MywxOCBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCQkweDg4ODgsIDB4NzkxOCwg
MHhBREE4LAogCQkJMHgwLCAweDc5MTgsICAweDY4NzAsCiAJCX0sCisJCS8qCisJCSAqIEJULjIw
MjAgTGltaXRlZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgorCQkgKiBUaGUgbWF0cml4
IHJlcXVpcmVkIGlzIDoKKwkJICogWzEuMTY0LCAwLjAwMCwgMS42NzgsCisJCSAqICAxLjE2NCwg
LTAuMTg3MywgLTAuNjUwNCwKKwkJICogIDEuMTY0LCAyLjE0MTcsIDAuMDAwMF0KKwkJICovCisJ
CVtEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwXSA9IHsKKwkJCTB4N0Q3MCwgMHg3OTUwLCAweDAsCisJ
CQkweDhBNjgsIDB4Nzk1MCwgMHhBQzAwLAorCQkJMHgwLCAweDc5NTAsIDB4Njg5MCwKKwkJfSwK
IAl9OwogCWNvbnN0IHUxNiAqY3NjOwogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
