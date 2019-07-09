Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830063482
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41ECA89321;
	Tue,  9 Jul 2019 10:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D35887C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:49:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 03:49:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="192648065"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jul 2019 03:49:17 -0700
Date: Tue, 9 Jul 2019 13:49:04 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709104904.GB15433@ideak-desk.fi.intel.com>
References: <20190708172815.6814-1-lucas.demarchi@intel.com>
 <20190708172815.6814-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708172815.6814-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: fix include order in
 intel_tc.*
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMTA6Mjg6MTNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE1ha2UgaW50ZWxfdGMuaCB0aGUgZmlyc3QgaW5jbHVkZSBzbyB3ZSBndWFyYW50
ZWUgaXQncyBzZWxmLWNvbnRhaW5lZC4KPiBTb3J0IHRoZSByZXN0LiBTYW1lIHByaW5jaXBsZSBh
cHBsaWVzIGZvciBpbmNsdWRlcyBpbiB0aGUgaGVhZGVyLgo+IAo+IHYyOiBkb24ndCBtYWtlIGlu
dGVsX3RjLmggYmUgdGhlIGZpcnN0IGluY2x1ZGUKPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmggfCA1ICsrKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMKPiBpbmRleCAxYTlkZDMyZmIwYTUuLjBjOTY5ZjZmZDcxNCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiBAQCAtMyw5ICszLDkgQEAKPiAg
ICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPiAgICovCj4gIAo+ICsjaW5j
bHVkZSAiaTkxNV9kcnYuaCIKPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPiAgI2luY2x1
ZGUgImludGVsX2RwX21zdC5oIgo+IC0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiAgI2luY2x1ZGUg
ImludGVsX3RjLmgiCj4gIAo+ICBzdGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUo
ZW51bSB0Y19wb3J0X21vZGUgbW9kZSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oCj4gaW5kZXggMGQ4NDExZDRhOTFkLi40NWFlMzA1MzdiNzggMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gQEAgLTYsMTAgKzYsMTEgQEAKPiAgI2lm
bmRlZiBfX0lOVEVMX1RDX0hfXwo+ICAjZGVmaW5lIF9fSU5URUxfVENfSF9fCj4gIAo+IC0jaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gICNpbmNs
dWRlICJpbnRlbF9kcnYuaCIKPiAgCj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+ICsjaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4KClNvcnJ5LCBJIG1pc3NlZCB0aGlzIGluIG15IHYxIHJldmll
dzogY291bGQgeW91IGV4cGxhaW4gd2h5IHlvdSByZW9yZGVyCmludGVsX2Rydi5oIHdydC4gbGlu
dXgvKiBpbmNsdWRlcz8gRXZlcnl3aGVyZSBlbHNlIGluIGk5MTUgSSBzZWUgYSBtb3JlCmdlbmVy
aWMtPm1vcmUgc3BlY2lmaWMgb3JkZXIgb2YgaW5jbHVkZXMsIHRoYXQgaXMgZm9yIGluc3RhbmNl
OgoKI2luY2x1ZGUgPGxpbnV4Lyo+CiNpbmNsdWRlIDxkcm0vKj4KI2luY2x1ZGUgIioiCgpJcyB0
aGF0IGFsc28gdG8gZ2V0IGEgYmV0dGVyIGd1YXJhbnRlZSB0aGF0IGxvY2FsIGluY2x1ZGVzIGFy
ZQpzZWxmLWNvbnRhaW5lZD8gSWYgc28sIHRoYXQgY291bGQgYWxzbyBiZSBkb25lIGluIGEgbW9y
ZSB1bmlmb3JtIHdheQpldmVyeXdoZXJlIGltby4KCj4gKwo+ICBib29sIGludGVsX3RjX3BvcnRf
Y29ubmVjdGVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPiAgdTMyIGlu
dGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCk7Cj4gIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7Cj4gLS0gCj4gMi4yMS4wCj4gCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
