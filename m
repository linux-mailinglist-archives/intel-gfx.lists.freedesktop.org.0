Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06ACF548B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 20:19:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8186FA5D;
	Fri,  8 Nov 2019 19:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B93C6FA5D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 19:19:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 11:19:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="206537575"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 08 Nov 2019 11:19:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Nov 2019 21:19:15 +0200
Date: Fri, 8 Nov 2019 21:19:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191108191915.GJ1208@intel.com>
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <20191108003602.33526-4-lucas.demarchi@intel.com>
 <87eeyi62o4.fsf@intel.com>
 <20191108181852.f2ce7uthomzgf4vx@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108181852.f2ce7uthomzgf4vx@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/bios: do not discard address
 space
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

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMTA6MTg6NTJBTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIEZyaSwgTm92IDA4LCAyMDE5IGF0IDAxOjE0OjAzUE0gKzAyMDAsIEphbmkg
TmlrdWxhIHdyb3RlOgo+ID5PbiBUaHUsIDA3IE5vdiAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4gd3JvdGU6Cj4gPj4gV2hlbiB3ZSBhcmUgbWFwcGluZyB0
aGUgVkJUIHRocm91Z2ggcGNpX21hcF9yb20oKSB3ZSBtYXkgbm90IGJlIGFsbG93ZWQKPiA+PiB0
byBzaW1wbHkgZGlzY2FyZCB0aGUgYWRkcmVzcyBzcGFjZSBhbmQgZ28gb24gcmVhZGluZyB0aGUg
bWVtb3J5LiBBZnRlcgo+ID4+IGNoZWNraW5nIG9uIG15IHRlc3Qgc3lzdGVtIHRoYXQgZHVtcGlu
ZyB0aGUgcm9tIHZpYSBzeXNmcyBJIGNvdWxkCj4gPj4gYWN0dWFsbHkgZ2V0IHRoZSBjb3JyZWN0
IHZidCwgSSBkZWNpZGVkIHRvIGNoYW5nZSB0aGUgaW1wbGVtZW50YXRpb24gdG8KPiA+PiB1c2Ug
dGhlIHNhbWUgYXBwcm9hY2gsIGJ5IGNhbGxpbmcgbWVtY3B5X2Zyb21pbygpLgo+ID4+Cj4gPj4g
SW4gb3JkZXIgdG8gYXZvaWQgY29weWluZyB0aGUgZW50aXJlIG9wcm9tIHRoaXMgaW1wbGVtZW50
cyBhIHNpbXBsZQo+ID4+IG1lbW1lbSgpIHNlYXJjaGluZyBmb3IgIiRWQlQiLiBDb250cmFyeSB0
byB0aGUgcHJldmlvdXMgaW1wbGVtZW50YXRpb24KPiA+PiB0aGlzIGFsc28gdGFrZXMgY2FyZSBv
ZiBub3QgaXNzdWluZyB1bmFsaWduZWQgUENJIHJlYWRzIHRoYXQgd291bGQKPiA+PiBvdGhlcndp
c2UgZ2V0IHRyYW5zbGF0ZWQgaW50byBtb3JlIGV2ZW4gbW9yZSByZWFkcy4gSSBhbHNvIHZhZ3Vl
bHkKPiA+PiByZW1lbWJlciB1bmFsaWduZWQgcmVhZHMgZmFpbGluZyBpbiB0aGUgcGFzdCB3aXRo
IHNvbWUgZGV2aWNlcy4KPiA+Pgo+ID4+IEFsc28gbWFrZSBzdXJlIHdlIGNvcHkgb25seSB0aGUg
VkJUIGFuZCBub3QgdGhlIGVudGlyZSBvcHJvbSB0aGF0IGlzCj4gPj4gdXN1YWxseSBtdWNoIGxh
cmdlci4KPiA+Cj4gPlNvIHlvdSBoYXZlCj4gPgo+ID4xLiBhIGZpeCB0byB1bmFsaWduZWQgcmVh
ZHMKPiAKPiB1bmFsaWduZWQgaW8gcmVhZHMsIHllcwo+IAo+ID4KPiA+Mi4gYW4gb3B0aW1pemF0
aW9uIHRvIGF2b2lkIHJlYWRpbmcgaW5kaXZpZHVhbCBieXRlcyBmb3VyIHRpbWVzCj4gCj4gaXQg
d2FzIGJ5IG5vIG1lYW5zIGFuIG9wdGltaXphdGlvbi4gTm90IHJlYWRpbmcgdGhlIHNhbWUgYnl0
ZSA0IGJ5dGVzIGlzCj4gdGhlcmUgYWN0dWFsbHkgdG8gc3RvcCBkb2luZyB0aGUgdW5hbGlnbmVk
IElPIHJlYWRzLiBZb3UgY2FuJ3QgaGF2ZSAoMikKPiB3aXRob3V0ICgxKSB1bmxlc3MgeW91IHN3
aXRjaCB0byBpb3JlYWRiKCkgYW5kIGFkZCBhIHNoaWZ0ICh3aGljaCBtYXkKPiBub3QgYmUgYSBi
YWQgaWRlYS4KPiAKPiA+Cj4gPjMuIHJlc3BlY3RpbmcgX19pb21lbSBhbmQgY29weWluZyAoSSBn
dWVzcyB0aGVzZSBhcmUgdGllZCB0b2dldGhlcikKPiA+Cj4gPlNlZW1zIHRvIG1lIHRoYXQgcmVh
bGx5IHNob3VsZCBiZSBhdCBsZWFzdCB0aHJlZSBwYXRjaGVzLiBOb3QKPiA+bmVjZXNzYXJpbHkg
aW4gdGhlIGFib3ZlIG9yZGVyLgo+IAo+ICgzKSBpcyBhY3R1YWxseSB0aGUgbW9zdCBpbXBvcnRh
bnQgSSB0aGluaywgc28gSSB3aWxsIHN0YXJ0IGJ5IHRoYXQuCj4gCj4gPgo+ID5Gb2xsb3ctdXA6
IHN0b3JlIHBvaW50ZXIgdG8gdGhlIG9wcm9tIHZidCBzb21ld2hlcmUgdW5kZXIgaTkxNS0+dmJ0
LCBhbmQKPiA+aGF2ZSBkZWJ1Z2ZzIGk5MTVfdmJ0KCkgaGFuZGxlIHRoYXQgcHJvcGVybHkuCj4g
Cj4gSSBkb24ndCB0aGluayB0aGlzIGlzIG5lZWRlZC4gVGhlIHRoaW5nIEknbSBkb2luZyBoZXJl
IGlzIHRoZSBzYW1lIGFzCj4gd2hhdCBjYW4gYmUgYWNjb21wbGlzaGVkIGJ5IHJlYWRpbmcgdGhl
IHJvbSBmcm9tIHN5c2ZzOgo+IAo+IGZpbmQgL3N5cy9idXMvcGNpL2RldmljZXMvKi8gLW5hbWUg
cm9tCj4gLi4uIGNob29zZSBvbmUKPiAKPiBlY2hvIDEgPiByb20gIyB0byBhbGxvdyByZWFkaW5n
IHRoZSByb20KPiBoZXhkdW1wIC1DIHJvbQo+IAo+IAo+ID4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4+IC0tLQo+
ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDk1ICsrKysr
KysrKysrKysrKysrKystLS0tCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA3OSBpbnNlcnRpb25zKCsp
LCAxNiBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jCj4gPj4gaW5kZXggNjcxYmJjZTZiYTViLi5jNDAxZTkwYjdjZjEgMTAwNjQ0
Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiA+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+ID4+IEBA
IC0xODA2LDMxICsxODA2LDg4IEBAIGJvb2wgaW50ZWxfYmlvc19pc192YWxpZF92YnQoY29uc3Qg
dm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSkKPiA+PiAgCXJldHVybiB2YnQ7Cj4gPj4gIH0KPiA+Pgo+
ID4+IC1zdGF0aWMgY29uc3Qgc3RydWN0IHZidF9oZWFkZXIgKmZpbmRfdmJ0KHZvaWQgX19pb21l
bSAqb3Byb20sIHNpemVfdCBzaXplKQo+ID4+ICt2b2lkIF9faW9tZW0gKmZpbmRfdmJ0KHZvaWQg
X19pb21lbSAqb3Byb20sIHNpemVfdCBzaXplKQo+ID4+ICB7Cj4gPj4gLQlzaXplX3QgaTsKPiA+
PiArCWNvbnN0IHUzMiBNQUdJQyA9ICooKGNvbnN0IHUzMiAqKSIkVkJUIik7Cj4gPj4gKwlzaXpl
X3QgZG9uZSA9IDAsIGN1ciA9IDA7Cj4gPj4gKwl2b2lkIF9faW9tZW0gKnA7Cj4gPj4gKwl1OCBi
dWZbMTI4XTsKPiA+PiArCXUzMiB2YWw7Cj4gPj4KPiA+PiAtCS8qIFNjb3VyIG1lbW9yeSBsb29r
aW5nIGZvciB0aGUgVkJUIHNpZ25hdHVyZS4gKi8KPiA+PiAtCWZvciAoaSA9IDA7IGkgKyA0IDwg
c2l6ZTsgaSsrKSB7Cj4gPj4gLQkJdm9pZCAqdmJ0Owo+ID4+ICsJLyoKPiA+PiArCSAqIHBvb3In
cyBtYW4gbWVtbWVtKCkgd2l0aCBzaXplb2YoYnVmKSB3aW5kb3cgdG8gYXZvaWQgZnJlcXVlbnQK
PiA+PiArCSAqIHdyYXAtYXJvdW5kcyBhbmQgdXNpbmcgdTMyIGZvciBjb21wYXJpc29uLiBUaGlz
IGdpdmVzIHVzIDQKPiA+PiArCSAqIGNvbXBhcmlzb25zIHBlciBpb3JlYWQzMigpIGFuZCBhdm9p
ZHMgdW5hbGlnbmVkIGlvIHJlYWRzIChhbHRob3VnaCBpdAo+ID4+ICsJICogc3RpbGwgZG9lcyB1
bmFsaWduZWQgY3B1IGFjY2VzcykuCj4gPj4gKwkgKi8KPiA+Cj4gPklmIHdlJ3JlIHJlYWxseSB3
b3JyaWVkIGFib3V0IHBlcmZvcm1hbmNlIGhlcmUsIGFuZCB1c2UgYSBsb2NhbCBidWZmZXIKPiA+
dG8gb3B0aW1pemUgdGhlIHdyYXBhcm91bmRzLCB3b3VsZCBpdCBhY3R1YWxseSBiZSBtb3JlIGVm
ZmljaWVudCB0byB1c2UKPiA+bWVtY3B5X2Zyb21pbygpIHdoaWNoIGhhcyBhbiBhcmNoIHNwZWNp
ZmljIGltcGxlbWVudGF0aW9uIGluIGFzbT8KPiAKPiBOb3QgcmVhbGx5IHdvcnJpZWQgYWJvdXQg
cGVyZm9ybWFuY2UuIEkgYWN0dWFsbHkgZGlkIDMgaW1wbGVtZW50YXRpb25zCj4gdGhhdCBhdm9p
ZHMgdGhlIHVuYWxpZ25lZCBpbyByZWFkcy4KPiAKPiAxKSB0aGlzIG9uZQo+IDIpIG1lbWNweV9m
cm9taW8oKSB0byB0aGUgbG9jYWwgYnVmZmVyICsgc3RybnN0cigpCj4gMykgYWxsb2NhdGUgYSBv
cHJvbSBidWZmZXIsIG1lbWNweV9mcm9taW8oKSB0aGUgZW50aXJlIHJvbSBhbmQga2VlcCBhCj4g
cG9pbnRlciB0byBpdC4gVGhlbiBmcmVlIHRoZSBvcHJvbSBhZnRlciB0aGUgdmJ0IGlzIHVzZWQK
PiAKPiAoMikgYW5kICgxKSBoYWQgYmFzaWNhbGx5IHRoZSBzYW1lIGNvbXBsZXhpdHkgaW52b2x2
ZWQgb2YgcmVxdWlyaW5nIGEKPiB3cmFwIGFyb3VuZCBsb2NhbCBidWZmZXIsIHNvIEkgd2VudCB3
aXRoICgxKQo+IAo+IEkgZGlkbid0IGZlZWwgY29uZm9ydGFibGUgd2l0aCAoMykgYmVjYXVzZSBp
dCB3b3VsZCBhbGxvY2F0ZSBtdWNoIG1vcmUKPiBtZW1vcnkgdGhhbiByZWFsbHkgbmVlZGVkLgo+
IAo+ID4KPiA+SW4gYW55IGNhc2UgbWFrZXMgeW91IHRoaW5rIHlvdSBzaG91bGQgZmlyc3QgaGF2
ZSB0aGUgcGF0Y2ggdGhhdCB0aGUKPiA+cGF0Y2ggc3ViamVjdCBjbGFpbXMsIGZpeCB1bmFsaWdu
ZWQgcmVhZHMgYW5kIGFkZCBvcHRpbWl6YXRpb25zCj4gPm5leHQuIFRoaXMgb25lIGRvZXMgdG9v
IG11Y2guCj4gCj4gQWdhaW4sIGl0IHdhcyBub3QgcmVhbGx5IG1lYW50IHRvIGJlIGFuIG9wdGlt
aXphdGlvbi4KPiAKPiBWaWxsZSB0b2xkIG1lIHRoYXQgd2UgbWF5IG5vdCByZWFsbHkgbmVlZCB0
byBkZWFsIHdpdGggdGhlIHVuYWxpZ25lZAo+IGFjY2VzcyBhbmQgY2hhbmdlIHRoZSBpbXBsZW1l
bnRhdGlvbiB0byBleHBlY3QgdGhlIFZCVCB0byBiZSBhbGlnbmVkLgo+IFRoaXMgSSB3b3VsZCBi
ZSB0aGUgc2ltcGxlc3Qgd2F5IHRvIGNoYW5nZSBpdCwgYnV0IEknbSBub3QgZm9uZCBvbgo+IGNo
YW5naW5nIHRoaXMgYW5kIGJyZWFraW5nIG9sZCBzeXN0ZW1zIHVzaW4gaXQuLi4gYW55d2F5LCB3
ZSBjYW4gZ2l2ZSBpdAo+IGEgdHJ5IGFuZCByZXZlcnQgaWYgaXQgYnJlYWtzLgoKVGhlIGN1cnJl
bnQgY29kZSBhbHJlYWR5IGFzc3VtZXMgNCBieXRlIGFsaWdubWVudC4gU28gbm90aGluZyB3b3Vs
ZApjaGFuZ2UgYW5kIHNvIG5vdGhpbmcgY2FuIGdldCBicm9rZW4uCgotLSAKVmlsbGUgU3lyasOk
bMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
