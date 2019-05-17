Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8842821BE0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63715897C3;
	Fri, 17 May 2019 16:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45FC897C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:44:22 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:44:22 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga004.jf.intel.com with ESMTP; 17 May 2019 09:44:22 -0700
Date: Fri, 17 May 2019 09:44:46 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190517164446.GD6984@intel.com>
References: <20190514164653.935-1-stuart.summers@intel.com>
 <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com> <87ftpeaff0.fsf@intel.com>
 <a13bccb377efbfe2f4ee9e414e4053610d315e3b.camel@intel.com>
 <87mujm76ej.fsf@intel.com>
 <66758be0515771b27172bcf0e1e6138ff2932bce.camel@intel.com>
 <20190517161739.GC6984@intel.com>
 <20190517163423.GU24299@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517163423.GU24299@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Re-add enable_rc6 modparam
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMDc6MzQ6MjNQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDA5OjE3OjM5QU0gLTA3MDAsIFJvZHJp
Z28gVml2aSB3cm90ZToKPiA+IE9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDAzOjQ5OjE5UE0gKzAw
MDAsIFN1bW1lcnMsIFN0dWFydCB3cm90ZToKPiA+ID4gT24gVGh1LCAyMDE5LTA1LTE2IGF0IDE4
OjQyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+ID4gPiBPbiBUaHUsIDE2IE1heSAyMDE5
LCAiU3VtbWVycywgU3R1YXJ0IiA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+ID4gPiA+IHdy
b3RlOgo+ID4gPiA+ID4gT24gVGh1LCAyMDE5LTA1LTE2IGF0IDEyOjU5ICswMzAwLCBKYW5pIE5p
a3VsYSB3cm90ZToKPiA+ID4gPiA+ID4gT24gVHVlLCAxNCBNYXkgMjAxOSwgUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPiB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbmUgcG9zc2li
aWxpdHkgdGhhdCBqdXN0IGNhbWUgdG8gbXkgbWluZCBub3cgaXMsIHdoYXQgaWYgd2UKPiA+ID4g
PiA+ID4gPiBtYWtlCj4gPiA+ID4gPiA+ID4gdGhpcyBvbmx5IGZvciBwbGF0Zm9ybXMgdGhhdCBh
cmUgc3RpbGwgcHJvdGVjdGVkIGJ5Cj4gPiA+ID4gPiA+ID4gaXNfYWxwaGFfc3VwcG9ydD0xCj4g
PiA+ID4gPiA+ID4gKHNvb24gYmVjb21pbmcgcmVxdWlyZV9mb3JjZV9wcm9iZT0xKQo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gUGxlYXNlIGRvbid0IGNvbmZsYXRlIGFscGhhX3N1cHBvcnQgb3Ig
Zm9yY2VfcHJvYmUgd2l0aAo+ID4gPiA+ID4gPiAqYW55dGhpbmcqCj4gPiA+ID4gPiA+IGVsc2Uu
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEJ1dCB0aGlzIGlzIGp1c3Qgb25lIHNpZGUgb2Yg
dGhlIGNvaW4uLi4gd2hlbiBwcm9kdWN0IGlzIG91dAo+ID4gPiA+ID4gPiA+IHRoZXJlCj4gPiA+
ID4gPiA+ID4gYW5kIHdlIHdhbnQgdGhlIHVzZXIgdG8gZGVidWcgdGhlIGlzc3VlIHRvIHNlZSBp
ZiBpdCBpcyBhIFJDNgo+ID4gPiA+ID4gPiA+IGJ1Zwo+ID4gPiA+ID4gPiA+IHdlIGhhdmUgbm8g
d2F5IHRvIHZlcmlmeSB0aGF0LiA6Lwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhlIHByb2Js
ZW0gaXMsIGlmIGl0IHdvcmtzIHdpdGggcmM2IGRpc2FibGVkLCBpdCBkb2Vzbid0IHByb3ZlCj4g
PiA+ID4gPiA+IGl0J3MKPiA+ID4gPiA+ID4gYW4KPiA+ID4gPiA+ID4gcmM2IGJ1ZyBlaXRoZXIu
Cj4gPiAKPiA+IFdlbGwsIFJDNiBpcyB0aGUgbWFpbiBHVCBwb3dlciBnYXRpbmcuIFRoZSBpc3N1
ZSBjb3VsZCBiZSBvbiBtYXkgb3RoZXIKPiA+IGluZGl2aWR1YWwgcG93ZXIgZ2F0aW5nLCBidXQg
aWYgYnkgZGlzYWJsaW5nIFJDNiB0aGUgaXNzdWUgaXMgZ29uZQo+ID4gaXQgaXMgYSB2ZXJ5IGdv
b2QgaW5kaWNhdGlvbiB0aGF0IGl0IGlzIGEgR1QtUE0gYnVnIHNvbWV3aGVyZS4KPiAKPiBJIGRp
c2FncmVlLiBJbiB0aGUgcmVjZW50IHBhc3QgZW5hYmxlX3JjNiB3YXMgb2Z0ZW4gdXNlZCBieQo+
IHBlb3BsZSB0byB3b3JrYXJvdW5kIGRpc3BsYXkgdW5kZXJydW5zIGFuZCB3aGF0bm90LgoKby5P
CmRvIHlvdSBtZWFuIHRoaXMgd2FzIGJlaW5nIHVzZWQgYXMgYSBwbGFjZWJvPyBvciByZWFsIGlz
c3VlPwpvciBzb21ldGhpbmcgbGlrZSBieSBrZWVwaW5nIHJjNiBncHUgd2FzIGtlZXBpbmcgdGhl
IHBvd2VyIHJlcXVlc3QKdG8gcHVuaXQgaGlnaCBzbyBkaXNwbGF5IHdhcyByZWNlaXZpbmcgZW5v
dWdoIHBvd2VyIHRvIG5vdCBzdHJ1Z2xlCndpdGggd20/IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQg
b3Igd2hhdD8KCj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
