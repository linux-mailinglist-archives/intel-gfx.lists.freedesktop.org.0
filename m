Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 990F521B488
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194426EC02;
	Fri, 10 Jul 2020 12:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA526EC03
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:48 +0000 (UTC)
IronPort-SDR: p3dRJvVFTtIjDt4xpeIRC3okmCCGxutG0dVJdkZocc2BSe6k5BDWHOGiw0e4oZQOM9Wd+1dq/B
 q3zVxhGiyHAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716695"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716695"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:48 -0700
IronPort-SDR: yaxXX/Ax3raWBQULWpAmv+6jh462ZbfAJN8eZFdmGfR/vNZGCulGuH5J3GD6Vj9R9SfaIs8dDE
 wBQMuGBLnYqw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258015"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:38 +0100
Message-Id: <20200710115757.290984-42-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 41/60] drm/i915: Distinction of memory regions
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
b20+CgpJR1RzIHNob3VsZCBiZSBhYmxlIHRvIGNob29zZSB0ZXN0aW5nIHN0cmF0ZWd5IGRlcGVu
ZGluZyBvbiBtZW1vcnkKcmVnaW9ucyBhbmQgaXRzIHNpemVzLiBBZGQgcmVnaW9uIGluc3RhbmNl
IG51bWJlciB0byBtYWtlIHRoaXMKZWFzaWVyIGFuZCBkZXNjcmlwdGl2ZS4KCkNjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5n
YW0uY0BpbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgpDYzogQWRhbSBNaXN6Y3phayA8YWRhbS5taXN6Y3pha0BpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyB8IDQg
KysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwppbmRleCBiNGI3ODU4ZjEzZTAuLmVlZWE1MjBmOTdi
YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwpAQCAtMzEz
LDYgKzMxMywxMCBAQCBpbnQgaW50ZWxfbWVtb3J5X3JlZ2lvbnNfaHdfcHJvYmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCW1lbS0+dHlwZSA9IHR5cGU7CiAJCW1lbS0+aW5zdGFu
Y2UgPSBpbnN0YW5jZTsKIAorCQlpZiAoSEFTX0xNRU0obWVtLT5pOTE1KSAmJiB0eXBlICE9IElO
VEVMX01FTU9SWV9TWVNURU0pCisJCQlpbnRlbF9tZW1vcnlfcmVnaW9uX3NldF9uYW1lKG1lbSwg
IiVzJXUiLAorCQkJCQkJICAgICBtZW0tPm5hbWUsIG1lbS0+aW5zdGFuY2UpOworCiAJCWk5MTUt
Pm1tLnJlZ2lvbnNbaV0gPSBtZW07CiAJfQogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
