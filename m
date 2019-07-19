Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F19776E801
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1326E480;
	Fri, 19 Jul 2019 15:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B7A6E480
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:33:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 08:33:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="168585887"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2019 08:33:34 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6JFXXel014613; Fri, 19 Jul 2019 16:33:33 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jul 2019 15:33:22 +0000
Message-Id: <20190719153322.10464-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Don't try to clear failed empty
 pd allocation
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

V2hlbiBfX2dlbjhfcHBndHRfYWxsb2MgZmFpbHMgd2l0aG91dCBhbGxvY2F0aW5nIGFueXRoaW5n
CndlIHNob3VsZCBub3QgdHJ5IHRvIGNhbGwgX19nZW44X3BwZ3R0X2NsZWFyIGFzIHRoZXJlIGlz
Cm5vdGhpbmcgdG8gY2xlYXIgYW5kIHVuZGVybHlpbmcgY29kZSB3aWxsIGNvbXBsYWluIHdpdGg6
CgpbICAxNTcuODYxNjQ1XSBnZW44X3BkX3JhbmdlOjg4MSBHRU1fQlVHX09OKHN0YXJ0ID49IGVu
ZCkKClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRl
eCAyMjBhYmE1YTk0ZDIuLjVlNzUzZTA3NTA0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKQEAgLTExMTUsNyArMTExNSw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvYyhz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAogCWVyciA9IF9fZ2VuOF9wcGd0dF9hbGxv
Yyh2bSwgaTkxNV92bV90b19wcGd0dCh2bSktPnBkLAogCQkJCSAmc3RhcnQsIHN0YXJ0ICsgbGVu
Z3RoLCB2bS0+dG9wKTsKLQlpZiAodW5saWtlbHkoZXJyKSkKKwlpZiAodW5saWtlbHkoZXJyICYm
IGZyb20gIT0gc3RhcnQpKQogCQlfX2dlbjhfcHBndHRfY2xlYXIodm0sIGk5MTVfdm1fdG9fcHBn
dHQodm0pLT5wZCwKIAkJCQkgICBmcm9tLCBzdGFydCwgdm0tPnRvcCk7CiAKLS0gCjIuMTkuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
