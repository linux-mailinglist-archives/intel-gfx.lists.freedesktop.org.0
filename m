Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E8C30E09F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 18:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37416EB55;
	Wed,  3 Feb 2021 17:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D8B6EB54
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 17:13:15 +0000 (UTC)
IronPort-SDR: cKiWJfAYbBVm0xRhJN5sxeWTtLT68UJLCNn6Bo3KbhOY8ts/Dw+yFUWTyw3mqmjgkXXlgDAxG2
 c984HjVD6b1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="200041831"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="200041831"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 09:13:14 -0800
IronPort-SDR: GsSnhQcfKkouumy9oC8hMO50ST7wnOY8EfrWdyg/Mrjli3SU4kvX5ti6eT2d2Vn1NUnqVNjMZ6
 xXS2VaWLCD7A==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="356829981"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 09:13:13 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 17:12:29 +0000
Message-Id: <20210203171231.551338-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915: Distinction of memory regions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5j
b20+CgpJbiBwcmVwYXJhdGlvbiBmb3IgWGUgSFAgbXVsdGktdGlsZSBhcmNoaXRlY3R1cmUgd2l0
aCBtdWx0aXBsZSBtZW1vcnkKcmVnaW9ucywgd2UgbmVlZCB0byBiZSBhYmxlIGRpZmZlcmVudGlh
dGUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIGRldmljZQpsb2NhbC1tZW1vcnkuCgpOb3RlIHRoYXQg
dGhlIHJlZ2lvbiBuYW1lIGlzIGp1c3QgdG8gZ2l2ZSBpdCBhIGh1bWFuIGZyaWVuZGx5CmlkZW50
aWZpZXIsIGluc3RlYWQgb2YgdXNpbmcgY2xhc3MvaW5zdGFuY2Ugd2hpY2ggYWxzbyB1bmlxdWVs
eQppZGVudGlmaWVzIHRoZSByZWdpb24uIFNvIGZhciB0aGUgcmVnaW9uIG5hbWUgaXMgb25seSBm
b3Igb3VyIG93bgppbnRlcm5hbCBkZWJ1Z2dpbmcgaW4gdGhlIGtlcm5lbChsaWtlIGluIHRoZSBz
ZWxmdGVzdHMpLCBvciBkZWJ1Z2ZzCndoaWNoIHByaW50cyB0aGUgbGlzdCBvZiByZWdpb25zLCBp
bmNsdWRpbmcgdGhlIHJlZ2lvbnMgbmFtZS4KCnYyOiBhZGQgY29tbWVudGFyeSBmb3Igb3VyIGN1
cnJlbnQgcmVnaW9uIG5hbWUgdXNlCgpTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRz
a2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuYyAgICAgICAgICB8IDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JlZ2lvbl9sbWVtLmMgfCAyIC0tCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRleCAzNWZmNjhh
ZGE0ZjEuLmNhNzZmOTNiYzAzZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCkBAIC02
OCw2ICs2OCw4IEBAIGludCBpbnRlbF9ndF9wcm9iZV9sbWVtKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiAJbWVtLT50eXBlID0gSU5URUxfTUVNT1JZX0xPQ0FMOwogCW1lbS0+aW5zdGFuY2UgPSAwOwog
CisJaW50ZWxfbWVtb3J5X3JlZ2lvbl9zZXRfbmFtZShtZW0sICJsb2NhbCV1IiwgbWVtLT5pbnN0
YW5jZSk7CisKIAlHRU1fQlVHX09OKCFIQVNfUkVHSU9OKGk5MTUsIGlkKSk7CiAJR0VNX0JVR19P
TihpOTE1LT5tbS5yZWdpb25zW2lkXSk7CiAJaTkxNS0+bW0ucmVnaW9uc1tpZF0gPSBtZW07CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZWdpb25fbG1lbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYwppbmRleCA4YzQ5OGU5
NmIwMWQuLmJlNmYyYzhmNTE4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmVnaW9uX2xtZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZWdpb25fbG1lbS5jCkBAIC05MCw4ICs5MCw2IEBAIHJlZ2lvbl9sbWVtX2luaXQoc3RydWN0IGlu
dGVsX21lbW9yeV9yZWdpb24gKm1lbSkKIAlpZiAocmV0KQogCQlpb19tYXBwaW5nX2ZpbmkoJm1l
bS0+aW9tYXApOwogCi0JaW50ZWxfbWVtb3J5X3JlZ2lvbl9zZXRfbmFtZShtZW0sICJsb2NhbCIp
OwotCiAJcmV0dXJuIHJldDsKIH0KIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
