Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A8466B75
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68666E356;
	Fri, 12 Jul 2019 11:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E7BB6E34D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:15:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="177473922"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 12 Jul 2019 04:15:32 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.180.213])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6CBFTLT006127; Fri, 12 Jul 2019 12:15:30 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:14:45 +0000
Message-Id: <20190712111445.21040-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190712111445.21040-1-michal.wajdeczko@intel.com>
References: <20190712111445.21040-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNpbmcgImVuYWJsZV9ndWMiIG1vZHBhcmFtIGF1dG8gbW9kZSAoLTEpIHdpbGwgbGV0IGRyaXZl
cgpkZWNpZGUgb24gd2hpY2ggcGxhdGZvcm1zIGFuZCBpbiB3aGljaCBjb25maWd1cmF0aW9uIHdl
IHdhbnQKdG8gdXNlIEd1Qy9IdUMgZmlybXdhcmVzLgoKVG9kYXkgZHJpdmVyIHdpbGwgZW5hYmxl
IEh1QyBmaXJtd2FyZSBhdXRoZW50aWNhdGlvbiBieSBHdUMKb25seSBvbiBHZW4xMSsgcGxhdGZv
cm1zIGFzIEh1QyBmaXJtd2FyZSBpcyByZXF1aXJlZCB0byB1bmxvY2sKYWR2YW5jZWQgdmlkZW8g
Y29kZWNzIGluIG1lZGlhIGRyaXZlci4KCkxlZ2FjeSBwbGF0Zm9ybXMgd2l0aCBHdUMvSHVDIGFy
ZSBub3QgYWZmZWN0ZWQgYnkgdGhpcyBjaGFuZ2UKYXMgZm9yIHRoZW0gZHJpdmVyIHN0aWxsIGRl
ZmF1bHRzIHRvIGRpc2FibGVkKDApIGluIGF1dG8gbW9kZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFy
YW1zLmgKaW5kZXggZDI5YWRlM2I3ZGU2Li41NzM2YzU1Njk0ZmUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wYXJhbXMuaApAQCAtNTQsNyArNTQsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7CiAJcGFy
YW0oaW50LCBkaXNhYmxlX3Bvd2VyX3dlbGwsIC0xKSBcCiAJcGFyYW0oaW50LCBlbmFibGVfaXBz
LCAxKSBcCiAJcGFyYW0oaW50LCBpbnZlcnRfYnJpZ2h0bmVzcywgMCkgXAotCXBhcmFtKGludCwg
ZW5hYmxlX2d1YywgMCkgXAorCXBhcmFtKGludCwgZW5hYmxlX2d1YywgLTEpIFwKIAlwYXJhbShp
bnQsIGd1Y19sb2dfbGV2ZWwsIC0xKSBcCiAJcGFyYW0oY2hhciAqLCBndWNfZmlybXdhcmVfcGF0
aCwgTlVMTCkgXAogCXBhcmFtKGNoYXIgKiwgaHVjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwKLS0g
CjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
