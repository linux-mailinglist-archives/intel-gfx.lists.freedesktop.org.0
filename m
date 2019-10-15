Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7939BD7A4A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803086E83A;
	Tue, 15 Oct 2019 15:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC56689BF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="395575353"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 15 Oct 2019 08:45:22 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 1B89384079D; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:49 +0300
Message-Id: <20191015154449.10338-11-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/tgl: Wa_1607138340
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

QXZvaWQgcG9zc2libGUgY3MgaGFuZyB3aXRoIHNlbWFwaG9yZXMgYnkgZGlzYWJsaW5nCmxpdGUg
cmVzdG9yZS4KClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwg
NCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwppbmRleCAxZWYyMzczNWMxZjYuLjU4MGQ5OWQxOGU3MSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTEwNDgsNiArMTA0OCwxMCBAQCBzdGF0aWMgdTY0
IGV4ZWNsaXN0c191cGRhdGVfY29udGV4dChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAlkZXNjID0gY2UtPmxyY19kZXNjOwogCWNlLT5scmNfZGVzYyAmPSB+Q1RYX0RFU0NfRk9SQ0Vf
UkVTVE9SRTsKIAorCS8qIFdhXzE2MDcxMzgzNDA6dGdsICovCisJaWYgKElTX1RHTF9SRVZJRChy
cS0+aTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQorCQlkZXNjIHw9IENUWF9ERVND
X0ZPUkNFX1JFU1RPUkU7CisKIAlyZXR1cm4gZGVzYzsKIH0KIAotLSAKMi4xNy4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
