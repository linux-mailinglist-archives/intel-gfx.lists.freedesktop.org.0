Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A872D0B80
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 09:11:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EC489E5B;
	Mon,  7 Dec 2020 08:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE3A89E5B
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 08:11:20 +0000 (UTC)
IronPort-SDR: hqxEYDhCbVdqQgrrNcycho3lA8QpCX47Yl5UOillu1EiI3vKuCb/YFMnvTn34pJLb8sYgUdK2E
 8N5hpxXprMQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="153477244"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="153477244"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 00:11:19 -0800
IronPort-SDR: 96lnoa4Q8nDksTSIc/j01PS5Jy/KiTFV5UppvTBpNfR75XZGJ/QImYl/FsSsfG5rIYm2AidnCM
 p/8colBZMH2w==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="347367580"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 00:11:17 -0800
Date: Mon, 7 Dec 2020 13:27:48 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20201207075745.GI30377@intel.com>
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
Z3JhYmJpbmcgYQo+IG11dGV4IGFjcm9zcyB0aGUgdXBkYXRlIGNvdWxkIGhlbHAuClRoYW5rcyBW
aWxsZSBmb3IgcHJvdmlkaW5nIHlvdXIgaW5wdXQgaGVyZSwgdGhlIGRpc3BsYXkgZ2xpdGNoZXMg
aXMgZml4ZWQgYnkgCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80MDU1
ODUvP3Nlcmllcz04NDM5NCZyZXY9MiBwYXRjaCBpbiBjYXNlCm9mIGJyaWdodG5lc3MgYmVpbmcg
dXBkYXRlZCBzaW11bHRhbmVvdXNseSB3aXRoIGZsaXBzLCBzbyBpdCB3YXMgb3VyIHdpbGQgZ3Vl
c3MKdGhhdCBpZiBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydCAgdHJpZ2dlcnMgYmVmb3JlIGNvbXBs
ZXRpbmcgREMzQ08gZXhpdCBkZWxheSBpbgp0Z2xfZGlzYWJsZV9kYzNjbyBjb3VsZCBjYXVzZSB0
aGUgZGlzcGxheSBnbGl0Y2hlcyBidXQgdGhhdCB3YXMgbm90IHRydWUuCj4gCj4gQnV0IGFueXdh
eXMsIG1heWJlIHdlIHNob3VsZCBqdXN0Ogo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMmUyZGQ3NDY5MjFmLi45NjI3NmYwZmVkZGMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBA
IC0xNjI2OCw4ICsxNjI2OCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFp
bChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgCj4gIAlkcm1fYXRvbWljX2hl
bHBlcl93YWl0X2Zvcl9kZXBlbmRlbmNpZXMoJnN0YXRlLT5iYXNlKTsKPiAgCj4gLQlpZiAoc3Rh
dGUtPm1vZGVzZXQpCj4gLQkJd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9w
cml2LCBQT1dFUl9ET01BSU5fTU9ERVNFVCk7Cj4gKwl3YWtlcmVmID0gaW50ZWxfZGlzcGxheV9w
b3dlcl9nZXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VUKTsKQ2VydGFpbmx5IHRoaXMg
c2hvdWxkIGZpeCB0aGUgaXNzdWUuIEkgd2lsbCB0cnkgdGhpcyBvdXQgYnV0IGkgZmVlbCB0aGlz
IApjb3VsZCBjYXVzZSBoZWF2eSBsb2NrIGNvbnRlbnRpb24gYXJvdW5kIHBvd2VyX2RvbWFpbnMt
PmxvY2sgaW4gY2FzZSAKYnJpZ2h0bmVzcyBiZWluZyB1cGRhdGVkIHJhcGlkbHkgYXMgdGhlIHNj
ZW5hcmlvIG9mIHRoaXMgaXNzdWUuCldlIHdvdWxkIGFsc28gbmVlZCBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDA1NTg1Lz9zZXJpZXM9ODQzOTQmcmV2PTIgcGF0Y2gg
YXMgd2VsbCA/ClRoYW5rcywKQW5zaHVtYW4gR3VwdGEuCj4gIAo+ICAJZm9yX2VhY2hfb2xkbmV3
X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAo+ICAJCQkJ
CSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+IEBAIC0xNjQxNSw4ICsxNjQxNCw4IEBAIHN0YXRp
YyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKPiAgCQkgKiB0aGUgY3VscHJpdC4KPiAgCQkgKi8KPiAgCQlpbnRlbF91bmNvcmVf
YXJtX3VuY2xhaW1lZF9tbWlvX2RldGVjdGlvbigmZGV2X3ByaXYtPnVuY29yZSk7Cj4gLQkJaW50
ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VULCB3YWtl
cmVmKTsKPiAgCX0KPiArCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LCBQT1dFUl9E
T01BSU5fTU9ERVNFVCwgd2FrZXJlZik7Cj4gIAlpbnRlbF9ydW50aW1lX3BtX3B1dCgmZGV2X3By
aXYtPnJ1bnRpbWVfcG0sIHN0YXRlLT53YWtlcmVmKTsKPiAgCj4gIAkvKgo+IAo+IFRvIGdldCB0
aGUgRE1DIG91dCBvZiBlcXVhdGlvbiBlbnRpcmVseSBmb3IgYWxsIHBsYW5lIHVwZGF0ZXM/Cj4g
Cj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
