Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF10EB37F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 16:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CAE6E0E7;
	Thu, 31 Oct 2019 15:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3236E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 15:10:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="283916103"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga001.jf.intel.com with ESMTP; 31 Oct 2019 08:10:22 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 08:11:24 -0700
Message-Id: <20191031151124.177930-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Skip MCHBAR queries on dgfx
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

ZGdmeCBkb2VzIG5vdCBtYXAgdGhlIE1DSEJBUiBNTUlPIGludG8gdGhlIEdGWCBkZXZpY2UgQkFS
LgpTa2lwIHRoaXMgc2VxdWVuY2Ugd2hlbiBydW5uaW5nIG9uIGRnZnguCgpTaWduZWQtb2ZmLWJ5
OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCAyMTI3M2I1
MTZkYmUuLjFkZTQ2YmZhNWExOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0xMDU2LDcg
KzEwNTYsNyBAQCBpbnRlbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkgKi8KIAlkcmFtX2luZm8tPmlzXzE2Z2JfZGltbSA9ICFJU19HRU45X0xQKGRl
dl9wcml2KTsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSkKKwlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA8IDkgfHwgSVNfREdGWChkZXZfcHJpdikpCiAJCXJldHVybjsKIAogCWlmIChJ
U19HRU45X0xQKGRldl9wcml2KSkKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
