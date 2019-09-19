Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2921B7F28
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F026F7E3;
	Thu, 19 Sep 2019 16:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7C76F7E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="186853734"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 19 Sep 2019 09:31:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:05 +0300
Message-Id: <20190919163113.17402-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 13/21] sna: Avoid strict
 aliasing violations with glyphinfo
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgYWNjZXNzIHRoZSB4R2x5cGhJbmZvIG1lbWJlcnMgZGlyZWN0bHkgdG8gYXZvaWQgdGhlCmNv
bXBpbGVyIGdldHRpbmcgdXBzZXQgYWJvdXQgc3RyaWN0IGFsaWFzaW5nIHZpb2xhdGlvbnMuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIHNyYy9zbmEvc25hX2dseXBocy5jIHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEv
c25hX2dseXBocy5jIGIvc3JjL3NuYS9zbmFfZ2x5cGhzLmMKaW5kZXggNmVlNDAzMzYwMjI2Li5l
YmMwNjFiNWE4YTggMTAwNjQ0Ci0tLSBhL3NyYy9zbmEvc25hX2dseXBocy5jCisrKyBiL3NyYy9z
bmEvc25hX2dseXBocy5jCkBAIC04NSw4ICs4NSwxMSBAQAogI2RlZmluZSBOT19BVExBUyAoKFBp
Y3R1cmVQdHIpLTEpCiAjZGVmaW5lIEdMWVBIX1RPTEVSQU5DRSAzCiAKLSNkZWZpbmUgZ2x5cGhf
dmFsaWQoZykgKigodWludDMyX3QgKikmKGcpLT5pbmZvLndpZHRoKQotI2RlZmluZSBnbHlwaF9j
b3B5X3NpemUociwgZykgKih1aW50MzJfdCAqKSYociktPndpZHRoID0gKih1aW50MzJfdCAqKSZn
LT5pbmZvLndpZHRoCisjZGVmaW5lIGdseXBoX3ZhbGlkKGcpICgoZyktPmluZm8ud2lkdGggfHwg
KGcpLT5pbmZvLmhlaWdodCkKKyNkZWZpbmUgZ2x5cGhfY29weV9zaXplKHIsIGcpIGRvIHsgXAor
CShyKS0+d2lkdGggPSAoZyktPmluZm8ud2lkdGg7IFwKKwkociktPmhlaWdodCA9IChnKS0+aW5m
by5oZWlnaHQ7IFwKK30gd2hpbGUgKDApCiAKICNpZiBIQVNfUElYTUFOX0dMWVBIUwogc3RhdGlj
ICBwaXhtYW5fZ2x5cGhfY2FjaGVfdCAqX19nbG9iYWxfZ2x5cGhfY2FjaGU7Ci0tIAoyLjIxLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
