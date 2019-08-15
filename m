Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9A38E65B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 10:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392756E8CC;
	Thu, 15 Aug 2019 08:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60746E28E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 08:31:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 01:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; d="scan'208";a="376317418"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2019 01:31:08 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 3F60F84080C; Thu, 15 Aug 2019 11:31:02 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 11:30:54 +0300
Message-Id: <20190815083055.14132-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190815083055.14132-1-mika.kuoppala@linux.intel.com>
References: <20190815083055.14132-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/icl: Add command cache invalidate
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

T24gdGhlIHNldCBvZiBpbnZhbGlkYXRpb25zLCB3ZSBuZWVkIHRvIGFkZCBjb21tYW5kCmNhY2hl
IGludmFsaWRhdGUgYXMgYSBuZXcgZG9tYWluLgoKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ncHVfY29tbWFuZHMuaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgICAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAppbmRleCA5
MjlhMTdlNTRmMmMuLjg2ZTAwYTJkYjhhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3B1X2NvbW1hbmRzLmgKQEAgLTIwOCw2ICsyMDgsNyBAQAogI2RlZmluZSAgIERJU1BM
QVlfUExBTkVfQSAgICAgICAgICAgKDA8PDIwKQogI2RlZmluZSAgIERJU1BMQVlfUExBTkVfQiAg
ICAgICAgICAgKDE8PDIwKQogI2RlZmluZSBHRlhfT1BfUElQRV9DT05UUk9MKGxlbikJKCgweDM8
PDI5KXwoMHgzPDwyNyl8KDB4Mjw8MjQpfCgobGVuKS0yKSkKKyNkZWZpbmUgICBQSVBFX0NPTlRS
T0xfQ09NTUFORF9DQUNIRV9JTlZBTElEQVRFCQkoMTw8MjkpIC8qIGdlbjExKyAqLwogI2RlZmlu
ZSAgIFBJUEVfQ09OVFJPTF9USUxFX0NBQ0hFX0ZMVVNICQkJKDE8PDI4KSAvKiBnZW4xMSsgKi8K
ICNkZWZpbmUgICBQSVBFX0NPTlRST0xfRkxVU0hfTDMJCQkJKDE8PDI3KQogI2RlZmluZSAgIFBJ
UEVfQ09OVFJPTF9HTE9CQUxfR1RUX0lWQgkJCSgxPDwyNCkgLyogZ2VuNysgKi8KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggNmEyN2E4OTdkN2E2Li45MDE4YWZiNGU5ZWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNjkxLDYgKzI2OTEsNyBAQCBzdGF0
aWMgaW50IGdlbjExX2VtaXRfZmx1c2hfcmVuZGVyKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVl
c3QsCiAKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0NTX1NUQUxMOwogCisJCWZsYWdzIHw9IFBJ
UEVfQ09OVFJPTF9DT01NQU5EX0NBQ0hFX0lOVkFMSURBVEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09O
VFJPTF9UTEJfSU5WQUxJREFURTsKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0lOU1RSVUNUSU9O
X0NBQ0hFX0lOVkFMSURBVEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9URVhUVVJFX0NBQ0hF
X0lOVkFMSURBVEU7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
