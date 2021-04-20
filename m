Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F74365AE3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 16:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38466E827;
	Tue, 20 Apr 2021 14:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C476E827
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 14:10:06 +0000 (UTC)
IronPort-SDR: cMXQuHaV2MDp36msv+UHmwR+1tnism37GzuOYk5lo9X1itmDa+LgfQFLaZgorvBVAEOE6j00U8
 j8jTMmMWoQVQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="195068880"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="195068880"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 07:10:05 -0700
IronPort-SDR: QrH7V3Je/jk5/+RsmQaxPWrqjgHuvcvS4vgnb+PyOCFPZJEI4z1sayOwIQM42pDaETznfFNyDF
 53uCyYv0OeRA==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="420434811"
Received: from jyick-mobl.amr.corp.intel.com (HELO intel.com) ([10.212.57.228])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 07:10:05 -0700
Date: Tue, 20 Apr 2021 10:10:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YH7gvD+4MwffnXU5@intel.com>
References: <20210413173259.472405-1-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413173259.472405-1-jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pm: Make the wm parameter of
 print_wm_latency a pointer
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBcHIgMTMsIDIwMjEgYXQgMTI6MzI6NTlQTSAtMDUwMCwgSmFzb24gRWtzdHJhbmQg
d3JvdGU6Cj4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9yIHdpdGggR0NDIDEx
Ogo+IAo+ICAgICBJbiBmdW5jdGlvbiDigJhzbmJfd21fbGF0ZW5jeV9xdWlya+KAmSwKPiAgICAg
ICAgIGlubGluZWQgZnJvbSDigJhpbGtfc2V0dXBfd21fbGF0ZW5jeeKAmSBhdCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jOjMxMDk6MywKPiAgICAgICAgIGlubGluZWQgZnJvbSDigJhp
bnRlbF9pbml0X3Bt4oCZIGF0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NzY5NToz
Ogo+ICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjMwNTg6OTogZXJyb3I6IOKA
mGludGVsX3ByaW50X3dtX2xhdGVuY3nigJkgcmVhZGluZyAxNiBieXRlcyBmcm9tIGEgcmVnaW9u
IG9mIHNpemUgMTAgWy1XZXJyb3I9c3RyaW5nb3Atb3ZlcnJlYWRdCj4gICAgICAzMDU4IHwgICAg
ICAgICBpbnRlbF9wcmludF93bV9sYXRlbmN5KGRldl9wcml2LCAiUHJpbWFyeSIsIGRldl9wcml2
LT53bS5wcmlfbGF0ZW5jeSk7Cj4gICAgICAgICAgIHwgICAgICAgICBefn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAg
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzogSW4gZnVuY3Rpb24g4oCYaW50ZWxf
aW5pdF9wbeKAmToKPiAgICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzozMDU4Ojk6
IG5vdGU6IHJlZmVyZW5jaW5nIGFyZ3VtZW50IDMgb2YgdHlwZSDigJhjb25zdCB1MTYgKuKAmSB7
YWthIOKAmGNvbnN0IHNob3J0IHVuc2lnbmVkIGludCAq4oCZfQo+ICAgICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jOjI5OTU6MTM6IG5vdGU6IGluIGEgY2FsbCB0byBmdW5jdGlvbiDi
gJhpbnRlbF9wcmludF93bV9sYXRlbmN54oCZCj4gICAgICAyOTk1IHwgc3RhdGljIHZvaWQgaW50
ZWxfcHJpbnRfd21fbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4g
ICAgICAgICAgIHwgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+IEFzIGZh
ciBhcyBJIGNhbiB0ZWxsLCB3ZSBkb24ndCBhY3R1YWxseSBuZWVkIDggZWxlbWVudHMgZXhjZXB0
IG9uIFNLTAo+IGFuZCB0aGF0IHVzZXMgZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5IHdoaWNoIGhh
cyBlbm91Z2guCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PgoKUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KCmFuZCBwdXNoZWQuIFRoYW5rcyBmb3IgdGhlIHBhdGNoLgoKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gaW5k
ZXggM2Y2ZDhiNTAyYTYxOS4uNTk0OTg3OTRhYzRlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYwo+IEBAIC0yOTk0LDcgKzI5OTQsNyBAQCBpbnQgaWxrX3dtX21heF9sZXZlbChjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAo+ICBzdGF0aWMgdm9pZCBpbnRl
bF9wcmludF93bV9sYXRlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAg
CQkJCSAgIGNvbnN0IGNoYXIgKm5hbWUsCj4gLQkJCQkgICBjb25zdCB1MTYgd21bOF0pCj4gKwkJ
CQkgICBjb25zdCB1MTYgKndtKQo+ICB7Cj4gIAlpbnQgbGV2ZWwsIG1heF9sZXZlbCA9IGlsa193
bV9tYXhfbGV2ZWwoZGV2X3ByaXYpOwo+ICAKPiAtLSAKPiAyLjMxLjEKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
