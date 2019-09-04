Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 353FAA856B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 16:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82028936C;
	Wed,  4 Sep 2019 14:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFEB58936C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 14:14:31 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 07:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="194745689"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 04 Sep 2019 07:14:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 17:14:27 +0300
Date: Wed, 4 Sep 2019 17:14:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190904141427.GC7482@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-4-lucas.demarchi@intel.com>
 <20190829103754.GN7482@intel.com>
 <20190903171631.GH13677@mdroper-desk.amr.corp.intel.com>
 <c57b342b3dd3567cc070660bbbe519b387f4431b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c57b342b3dd3567cc070660bbbe519b387f4431b.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 3/7] drm/i915: protect access to DP_TP_*
 on non-dp
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMDQsIDIwMTkgYXQgMTI6NDU6MzVBTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA5LTAzIGF0IDEwOjE2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gT24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDE6Mzc6NTVQTSArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOgo+ID4gPiBPbiBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwMjoyNTo1MEFNIC0w
NzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4gPiA+ID4gRFBfVFBfe0NUTCxTVEFUVVN9IHNo
b3VsZCBvbmx5IGJlIHByb2dyYW1tZWQgd2hlbiB0aGUgZW5jb2RlciBpcwo+ID4gPiA+IGludGVs
X2RwLgo+ID4gPiA+IENoZWNraW5nIGl0cyBjdXJyZW50IHVzYWdlcyBpbnRlbF9kaXNhYmxlX2Rk
aV9idWYoKSBpcyB0aGUgb25seQo+ID4gPiA+IG9mZmVuZGVyLCB3aXRoIG90aGVyIHBsYWNlcyBi
ZWluZyBwcm90ZWN0ZWQgYnkgY2hlY2tzIGxpa2UKPiA+ID4gPiBwaXBlX2NvbmZpZy0+ZmVjX2Vu
YWJsZSB0aGF0IGlzIG9ubHkgc2V0IGJ5IGludGVsX2RwLgo+ID4gPiA+IAo+ID4gPiA+IENjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIHwgMTAgKysrKysrLS0tLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPiA+ID4gaW5kZXggMzE4MGRhY2I1YmU0Li5k
ZjNlNGZlN2UzZTkgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKPiA+ID4gPiBAQCAtMzQ2MiwxMCArMzQ2MiwxMiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kaXNhYmxlX2RkaV9idWYoc3RydWN0Cj4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKPiA+ID4gPiAgCQl3YWl0ID0gdHJ1ZTsKPiA+ID4gPiAgCX0KPiA+ID4gPiAgCj4gPiA+
ID4gLQl2YWwgPSBJOTE1X1JFQUQoRFBfVFBfQ1RMKHBvcnQpKTsKPiA+ID4gPiAtCXZhbCAmPSB+
KERQX1RQX0NUTF9FTkFCTEUgfCBEUF9UUF9DVExfTElOS19UUkFJTl9NQVNLKTsKPiA+ID4gPiAt
CXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOwo+ID4gPiA+IC0JSTkxNV9XUklURShE
UF9UUF9DVEwocG9ydCksIHZhbCk7Cj4gPiA+ID4gKwlpZiAoaW50ZWxfZW5jb2Rlcl9pc19kcChl
bmNvZGVyKSkgewo+ID4gPiAKPiA+ID4gRG9lc24ndCByZWFsbHkgbWFrZSBzZW5zZSB0byBtZS4g
RWl0aGVyIHdlIGp1c3QgZG8gaXQgKGJlY2F1c2UgYQo+ID4gPiBEREkgaXMKPiA+ID4ganVzdCBh
IERESSBzbyBEUF9UUF9DVEwgZG9lcyBleGlzdCBhbHdheXMpLCBvciB3ZSBvbmx5IGRvIGl0IHdo
ZW4KPiA+ID4gZHJpdmluZwo+ID4gPiBEUCBhbmQgbm90IHdoZW4gZHJpdmluZyBIRE1JLgo+ID4g
Cj4gPiBJIGFncmVlOyBJIGRvbid0IHRoaW5rIHRoZXJlJ3MgYSBuZWVkIHRvIGF2b2lkIHByb2dy
YW0gcHJvZ3JhbW1pbmcKPiA+IHRoZQo+ID4gcmVnaXN0ZXIganVzdCBiZWNhdXNlIHdlIHdlcmVu
J3QgcHJldmlvdXNseSBpbiBEUCBtb2RlLgo+IAo+IFRoZSBwcm9ibGVtIG9mIGFsd2F5cyBwcm9n
cmFtaW5nIERQX1RQX0NUTCBjb21lcyB3aXRoIFRHTCwgd2hlbgo+IERQX1RQX0NUTCgpIG1vdmVz
IHRvIHRyYW5zY29kZXIsIHNlZSBuZXh0IHBhdGNoOiBkcm0vaTkxNS90Z2w6IG1vdmUKPiBEUF9U
UF8qIHRvIHRyYW5zY29kZXIuCj4gCj4gV2UgYXJlIGFkZGluZyBpbnRlbF9kcC0+cmVncy5kcF90
cF9jdGwgYW5kIGluaXRpYWxpemluZyh0aGlzIGlzCj4gbmVjZXNzYXJ5IGZvciBNU1QgZm9yIFNT
VCB3ZSBjb3VsZCBrZWVwIHRoZSBjdXJyZW50IGFwcHJvYWNoKSBpdCBpbiBEUAo+IHBhdGhzLCB3
ZSBjb3VsZCBtb3ZlIGl0IHRvIGludGVsX2VuY29kZXIgb3IgaW50ZWxfZGlnaXRhbF9wb3J0IGFu
ZAo+IGluaXRpYWxpemVkIGl0IGZvciBIRE1JIHRvbyBidXQgaXQgd291bGQgbm90IG1ha2UgYW55
IHNlbnNlIGZvciBzb21lb25lCj4gcmVhZGluZyBIRE1JIHNlcXVlbmNlcy4KCkknbSBub3QgMTAw
JSBzb2xkIG9uIGludGVsX2RwLT5yZWdzIHRoaW5nLiBFdmVudHVhbGx5IEknZCBsaWtlIHRvCnJl
bW92ZSBhbGwgdGhhdCBjcnVkIGZyb20gaW50ZWxfZHAgYW5kIGluc3RlYWQganVzdCBwbHVtYiB0
aGUgY3J0YwpzdGF0ZSBldmVyeXdoZXJlLiBCdXQgbGV0J3MgZ28gd2l0aCBpdCBmb3Igbm93LgoK
SG1tLiBJIGp1c3QgZ2xhbmNlZCBhdCB0aGUgbW9kZXNldCBzZXF1ZW5jZSBpbiB0aGUgc3BlYywg
YW5kIGl0IGRvZXNuJ3QKdG91Y2ggRFBfVFBfQ1RMIGZvciBIRE1JLCBzbyBJIGd1ZXNzIHdlIG1p
Z2h0IGFzIHdlbGwgZm9sbG93IHRoYXQgc2FtZQpzZXF1ZW5jZSBoZXJlIGFuZCBqdXN0IGdvIHdp
dGggaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcigpIGluc3RlYWQKb2YgaW50ZWxfZW5jb2Rlcl9p
c19kcCgpLgoKPiAKPiBBbmQgdG8gbW92ZSB0aGlzIHRvIGEgRFAgc3BlY2lmaWMgZnVuY3Rpb24g
d291bGQgZm9yY2UgdXMgdG8gY3JlYXRlCj4gYW5vdGhlciBmdW5jdGlvbiB0byBleGVjdXRlIHRo
ZSBsYXN0ICJ3YWl0IERESV9CVUZfQ1RMIHRvIGlkbGUiLgo+IAo+IEJTcGVjOiA1MzMzOSBhbmQg
MjIyNDMKPiAKPiBQZXJzb25hbGx5IEkgcHJlZmVyIHRoaXMgcGF0Y2ggc29sdXRpb24gYnV0IGxl
dCBtZSBrbm93IHlvdXIgdGhvdWdodHMKPiBhZnRlciB0aGlzIGV4cGxhbmF0aW9uLgo+IAo+ID4g
Cj4gPiBCdXQgSSBkbyBxdWVzdGlvbiB3aGV0aGVyIGEgUk1XIGlzIG5lY2Vzc2FyeTsgaXQgc2Vl
bXMgbGlrZSBqdXN0Cj4gPiB3cml0aW5nCj4gPiBhIGNvbnN0YW50IDAgdG8gdGhpcyByZWdpc3Rl
ciB3b3VsZCBiZSBzdWZmaWNpZW50IGZvciB0aGUgZGlzYWJsZQo+ID4gc2VxdWVuY2UuCj4gPiAK
PiA+IAo+ID4gTWF0dAo+ID4gCj4gPiA+IEZvciB0aGUgbGF0dGVyIEkgd291bGQgcGVyaGFwcyBz
dWdnZXN0IG1vdmluZyBhbGwgdGhpcyBleHRyYSBqdW5rCj4gPiA+IG91dAo+ID4gPiBmcm9tIGlu
dGVsX2Rpc2FibGVfZGRpX2J1ZigpIGludG8gdGhlIERQIHNwZWNpZmljIGNvZGUgcGF0aHMsCj4g
PiA+IGxlYXZpbmcKPiA+ID4ganVzdCB0aGUgYWN0dWFsIERESV9CVUZfQ1RMIGRpc2FibGUgaGVy
ZS4KPiA+ID4gCj4gPiA+ID4gKwkJdmFsID0gSTkxNV9SRUFEKERQX1RQX0NUTChwb3J0KSk7Cj4g
PiA+ID4gKwkJdmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5LX1RSQUlO
X01BU0spOwo+ID4gPiA+ICsJCXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOwo+ID4g
PiA+ICsJCUk5MTVfV1JJVEUoRFBfVFBfQ1RMKHBvcnQpLCB2YWwpOwo+ID4gPiA+ICsJfQo+ID4g
PiA+ICAKPiA+ID4gPiAgCS8qIERpc2FibGUgRkVDIGluIERQIFNpbmsgKi8KPiA+ID4gPiAgCWlu
dGVsX2RkaV9kaXNhYmxlX2ZlY19zdGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPiA+ID4gPiAt
LSAKPiA+ID4gPiAyLjIzLjAKPiA+ID4gCj4gPiA+IC0tIAo+ID4gPiBWaWxsZSBTeXJqw6Rsw6QK
PiA+ID4gSW50ZWwKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
