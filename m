Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A08BFBB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 19:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43BF36E209;
	Tue, 13 Aug 2019 17:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D596E209
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 17:40:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="178738065"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga003.jf.intel.com with ESMTP; 13 Aug 2019 10:40:27 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 10:41:19 -0700
Message-Id: <20190813174121.129593-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Use render class for
 MI_SET_CONTEXT
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

UmVwbGFjZSBHRU1fQlVHX09OIHdpdGggZXhwbGljaXQgY2hlY2sgZm9yIHJlbmRlciBjbGFzcwp3
aGVuIGRvaW5nIHRoZSBrZXJuZWwgY29udGV4dCBzd2l0Y2guCgpTaWduZWQtb2ZmLWJ5OiBTdHVh
cnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3JpbmdidWZmZXIuYwppbmRleCA0MDlkNzY0ZjhjNmQuLjA0ZWE5YmJiODhjZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwpAQCAtMTc4MSw5ICsxNzgx
LDcgQEAgc3RhdGljIGludCBzd2l0Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAkJfQogCX0KIAotCWlmIChycS0+aHdfY29udGV4dC0+c3RhdGUpIHsKLQkJR0VNX0JVR19PTihl
bmdpbmUtPmlkICE9IFJDUzApOwotCisJaWYgKGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNT
ICYmIHJxLT5od19jb250ZXh0LT5zdGF0ZSkgewogCQkvKgogCQkgKiBUaGUga2VybmVsIGNvbnRl
eHQocykgaXMgdHJlYXRlZCBhcyBwdXJlIHNjcmF0Y2ggYW5kIGlzIG5vdAogCQkgKiBleHBlY3Rl
ZCB0byByZXRhaW4gYW55IHN0YXRlIChhcyB3ZSBzYWNyaWZpY2UgaXQgZHVyaW5nCi0tIAoyLjIy
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
