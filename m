Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AB545D1E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 14:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F754898A4;
	Fri, 14 Jun 2019 12:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B0B898A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 12:44:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 05:44:53 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2019 05:44:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20190613170431.GK29428@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <87pnnhwrwa.fsf@intel.com>
 <20190613162948.pwmt36nzstimrjuj@ldmartin-desk.amr.corp.intel.com>
 <20190613164816.akb3ju625b74qclo@ldmartin-desk.amr.corp.intel.com>
 <20190613170431.GK29428@intel.com>
Date: Fri, 14 Jun 2019 15:47:49 +0300
Message-ID: <87tvcsuydm.fsf@intel.com>
MIME-Version: 1.0
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

T24gVGh1LCAxMyBKdW4gMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToKPiBPbiBUaHUsIEp1biAxMywgMjAxOSBhdCAwOTo0ODoxNkFNIC0wNzAwLCBMdWNh
cyBEZSBNYXJjaGkgd3JvdGU6Cj4+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDA5OjI5OjQ4QU0g
LTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj4gPiBPbiBUaHUsIEp1biAxMywgMjAxOSBh
dCAwNDoxMjozN1BNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gPiA+IE9uIFdlZCwgMTIg
SnVuIDIwMTksIEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90
ZToKPj4gPiA+ID4gV2UgYXJlIHNsb3dseSBjb252ZXJ0aW5nIGRldl9wcml2IHRvIGk5MTUgZXZl
cnl3aGVyZSwgc3ByZWFkIGludG8KPj4gPiA+ID4gc21hbGxlciBzZXJpZXMuIFdoaWxlIHRoaXMg
aXMgZ29vZCB0byBhdm9pZCB1bnJlbGF0ZWQgYnJlYWthZ2VzIHRvIG90aGVyCj4+ID4gPiA+IGlu
ZmxpZ2h0IHBhdGNoZXMsIGl0J3MgYmFkIGJlY2F1c2UgaW5mbGlnaHQgcGF0Y2hlcyBvbiBuZWFy
YnkgcGF0aHMga2VlcAo+PiA+ID4gPiBicmVha2luZy4gUGFpcmVkIHdpdGggb3RoZXIgY29kZSBt
b3ZlcyBhbmQgcmVmYWN0b3JlcyB0aGlzIGlzIGJlY29taW5nIGEKPj4gPiA+ID4gbmlnaHRtYXJl
Lgo+PiA+ID4gPiAKPj4gPiA+ID4gTm93IHRoYXQgSTkxNV97UkVBRCxXUklURX0gYXJlIGdvbmUg
YW5kIGltcGxpY2l0IGFjY2VzcyB0byBkZXZfcHJpdiBubwo+PiA+ID4gPiBsb25nZXIgZXhpc3Rz
IHdlIGNhbiBzaW1wbHkgc2VkIGFsbCBmaWxlcyBhbmQgYmUgZG9uZSB3aXRoIHRoZQo+PiA+ID4g
PiBjb252ZXJzaW9uLiBUaGlzIHdhcyBnZW5lcmF0ZWQgd2l0aCB0aGUgZm9sbG93aW5nIGNvbW1h
bmRzIHdpdGggbm8KPj4gPiA+ID4gYWRkaXRpb25hbCBmaXh1cHM6Cj4+ID4gPiA+IAo+PiA+ID4g
PiAJZ2l0IGxzLWZpbGVzIC0tZnVsbC1uYW1lIC16IC0tIGRyaXZlcnMvZ3B1L2RybS9pOTE1LyB8
IFwKPj4gPiA+ID4gCQl4YXJncyAtMCBzZWQgLWkgJ3MvXGJkZXZfcHJpdlxiL2k5MTUvZycKPj4g
PiA+ID4gCj4+ID4gPiA+IEFueSBwZW5kaW5nIHNlcmllcyBjYW4gYXBwbHkgdGhlIHNhbWUgc2Vh
cmNoIGFuZCByZXBsYWNlIHdoZW4gcmViYXNpbmcuCj4+ID4gPiAKPj4gPiA+IEknbSBwcmV0dHkg
c3Ryb25nbHkgYWdhaW5zdCByZW5hbWluZyB0aGUgaW1wbGljaXQgZGV2X3ByaXYgbG9jYWwKPj4g
PiA+IHZhcmlhYmxlIGJlZm9yZSB3ZSd2ZSBnb3R0ZW4gcmlkIG9mIGl0LiBSZW5hbWluZyBzL2Rl
dl9wcml2L2k5MTUvIHVwb24KPj4gPiA+IGNvbnZlcnRpbmcgYSBmdW5jdGlvbiB0byBub3QgdXNl
IHRoZSBpbXBsaWNpdCBkZXZfcHJpdiBoZWxwcyB1cyBieQo+PiA+ID4gY2F0Y2hpbmcgYW55IGxl
ZnRvdmVyIHJlZmVyZW5jZXMuCj4+ID4gCj4+ID4gSSBkb24ndCB0aGluayB0aGlzIGlzIHN0cm9u
ZyBlbm91Z2ggcmVhc29uIHRvIGJsb2NrIHRoZSBjb252ZXJzaW9uLiBUaGUKPj4gPiBjb252ZXJz
aW9uIGlzIHRha2luZyBmb3JldmVyIGFuZCBpcyBnb25uYSB0YWtlIHllYXIrIGlmIGl0IGNvbnRp
bnVlcyBhdAo+PiA+IHRoaXMgcGFjZS4gSXQgYWZmZWN0cyBtdWx0aXBsZSBkZXZlbG9wZXJzIHJl
YmFzaW5nIHRoZWlyIHdvcmsgYW5kCj4+ID4gaW50cm9kdWNlIGJ1Z3Mgb24gcGVuZGluZyBzZXJp
ZXMuCj4+ID4gCj4+ID4gUmVtb3ZpbmcgYW55IGZpbGUtc2NvcGUgcmVmZXJlbmNlIChJIGRpZG4n
dCByZXZpZXcgeWV0IGlmIHdlIHN0aWxsIGhhdmUKPj4gPiBhbnkpIGFuZCByZXZpZXdpbmcgdGhl
IG1hY3JvcyBpcyBzdWZmaWNpZW50LiBBbmQgaWYgd2UgbGF0ZXIgd2UgZmluZCBvdXQKPj4gPiB3
ZSBtaXNzZWQgb25lLCB3ZSBqdXN0IGdvIGFuZCBmaXggaXQuIEkgc2VlIHplcm8gYWR2YW50YWdl
IG9uIHNsb3cgYW5kCj4+ID4gZm9yZXZlci4gWW91IGhhdmUgYSBtaXhlZCBjb2RlIGJhc2UgYW5k
IG5ldyBjb2RlIGZvbGxvd2luZyB3aGF0J3MgYXJvdW5kCj4+ID4gd2lsbCBqdXN0IHByb3BhZ2F0
ZSBtb3JlIHRoZSBtaXhlZCBjb2RlIGJhc2UgOigKPj4gCj4+IGJ0dywgbGV0IG1lIGJlIGNsZWFy
IHRoZSBwcm9wb3NhbCBpcyBub3QgInRoaXMgc2hvdWxkIGJlIGRvbmUgbm93Ii4gSSBkbwo+PiB0
aGluayB3ZSBzaG91bGQgYmUgc21hcnQgYW5kIHRoaW5rIG9uIHRoZSBiZXN0IG9wcG9ydHVuaXR5
IHRvIGRvIGl0Lgo+PiBQcm9iYWJseSBsaWtlIGFmdGVyIHRoZSBiaWcgY29kZSBtb3ZlcyBndC8s
IGdlbS8sIGRpc3BsYXkvLCBldGMgZW5kLgo+Cj4geWVhcCwgZG9pbmcgcGVyIGZvbGRlciBpcyBw
cm9iYWJseSBhIGdvb2QgdGhpbmcsIHNwZWNpYWxseSBiZWNhdXNlIGd0IGFuZCBnZW0KPiBhcmUg
ZmFyIGFoZWFkIHRoaXMgY29udmVyc2lvbi4KCkluIGdlbmVyYWwgSSB0aGluayBnZXR0aW5nIHJp
ZCBvZiB0aGUgaW1wbGljaXQgZGV2X3ByaXYgbG9jYWwgaXMgbXVjaAptb3JlIGltcG9ydGFudCB0
aGFuIGEgZ2xvYmFsIHMvZGV2X3ByaXYvaTkxNS8gcmVuYW1lLiBJbiB0aGUgZW5kLCBpdCdzCmp1
c3QgYSBsb2NhbCB2YXJpYWJsZTsgdGhlIHByb2JsZW1hdGljIHBhcnQgaXMgdGhlIGRlcGVuZGVu
Y3kgb24gdGhlCmltcGxpY2l0IG5hbWUuCgpJTU8geW91IGRvbid0IGV2ZW4gaGF2ZSB0byBkbyB0
aGUgcmVuYW1lIGF0IHRoZSB0aW1lIG9mIGdldHRpbmcgcmlkIG9mCnRoZSBsb2NhbC4gSXQncyBq
dXN0IGEgbmljZSBib251cyB0byBiZSBhYmxlIHRvIGZyZWVseSBjaG9vc2UgdGhlCnZhcmlhYmxl
IG5hbWUuCgpGb3IgdGhlIHJlbmFtZXMsIHN1cmUsIHBsZWFzZSBkbyB0aGVtIGluIGd0IGFuZCBn
ZW0gc3ViZGlycyBmaXJzdCwKYmVjYXVzZSB0aGF0J3MgYWN0dWFsbHkgZmVhc2libGU6CgokIGdp
dCBncmVwIC13IGRldl9wcml2IC0tIGd0IHwgd2MgLWwKOTQKCiQgZ2l0IGdyZXAgLXcgZGV2X3By
aXYgLS0gZ2VtIHwgd2MgLWwKMTY4CgokIGdpdCBncmVwIC13IGRldl9wcml2IC0tIGRpc3BsYXkg
fCB3YyAtbAo2MjQxCgoKQlIsCkphbmkuCgoKPgo+PiAKPj4gTHVjYXMgRGUgTWFyY2hpCj4+IAo+
PiA+IAo+PiA+IEx1Y2FzIERlIE1hcmNoaQo+PiA+IAo+PiA+ID4gCj4+ID4gPiBCUiwKPj4gPiA+
IEphbmkuCj4+ID4gPiAKPj4gPiA+IAo+PiA+ID4gLS0gCj4+ID4gPiBKYW5pIE5pa3VsYSwgSW50
ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9w
ZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
