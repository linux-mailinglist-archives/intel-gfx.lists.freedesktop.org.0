Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE4A189891
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 10:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BC06E8A6;
	Wed, 18 Mar 2020 09:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603D86E8A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 09:53:19 +0000 (UTC)
IronPort-SDR: 1qg0Y48S2zN5idAbgFDzc4SNJGpnE6UaQ9oDxUIO9185utS2ZBjhEHE4QGekcEfShASbj1fcsk
 5R3GbVNrQ/Aw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 02:53:18 -0700
IronPort-SDR: SGfo0q61yYfx9Mv01LZby58T+Qo1YbqxSJxlk83IGmcvq2l0Norxw9ovYH7F1r3ypR3DJJIDrV
 tPW1XuWuU2pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="279683204"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2020 02:53:17 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 15:14:48 +0530
Message-Id: <20200318094448.26239-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311083632.3249-1-anshuman.gupta@intel.com>
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Enable non-contiguous pipe fusing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UgaGF2ZSBhbHJlYWR5IGVuYWJsZWQgc3VwcG9ydGVkIGluZnJhc3RydWN0dXJlIGZvcgpu
b24tY29udGlndW91cyBwaXBlIGZ1c2luZyBpbiBkcml2ZXIsIHdlIGRvbid0IHJlcXVpcmUgbm9u
LWNvbnRpZ3VvdXMKcGlwZV9tYXNrIGNoZWNrIGFueW1vcmUuCkl0IGlzIGFuIHVubGlrZSBjb25k
aXRpb24sIGl0IG1ha2Ugc2Vuc2UgdG8gcmVtb3ZlIHRoaXMgY29uZGl0aW9uLgoKY2hhbmdlcyBz
aW5jZSBSRkM6Ci0gdXNpbmcgaW50ZWxfcGlwZV9tYXNrX2lzX3ZhbGlkKCkgZnVuY3Rpb24gdG8g
Y2hlY2sgaW50ZWdyaXR5IG9mCiAgcGlwZV9tYXNrLiBbVmlsbGVdCnYyOgotIHNpbXBsaWZ5IGNv
bmRpdGlvbiBpbiBpbnRlbF9waXBlX21hc2tfaXNfdmFsaWQoKS4gW1ZpbGxlXQp2MzoKLSByZW1v
dmVkIG5vbi1jb250aWd1b3VzIHBpcGUgZnVzaW5nIGNoZWNrLiBbTHVjYXNdCgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1
cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyB8IDEyICstLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uYwppbmRleCBkN2ZlMTI3MzRkYjguLjlmZjg5ZTE0MmZmMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC05OTgsMTcgKzk5OCw3IEBAIHZv
aWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAkJICAgIChkZnNtICYgVEdMX0RGU01fUElQRV9EX0RJU0FCTEUpKQogCQkJ
ZW5hYmxlZF9tYXNrICY9IH5CSVQoUElQRV9EKTsKIAotCQkvKgotCQkgKiBBdCBsZWFzdCBvbmUg
cGlwZSBzaG91bGQgYmUgZW5hYmxlZCBhbmQgaWYgdGhlcmUgYXJlCi0JCSAqIGRpc2FibGVkIHBp
cGVzLCB0aGV5IHNob3VsZCBiZSB0aGUgbGFzdCBvbmVzLCB3aXRoIG5vIGhvbGVzCi0JCSAqIGlu
IHRoZSBtYXNrLgotCQkgKi8KLQkJaWYgKGVuYWJsZWRfbWFzayA9PSAwIHx8ICFpc19wb3dlcl9v
Zl8yKGVuYWJsZWRfbWFzayArIDEpKQotCQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwKLQkJCQki
aW52YWxpZCBwaXBlIGZ1c2UgY29uZmlndXJhdGlvbjogZW5hYmxlZF9tYXNrPTB4JXhcbiIsCi0J
CQkJZW5hYmxlZF9tYXNrKTsKLQkJZWxzZQotCQkJaW5mby0+cGlwZV9tYXNrID0gZW5hYmxlZF9t
YXNrOworCQlpbmZvLT5waXBlX21hc2sgPSBlbmFibGVkX21hc2s7CiAKIAkJaWYgKGRmc20gJiBT
S0xfREZTTV9ESVNQTEFZX0hEQ1BfRElTQUJMRSkKIAkJCWluZm8tPmRpc3BsYXkuaGFzX2hkY3Ag
PSAwOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
