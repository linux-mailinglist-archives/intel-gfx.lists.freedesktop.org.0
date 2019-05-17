Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026B321C26
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 19:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49DA389933;
	Fri, 17 May 2019 17:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A05289933
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 17:02:16 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 10:02:15 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 May 2019 10:02:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 20:02:13 +0300
Date: Fri, 17 May 2019 20:02:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190517170213.GW24299@intel.com>
References: <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com> <87ftpeaff0.fsf@intel.com>
 <a13bccb377efbfe2f4ee9e414e4053610d315e3b.camel@intel.com>
 <87mujm76ej.fsf@intel.com>
 <66758be0515771b27172bcf0e1e6138ff2932bce.camel@intel.com>
 <20190517161739.GC6984@intel.com>
 <20190517163423.GU24299@intel.com>
 <20190517164446.GD6984@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517164446.GD6984@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMDk6NDQ6NDZBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDA3OjM0OjIzUE0gKzAzMDAsIFZpbGxlIFN5
cmrDpGzDpCB3cm90ZToKPiA+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDA5OjE3OjM5QU0gLTA3
MDAsIFJvZHJpZ28gVml2aSB3cm90ZToKPiA+ID4gT24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDM6
NDk6MTlQTSArMDAwMCwgU3VtbWVycywgU3R1YXJ0IHdyb3RlOgo+ID4gPiA+IE9uIFRodSwgMjAx
OS0wNS0xNiBhdCAxODo0MiArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiA+ID4gPiBPbiBU
aHUsIDE2IE1heSAyMDE5LCAiU3VtbWVycywgU3R1YXJ0IiA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwu
Y29tPgo+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFRodSwgMjAxOS0wNS0xNiBhdCAx
Mjo1OSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gT24gVHVlLCAxNCBN
YXkgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPiB3cm90ZToKPiA+
ID4gPiA+ID4gPiA+IE9uZSBwb3NzaWJpbGl0eSB0aGF0IGp1c3QgY2FtZSB0byBteSBtaW5kIG5v
dyBpcywgd2hhdCBpZiB3ZQo+ID4gPiA+ID4gPiA+ID4gbWFrZQo+ID4gPiA+ID4gPiA+ID4gdGhp
cyBvbmx5IGZvciBwbGF0Zm9ybXMgdGhhdCBhcmUgc3RpbGwgcHJvdGVjdGVkIGJ5Cj4gPiA+ID4g
PiA+ID4gPiBpc19hbHBoYV9zdXBwb3J0PTEKPiA+ID4gPiA+ID4gPiA+IChzb29uIGJlY29taW5n
IHJlcXVpcmVfZm9yY2VfcHJvYmU9MSkKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBQbGVh
c2UgZG9uJ3QgY29uZmxhdGUgYWxwaGFfc3VwcG9ydCBvciBmb3JjZV9wcm9iZSB3aXRoCj4gPiA+
ID4gPiA+ID4gKmFueXRoaW5nKgo+ID4gPiA+ID4gPiA+IGVsc2UuCj4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiBCdXQgdGhpcyBpcyBqdXN0IG9uZSBzaWRlIG9mIHRoZSBjb2luLi4uIHdo
ZW4gcHJvZHVjdCBpcyBvdXQKPiA+ID4gPiA+ID4gPiA+IHRoZXJlCj4gPiA+ID4gPiA+ID4gPiBh
bmQgd2Ugd2FudCB0aGUgdXNlciB0byBkZWJ1ZyB0aGUgaXNzdWUgdG8gc2VlIGlmIGl0IGlzIGEg
UkM2Cj4gPiA+ID4gPiA+ID4gPiBidWcKPiA+ID4gPiA+ID4gPiA+IHdlIGhhdmUgbm8gd2F5IHRv
IHZlcmlmeSB0aGF0LiA6Lwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFRoZSBwcm9ibGVt
IGlzLCBpZiBpdCB3b3JrcyB3aXRoIHJjNiBkaXNhYmxlZCwgaXQgZG9lc24ndCBwcm92ZQo+ID4g
PiA+ID4gPiA+IGl0J3MKPiA+ID4gPiA+ID4gPiBhbgo+ID4gPiA+ID4gPiA+IHJjNiBidWcgZWl0
aGVyLgo+ID4gPiAKPiA+ID4gV2VsbCwgUkM2IGlzIHRoZSBtYWluIEdUIHBvd2VyIGdhdGluZy4g
VGhlIGlzc3VlIGNvdWxkIGJlIG9uIG1heSBvdGhlcgo+ID4gPiBpbmRpdmlkdWFsIHBvd2VyIGdh
dGluZywgYnV0IGlmIGJ5IGRpc2FibGluZyBSQzYgdGhlIGlzc3VlIGlzIGdvbmUKPiA+ID4gaXQg
aXMgYSB2ZXJ5IGdvb2QgaW5kaWNhdGlvbiB0aGF0IGl0IGlzIGEgR1QtUE0gYnVnIHNvbWV3aGVy
ZS4KPiA+IAo+ID4gSSBkaXNhZ3JlZS4gSW4gdGhlIHJlY2VudCBwYXN0IGVuYWJsZV9yYzYgd2Fz
IG9mdGVuIHVzZWQgYnkKPiA+IHBlb3BsZSB0byB3b3JrYXJvdW5kIGRpc3BsYXkgdW5kZXJydW5z
IGFuZCB3aGF0bm90Lgo+IAo+IG8uTwo+IGRvIHlvdSBtZWFuIHRoaXMgd2FzIGJlaW5nIHVzZWQg
YXMgYSBwbGFjZWJvPyBvciByZWFsIGlzc3VlPwo+IG9yIHNvbWV0aGluZyBsaWtlIGJ5IGtlZXBp
bmcgcmM2IGdwdSB3YXMga2VlcGluZyB0aGUgcG93ZXIgcmVxdWVzdAo+IHRvIHB1bml0IGhpZ2gg
c28gZGlzcGxheSB3YXMgcmVjZWl2aW5nIGVub3VnaCBwb3dlciB0byBub3Qgc3RydWdsZQo+IHdp
dGggd20/IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQgb3Igd2hhdD8KCkRpc2FibGluZyByYzYgZGlz
YWJsZXMgbW9zdCBwYWNrYWdlIEMtc3RhdGVzLCB3aGljaCBtYWtlcyBsaWZlCmEgbG90IGVhc2ll
ciBmb3IgdGhlIGRpc3BsYXkgZW5naW5lIGR1ZSB0byByZWR1Y2VkIG1lbW9yeQphY2Nlc3MgbGF0
ZW5jaWVzLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
