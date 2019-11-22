Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17A31071AF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 12:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B9E6F539;
	Fri, 22 Nov 2019 11:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B246F53A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 11:46:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 03:46:20 -0800
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201487477"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 03:46:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191122111514.22181-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191122111514.22181-1-stanislav.lisovskiy@intel.com>
Date: Fri, 22 Nov 2019 13:46:12 +0200
Message-ID: <871ru0w2uz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Support more QGV points
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
Cc: tomi.p.sarvela@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMiBOb3YgMjAxOSwgU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IEFjY29yZGluZyB0byBCU3BlYyA1Mzk5OCwgdGhlcmUg
aXMgYSBtYXNrIG9mCj4gbWF4IDggU0FHVi9RR1YgcG9pbnRzIHdlIG5lZWQgdG8gc3VwcG9ydC4K
Pgo+IEJ1bXBpbmcgdGhpcyB1cCB0byBrZWVwIHRoZSBDSSBoYXBweShjdXJyZW50bHkKPiBwcmV2
ZW50aW5nIHRlc3RzIHRvIHJ1biksIHVudGlsIGFsbCBTQUdWCj4gY2hhbmdlcyBsYW5kLgo+Cj4g
Rml4ZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE4
OQo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNr
aXlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICB8
IDQgKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+IGluZGV4IDg2ZTc1
ZTg1ODAwOC4uZWM0YzEyN2E0MGI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYwo+IEBAIC0xNSw3ICsxNSw3IEBAIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgewo+
ICB9Owo+ICAKPiAgc3RydWN0IGludGVsX3Fndl9pbmZvIHsKPiAtCXN0cnVjdCBpbnRlbF9xZ3Zf
cG9pbnQgcG9pbnRzWzNdOwo+ICsJc3RydWN0IGludGVsX3Fndl9wb2ludCBwb2ludHNbSTkxNV9O
VU1fU0FHVl9QT0lOVFNdOwo+ICAJdTggbnVtX3BvaW50czsKPiAgCXU4IG51bV9jaGFubmVsczsK
PiAgCXU4IHRfYmw7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggZmRhZTVhOTE5YmM4
Li5iZDhjZTM0MWJlMjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtNjIxLDYg
KzYyMSwxMCBAQCBzdHJ1Y3QgaTkxNV9nZW1fbW0gewo+ICAKPiAgI2RlZmluZSBJOTE1X0VOR0lO
RV9XRURHRURfVElNRU9VVCAgKDYwICogSFopICAvKiBSZXNldCBidXQgbm8gcmVjb3Zlcnk/ICov
Cj4gIAo+ICsvKiBCU3BlYyBwcmVjaXNlbHkgZGVmaW5lcyB0aGlzICovCj4gKyNkZWZpbmUgSTkx
NV9OVU1fU0FHVl9QT0lOVFMgOAoKUGxlYXNlIHB1dCB0aGlzIGluIGludGVsX2J3LmMsIGFuZCB3
ZSBjYW4gbW92ZSBpdCBvdXQgd2hlbiB3ZSBuZWVkIGl0CmVsc2V3aGVyZS4gQW5kIGF0IHRoYXQg
cG9pbnQsIGxldCdzIHB1dCBpdCBzb21ld2hlcmUgb3RoZXIgdGhhbgppOTE1X2Rydi5oIHdoaWNo
IHNob3VsZCBiZSByZWR1Y2VkIGluIHNpemUsIG5vdCBpbmNyZWFzZWQuCgpCUiwKSmFuaS4KCgo+
ICsKPiArCj4gIHN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyB7Cj4gIAkvKiBOb24tTlVMTCBpZiBw
b3J0IHByZXNlbnQuICovCj4gIAljb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hp
bGQ7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
