Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D877FBAA1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 22:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC896EE73;
	Wed, 13 Nov 2019 21:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC346EE73;
 Wed, 13 Nov 2019 21:25:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 13:25:11 -0800
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="194810134"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.167])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 13:25:10 -0800
Date: Wed, 13 Nov 2019 13:25:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191113212504.tqfsud3wjb54o2mv@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191113163941.GS21445@mdroper-desk1.amr.corp.intel.com>
 <20191113165103.5255-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113165103.5255-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mocs_settings: Update TGL
 MOCS table
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMDg6NTE6MDNBTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPlRoZSBUR0wgTU9DUyB0YWJsZSB3YXMgY29ycmVjdGVkIGluIHRoZSBic3BlYyBhbmQgdGhl
IGtlcm5lbC4gIFNpbmNlCj50aGlzIHRlc3QgaGFyZGNvZGVzIGl0cyBvd24gY29weSBvZiB0aGUg
TU9DUyB0YWJsZSwgd2UgbmVlZCB0byBtYWtlCj5jb3JyZXNwb25kaW5nIGZpeGVzIGhlcmUuCj4K
PlJlZmVyZW5jZXM6IDA0NjA5MTc1OGI1MCAoIlJldmVydCAiZHJtL2k5MTUvZWhsOiBVcGRhdGUg
TU9DUyB0YWJsZSBmb3IgRUhMIiIpCj5SZWZlcmVuY2VzOiBiZmIwZThlNjNkODYgKCJkcm0vaTkx
NS90Z2w6IE1PQ1MgdGFibGUgdXBkYXRlIikKPkNjOiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJh
dGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPgo+Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgo+Q2M6IEZyYW5jaXNjbyBKZXJleiA8ZnJhbmNpc2NvLmplcmV6
LnBsYXRhQGludGVsLmNvbT4KPkNjOiBUb21hc3ogTGlzIDx0b21hc3oubGlzQGludGVsLmNvbT4K
PlNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CgoK
UmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoK
THVjYXMgRGUgTWFyY2hpCgo+LS0tCj4gdGVzdHMvaTkxNS9nZW1fbW9jc19zZXR0aW5ncy5jIHwg
NCArLS0tCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+
Cj5kaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fbW9jc19zZXR0aW5ncy5jIGIvdGVzdHMvaTkx
NS9nZW1fbW9jc19zZXR0aW5ncy5jCj5pbmRleCBmYzJjY2IyMS4uOGY4ZjA3NjggMTAwNjQ0Cj4t
LS0gYS90ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdzLmMKPisrKyBiL3Rlc3RzL2k5MTUvZ2Vt
X21vY3Nfc2V0dGluZ3MuYwo+QEAgLTk1LDggKzk1LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBt
b2NzX2VudHJ5IHRpZ2VybGFrZV9tb2NzX3RhYmxlW0dFTjExX05VTV9NT0NTX0VOVFJJRVNdID0g
ewo+IAlbMTNdID0geyAweDAwMDAwMDU3LCAweDAwMzAsIDB4MX0sCj4gCVsxNF0gPSB7IDB4MDAw
MDAwNjcsIDB4MDAxMCwgMHgxfSwKPiAJWzE1XSA9IHsgMHgwMDAwMDA2NywgMHgwMDMwLCAweDF9
LAo+LQlbMTZdID0geyAweDAwMDA0MDA1LCAweDAwMTAsIDB4MX0sCj4tCVsxN10gPSB7IDB4MDAw
MDQwMDUsIDB4MDAzMCwgMHgxfSwKPiAJWzE4XSA9IHsgMHgwMDA2MDAzNywgMHgwMDMwLCAweDF9
LAo+IAlbMTldID0geyAweDAwMDAwNzM3LCAweDAwMzAsIDB4MX0sCj4gCVsyMF0gPSB7IDB4MDAw
MDAzMzcsIDB4MDAzMCwgMHgxfSwKPkBAIC0xMDgsNyArMTA2LDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBtb2NzX2VudHJ5IHRpZ2VybGFrZV9tb2NzX3RhYmxlW0dFTjExX05VTV9NT0NTX0VOVFJJ
RVNdID0gewo+IAlbNTBdID0geyAweDAwMDAwMDM3LCAweDAwMTAsIDB4MX0sCj4gCVs1MV0gPSB7
IDB4MDAwMDAwMDUsIDB4MDAxMCwgMHgxfSwKPiAJWzYwXSA9IHsgMHgwMDAwMDAzNywgMHgwMDEw
LCAweDF9LAo+LQlbNjFdID0geyAweDAwMDA0MDA1LCAweDAwMzAsIDB4MX0sCj4rCVs2MV0gPSB7
IDB4MDAwMDAwMDUsIDB4MDAzMCwgMHgxfSwKPiAJWzYyXSA9IHsgMHgwMDAwMDAzNywgMHgwMDEw
LCAweDF9LAo+IAlbNjNdID0geyAweDAwMDAwMDM3LCAweDAwMTAsIDB4MX0sCj4gfTsKPi0tIAo+
Mi4yMS4wCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
