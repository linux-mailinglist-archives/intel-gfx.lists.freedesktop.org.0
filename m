Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1771C6F35
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 13:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DF56E07B;
	Wed,  6 May 2020 11:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845826E07B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 11:23:31 +0000 (UTC)
IronPort-SDR: m753P8DAWzm1CdMJqSW1lMktAHDRVtHBfkcaf/ucaH4Gp887GNyTCwhSVnqaEkTPb3Fmkojq5l
 b4At20oaog1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:23:31 -0700
IronPort-SDR: 6QuRhf8KJDwH5o2f+6BQ7YNhLJMa+YE1XebnP+s9MFYWy1O4IdPppxFhs8JqcC4AripPaDlaD6
 16SiWCR5O1pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="296155264"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 06 May 2020 04:23:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 14:23:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 14:23:19 +0300
Message-Id: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Plumb crtc state to link training
 code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
bmFsIHBpZWNlcyBmb3IgcGx1bWJpbmcgdGhlIGNydGMgc3RhdGUgYWxsIHRoZSB3YXkgZG93biB0
byB0aGUgZ3V0cyBvZgp0aGUgbGluayB0cmFpbmlnbiBjb2RlLiBBbGxvd3MgdXMgdG8gZWxpbWlu
YXRlIGEgYnVuY2ggb2YgYWRob2Mgc3RhdGUKZnJvbSBpbnRlbF9kcCwgYW5kIG51a2VzIHNvbWUg
b2YgdGhlIHJlbWFpbmluZyBjcnRjLT5jb25maWcgdXNhZ2VzLgoKSSdtIGFsc28gZml4aW5nIHRo
ZSBEUCBzcGVjIHZpb2xhdGlvbnMgYXJvdW5kIHRoZSB2c3dpbmcvcHJlLWVtcGhhc2lzCnNlbGVj
dGlvbi4gU29tZW9uZSBwb2ludGVkIHRoYXQgaXNzdWUgb3V0IGEgd2hpbGUgYWdvIGJ1dCB0aGVy
ZSB3YXMKbmV2ZXIgYW55IGZvbGxvd3VwIHRvIHRoYXQgZGlzY3Vzc2lvbiBBRkFJQ1MuCgpJIGhh
ZCB0byBuZXV0ZXIgdGhlIHBoeSB0ZXN0IGNvZGUgc2luY2UgaXQgaGFzIHNudWNrIGluIHNvbWUg
ZHVwbGljYXRlZApsb3cgbGV2ZWwgbW9kZXNldCBjb2RlIHN0cmFpZ2h0IGludG8gdGhlIHNob3J0
IGhwZCBoYW5kbGVyIGluIGludGVsX2RwLmMsCndoaWNoIGlzIGRlZmluaXRlbHkgbm90IHRoZSB3
YXkgd2Ugd2FudCB0byBkbyB0aGluZ3MuIFNvIHRoYXQgc3R1ZmYKbmVlZHMgYSByZWFsIHJlZGVz
aWduIGF0IHNvbWUgcG9pbnQuCgpWaWxsZSBTeXJqw6Rsw6QgKDkpOgogIGRybS9pOTE1OiBGaXgg
Y3B0L3BwdCBtYXggcHJlLWVtcGhhc2lzCiAgZHJtL2k5MTU6IEZpeCBpYnggbWF4IHZzd2luZy9w
cmVlbXBoCiAgZHJtL2k5MTU6IEZpeCBpdmIgY3B1IGVkcCB2c3dpbmcKICBkcm0vaTkxNTogQWRk
IHtwcmVlbXBoLHZvbHRhZ2V9X21heCgpIHZmdW5jcwogIGRybS9pOTE1OiBSZXZlcnNlIHByZWVt
cGggdnMuIHZvbHRhZ2Ugc3dpbmcgcHJlZmVyZW5jZQogIGRybS9pOTE1OiBGaXggRFBfVFJBSU5f
TUFYX3tQUkVfRU1QSEFTSVMsU1dJTkd9X1JFQUNIRUQgaGFuZGxpbmcKICBkcm0vaTkxNTogUmVw
bGFjZSBzb21lIGhhbmQgcm9sbGVkIG1heCgpcwogIGRybS9pOTE1OiBQbHVtYiBjcnRjX3N0YXRl
IHRvIGxpbmsgdHJhaW5pbmcKICBkcm0vaTkxNTogRWxpbWluYXRlIGludGVsX2RwLnJlZ3MuZHBf
dHBfe2N0bCxzdGF0dXN9CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyAgICAgIHwgNDU0ICsrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuaCAgICAgIHwgIDE0ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMjYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyAgICAgICB8IDIxNiArKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaCAgICAgICB8ICAxNSArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMTM2ICsrKy0tLQogLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5oIHwgICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBpb19waHkuYyB8ICAyMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGlvX3BoeS5oIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jICAgICB8ICAgNyArLQogMTEgZmlsZXMgY2hhbmdlZCwgNDY3IGlu
c2VydGlvbnMoKyksIDQ0MyBkZWxldGlvbnMoLSkKCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
