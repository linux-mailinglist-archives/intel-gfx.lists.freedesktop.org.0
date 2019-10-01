Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 685BDC379E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5356E80B;
	Tue,  1 Oct 2019 14:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56CB6E80B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:38:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:38:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="205074226"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 01 Oct 2019 07:37:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 17:37:57 +0300
Date: Tue, 1 Oct 2019 17:37:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191001143757.GO1208@intel.com>
References: <20191001134353.12028-1-jani.nikula@intel.com>
 <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
 <20191001142248.GM1208@intel.com> <87zhikbkv0.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhikbkv0.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: split out
 intel_vga_client.[ch]
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

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDU6Mjg6NTFQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAwMSBPY3QgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCAwMSwgMjAxOSBhdCAwMzox
Mjo0OVBNICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4gUXVvdGluZyBKYW5pIE5pa3Vs
YSAoMjAxOS0xMC0wMSAxNDo0Mzo1MykKPiA+PiA+IFNwbGl0IG91dCBjb2RlIHJlbGF0ZWQgdG8g
dmdhIGNsaWVudCBhbmQgdmdhIHN3aXRjaGVyb28KPiA+PiA+IHJlZ2lzdGVyL3VucmVnaXN0ZXIg
YW5kIHN0YXRlIGhhbmRsaW5nIGZyb20gaTkxNV9kcnYuYyBhbmQKPiA+PiA+IGludGVsX2Rpc3Bs
YXkuYy4KPiA+PiA+IAo+ID4+ID4gSXQncyBhIGJpdCBkaWZmaWN1bHQgdG8gZHJhdyB0aGUgbGlu
ZSBob3cgbXVjaCB0byBtb3ZlIHRvIHRoZSBuZXcgZmlsZQo+ID4+ID4gZnJvbSBpOTE1X2Rydi5j
LCBidXQgaXQgc2VlbWVkIHRvIG1lIGtlZXBpbmcgaTkxNV9zdXNwZW5kX3N3aXRjaGVyb28oKQo+
ID4+ID4gYW5kIGk5MTVfcmVzdW1lX3N3aXRjaGVyb28oKSBpbiBwbGFjZSB3YXMgY2xlYW5lc3Qu
Cj4gPj4gPiAKPiA+PiA+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KPiA+PiA+IAo+ID4+ID4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPj4gPiBD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gPiBTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4+ID4gCj4gPj4g
PiAtLS0KPiA+PiA+IAo+ID4+ID4gSXQncyBhbHNvIGEgYml0IGZ1enp5IGlmIHRoaXMgaXMgYSBz
ZW5zaWJsZSBzcGxpdCBhbnl3YXkuIENvdWxkIGFsc28KPiA+PiA+IG5hbWUgaXQgaW50ZWxfdmdh
IGFuZCBtb3ZlIHRoZXNlIGZyb20gaW50ZWxfZGlzcGxheS5jIHRoZXJlPwo+ID4+IAo+ID4+IE15
IGluaXRpYWwgdGhvdWdodCB0aGF0IHRoZSBzd2l0Y2hlcm9vIGludGVyZmFjZSB3b3VsZCByZW1h
aW4gaW4gY29yZSwKPiA+Cj4gPiBZZWFoIHRoZSBzd2l0Y2hlcm9vIHN0dWZmIHNob3VsZCBwZXJo
YXBzIHN0YXlzIHdpdGggdGhlIHJlc3Qgb2YgdGhlIHBtIGhvb2tzLgo+IAo+IE9rYXksIHNvIGtl
ZXAgYWxsIG9mIHN3aXRjaGVyb28gaW4gaTkxNV9kcnYuYywgYW5kIG1vdmUgYWxsIHRoZSB2Z2Fh
cmIKPiBzdHVmZiAoaW5jbCB0aGUgb25lcyBJIG1lbnRpb25lZCBmcm9tIGludGVsX2Rpc3BsYXku
YykgdG8KPiBpbnRlbF92Z2EuW2NoXT8KCkkgY2FuIGdldCBiZWhpbmQgdGhhdCBwbGFuLgoKPiAK
PiA+Cj4gPj4gdGhhdCBpdCBpcyBtb3JlIG9mIGEgZ2xvYmFsIHBvd2VyIHN0YXRlIHRoYXQgd2Ug
Y3VycmVudGx5IGp1c3QgdXNlIGZvcgo+ID4+IHRoZSBsZWdhY3kgdmdhIHN3aXRjaGluZy4KPiA+
PiAKPiA+PiBUaGUgcGF0Y2ggbG9va3MgZmluZSwgb24gYSBwdXJlIG1lY2hhbmljYWwgcG92LAo+
ID4+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+PiAKPiA+PiBGb3IgdGhlIHNha2Ugb2YgYXJndW1lbnQsIGNvdWxkIHlvdSBmbG9hdCB0aGUg
c3BsaXQgaW4gdGhlIG90aGVyCj4gPj4gZGlyZWN0aW9uPwo+IAo+IFBsZWFzZSBlbGFib3JhdGUu
IE1vdmUgc3dpdGNoZXJvbyBoaWdoZXIgaW4gdGhlIGNhbGwgY2hhaW4/Cj4gCj4gQlIsCj4gSmFu
aS4KPiAKPiAKPiA+PiAKPiA+PiBBbmQgbWF5YmUgVmlsbGUgaGFzIGEgZ29vZCBvcGluaW9uIG9u
IGhvdyBpdCBpcyBtZWFudCB0byB3b3JrIDopCj4gPj4gLUNocmlzCj4gCj4gLS0gCj4gSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgoKLS0gClZpbGxlIFN5cmrD
pGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
