Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BFED4688
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 19:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7890C6E40C;
	Fri, 11 Oct 2019 17:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED716E40C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 17:22:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 10:22:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="188378793"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.83])
 by orsmga008.jf.intel.com with ESMTP; 11 Oct 2019 10:22:35 -0700
Date: Fri, 11 Oct 2019 10:22:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191011172232.k6sw4oii32dutm4i@ldmartin-desk1>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-7-lucas.demarchi@intel.com>
 <20191011120850.GN1208@intel.com>
 <20191011170832.cvbcoqji3wyjv3ij@ldmartin-desk1>
 <20191011171432.GT1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011171432.GT1208@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: prettify MST debug message
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMDg6MTQ6MzJQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMTA6MDg6MzJBTSAtMDcwMCwgTHVjYXMg
RGUgTWFyY2hpIHdyb3RlOgo+PiBPbiBGcmksIE9jdCAxMSwgMjAxOSBhdCAwMzowODo1MFBNICsw
MzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4+ID5PbiBUaHUsIE9jdCAxMCwgMjAxOSBhdCAw
NjowOTowNlBNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4+ID4+IHMvPy86LyBzbyBp
dCdzIGdldCBjb3JyZWN0bHkgY29sb3JlZCBieSBkbWVzZy4KPj4gPgo+PiA+V2hhdCBkbyB5b3Ug
bWVhbiBjb3JyZWN0bHk/Cj4+ID4KPj4gPlRoZSBkZWJ1ZyBtZXNzYWdlIHdhcyBhc2tpbmcgdGhl
IHF1ZXN0aW9uICIoaXMpIE1TVCBzdXBwb3J0ZWQ/Igo+PiA+QWZ0ZXIgdGhpcyBpdCBqdXN0IGRl
Y2xhcmVzIHRoYXQgTVNUIGlzIG5vdCBzdXBwb3J0ZWQuIEkgZ3Vlc3Mgbm8gcmVhbAo+PiA+ZGlm
ZmVyZW5jZSBzbyBJIGNvdWxkIGxpdmUgd2l0aCBlaXRoZXIgb25lLgo+PiA+Cj4+ID5UaGUgb25s
eSB0aGluZyB0aGF0IHNsaWdodGx5IGJvdGhlcnMgbWUgd2l0aCB0aGUgJzonIGlzIHRoYXQgdGhl
Cj4+ID5wb3J0L3NpbmsvbW9kcGFyYW0gYWxzbyB1c2UgaXQsIGJ1dCBpbiBhIHNsaWdodGx5IGRp
ZmZlcmVudCB3YXkKPj4gPnNvIHRoZSAiTVNUIHN1cHBvcnRlZDoiICc6JyBsb29rcyBhIGJpdCBu
YWtlZC4KPj4KPj4gV2hhdCBJIG1lYW4gaXMgdGhhdCBkbWVzZyB1c2VzIHRoZSBmaXJzdCAiOiIg
YWZ0ZXIgW10gdG8gY29sb3JpemUuCj4+Cj4+IEJlZm9yZToKPj4gKltFTkNPREVSOnh4Onl5eV0g
TVNUIHN1cHBvcnQ/IHBvcnQ6KiB5ZXMsIHNpbms6IHllcywgbW9kcGFyYW06IHllcwo+Pgo+PiBB
ZnRlcjoKPj4gKltFTkNPREVSOnh4Onl5eV0gTVNUIHN1cHBvcnQ6KiBwb3J0OiB5ZXMsIHNpbms6
IHllcywgbW9kcGFyYW06IHllcwo+Cj5BaCwgSSBndWVzcyBJIHNvIHJvdXRpbmVseSBwaXBlIGl0
IHRvIGEgZmlsZS9sZXNzIHRoYXQgaGF2ZW4ndCByZWFsbHkKPm5vdGljZWQgOikKCkkgYWxzbyBk
byB0aGlzLCBidXQgSSBkb24ndCBnaXZlIHVwIHRoZSAgY29sb3JzLiBJIHVzZToKCmRtZXNnIC0t
Y29sb3I9YWx3YXlzID4gdGVzdC5sb2cKCk9uIG15IGNvbXB1dGVyIGRtZXNnIGlzIGFjdHVhbGx5
IGEgYWxpYXMgdG8gImRtZXNnIC0tY29sb3I9YWx3YXlzIgoKQW5kIHRoZW46CgpsZXNzIC1SIHRl
c3QubG9nCgo6KQoKTHVjYXMgRGUgTWFyY2hpCgo+Cj4+Cj4+IE5vdCByZWFsbHkgaW1wb3J0YW50
LCBqdXN0IG1ha2VzIG1vcmUgc2Vuc2UgSU1PLgo+Cj5Zb3UndmUgY29udmluY2VkIG1lLgo+Cj4+
Cj4+IEx1Y2FzIERlIE1hcmNoaQo+Pgo+PiA+Cj4+ID5SZXZpZXdlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPgo+PiA+Pgo+PiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4g
Pj4gLS0tCj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAy
ICstCj4+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
Pj4gPj4KPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiA+PiBp
bmRleCAzNDhhMDk4OTA2MTEuLjMzYTU1ZGE4OWNlOSAxMDA2NDQKPj4gPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiA+PiBAQCAtNDQ1MCw3ICs0NDUwLDcgQEAg
aW50ZWxfZHBfY29uZmlndXJlX21zdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+PiA+PiAg
CQkmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlOwo+PiA+PiAgCWJvb2wgc2lua19jYW5f
bXN0ID0gaW50ZWxfZHBfc2lua19jYW5fbXN0KGludGVsX2RwKTsKPj4gPj4KPj4gPj4gLQlEUk1f
REVCVUdfS01TKCJbRU5DT0RFUjolZDolc10gTVNUIHN1cHBvcnQ/IHBvcnQ6ICVzLCBzaW5rOiAl
cywgbW9kcGFyYW06ICVzXG4iLAo+PiA+PiArCURSTV9ERUJVR19LTVMoIltFTkNPREVSOiVkOiVz
XSBNU1Qgc3VwcG9ydDogcG9ydDogJXMsIHNpbms6ICVzLCBtb2RwYXJhbTogJXNcbiIsCj4+ID4+
ICAJCSAgICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLAo+PiA+
PiAgCQkgICAgICB5ZXNubyhpbnRlbF9kcC0+Y2FuX21zdCksIHllc25vKHNpbmtfY2FuX21zdCks
Cj4+ID4+ICAJCSAgICAgIHllc25vKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcF9tc3QpKTsKPj4g
Pj4gLS0KPj4gPj4gMi4yMy4wCj4+ID4+Cj4+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+ID4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gPj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+PiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+PiA+Cj4+ID4tLQo+PiA+Vmls
bGUgU3lyasOkbMOkCj4+ID5JbnRlbAo+Cj4tLSAKPlZpbGxlIFN5cmrDpGzDpAo+SW50ZWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
