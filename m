Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9796FCC107
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 18:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB8D6E0EC;
	Fri,  4 Oct 2019 16:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1B06E0EC
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 16:46:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 09:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="198910741"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2019 09:46:38 -0700
Date: Fri, 4 Oct 2019 22:10:40 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191004164039.GA23261@intel.com>
References: <20191003081738.22101-1-anshuman.gupta@intel.com>
 <20191003081738.22101-2-anshuman.gupta@intel.com>
 <20191004154808.GH1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004154808.GH1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v10 1/6] drm/i915/tgl: Add DC3CO required
 register and bits
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

T24gMjAxOS0xMC0wNCBhdCAxODo0ODowOCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
IE9uIFRodSwgT2N0IDAzLCAyMDE5IGF0IDAxOjQ3OjMzUE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRh
IHdyb3RlOgo+ID4gQWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKPiA+
IDEuIERDX1NUQVRFX0VOIHJlZ2lzdGVyIERDM0NPIGJpdCBmaWVsZHMgYW5kIG1hc2tzLgo+ID4g
ICAgREMzQ08gZW5hYmxlIGJpdCB3aWxsIGJlIHVzZWQgYnkgZHJpdmVyIHRvIG1ha2UgREMzQ08K
PiA+ICAgIHJlYWR5IGZvciBETUMgZi93IGFuZCBzdGF0dXMgYml0IHdpbGwgYmUgdXNlZCBhcyBE
QzNDTwo+ID4gICAgZW50cnkgc3RhdHVzLgo+ID4gMi4gVHJhbnNjb2RlciBFWElUTElORSByZWdp
c3RlciBhbmQgaXRzIGJpdCBmaWVsZHMgYW5kIG1hc2suCj4gPiAgICBUcmFuc2NvZGVyIEVYSVRM
SU5FIGVuYWJsZSBiaXQgcmVwcmVzZW50cyBQU1IyIGlkbGUgZnJhbWUKPiA+ICAgIHJlc2V0IHNo
b3VsZCBiZSBhcHBsaWVkIGF0IGV4aXQgbGluZSBhbmQgZXhpdGxpbmVzIG1hc2sKPiA+ICAgIHJl
cHJlc2VudCByZXF1aXJlZCBudW1iZXIgb2Ygc2NhbmxpbmVzIGF0IHdoaWNoIERDM0NPCj4gPiAg
ICBleGl0IGhhcHBlbnMuCj4gPiAKPiA+ICAgIEIuU3BlY3M6NDkxOTYKPiA+IAo+ID4gdjE6IFVz
ZSBvZiBSRUdfQklUIGFuZCB1c2luZyBleHRyYSBzcGFjZSBmb3IgRVhJVExJTkVfIG1hY3JvCj4g
PiAgICAgZGVmaW5pdGlvbi4gW0FuaW1lc2hdCj4gPiAKPiA+IENjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgo+ID4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KPiA+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiA+IFJl
dmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiA+IFJl
dmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+ID4gLS0tCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDggKysrKysrKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAo+ID4gaW5kZXggZWVmZDc4OWI5YTI4Li44ZmQ5MzAwODIxNGIgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gPiBAQCAtNDE0NCw2ICs0MTQ0LDcgQEAgZW51bSB7Cj4gPiAgI2Rl
ZmluZSBfVlRPVEFMX0EJMHg2MDAwYwo+ID4gICNkZWZpbmUgX1ZCTEFOS19BCTB4NjAwMTAKPiA+
ICAjZGVmaW5lIF9WU1lOQ19BCTB4NjAwMTQKPiA+ICsjZGVmaW5lIF9FWElUTElORV9BCTB4NjAw
MTgKPiA+ICAjZGVmaW5lIF9QSVBFQVNSQwkweDYwMDFjCj4gPiAgI2RlZmluZSBfQkNMUlBBVF9B
CTB4NjAwMjAKPiA+ICAjZGVmaW5lIF9WU1lOQ1NISUZUX0EJMHg2MDAyOAo+ID4gQEAgLTQxOTAs
MTEgKzQxOTEsMTYgQEAgZW51bSB7Cj4gPiAgI2RlZmluZSBWVE9UQUwodHJhbnMpCQlfTU1JT19U
UkFOUzIodHJhbnMsIF9WVE9UQUxfQSkKPiA+ICAjZGVmaW5lIFZCTEFOSyh0cmFucykJCV9NTUlP
X1RSQU5TMih0cmFucywgX1ZCTEFOS19BKQo+ID4gICNkZWZpbmUgVlNZTkModHJhbnMpCQlfTU1J
T19UUkFOUzIodHJhbnMsIF9WU1lOQ19BKQo+ID4gKyNkZWZpbmUgRVhJVExJTkUodHJhbnMpCQlf
TU1JT19UUkFOUzIodHJhbnMsIF9FWElUTElORV9BKQo+ID4gICNkZWZpbmUgQkNMUlBBVCh0cmFu
cykJCV9NTUlPX1RSQU5TMih0cmFucywgX0JDTFJQQVRfQSkKPiA+ICAjZGVmaW5lIFZTWU5DU0hJ
RlQodHJhbnMpCV9NTUlPX1RSQU5TMih0cmFucywgX1ZTWU5DU0hJRlRfQSkKPiA+ICAjZGVmaW5l
IFBJUEVTUkModHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9QSVBFQVNSQykKPiA+ICAjZGVm
aW5lIFBJUEVfTVVMVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQRV9NVUxUX0EpCj4g
PiAgCj4gPiArI2RlZmluZSAgIEVYSVRMSU5FX0VOQUJMRQlSRUdfQklUKDMxKQo+ID4gKyNkZWZp
bmUgICBFWElUTElORV9NQVNLCQlSRUdfR0VOTUFTSygxMiwgMCkKPiA+ICsjZGVmaW5lICAgRVhJ
VExJTkVfU0hJRlQJMAo+IAo+IFdoeSBhcmUgdGhlc2UgZGVmaW5lcyBoYW5naW5nIG1pZC1haXI/
CklmIGkgdW5kZXJzdGFuZCB5b3VyIGNvbW1lbnQgY29ycmVjdGx5LCB0aGUgcGxhY2UgdGhlc2Ug
RVhJVExJTkUKYml0IGRlZmluZXMgaXMgbm90IGNvcnJlY3QsIGFuZCBpdCBzaG91bGQgYmUgbW92
ZWQgYWZ0ZXIKRVhJVExJTkUodHJhbnMpIGRlZmluZSwgYW0gaSBjb3JyZWN0ID8gCj4gCj4gPiAr
Cj4gPiAgLyoKPiA+ICAgKiBIU1crIGVEUCBQU1IgcmVnaXN0ZXJzCj4gPiAgICoKPiA+IEBAIC0x
MDI4OCw2ICsxMDI5NCw4IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ID4gIC8qIEdFTjkgREMg
Ki8KPiA+ICAjZGVmaW5lIERDX1NUQVRFX0VOCQkJX01NSU8oMHg0NTUwNCkKPiA+ICAjZGVmaW5l
ICBEQ19TVEFURV9ESVNBQkxFCQkwCj4gPiArI2RlZmluZSAgRENfU1RBVEVfRU5fREMzQ08JCVJF
R19CSVQoMzApCj4gPiArI2RlZmluZSAgRENfU1RBVEVfREMzQ09fU1RBVFVTCQlSRUdfQklUKDI5
KQo+ID4gICNkZWZpbmUgIERDX1NUQVRFX0VOX1VQVE9fREM1CQkoMSA8PCAwKQo+ID4gICNkZWZp
bmUgIERDX1NUQVRFX0VOX0RDOQkJKDEgPDwgMykKPiA+ICAjZGVmaW5lICBEQ19TVEFURV9FTl9V
UFRPX0RDNgkJKDIgPDwgMCkKPiA+IC0tIAo+ID4gMi4yMS4wCj4gPiAKPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+IAo+IC0tIAo+
IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
