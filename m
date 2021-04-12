Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E5735D3E8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 01:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564AF89F73;
	Mon, 12 Apr 2021 23:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2D889F73
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 23:24:20 +0000 (UTC)
IronPort-SDR: IkIA2ZX4BqnAoA4fIMtwUUkBhtLuboCWSChsuez4mNIRRsZ5lWUGxU2ymmscVYQjlIX8rH8m0B
 OlAeT3lDxRSA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="214771408"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="214771408"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 16:24:17 -0700
IronPort-SDR: tpx5dUKFdd/ZCplLSDi02vfr+0D/p9KtBWV3le/f3l4sh7kaUOQpBArtSjqRbM556A9hEhl7Mk
 flmakaEy76Ag==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="398552813"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 16:24:16 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Apr 2021 02:24:12 +0300
Message-Id: <20210412232413.2755054-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix modesetting in case of
 unexpected AUX timeouts
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBBVVggZmFpbHVyZXMgaGFwcGVuIHVuZXhwZWN0ZWRseSBkdXJpbmcgYSBtb2Rlc2V0
LCB0aGUgZHJpdmVyCnNob3VsZCBzdGlsbCBjb21wbGV0ZSB0aGUgbW9kZXNldC4gSW4gcGFydGlj
dWxhciB0aGUgZHJpdmVyIHNob3VsZApwZXJmb3JtIHRoZSBsaW5rIHRyYWluaW5nIHNlcXVlbmNl
IHN0ZXBzIGV2ZW4gaW4gY2FzZSBvZiBhbiBBVVggZmFpbHVyZSwKYXMgdGhpcyBzZXF1ZW5jZSBh
bHNvIGluY2x1ZGVzIHBvcnQgaW5pdGlhbGl6YXRpb24gc3RlcHMuIE5vdCBkb2luZyB0aGF0CmNh
biBsZWF2ZSB0aGUgcG9ydC9waXBlIGluIGEgYnJva2VuIHN0YXRlIGFuZCBsZWFkIGZvciBpbnN0
YW5jZSB0byBhCmZsaXAgZG9uZSB0aW1lb3V0LgoKRml4IHRoaXMgYnkgY29udGludWluZyB3aXRo
IGxpbmsgdHJhaW5pbmcgKGluIGEgbm8tTFRUUFIgbW9kZSkgaWYgdGhlCkRQUlggRFBDRCByZWFk
b3V0IGZhaWxlZCBmb3Igc29tZSByZWFzb24gYXQgdGhlIGJlZ2lubmluZyBvZiBsaW5rCnRyYWlu
aW5nLiBBZnRlciBhIHN1Y2Nlc3NmdWwgY29ubmVjdG9yIGRldGVjdGlvbiB3ZSBhbHJlYWR5IGhh
dmUgdGhlCkRQQ0QgcmVhZCBvdXQgYW5kIGNhY2hlZCwgc28gdGhlIGZhaWxlZCByZXBlYXRlZCBy
ZWFkIGZvciBpdCBzaG91bGQgbm90CmNhdXNlIGEgcHJvYmxlbS4gTm90ZSB0aGF0IGEgcGFydGlh
bCBBVVggcmVhZCBjb3VsZCBpbiB0aGVvcnkgcGFydGx5Cm92ZXJ3cml0ZSB0aGUgY2FjaGVkIERQ
Q0QgKGFuZCByZXR1cm4gZXJyb3IpIGJ1dCB0aGlzIG92ZXJ3cml0ZSBzaG91bGQKbm90IGhhcHBl
biBpZiB0aGUgcmV0dXJuZWQgdmFsdWVzIGFyZSBjb3JydXB0ZWQgKGR1ZSB0byBhIHRpbWVvdXQg
b3IKc29tZSBvdGhlciBJTyBlcnJvcikuCgpLdWRvcyB0byBWaWxsZSB0byByb290IGNhdXNlIHRo
ZSBwcm9ibGVtLgoKRml4ZXM6IDdkZmZiZGVkYjk2YSAoImRybS9pOTE1OiBEaXNhYmxlIExUVFBS
IHN1cHBvcnQgd2hlbiB0aGUgRFBDRCByZXYgPCAxLjQiKQpSZWZlcmVuY2VzOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzMzMDgKQ2M6IHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmcgIyA1LjExCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMKaW5kZXggNWU5YzNjNzQzMTBjYS4uY2JjZmIwYzRjMzcwOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWlu
aW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMKQEAgLTg4Miw3ICs4ODIsOCBAQCB2b2lkIGludGVsX2RwX3N0YXJ0X2xpbmtfdHJh
aW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlpbnQgbHR0cHJfY291bnQgPSBpbnRlbF9k
cF9pbml0X2x0dHByX2FuZF9kcHJ4X2NhcHMoaW50ZWxfZHApOwogCiAJaWYgKGx0dHByX2NvdW50
IDwgMCkKLQkJcmV0dXJuOworCQkvKiBTdGlsbCBjb250aW51ZSB3aXRoIGVuYWJsaW5nIHRoZSBw
b3J0IGFuZCBsaW5rIHRyYWluaW5nLiAqLworCQlsdHRwcl9jb3VudCA9IDA7CiAKIAlpZiAoIWlu
dGVsX2RwX2xpbmtfdHJhaW5fYWxsX3BoeXMoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGx0dHByX2Nv
dW50KSkKIAkJaW50ZWxfZHBfc2NoZWR1bGVfZmFsbGJhY2tfbGlua190cmFpbmluZyhpbnRlbF9k
cCwgY3J0Y19zdGF0ZSk7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
