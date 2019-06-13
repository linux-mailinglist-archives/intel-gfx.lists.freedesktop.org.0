Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED9F447FE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 19:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E729589483;
	Thu, 13 Jun 2019 17:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C671589483
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 17:04:15 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 10:04:00 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2019 10:04:00 -0700
Date: Thu, 13 Jun 2019 10:04:31 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190613170431.GK29428@intel.com>
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <87pnnhwrwa.fsf@intel.com>
 <20190613162948.pwmt36nzstimrjuj@ldmartin-desk.amr.corp.intel.com>
 <20190613164816.akb3ju625b74qclo@ldmartin-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613164816.akb3ju625b74qclo@ldmartin-desk.amr.corp.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: globally replace dev_priv
 with i915
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

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDk6NDg6MTZBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDA5OjI5OjQ4QU0gLTA3MDAsIEx1Y2Fz
IERlIE1hcmNoaSB3cm90ZToKPiA+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDA0OjEyOjM3UE0g
KzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+ID4gPiBPbiBXZWQsIDEyIEp1biAyMDE5LCBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gV2Ug
YXJlIHNsb3dseSBjb252ZXJ0aW5nIGRldl9wcml2IHRvIGk5MTUgZXZlcnl3aGVyZSwgc3ByZWFk
IGludG8KPiA+ID4gPiBzbWFsbGVyIHNlcmllcy4gV2hpbGUgdGhpcyBpcyBnb29kIHRvIGF2b2lk
IHVucmVsYXRlZCBicmVha2FnZXMgdG8gb3RoZXIKPiA+ID4gPiBpbmZsaWdodCBwYXRjaGVzLCBp
dCdzIGJhZCBiZWNhdXNlIGluZmxpZ2h0IHBhdGNoZXMgb24gbmVhcmJ5IHBhdGhzIGtlZXAKPiA+
ID4gPiBicmVha2luZy4gUGFpcmVkIHdpdGggb3RoZXIgY29kZSBtb3ZlcyBhbmQgcmVmYWN0b3Jl
cyB0aGlzIGlzIGJlY29taW5nIGEKPiA+ID4gPiBuaWdodG1hcmUuCj4gPiA+ID4gCj4gPiA+ID4g
Tm93IHRoYXQgSTkxNV97UkVBRCxXUklURX0gYXJlIGdvbmUgYW5kIGltcGxpY2l0IGFjY2VzcyB0
byBkZXZfcHJpdiBubwo+ID4gPiA+IGxvbmdlciBleGlzdHMgd2UgY2FuIHNpbXBseSBzZWQgYWxs
IGZpbGVzIGFuZCBiZSBkb25lIHdpdGggdGhlCj4gPiA+ID4gY29udmVyc2lvbi4gVGhpcyB3YXMg
Z2VuZXJhdGVkIHdpdGggdGhlIGZvbGxvd2luZyBjb21tYW5kcyB3aXRoIG5vCj4gPiA+ID4gYWRk
aXRpb25hbCBmaXh1cHM6Cj4gPiA+ID4gCj4gPiA+ID4gCWdpdCBscy1maWxlcyAtLWZ1bGwtbmFt
ZSAteiAtLSBkcml2ZXJzL2dwdS9kcm0vaTkxNS8gfCBcCj4gPiA+ID4gCQl4YXJncyAtMCBzZWQg
LWkgJ3MvXGJkZXZfcHJpdlxiL2k5MTUvZycKPiA+ID4gPiAKPiA+ID4gPiBBbnkgcGVuZGluZyBz
ZXJpZXMgY2FuIGFwcGx5IHRoZSBzYW1lIHNlYXJjaCBhbmQgcmVwbGFjZSB3aGVuIHJlYmFzaW5n
Lgo+ID4gPiAKPiA+ID4gSSdtIHByZXR0eSBzdHJvbmdseSBhZ2FpbnN0IHJlbmFtaW5nIHRoZSBp
bXBsaWNpdCBkZXZfcHJpdiBsb2NhbAo+ID4gPiB2YXJpYWJsZSBiZWZvcmUgd2UndmUgZ290dGVu
IHJpZCBvZiBpdC4gUmVuYW1pbmcgcy9kZXZfcHJpdi9pOTE1LyB1cG9uCj4gPiA+IGNvbnZlcnRp
bmcgYSBmdW5jdGlvbiB0byBub3QgdXNlIHRoZSBpbXBsaWNpdCBkZXZfcHJpdiBoZWxwcyB1cyBi
eQo+ID4gPiBjYXRjaGluZyBhbnkgbGVmdG92ZXIgcmVmZXJlbmNlcy4KPiA+IAo+ID4gSSBkb24n
dCB0aGluayB0aGlzIGlzIHN0cm9uZyBlbm91Z2ggcmVhc29uIHRvIGJsb2NrIHRoZSBjb252ZXJz
aW9uLiBUaGUKPiA+IGNvbnZlcnNpb24gaXMgdGFraW5nIGZvcmV2ZXIgYW5kIGlzIGdvbm5hIHRh
a2UgeWVhcisgaWYgaXQgY29udGludWVzIGF0Cj4gPiB0aGlzIHBhY2UuIEl0IGFmZmVjdHMgbXVs
dGlwbGUgZGV2ZWxvcGVycyByZWJhc2luZyB0aGVpciB3b3JrIGFuZAo+ID4gaW50cm9kdWNlIGJ1
Z3Mgb24gcGVuZGluZyBzZXJpZXMuCj4gPiAKPiA+IFJlbW92aW5nIGFueSBmaWxlLXNjb3BlIHJl
ZmVyZW5jZSAoSSBkaWRuJ3QgcmV2aWV3IHlldCBpZiB3ZSBzdGlsbCBoYXZlCj4gPiBhbnkpIGFu
ZCByZXZpZXdpbmcgdGhlIG1hY3JvcyBpcyBzdWZmaWNpZW50LiBBbmQgaWYgd2UgbGF0ZXIgd2Ug
ZmluZCBvdXQKPiA+IHdlIG1pc3NlZCBvbmUsIHdlIGp1c3QgZ28gYW5kIGZpeCBpdC4gSSBzZWUg
emVybyBhZHZhbnRhZ2Ugb24gc2xvdyBhbmQKPiA+IGZvcmV2ZXIuIFlvdSBoYXZlIGEgbWl4ZWQg
Y29kZSBiYXNlIGFuZCBuZXcgY29kZSBmb2xsb3dpbmcgd2hhdCdzIGFyb3VuZAo+ID4gd2lsbCBq
dXN0IHByb3BhZ2F0ZSBtb3JlIHRoZSBtaXhlZCBjb2RlIGJhc2UgOigKPiAKPiBidHcsIGxldCBt
ZSBiZSBjbGVhciB0aGUgcHJvcG9zYWwgaXMgbm90ICJ0aGlzIHNob3VsZCBiZSBkb25lIG5vdyIu
IEkgZG8KPiB0aGluayB3ZSBzaG91bGQgYmUgc21hcnQgYW5kIHRoaW5rIG9uIHRoZSBiZXN0IG9w
cG9ydHVuaXR5IHRvIGRvIGl0Lgo+IFByb2JhYmx5IGxpa2UgYWZ0ZXIgdGhlIGJpZyBjb2RlIG1v
dmVzIGd0LywgZ2VtLywgZGlzcGxheS8sIGV0YyBlbmQuCgp5ZWFwLCBkb2luZyBwZXIgZm9sZGVy
IGlzIHByb2JhYmx5IGEgZ29vZCB0aGluZywgc3BlY2lhbGx5IGJlY2F1c2UgZ3QgYW5kIGdlbQph
cmUgZmFyIGFoZWFkIHRoaXMgY29udmVyc2lvbi4KCj4gCj4gTHVjYXMgRGUgTWFyY2hpCj4gCj4g
PiAKPiA+IEx1Y2FzIERlIE1hcmNoaQo+ID4gCj4gPiA+IAo+ID4gPiBCUiwKPiA+ID4gSmFuaS4K
PiA+ID4gCj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
