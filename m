Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042B92D2771
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 10:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E39899C7;
	Tue,  8 Dec 2020 09:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4004589B3B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Dec 2020 09:24:40 +0000 (UTC)
IronPort-SDR: YgV1qwf2PleZ9SzAO4vXuxeyujAVGnjpT5+FG0hNyX+JKudWc7NFmZhmCuVIfKkt4SnWJihfmN
 zRjnvL8tOdjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="153670708"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="153670708"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 01:24:36 -0800
IronPort-SDR: fIQfc9WYHC05Fws7CFW5MRw21s7WPSybQeeKvAUub45CX7807k8NWZBeFolymUwMxUqBRs5sA5
 EEIvm7YIHMMA==
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="407549040"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 01:24:34 -0800
Date: Tue, 8 Dec 2020 14:41:07 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 imre.deak@intel.com
Message-ID: <20201208091104.GJ30377@intel.com>
References: <20201130091646.25576-1-anshuman.gupta@intel.com>
 <20201130091646.25576-3-anshuman.gupta@intel.com>
 <20201130152832.GB2348711@ideak-desk.fi.intel.com>
 <20201204081003.GC30377@intel.com> <X8pbBsHVRVV4cNfJ@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X8pbBsHVRVV4cNfJ@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Protect pipe_update
 against dc3co exit
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0xMi0wNCBhdCAxNzo1MTozNCArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
IE9uIEZyaSwgRGVjIDA0LCAyMDIwIGF0IDAxOjQwOjAzUE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRh
IHdyb3RlOgo+ID4gT24gMjAyMC0xMS0zMCBhdCAxNzoyODozMiArMDIwMCwgSW1yZSBEZWFrIHdy
b3RlOgo+ID4gPiBPbiBNb24sIE5vdiAzMCwgMjAyMCBhdCAwMjo0Njo0NlBNICswNTMwLCBBbnNo
dW1hbiBHdXB0YSB3cm90ZToKPiA+ID4gPiBBdCB1c3VhbCBjYXNlIERDM0NPIGV4aXQgaGFwcGVu
IGF1dG9tYXRpY2FsbHkgYnkgRE1DIGYvdyB3aGVuZXZlcgo+ID4gPiA+IFBTUjIgY2xlYXJzIGlk
bGUuIFRoaXMgaGFwcGVucyBzbW9vdGhseSBieSBETUMgZi93IHRvIHdvcmsgd2l0aCBmbGlwcy4K
PiA+ID4gPiBCdXQgdGhlcmUgYXJlIGNlcnRhaW4gc2NlbmFyaW8gd2hlcmUgREMzQ08gIERpc2Fs
bG93ZWQgYnkgZHJpdmVyCj4gPiA+ID4gYXN5bmNocm9ub3VzIHdpdGggZmxpcHMuIEluIHN1Y2gg
c2NlbmFyaW8gZGlzcGxheSBlbmdpbmUgY291bGQKPiA+ID4gPiBiZSBhbHJlYWR5IGluIERDM0NP
IHN0YXRlIGFuZCBkcml2ZXIgaGFzIGRpc2FsbG93ZWQgaXQsCj4gPiA+ID4gSXQgaW5pdGlhdGVz
IERDM0NPIGV4aXQgc2VxdWVuY2UgaW4gRE1DIGYvdyB3aGljaCByZXF1aXJlcyBhCj4gPiA+ID4g
ZGMzY28gZXhpdCBkZWxheSBvZiAyMDB1cyBpbiBkcml2ZXIuCj4gPiA+ID4gSXQgcmVxdWlyZXMg
dG8gcHJvdGVjdCBpbnRlbF9waXBlX3VwZGF0ZV97dXBkYXRlX2VuZH0gd2l0aAo+ID4gPiA+IGRj
M2NvIGV4aXQgZGVsYXkuCj4gPiA+ID4gCj4gPiA+ID4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KPiA+ID4gPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Cj4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4K
PiA+ID4gCj4gPiA+IFRvIG1ha2Ugc3VyZSB0aGF0IGl0IGRvZXNuJ3QgaGlkZSB0aGUgcm9vdCBj
YXVzZSAob3IgYWZmZWN0cyB1bnJlbGF0ZWQKPiA+ID4gcGxhdGZvcm1zKSwgSSdkIG9ubHkgYWRk
IGxvY2tpbmcgYXJvdW5kIERDM2NvIGNoYW5nZXMgd2l0aCBhIG5ldyBsb2NrLAo+ID4gPiB1c2lu
ZyBsb2NrL3VubG9jayBoZWxwZXJzIGluIGludGVsX2Rpc3BsYXlfcG93ZXIuYyBjYWxsZWQgZnJv
bQo+ID4gPiBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydC9lbmQuCj4gPiA+IAo+ID4gPiBBbHNvIHBs
ZWFzZSBzdWJtaXQgdGhpcyBwYXRjaCBzZXBhcmF0ZWx5LCB3L28gdGhlIG9wdGltaXphdGlvbiBp
biBwYXRjaAo+ID4gPiAxLzIsIHNvIHdlIGtub3cgdGhhdCB0aGlzIGNoYW5nZSBmaXhlcyB0aGUg
cHJvYmxlbS4KPiA+IFRoaXMgcGF0Y2ggZG9lc24ndCBzZWVtcyB0byBmaXggdGhlIGlzc3VlLgo+
ID4gTG9va3MgbGlrZSB0aGVyZSBpcyBzb21lIG90aGVyIHNldCBvZiBkaXNwbGF5IHJlZ2lzdGVy
IHVwZGF0ZXMgYmVmb3JlCj4gPiBjb21wbGV0aW5nIHRoZSBkYzNjbyBleGl0IGRlbGF5IGJleW9u
ZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydC9lbmQgY2F1c2luZyB0aGlzIGlzc3VlLgo+IAo+IE5v
dCByZWFsbHkgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIERDM0NPIGlzc3VlIGhlcmUsIG5vciBob3cg
Z3JhYmJpbmcgYQo+IG11dGV4IGFjcm9zcyB0aGUgdXBkYXRlIGNvdWxkIGhlbHAuCj4gCj4gQnV0
IGFueXdheXMsIG1heWJlIHdlIHNob3VsZCBqdXN0Ogo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMmUyZGQ3NDY5MjFmLi45NjI3NmYwZmVk
ZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IEBAIC0xNjI2OCw4ICsxNjI2OCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21t
aXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgCj4gIAlkcm1fYXRv
bWljX2hlbHBlcl93YWl0X2Zvcl9kZXBlbmRlbmNpZXMoJnN0YXRlLT5iYXNlKTsKPiAgCj4gLQlp
ZiAoc3RhdGUtPm1vZGVzZXQpCj4gLQkJd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0
KGRldl9wcml2LCBQT1dFUl9ET01BSU5fTU9ERVNFVCk7Cj4gKwl3YWtlcmVmID0gaW50ZWxfZGlz
cGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VUKTsKPiAgCj4gIAlm
b3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNf
c3RhdGUsCj4gIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gQEAgLTE2NDE1LDggKzE2
NDE0LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJCSAqIHRoZSBjdWxwcml0Lgo+ICAJCSAqLwo+ICAJ
CWludGVsX3VuY29yZV9hcm1fdW5jbGFpbWVkX21taW9fZGV0ZWN0aW9uKCZkZXZfcHJpdi0+dW5j
b3JlKTsKPiAtCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChkZXZfcHJpdiwgUE9XRVJfRE9NQUlO
X01PREVTRVQsIHdha2VyZWYpOwo+ICAJfQo+ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2
X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VULCB3YWtlcmVmKTsKPiAgCWludGVsX3J1bnRpbWVf
cG1fcHV0KCZkZXZfcHJpdi0+cnVudGltZV9wbSwgc3RhdGUtPndha2VyZWYpOwo+ICAKPiAgCS8q
Cj4gCj4gVG8gZ2V0IHRoZSBETUMgb3V0IG9mIGVxdWF0aW9uIGVudGlyZWx5IGZvciBhbGwgcGxh
bmUgdXBkYXRlcz8KSGkgVmlsbGUgLyBJbXJlICwKQWJvdmUgc3VnZ2VzdGVkIGNobmFnZXMgaXMg
bm90IGhlbHBpbmcgdG8gZml4IHRoZSBkaXNwbGF5IGdsaXRjaGVzLgpDb3VsZCB5b3UgcGxlYXNl
IHByb3ZpZGUgeW91ciBpbnB1dHMgdG8gZGVidWcgdGhlIHBvc3NpYmxlIHJvb3QgY2F1c2UgY29u
c2lkZXJpbmcgdGhlIHBhdGNoIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRj
aC80MDU1ODUvP3Nlcmllcz04NDM5NCZyZXY9MgpmaXhlcyB0aGUgZ2xpdGNoLgpUaGFua3MsCkFu
c2h1bWFuIEd1cHRhLgogCj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
