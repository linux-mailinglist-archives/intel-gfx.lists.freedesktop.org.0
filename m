Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 149F537BEE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 20:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3C389487;
	Thu,  6 Jun 2019 18:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E62089487
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 18:12:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 11:12:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,560,1557212400"; d="scan'208";a="182396710"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2019 11:12:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 11:09:42 -0700
Message-Id: <20190606180942.13743-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.14.5
Subject: [Intel-gfx] [PATCH] drm/i915: Assume combo PHY HBR3 will be
 inherited by future platforms
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugc2hvdWxkbid0IGFzc3VtZSB0aGF0IEhCUjMgb24gY29tYm8gUEhZcyBpcyBhbiBFSEwtc3Bl
Y2lmaWMKY2FwYWJpbGl0eS4gIExldCdzIGZvbGxvdyB0aGUgc3RhbmRhcmQgaTkxNSBjb252ZW50
aW9uIG9mIGFzc3VtaW5nCmZ1dHVyZSBwbGF0Zm9ybXMgd2lsbCBpbmhlcml0IGFsbCBmZWF0dXJl
cyBvZiB0aGUgbGF0ZXN0IHBsYXRmb3JtLgoKRml4ZXM6IGI3MTQzODYwNjM0MyAoImRybS9pOTE1
L2VobDogU3VwcG9ydCBIQlIzIG9uIEVITCBjb21ibyBQSFkiKQpDYzogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwpp
bmRleCBiMDk5YTlkYzI4ZmQuLjRlMmEwNjUxM2U3ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5j
CkBAIC0zMzIsNyArMzMyLDcgQEAgc3RhdGljIGludCBpY2xfbWF4X3NvdXJjZV9yYXRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5w
b3J0OwogCiAJaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpICYmCi0J
ICAgICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYKKwkgICAgSVNfSUNFTEFLRShkZXZfcHJp
dikgJiYKIAkgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCiAJCXJldHVybiA1NDAwMDA7
CiAKLS0gCjIuMTQuNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
