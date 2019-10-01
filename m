Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E181C38F1
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 17:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E706E833;
	Tue,  1 Oct 2019 15:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4234B6E833
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 15:26:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 08:26:29 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="181720385"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 08:26:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20191001143757.GO1208@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191001134353.12028-1-jani.nikula@intel.com>
 <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
 <20191001142248.GM1208@intel.com> <87zhikbkv0.fsf@intel.com>
 <20191001143757.GO1208@intel.com>
Date: Tue, 01 Oct 2019 18:26:24 +0300
Message-ID: <87wodobi73.fsf@intel.com>
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
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDU6Mjg6NTFQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFR1ZSwgMDEgT2N0IDIwMTksIFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+PiA+IE9uIFR1
ZSwgT2N0IDAxLCAyMDE5IGF0IDAzOjEyOjQ5UE0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4gPj4gUXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMC0wMSAxNDo0Mzo1MykKPj4gPj4gPiBT
cGxpdCBvdXQgY29kZSByZWxhdGVkIHRvIHZnYSBjbGllbnQgYW5kIHZnYSBzd2l0Y2hlcm9vCj4+
ID4+ID4gcmVnaXN0ZXIvdW5yZWdpc3RlciBhbmQgc3RhdGUgaGFuZGxpbmcgZnJvbSBpOTE1X2Ry
di5jIGFuZAo+PiA+PiA+IGludGVsX2Rpc3BsYXkuYy4KPj4gPj4gPiAKPj4gPj4gPiBJdCdzIGEg
Yml0IGRpZmZpY3VsdCB0byBkcmF3IHRoZSBsaW5lIGhvdyBtdWNoIHRvIG1vdmUgdG8gdGhlIG5l
dyBmaWxlCj4+ID4+ID4gZnJvbSBpOTE1X2Rydi5jLCBidXQgaXQgc2VlbWVkIHRvIG1lIGtlZXBp
bmcgaTkxNV9zdXNwZW5kX3N3aXRjaGVyb28oKQo+PiA+PiA+IGFuZCBpOTE1X3Jlc3VtZV9zd2l0
Y2hlcm9vKCkgaW4gcGxhY2Ugd2FzIGNsZWFuZXN0Lgo+PiA+PiA+IAo+PiA+PiA+IE5vIGZ1bmN0
aW9uYWwgY2hhbmdlcy4KPj4gPj4gPiAKPj4gPj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4+ID4+ID4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gPj4gPiAKPj4gPj4gPiAtLS0KPj4gPj4gPiAKPj4g
Pj4gPiBJdCdzIGFsc28gYSBiaXQgZnV6enkgaWYgdGhpcyBpcyBhIHNlbnNpYmxlIHNwbGl0IGFu
eXdheS4gQ291bGQgYWxzbwo+PiA+PiA+IG5hbWUgaXQgaW50ZWxfdmdhIGFuZCBtb3ZlIHRoZXNl
IGZyb20gaW50ZWxfZGlzcGxheS5jIHRoZXJlPwo+PiA+PiAKPj4gPj4gTXkgaW5pdGlhbCB0aG91
Z2h0IHRoYXQgdGhlIHN3aXRjaGVyb28gaW50ZXJmYWNlIHdvdWxkIHJlbWFpbiBpbiBjb3JlLAo+
PiA+Cj4+ID4gWWVhaCB0aGUgc3dpdGNoZXJvbyBzdHVmZiBzaG91bGQgcGVyaGFwcyBzdGF5cyB3
aXRoIHRoZSByZXN0IG9mIHRoZSBwbSBob29rcy4KPj4gCj4+IE9rYXksIHNvIGtlZXAgYWxsIG9m
IHN3aXRjaGVyb28gaW4gaTkxNV9kcnYuYywgYW5kIG1vdmUgYWxsIHRoZSB2Z2FhcmIKPj4gc3R1
ZmYgKGluY2wgdGhlIG9uZXMgSSBtZW50aW9uZWQgZnJvbSBpbnRlbF9kaXNwbGF5LmMpIHRvCj4+
IGludGVsX3ZnYS5bY2hdPwo+Cj4gSSBjYW4gZ2V0IGJlaGluZCB0aGF0IHBsYW4uCgpQYXRjaCBp
biB5b3VyIGluYm94LCBJJ2xsIGxvb2sgaW50byBzd2l0Y2hlcm9vIGxhdGVyLgoKQlIsCkphbmku
CgoKPgo+PiAKPj4gPgo+PiA+PiB0aGF0IGl0IGlzIG1vcmUgb2YgYSBnbG9iYWwgcG93ZXIgc3Rh
dGUgdGhhdCB3ZSBjdXJyZW50bHkganVzdCB1c2UgZm9yCj4+ID4+IHRoZSBsZWdhY3kgdmdhIHN3
aXRjaGluZy4KPj4gPj4gCj4+ID4+IFRoZSBwYXRjaCBsb29rcyBmaW5lLCBvbiBhIHB1cmUgbWVj
aGFuaWNhbCBwb3YsCj4+ID4+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPj4gPj4gCj4+ID4+IEZvciB0aGUgc2FrZSBvZiBhcmd1bWVudCwgY291
bGQgeW91IGZsb2F0IHRoZSBzcGxpdCBpbiB0aGUgb3RoZXIKPj4gPj4gZGlyZWN0aW9uPwo+PiAK
Pj4gUGxlYXNlIGVsYWJvcmF0ZS4gTW92ZSBzd2l0Y2hlcm9vIGhpZ2hlciBpbiB0aGUgY2FsbCBj
aGFpbj8KPj4gCj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gCj4+ID4+IAo+PiA+PiBBbmQgbWF5YmUg
VmlsbGUgaGFzIGEgZ29vZCBvcGluaW9uIG9uIGhvdyBpdCBpcyBtZWFudCB0byB3b3JrIDopCj4+
ID4+IC1DaHJpcwo+PiAKPj4gLS0gCj4+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
