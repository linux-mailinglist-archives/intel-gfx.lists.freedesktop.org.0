Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1C1C9453
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 00:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CAD6E18F;
	Wed,  2 Oct 2019 22:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C436E18F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 22:29:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 15:29:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="205450781"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga001.fm.intel.com with ESMTP; 02 Oct 2019 15:29:06 -0700
Date: Wed, 2 Oct 2019 15:29:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Message-ID: <20191002222924.GL1869@mdroper-desk1.amr.corp.intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
 <20190923102935.5860-3-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923102935.5860-3-dhinakaran.pandiyan@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [RFC v3 2/9] drm/i915: Use intel_tile_height()
 instead of re-implementing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMDM6Mjk6MjhBTSAtMDcwMCwgRGhpbmFrYXJhbiBQYW5k
aXlhbiB3cm90ZToKPiBpbnRlbF90aWxlX2RpbXMoKSBjb21wdXRlcyB0aWxlIGhlaWdodCB1c2lu
ZyBzaXplIGFuZCB3aWR0aCwgd2hlbiB0aGVyZQo+IGlzIGFscmVhZHkgYSBmdW5jdGlvbiB0byBk
byBqdXN0IHRoYXQgLSBpbnRlbF90aWxlX2hlaWdodCgpCj4gCj4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlh
biA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDVlY2Y1NDI3MDE4MS4uYTk0ZDE0NWRkMDQ4
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiBAQCAtMTk1Nyw3ICsxOTU3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfdGlsZV9kaW1zKGNvbnN0
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUsCj4gIAl1bnNpZ25l
ZCBpbnQgY3BwID0gZmItPmZvcm1hdC0+Y3BwW2NvbG9yX3BsYW5lXTsKPiAgCj4gIAkqdGlsZV93
aWR0aCA9IHRpbGVfd2lkdGhfYnl0ZXMgLyBjcHA7Cj4gLQkqdGlsZV9oZWlnaHQgPSBpbnRlbF90
aWxlX3NpemUodG9faTkxNShmYi0+ZGV2KSkgLyB0aWxlX3dpZHRoX2J5dGVzOwo+ICsJKnRpbGVf
aGVpZ2h0ID0gaW50ZWxfdGlsZV9oZWlnaHQoZmIsIGNvbG9yX3BsYW5lKTsKPiAgfQo+ICAKPiAg
dW5zaWduZWQgaW50Cj4gLS0gCj4gMi4xNy4xCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBT
b2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBv
cmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
