Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A47112993
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 11:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAEA66E0F5;
	Wed,  4 Dec 2019 10:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF68D6E0F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 10:55:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 02:55:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,277,1571727600"; d="scan'208";a="242800242"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Dec 2019 02:55:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Dec 2019 12:55:10 +0200
Date: Wed, 4 Dec 2019 12:55:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191204105510.GX1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-3-jose.souza@intel.com>
 <20191126200553.GG1208@intel.com>
 <a123c1a4b41c23a3dcc1caf293a85c15de27dacb.camel@intel.com>
 <20191127195939.GO1208@intel.com>
 <72b17babbf755de61f3f6a1170c6fcd7fa646786.camel@intel.com>
 <20191128120649.GS1208@intel.com>
 <58e7e51346d894fed206ad7a0ddd1cf25642eb29.camel@intel.com>
 <20191203124707.GL1208@intel.com>
 <95b18888b466e9b9c0ceca2c32934301dc1374da.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95b18888b466e9b9c0ceca2c32934301dc1374da.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/tgl: Select master trasconder
 for MST stream
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBEZWMgMDMsIDIwMTkgYXQgMTA6MTI6NDdQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTEyLTAzIGF0IDE0OjQ3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6Cj4gPiBPbiBNb24sIERlYyAwMiwgMjAxOSBhdCAxMDowMzozOFBNICswMDAwLCBTb3V6
YSwgSm9zZSB3cm90ZToKPiA+ID4gT24gVGh1LCAyMDE5LTExLTI4IGF0IDE0OjA2ICswMjAwLCBW
aWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gT24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMDE6
MTQ6MzdBTSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4gPiA+ID4gPiBPbiBXZWQsIDIwMTkt
MTEtMjcgYXQgMjE6NTkgKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gPiA+ID4g
T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDg6MzA6MzFQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gPiA+ID4gPiA+ID4gT24gVHVlLCAyMDE5LTExLTI2IGF0IDIyOjA1ICswMjAwLCBWaWxs
ZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPbiBGcmksIE5vdiAyMiwgMjAxOSBh
dCAwNDo1NDo1NVBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlCj4gPiA+ID4gPiA+ID4gPiBTb3V6
YQo+ID4gPiA+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIFRHTCB0aGUgYmxl
bmRpbmcgb2YgYWxsIHRoZSBzdHJlYW1zIGhhdmUgbW92ZWQgZnJvbQo+ID4gPiA+ID4gPiA+ID4g
PiBEREkKPiA+ID4gPiA+ID4gPiA+ID4gdG8KPiA+ID4gPiA+ID4gPiA+ID4gdHJhbnNjb2Rlciwg
c28gbm93IGV2ZXJ5IHRyYW5zY29kZXIgd29ya2luZyBvdmVyIHRoZQo+ID4gPiA+ID4gPiA+ID4g
PiBzYW1lCj4gPiA+ID4gPiA+ID4gPiA+IE1TVAo+ID4gPiA+ID4gPiA+ID4gPiBwb3J0Cj4gPiA+
ID4gPiA+ID4gPiA+IG11c3QKPiA+ID4gPiA+ID4gPiA+ID4gc2VuZCBpdHMgc3RyZWFtIHRvIGEg
bWFzdGVyIHRyYW5zY29kZXIgYW5kIG1hc3RlciB3aWxsCj4gPiA+ID4gPiA+ID4gPiA+IHNlbmQK
PiA+ID4gPiA+ID4gPiA+ID4gdG8KPiA+ID4gPiA+ID4gPiA+ID4gRERJCj4gPiA+ID4gPiA+ID4g
PiA+IHJlc3BlY3RpbmcgdGhlIHRpbWUgc2xvdHMuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiA+ID4gPiBBIHByZXZpb3VzIGFwcHJvYWNoIHdhcyB1c2luZyB0aGUgbG93ZXN0Cj4gPiA+
ID4gPiA+ID4gPiA+IHBpcGUvdHJhbnNjb2RlciBhcwo+ID4gPiA+ID4gPiA+ID4gPiBtYXN0ZXIK
PiA+ID4gPiA+ID4gPiA+ID4gdHJhbnNjb2RlciBidXQgYXMgdGhlIGNvbW1lbnQgaW4KPiA+ID4g
PiA+ID4gPiA+ID4gc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKQo+ID4gPiA+ID4gPiA+ID4g
PiBzdGF0ZXMsCj4gPiA+ID4gPiA+ID4gPiA+IHRoYXQgaXMgbm90IGFsd2F5cyB0cnVlLgo+ID4g
PiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gU28gaGVyZSBwcm9tb3RpbmcgdGhlIGZp
cnN0IHBpcGUvdHJhbnNjb2RlciBvZiB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gc3RyZWFtCj4gPiA+
ID4gPiA+ID4gPiA+IGFzCj4gPiA+ID4gPiA+ID4gPiA+IG1hc3Rlci4KPiA+ID4gPiA+ID4gPiA+
ID4gVGhhdCBjYXVzZWQgc2V2ZXJhbCBvdGhlciBwcm9ibGVtcyBhcyBkdXJpbmcgdGhlIGNvbW1p
dAo+ID4gPiA+ID4gPiA+ID4gPiBwaGFzZQo+ID4gPiA+ID4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+
ID4gPiA+ID4gc3RhdGUgY29tcHV0ZWQgc2hvdWxkIG5vdCBiZSBjaGFuZ2VkLgo+ID4gPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gU28gdGhlIG1hc3RlciB0cmFuc2NvZGVyIGlzIHN0
b3JlIGludG8gaW50ZWxfZHAgYW5kIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiBtb2Rlc2V0Cj4gPiA+
ID4gPiA+ID4gPiA+IGluCj4gPiA+ID4gPiA+ID4gPiA+IHNsYXZlIHBpcGVzL3RyYW5zY29kZXJz
IGlzIGZvcmNlZCB1c2luZwo+ID4gPiA+ID4gPiA+ID4gPiBtc3RfbWFzdGVyX3RyYW5zX3BlbmRp
bmcuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiB2MjoKPiA+ID4gPiA+ID4g
PiA+ID4gLSBhZGRlZCBtaXNzaW5nIGNvbmZpZyBjb21wdXRlIHRvIHRyaWdnZXIgZnVsbG1vZGVz
ZXQKPiA+ID4gPiA+ID4gPiA+ID4gaW4KPiA+ID4gPiA+ID4gPiA+ID4gc2xhdmUKPiA+ID4gPiA+
ID4gPiA+ID4gdHJhbnNjb2RlcnMKPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+
IEJTcGVjOiA1MDQ5Mwo+ID4gPiA+ID4gPiA+ID4gPiBCU3BlYzogNDkxOTAKPiA+ID4gPiA+ID4g
PiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gPiA+ID4gPiA+ID4gPiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPiA+ID4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8Cj4gPiA+ID4gPiA+ID4gPiA+IGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gPiA+
ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICAxMCArLQo+ID4gPiA+ID4gPiA+ID4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDU4Cj4gPiA+ID4gPiA+
ID4gPiA+ICsrKysrKy0KPiA+ID4gPiA+ID4gPiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArCj4gPiA+ID4gPiA+ID4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgIDEgKwo+ID4gPiA+ID4g
PiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgIHwg
MTQ5Cj4gPiA+ID4gPiA+ID4gPiA+ICsrKysrKysrKysrKysrKysrLQo+ID4gPiA+ID4gPiA+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuaCAgIHwgICAyICsK
PiA+ID4gPiA+ID4gPiA+ID4gIDYgZmlsZXMgY2hhbmdlZCwgMjE2IGluc2VydGlvbnMoKyksIDcg
ZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gPiA+ID4g
PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ID4g
PiA+ID4gPiA+ID4gaW5kZXggYTk3NjYwNmQyMWM3Li5kMmYwZDM5M2QzZWUgMTAwNjQ0Cj4gPiA+
ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKPiA+ID4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMzUsNiArMzUsNyBAQAo+ID4gPiA+ID4g
PiA+ID4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiA+ID4gPiA+ID4gPiA+
ID4gICNpbmNsdWRlICJpbnRlbF9kcC5oIgo+ID4gPiA+ID4gPiA+ID4gPiAgI2luY2x1ZGUgImlu
dGVsX2RwX2xpbmtfdHJhaW5pbmcuaCIKPiA+ID4gPiA+ID4gPiA+ID4gKyNpbmNsdWRlICJpbnRl
bF9kcF9tc3QuaCIKPiA+ID4gPiA+ID4gPiA+ID4gICNpbmNsdWRlICJpbnRlbF9kcGlvX3BoeS5o
Igo+ID4gPiA+ID4gPiA+ID4gPiAgI2luY2x1ZGUgImludGVsX2RzaS5oIgo+ID4gPiA+ID4gPiA+
ID4gPiAgI2luY2x1ZGUgImludGVsX2ZpZm9fdW5kZXJydW4uaCIKPiA+ID4gPiA+ID4gPiA+ID4g
QEAgLTE5MDMsOCArMTkwNCwxMyBAQAo+ID4gPiA+ID4gPiA+ID4gPiBpbnRlbF9kZGlfdHJhbnNj
b2Rlcl9mdW5jX3JlZ192YWxfZ2V0KGNvbnN0Cj4gPiA+ID4gPiA+ID4gPiA+IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ID4gPiA+ID4gPiA+ID4gPiAgCQl0ZW1wIHw9IFRS
QU5TX0RESV9NT0RFX1NFTEVDVF9EUF9NU1Q7Cj4gPiA+ID4gPiA+ID4gPiA+ICAJCXRlbXAgfD0g
RERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0KPiA+ID4gPiA+ID4gPiA+ID4gPmxhbmVfY291bnQp
Owo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+IC0JCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKQo+ID4gPiA+ID4gPiA+ID4gPiAtCQkJdGVtcCB8PQo+ID4gPiA+ID4g
PiA+ID4gPiBUUkFOU19ERElfTVNUX1RSQU5TUE9SVF9TRUxFQ1QoY3J0Y19zdGF0ZS0KPiA+ID4g
PiA+ID4gPiA+ID4gPmNwdV90cmFuc2NvZGVyKTsKPiA+ID4gPiA+ID4gPiA+ID4gKwkJaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPiA+ID4gPiA+ID4gPiA+ID4gKwkJCWVudW0gdHJh
bnNjb2RlciBtYXN0ZXI7Cj4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gKwkJ
CW1hc3RlciA9Cj4gPiA+ID4gPiA+ID4gPiA+IGludGVsX2RwX21zdF9tYXN0ZXJfdHJhbnNfZ2V0
KGVuY29kZXIpOwo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBXaHkgaXNuJ3QgdGhh
dCBqdXN0IHN0b3JlZCBpbiB0aGUgY3J0YyBzdGF0ZSBsaWtlCj4gPiA+ID4gPiA+ID4gPiBldmVy
eXRoaW5nCj4gPiA+ID4gPiA+ID4gPiBlbHNlPwo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gPiBJJ20gdGhpbmtpbmcgd2Ugc2hvdWxkIG1heWJlIGRvIGl0IGp1c3QgbGlrZSBwb3J0IHN5
bmMKPiA+ID4gPiA+ID4gPiA+IGFuZAo+ID4gPiA+ID4gPiA+ID4gaGF2ZQo+ID4gPiA+ID4gPiA+
ID4gYm90aAo+ID4gPiA+ID4gPiA+ID4gbWFzdGVyICsgc2xhdmVfbWFzay4gVGhhdCB3YXkgaXQg
c2hvdWxkIGJlIHByZXR0eSB0cml2aWFsCj4gPiA+ID4gPiA+ID4gPiB0bwo+ID4gPiA+ID4gPiA+
ID4gYWRkCj4gPiA+ID4gPiA+ID4gPiBhbGwKPiA+ID4gPiA+ID4gPiA+IHRoZSByZWxldmFudCBj
cnRjcyB0byB0aGUgc3RhdGUgd2hlbiBuZWVkZWQuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gSSBndWVzcyBwb3J0IHN5bmMgaXMgbm90IGRvaW5nIHRoZSByaWdodCB0aGluZyBhbmQgaXQg
Y291bGQKPiA+ID4gPiA+ID4gPiBjYXVzZQo+ID4gPiA+ID4gPiA+IHVuZGVycnVucy4KPiA+ID4g
PiA+ID4gPiBXaGVuIGl0IGlzIGdvaW5nIHRvIGVuYWJsZSB0aGUgbWFzdGVyIENSVEMgb2YgdGhl
IHBvcnQgc3luYwo+ID4gPiA+ID4gPiA+IGl0Cj4gPiA+ID4gPiA+ID4gZm9yY2libHkKPiA+ID4g
PiA+ID4gPiBlbmFibGVzIHRoZSBzbGF2ZSBmaXJzdCwgd2hhdCBjb3VsZCBjYXVzZSB1bmRlcnJ1
bnMgYmVjYXVzZQo+ID4gPiA+ID4gPiA+IG9mCj4gPiA+ID4gPiA+ID4gb3ZlcmxhcAo+ID4gPiA+
ID4gPiA+IGluIGRkYiBhbGxvY2F0aW9ucyh0aGF0IGlzIHdoYXQgSSB1bmRlcnN0b29kIGZyb20g
dGhlCj4gPiA+ID4gPiA+ID4gY29tbWVudAo+ID4gPiA+ID4gPiA+IGluCj4gPiA+ID4gPiA+ID4g
c2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKSkuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBO
b3QgbmVjZXNzYXJpbHkganVzdCB1bmRlcnJ1bnMgYnV0IGV2ZW4gYSBzeXN0ZW0gaGFuZy4gVGhl
Cj4gPiA+ID4gPiA+IGZpeAo+ID4gPiA+ID4gPiBzaG91bGQKPiA+ID4gPiA+ID4gYmUKPiA+ID4g
PiA+ID4gYSB0cml2aWFsICJjaGVjayB0aGUgc2xhdmUgZm9yIGRkYiBvdmVybGFwIGFzIHdlbGwi
LCBidXQKPiA+ID4gPiA+ID4gYXBwYXJlbnRseSBJCj4gPiA+ID4gPiA+IGZhaWxlZCBhdCBjb252
aWNpbmcgcGVvcGxlIHRvIGRvIHRoYXQuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJJ3ZlIGFj
dHVhbGx5IGJlZW4gcG9uZGVyaW5nIGFib3V0IGRlY291cGxpbmcgdGhlIHBsYW5lCj4gPiA+ID4g
PiA+IHVwZGF0ZXMKPiA+ID4gPiA+ID4gZnJvbQo+ID4gPiA+ID4gPiB0aGUgY3J0YyBlbmFibGUg
c3R1ZmYgZW50aXJlbHkuIEF0IGxlYXN0IHRoZW9yZXRpY2FsbHkgY3J0Ywo+ID4gPiA+ID4gPiBl
bmFibGUKPiA+ID4gPiA+ID4gc2hvdWxkIGJlIGFibGUgdG8gZXhjdXRlIGluIGFueSBvcmRlciBh
cyBsb25nIHdlIGRvbid0IGVuYWJsZQo+ID4gPiA+ID4gPiBhbnkKPiA+ID4gPiA+ID4gbmV3IHBs
YW5lcy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEJ1dCBub25lIG9mIHRoYXQgcmVhbGx5IG1h
dHRlcnMgZm9yIHRoZSBkaXNjdXNzaW9uIGF0IGhhbmQuCj4gPiA+ID4gPiA+IFRob3VnaAo+ID4g
PiA+ID4gPiB0aGVyZSBhcmUgb3RoZXIgcHJvYmxlbXMgd2l0aCB0aGUgcG9ydCBzeW5jIHN0dWZm
IHRoYXQgd291bGQKPiA+ID4gPiA+ID4gbmVlZAo+ID4gPiA+ID4gPiB0byBiZSBoYW5kbGVkIGJl
dHRlci4gRWcuIEkgdGhpbmsgaXQgbm93IGFkZHMgYm90aCBjcnRjcyB0bwo+ID4gPiA+ID4gPiB0
aGUKPiA+ID4gPiA+ID4gc3RhdGUKPiA+ID4gPiA+ID4gYWx3YXlzIHdoaWNoIGlzIGdvaW5nIHRv
IGN1dCB0aGUgZnBzIGluIGhhbGYuIEFsc28gdGhlIHBsYWNlCj4gPiA+ID4gPiA+IHdoZXJlCj4g
PiA+ID4gPiA+IGl0IGRvZXMgdGhhdCBzdHVmZiBpcyByYXRoZXIgc3VzcGljaW91cy4gQWxsIHRo
YXQgc3R1ZmYKPiA+ID4gPiA+ID4gc2hvdWxkIGJlCj4gPiA+ID4gPiA+IHNvbWV3aGVyZSBhIGJp
dCBoaWdoZXIgdXAgSU1PLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBTbyBmb3IgTVNUIHdl
IG9ubHkga25vdyB3aG8gaXMgdGhlIG1hc3RlciBpbiB0aGUgY29tbWl0Cj4gPiA+ID4gPiA+ID4g
cGhhc2UKPiA+ID4gPiA+ID4gPiBhbmQKPiA+ID4gPiA+ID4gPiBhdAo+ID4gPiA+ID4gPiA+IHRo
aXMgcG9pbnQgd2Ugc2hvdWxkIG5vdCBtb2RpZnkgdGhlIGNvbXB1dGVkIHN0YXRlLgo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gSSdtIG5vdCBzdWdnZXN0aW5nIG1vZGlmeWluZyBhbnl0aGluZyBk
dXJpbmcgY29tbWl0IHBoYXNlLiBJCj4gPiA+ID4gPiA+IHRoaW5rCj4gPiA+ID4gPiA+IHlvdSBh
cmUgZWZmZWN0aWVseSBkb2luZyB0aGF0IHJpZ2h0IG5vdyBieSBzdHVmZmluZyB0aGF0IG1zdAo+
ID4gPiA+ID4gPiBtYXN0ZXIKPiA+ID4gPiA+ID4gdHJhbnNjb2RlciBpbnRvIGludGVsX2RwLgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBTb3JyeSwgSSBzdGlsbCBkb24ndCBnZXQgd2hhdCBhcHByb2Fj
aCBhcmUgeW91IHN1Z2dlc3RpbmcgaGVyZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSWYgd2UgY2Fu
J3QgbW9kaWZ5IHRoZSBzdGF0ZSBpbiB0aGUgY29tbWl0IHBoYXNlLCBhZGRpbmcKPiA+ID4gPiA+
IG1zdF9tYXN0ZXJfdHJhbnNjb2RlciBpbiB0aGUgQ1JUQyBzdGF0ZSB3aWxsIG5vdCBiZSBwb3Nz
aWJsZQo+ID4gPiA+ID4gd2hpbGUKPiA+ID4gPiA+IHJlc3BlY3RpbmcgdGhlIG9yZGVyIGltcG9z
ZWQgYnkgZGRiIGFsbG9jYXRpb25zLgo+ID4gPiA+IAo+ID4gPiA+IFRoZSBkZGIgYWxsb2NhdGlv
biBvcmRlcmluZyBvbmx5IGNvbWVzIGludG8gcGxheSB3aGVuIHRoZXJlIGFyZQo+ID4gPiA+IGFs
cmVhZHkgYWN0aXZlIHBpcGVzLiBJdCBzaG91bGQgYWx3YXlzIGJlIHBvc3NpYmxlIHRvIG5vdCBl
bmFibGUKPiA+ID4gPiB0aGUgc2xhdmVzIHVudGlsIHRoZSBtYXN0ZXIgaGFzIGJlZW4gc2h1ZmZs
ZWQgaW50byBwbGFjZSBpbiB0aGUgCj4gPiA+ID4gZGRiIGFuZCBlbmFibGVkLgo+ID4gPiAKPiA+
ID4gVGhpcyBzb3VuZHMgY29udHJhZGljdG9yeSB0byB3aGF0IHlvdSBhbnN3ZXJlZCBoZXJlOiAK
PiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIw
MTktTm92ZW1iZXIvMjIxNjA4Lmh0bWwKPiA+ID4gCj4gPiA+IFdpbGwgbmVlZCB0byBzb21lIHRl
c3RpbmcgdG8gZ2V0IHRoZSBzdGVwcyBidXQgSSB3YXMgYWJsZQo+ID4gPiBjb25zaXN0ZW50IHRv
Cj4gPiA+IGdldCB0byBzdGF0ZSB3ZXJlIGRvaW5nIGEgZnVsbCBtb2Rlc2V0IGluIHBpcGUgQSht
c3QgbWFzdGVyKSBjYXVzZWQKPiA+ID4gdGhlCj4gPiA+IHBpcGUgQihtc3Qgc2xhdmUpIHRvIGVu
YWJsZWQgZmlyc3QgYmVjYXVzZSBvZiB0aGUgZGRiIGFsbG9jYXRpb25zLgo+ID4gPiAKPiA+ID4g
U28gY2FuIEkgb3Igbm90IGRvIHNvbWV0aGluZyBsaWtlIHBvcnQgc3luYyBkb2VzPyBBbmQgZm9y
Y2UgdGhlCj4gPiA+IGVuYWJsZQo+ID4gPiBvZiBtYXN0ZXIgYmVmb3JlIHRoZSBzbGF2ZXM/IElm
IHBvc3NpYmxlLCB0aGUgY29tbWVudCBpbgo+ID4gPiBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxl
cygpIHdpbGwgbmVlZCBzb21lIGNoYW5nZXMuCj4gPiAKPiA+IEkgc3VzcGVjdCBmb3IgdGhlIG1z
dCBzdHVmZiB3ZSBzaG91bGQgZG86Cj4gPiAKPiA+IHdoaWxlX2RpcnR5X21zdF9tYXN0ZXJzKCkg
ewo+ID4gCWlmICghZGRiX292ZXJsYXApCj4gPiAJCWVuYWJsZSgpOwo+ID4gfQo+ID4gd2hpbGVf
ZGlydHlfbXN0X3NsYXZlcygpIHsKPiA+IAlpZiAoIWRkYl9vdmVybGFwKQo+ID4gCQllbmFibGUo
KTsKPiA+IH0KPiAKPiBXaGF0IGFib3V0IHRoaXMgY2FzZT8KPiAKPiBQaXBlL3RyYW5zY29kZXIg
QSBhbmQgQiBpbiB0aGUgc2FtZSBNU1Qgc3RyZWFtCj4gCj4gIyBvbGQgc3RhdGUgLSBEREIgYWxs
b2NhdGlvbjogQUFCQkIKPiBtc3QgbWFzdGVyID0gdHJhbnNjb2RlciBBKGNvbXB1dGVkIGluIGF0
b21pYyBjaGVjayBwaGFzZSkKPiBlbnRyaWVzWzBdLnN0YXJ0ID0gMAo+IGVudHJpZXNbMF0uZW5k
ID0gMQo+IGVudHJpZXNbMV0uc3RhcnQgPSAyCj4gZW50cmllc1sxXS5lbmQgPSA0Cj4gCj4gIyBu
ZXcgc3RhdGUgLSBEREIgYWxsb2NhdGlvbjogQUFBQkJCCj4gbXN0IG1hc3RlciA9IHRyYW5zY29k
ZXIgQShjb21wdXRlZCBpbiBhdG9taWMgY2hlY2sgcGhhc2UpCj4gZW50cmllc1swXS5zdGFydCA9
IDAKPiBlbnRyaWVzWzBdLmVuZCA9IDIKPiBlbnRyaWVzWzFdLnN0YXJ0ID0gMwo+IGVudHJpZXNb
MV0uZW5kID0gNQo+IAo+IHdoaWxlX2RpcnR5X21zdF9tYXN0ZXJzKCkKPiAJZmlyc3QgaXRlcmF0
aW9uOiBwaXBlIEEgd2lsbCBvdmVybGFwIHdpdGggb2xkIHBpcGUgQiBEREIKClRoZXJlIHdvbid0
IGJlIGFuIG9sZCBEREIgYWxsb2NhdGlvbiBmb3IgYSBwaXBlIGlmIGl0J3MgZ29pbmcKdHJvdWdo
IGEgbW9kZXNldC4KCj4gYWxsb2NhdGlvbgo+IAlzZWNvbmQgaXRlcmF0aW9uOiBwaXBlIEIgaXMg
c2xhdmUgb2YgQQo+IAl0aGlyZCBpdGVyYXRpb246ID8KPiAKPiAKPiA+IAoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
