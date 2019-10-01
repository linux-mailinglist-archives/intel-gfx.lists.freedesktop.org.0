Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF5CC374C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DEB6E7E6;
	Tue,  1 Oct 2019 14:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB376E7E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:28:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:28:58 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="342989882"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:28:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Chris
 Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001142248.GM1208@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191001134353.12028-1-jani.nikula@intel.com>
 <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
 <20191001142248.GM1208@intel.com>
Date: Tue, 01 Oct 2019 17:28:51 +0300
Message-ID: <87zhikbkv0.fsf@intel.com>
MIME-Version: 1.0
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

T24gVHVlLCAwMSBPY3QgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDM6MTI6NDlQTSAr
MDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTEw
LTAxIDE0OjQzOjUzKQo+PiA+IFNwbGl0IG91dCBjb2RlIHJlbGF0ZWQgdG8gdmdhIGNsaWVudCBh
bmQgdmdhIHN3aXRjaGVyb28KPj4gPiByZWdpc3Rlci91bnJlZ2lzdGVyIGFuZCBzdGF0ZSBoYW5k
bGluZyBmcm9tIGk5MTVfZHJ2LmMgYW5kCj4+ID4gaW50ZWxfZGlzcGxheS5jLgo+PiA+IAo+PiA+
IEl0J3MgYSBiaXQgZGlmZmljdWx0IHRvIGRyYXcgdGhlIGxpbmUgaG93IG11Y2ggdG8gbW92ZSB0
byB0aGUgbmV3IGZpbGUKPj4gPiBmcm9tIGk5MTVfZHJ2LmMsIGJ1dCBpdCBzZWVtZWQgdG8gbWUg
a2VlcGluZyBpOTE1X3N1c3BlbmRfc3dpdGNoZXJvbygpCj4+ID4gYW5kIGk5MTVfcmVzdW1lX3N3
aXRjaGVyb28oKSBpbiBwbGFjZSB3YXMgY2xlYW5lc3QuCj4+ID4gCj4+ID4gTm8gZnVuY3Rpb25h
bCBjaGFuZ2VzLgo+PiA+IAo+PiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+PiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgo+PiA+IAo+PiA+IC0tLQo+PiA+IAo+PiA+IEl0J3MgYWxzbyBhIGJpdCBmdXp6eSBp
ZiB0aGlzIGlzIGEgc2Vuc2libGUgc3BsaXQgYW55d2F5LiBDb3VsZCBhbHNvCj4+ID4gbmFtZSBp
dCBpbnRlbF92Z2EgYW5kIG1vdmUgdGhlc2UgZnJvbSBpbnRlbF9kaXNwbGF5LmMgdGhlcmU/Cj4+
IAo+PiBNeSBpbml0aWFsIHRob3VnaHQgdGhhdCB0aGUgc3dpdGNoZXJvbyBpbnRlcmZhY2Ugd291
bGQgcmVtYWluIGluIGNvcmUsCj4KPiBZZWFoIHRoZSBzd2l0Y2hlcm9vIHN0dWZmIHNob3VsZCBw
ZXJoYXBzIHN0YXlzIHdpdGggdGhlIHJlc3Qgb2YgdGhlIHBtIGhvb2tzLgoKT2theSwgc28ga2Vl
cCBhbGwgb2Ygc3dpdGNoZXJvbyBpbiBpOTE1X2Rydi5jLCBhbmQgbW92ZSBhbGwgdGhlIHZnYWFy
YgpzdHVmZiAoaW5jbCB0aGUgb25lcyBJIG1lbnRpb25lZCBmcm9tIGludGVsX2Rpc3BsYXkuYykg
dG8KaW50ZWxfdmdhLltjaF0/Cgo+Cj4+IHRoYXQgaXQgaXMgbW9yZSBvZiBhIGdsb2JhbCBwb3dl
ciBzdGF0ZSB0aGF0IHdlIGN1cnJlbnRseSBqdXN0IHVzZSBmb3IKPj4gdGhlIGxlZ2FjeSB2Z2Eg
c3dpdGNoaW5nLgo+PiAKPj4gVGhlIHBhdGNoIGxvb2tzIGZpbmUsIG9uIGEgcHVyZSBtZWNoYW5p
Y2FsIHBvdiwKPj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+PiAKPj4gRm9yIHRoZSBzYWtlIG9mIGFyZ3VtZW50LCBjb3VsZCB5b3UgZmxvYXQg
dGhlIHNwbGl0IGluIHRoZSBvdGhlcgo+PiBkaXJlY3Rpb24/CgpQbGVhc2UgZWxhYm9yYXRlLiBN
b3ZlIHN3aXRjaGVyb28gaGlnaGVyIGluIHRoZSBjYWxsIGNoYWluPwoKQlIsCkphbmkuCgoKPj4g
Cj4+IEFuZCBtYXliZSBWaWxsZSBoYXMgYSBnb29kIG9waW5pb24gb24gaG93IGl0IGlzIG1lYW50
IHRvIHdvcmsgOikKPj4gLUNocmlzCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
