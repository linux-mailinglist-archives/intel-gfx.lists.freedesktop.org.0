Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C9C101AC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 23:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF86C8920D;
	Tue, 30 Apr 2019 21:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3748920D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 21:17:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 14:17:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="342268961"
Received: from aswarup-desk.jf.intel.com (HELO aswarup-desk) ([10.54.75.32])
 by fmsmga006.fm.intel.com with ESMTP; 30 Apr 2019 14:17:04 -0700
Date: Tue, 30 Apr 2019 14:12:39 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190430211239.GD27158@aswarup-desk>
References: <20190430000028.4690-1-aditya.swarup@intel.com>
 <20190430150518.GF24299@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430150518.GF24299@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Fix setting 10 bit deep color
 mode
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBcHIgMzAsIDIwMTkgYXQgMDY6MDU6MThQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIE1vbiwgQXByIDI5LCAyMDE5IGF0IDA1OjAwOjI4UE0gLTA3MDAsIEFkaXR5
YSBTd2FydXAgd3JvdGU6Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+ID4gCj4gPiBUaGVyZSBpcyBhIGJ1ZyBpbiBoZG1pX2RlZXBfY29s
b3JfcG9zc2libGUoKSAtIHdlIGNvbXBhcmUgcGlwZV9icHAKPiA+IDw9IDgqMyB3aGljaCByZXR1
cm5zIHRydWUgZXZlcnkgdGltZSBmb3IgaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlIDEyIGJpdAo+
ID4gZGVlcCBjb2xvciBtb2RlIHRlc3QgaW4gaW50ZWxfaGRtaV9jb21wdXRlX2NvbmZpZygpLihF
dmVuIHdoZW4gdGhlCj4gPiByZXF1ZXN0ZWQgY29sb3IgbW9kZSBpcyAxMCBiaXQgdGhyb3VnaCBt
YXggYnBjIHByb3BlcnR5KQo+ID4gCj4gPiBDb21wYXJpbmcgcGlwZV9icHAgd2l0aCBicGMgKiAz
IHRha2VzIGNhcmUgb2YgdGhpcyBjb25kaXRpb24gd2hlcmUKPiA+IHJlcXVlc3RlZCBtYXggYnBj
IGlzIDEwIGJpdCwgc28gaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlIHdpdGggMTIgYml0Cj4gPiBy
ZXR1cm5zIGZhbHNlIHdoZW4gcmVxdWVzdGVkIG1heCBicGMgaXMgMTAuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gCj4gSG93IGRpZCBteSBzb2IgYXBwZWFyIG9uIHRoaXM/IFByZXR0eSBzdXJlIEkgZGlkbid0
IGFjdHVhbGx5IHB1dCBpdAo+IGhlcmUuCkkgYWRkZWQgaXQsIHNpbmNlIHlvdSBhcmUgdGhlIGF1
dGhvciBvZiB0aGlzIHBhdGNoIGFuZCBjYW1lIHVwIHdpdGggdGhlCmNoYW5nZS4gSW1yZSBhbmQg
SSBoYXZlIHRlc3RlZCB5b3VyIHBhdGNoIGFuZCBpdCBpcyByZXF1aXJlZC4gCj4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KPiA+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4gQ2M6IE1hbmFzaSBOYXZh
cmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiBDYzogQ2xpbnRvbiBUYXlsb3IgPENs
aW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfaGRtaS5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCj4gPiBp
bmRleCA5OTFlYjM2MmVmNGYuLjc0ZjJkY2I4YjFhZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfaGRtaS5jCj4gPiBAQCAtMjE1OSw3ICsyMTU5LDcgQEAgc3RhdGljIGJvb2wgaGRtaV9k
ZWVwX2NvbG9yX3Bvc3NpYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAo+ID4gIAlpZiAoYnBjID09IDEwICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKPiA+
ICAJCXJldHVybiBmYWxzZTsKPiA+ICAKPiA+IC0JaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwIDw9
IDgqMykKPiA+ICsJaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwIDwgYnBjICogMykKPiA+ICAJCXJl
dHVybiBmYWxzZTsKPiA+ICAKPiA+ICAJaWYgKCFjcnRjX3N0YXRlLT5oYXNfaGRtaV9zaW5rKQo+
ID4gLS0gCj4gPiAyLjE3LjEKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbAoKUmVn
YXJkcywKQWRpdHlhIFN3YXJ1cApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
