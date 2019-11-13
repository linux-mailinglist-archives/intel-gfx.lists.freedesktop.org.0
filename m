Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0711BFB591
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 17:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3522A6EDC1;
	Wed, 13 Nov 2019 16:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E4D6E043;
 Wed, 13 Nov 2019 16:50:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 08:50:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="287930514"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 13 Nov 2019 08:50:02 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Wed, 13 Nov 2019 08:51:03 -0800
Message-Id: <20191113165103.5255-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191113163941.GS21445@mdroper-desk1.amr.corp.intel.com>
References: <20191113163941.GS21445@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mocs_settings: Update TGL MOCS
 table
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFRHTCBNT0NTIHRhYmxlIHdhcyBjb3JyZWN0ZWQgaW4gdGhlIGJzcGVjIGFuZCB0aGUga2Vy
bmVsLiAgU2luY2UKdGhpcyB0ZXN0IGhhcmRjb2RlcyBpdHMgb3duIGNvcHkgb2YgdGhlIE1PQ1Mg
dGFibGUsIHdlIG5lZWQgdG8gbWFrZQpjb3JyZXNwb25kaW5nIGZpeGVzIGhlcmUuCgpSZWZlcmVu
Y2VzOiAwNDYwOTE3NThiNTAgKCJSZXZlcnQgImRybS9pOTE1L2VobDogVXBkYXRlIE1PQ1MgdGFi
bGUgZm9yIEVITCIiKQpSZWZlcmVuY2VzOiBiZmIwZThlNjNkODYgKCJkcm0vaTkxNS90Z2w6IE1P
Q1MgdGFibGUgdXBkYXRlIikKQ2M6IFByYXRoYXAgS3VtYXIgVmFsc2FuIDxwcmF0aGFwLmt1bWFy
LnZhbHNhbkBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KQ2M6IEZyYW5jaXNjbyBKZXJleiA8ZnJhbmNpc2NvLmplcmV6LnBsYXRhQGludGVs
LmNvbT4KQ2M6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUv
Z2VtX21vY3Nfc2V0dGluZ3MuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX21vY3Nfc2V0
dGluZ3MuYyBiL3Rlc3RzL2k5MTUvZ2VtX21vY3Nfc2V0dGluZ3MuYwppbmRleCBmYzJjY2IyMS4u
OGY4ZjA3NjggMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX21vY3Nfc2V0dGluZ3MuYworKysg
Yi90ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdzLmMKQEAgLTk1LDggKzk1LDYgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBtb2NzX2VudHJ5IHRpZ2VybGFrZV9tb2NzX3RhYmxlW0dFTjExX05VTV9N
T0NTX0VOVFJJRVNdID0gewogCVsxM10gPSB7IDB4MDAwMDAwNTcsIDB4MDAzMCwgMHgxfSwKIAlb
MTRdID0geyAweDAwMDAwMDY3LCAweDAwMTAsIDB4MX0sCiAJWzE1XSA9IHsgMHgwMDAwMDA2Nywg
MHgwMDMwLCAweDF9LAotCVsxNl0gPSB7IDB4MDAwMDQwMDUsIDB4MDAxMCwgMHgxfSwKLQlbMTdd
ID0geyAweDAwMDA0MDA1LCAweDAwMzAsIDB4MX0sCiAJWzE4XSA9IHsgMHgwMDA2MDAzNywgMHgw
MDMwLCAweDF9LAogCVsxOV0gPSB7IDB4MDAwMDA3MzcsIDB4MDAzMCwgMHgxfSwKIAlbMjBdID0g
eyAweDAwMDAwMzM3LCAweDAwMzAsIDB4MX0sCkBAIC0xMDgsNyArMTA2LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBtb2NzX2VudHJ5IHRpZ2VybGFrZV9tb2NzX3RhYmxlW0dFTjExX05VTV9NT0NT
X0VOVFJJRVNdID0gewogCVs1MF0gPSB7IDB4MDAwMDAwMzcsIDB4MDAxMCwgMHgxfSwKIAlbNTFd
ID0geyAweDAwMDAwMDA1LCAweDAwMTAsIDB4MX0sCiAJWzYwXSA9IHsgMHgwMDAwMDAzNywgMHgw
MDEwLCAweDF9LAotCVs2MV0gPSB7IDB4MDAwMDQwMDUsIDB4MDAzMCwgMHgxfSwKKwlbNjFdID0g
eyAweDAwMDAwMDA1LCAweDAwMzAsIDB4MX0sCiAJWzYyXSA9IHsgMHgwMDAwMDAzNywgMHgwMDEw
LCAweDF9LAogCVs2M10gPSB7IDB4MDAwMDAwMzcsIDB4MDAxMCwgMHgxfSwKIH07Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
