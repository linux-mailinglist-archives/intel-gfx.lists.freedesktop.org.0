Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32B910FDF8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 13:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AEA56E49B;
	Tue,  3 Dec 2019 12:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047526E49B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 12:47:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 04:47:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="222809689"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 03 Dec 2019 04:47:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Dec 2019 14:47:07 +0200
Date: Tue, 3 Dec 2019 14:47:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191203124707.GL1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-3-jose.souza@intel.com>
 <20191126200553.GG1208@intel.com>
 <a123c1a4b41c23a3dcc1caf293a85c15de27dacb.camel@intel.com>
 <20191127195939.GO1208@intel.com>
 <72b17babbf755de61f3f6a1170c6fcd7fa646786.camel@intel.com>
 <20191128120649.GS1208@intel.com>
 <58e7e51346d894fed206ad7a0ddd1cf25642eb29.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58e7e51346d894fed206ad7a0ddd1cf25642eb29.camel@intel.com>
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

T24gTW9uLCBEZWMgMDIsIDIwMTkgYXQgMTA6MDM6MzhQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVGh1LCAyMDE5LTExLTI4IGF0IDE0OjA2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6Cj4gPiBPbiBUaHUsIE5vdiAyOCwgMjAxOSBhdCAwMToxNDozN0FNICswMDAwLCBTb3V6
YSwgSm9zZSB3cm90ZToKPiA+ID4gT24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjU5ICswMjAwLCBW
aWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDg6
MzA6MzFQTSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIDIwMTkt
MTEtMjYgYXQgMjI6MDUgKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gPiA+ID4g
T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6NTQ6NTVQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZQo+ID4gPiA+ID4gPiBTb3V6YQo+ID4gPiA+ID4gPiB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiBU
R0wgdGhlIGJsZW5kaW5nIG9mIGFsbCB0aGUgc3RyZWFtcyBoYXZlIG1vdmVkIGZyb20gRERJCj4g
PiA+ID4gPiA+ID4gdG8KPiA+ID4gPiA+ID4gPiB0cmFuc2NvZGVyLCBzbyBub3cgZXZlcnkgdHJh
bnNjb2RlciB3b3JraW5nIG92ZXIgdGhlIHNhbWUKPiA+ID4gPiA+ID4gPiBNU1QKPiA+ID4gPiA+
ID4gPiBwb3J0Cj4gPiA+ID4gPiA+ID4gbXVzdAo+ID4gPiA+ID4gPiA+IHNlbmQgaXRzIHN0cmVh
bSB0byBhIG1hc3RlciB0cmFuc2NvZGVyIGFuZCBtYXN0ZXIgd2lsbCBzZW5kCj4gPiA+ID4gPiA+
ID4gdG8KPiA+ID4gPiA+ID4gPiBEREkKPiA+ID4gPiA+ID4gPiByZXNwZWN0aW5nIHRoZSB0aW1l
IHNsb3RzLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEEgcHJldmlvdXMgYXBwcm9hY2gg
d2FzIHVzaW5nIHRoZSBsb3dlc3QgcGlwZS90cmFuc2NvZGVyIGFzCj4gPiA+ID4gPiA+ID4gbWFz
dGVyCj4gPiA+ID4gPiA+ID4gdHJhbnNjb2RlciBidXQgYXMgdGhlIGNvbW1lbnQgaW4KPiA+ID4g
PiA+ID4gPiBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcygpCj4gPiA+ID4gPiA+ID4gc3RhdGVz
LAo+ID4gPiA+ID4gPiA+IHRoYXQgaXMgbm90IGFsd2F5cyB0cnVlLgo+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+IFNvIGhlcmUgcHJvbW90aW5nIHRoZSBmaXJzdCBwaXBlL3RyYW5zY29kZXIg
b2YgdGhlIHN0cmVhbQo+ID4gPiA+ID4gPiA+IGFzCj4gPiA+ID4gPiA+ID4gbWFzdGVyLgo+ID4g
PiA+ID4gPiA+IFRoYXQgY2F1c2VkIHNldmVyYWwgb3RoZXIgcHJvYmxlbXMgYXMgZHVyaW5nIHRo
ZSBjb21taXQKPiA+ID4gPiA+ID4gPiBwaGFzZQo+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4g
PiA+IHN0YXRlIGNvbXB1dGVkIHNob3VsZCBub3QgYmUgY2hhbmdlZC4KPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiBTbyB0aGUgbWFzdGVyIHRyYW5zY29kZXIgaXMgc3RvcmUgaW50byBpbnRl
bF9kcCBhbmQgdGhlCj4gPiA+ID4gPiA+ID4gbW9kZXNldAo+ID4gPiA+ID4gPiA+IGluCj4gPiA+
ID4gPiA+ID4gc2xhdmUgcGlwZXMvdHJhbnNjb2RlcnMgaXMgZm9yY2VkIHVzaW5nCj4gPiA+ID4g
PiA+ID4gbXN0X21hc3Rlcl90cmFuc19wZW5kaW5nLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+IHYyOgo+ID4gPiA+ID4gPiA+IC0gYWRkZWQgbWlzc2luZyBjb25maWcgY29tcHV0ZSB0byB0
cmlnZ2VyIGZ1bGxtb2Rlc2V0IGluCj4gPiA+ID4gPiA+ID4gc2xhdmUKPiA+ID4gPiA+ID4gPiB0
cmFuc2NvZGVycwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEJTcGVjOiA1MDQ5Mwo+ID4g
PiA+ID4gPiA+IEJTcGVjOiA0OTE5MAo+ID4gPiA+ID4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+ID4gPiA+IENjOiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+ID4gPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+
ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICAgIHwgIDEwICstCj4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA1OAo+ID4gPiA+ID4gPiA+ICsrKysr
Ky0KPiA+ID4gPiA+ID4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgICAzICsKPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jICAgICAgIHwgICAxICsKPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgIHwgMTQ5Cj4gPiA+ID4gPiA+ID4gKysrKysr
KysrKysrKysrKystCj4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmggICB8ICAgMiArCj4gPiA+ID4gPiA+ID4gIDYgZmlsZXMgY2hhbmdlZCwg
MjE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKPiA+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKPiA+ID4gPiA+ID4gPiBpbmRleCBhOTc2NjA2ZDIxYzcuLmQyZjBkMzkzZDNlZSAxMDA2NDQK
PiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwo+ID4gPiA+ID4gPiA+IEBAIC0zNSw2ICszNSw3IEBACj4gPiA+ID4gPiA+ID4gICNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gPiA+ID4gPiA+ID4gICNpbmNsdWRlICJp
bnRlbF9kcC5oIgo+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5oIgo+ID4gPiA+ID4gPiA+ICsjaW5jbHVkZSAiaW50ZWxfZHBfbXN0LmgiCj4gPiA+ID4gPiA+
ID4gICNpbmNsdWRlICJpbnRlbF9kcGlvX3BoeS5oIgo+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSAi
aW50ZWxfZHNpLmgiCj4gPiA+ID4gPiA+ID4gICNpbmNsdWRlICJpbnRlbF9maWZvX3VuZGVycnVu
LmgiCj4gPiA+ID4gPiA+ID4gQEAgLTE5MDMsOCArMTkwNCwxMyBAQAo+ID4gPiA+ID4gPiA+IGlu
dGVsX2RkaV90cmFuc2NvZGVyX2Z1bmNfcmVnX3ZhbF9nZXQoY29uc3QKPiA+ID4gPiA+ID4gPiBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4gPiA+ID4gPiAgCQl0ZW1w
IHw9IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EUF9NU1Q7Cj4gPiA+ID4gPiA+ID4gIAkJdGVtcCB8
PSBERElfUE9SVF9XSURUSChjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsKPiA+ID4gPiA+ID4gPiAg
Cj4gPiA+ID4gPiA+ID4gLQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gPiA+ID4g
PiA+ID4gLQkJCXRlbXAgfD0KPiA+ID4gPiA+ID4gPiBUUkFOU19ERElfTVNUX1RSQU5TUE9SVF9T
RUxFQ1QoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwo+ID4gPiA+ID4gPiA+ICsJCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4gPiA+ID4gPiA+ID4gKwkJCWVudW0gdHJhbnNj
b2RlciBtYXN0ZXI7Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsJCQltYXN0ZXIgPQo+
ID4gPiA+ID4gPiA+IGludGVsX2RwX21zdF9tYXN0ZXJfdHJhbnNfZ2V0KGVuY29kZXIpOwo+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gV2h5IGlzbid0IHRoYXQganVzdCBzdG9yZWQgaW4gdGhlIGNy
dGMgc3RhdGUgbGlrZSBldmVyeXRoaW5nCj4gPiA+ID4gPiA+IGVsc2U/Cj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiBJJ20gdGhpbmtpbmcgd2Ugc2hvdWxkIG1heWJlIGRvIGl0IGp1c3QgbGlrZSBw
b3J0IHN5bmMgYW5kCj4gPiA+ID4gPiA+IGhhdmUKPiA+ID4gPiA+ID4gYm90aAo+ID4gPiA+ID4g
PiBtYXN0ZXIgKyBzbGF2ZV9tYXNrLiBUaGF0IHdheSBpdCBzaG91bGQgYmUgcHJldHR5IHRyaXZp
YWwgdG8KPiA+ID4gPiA+ID4gYWRkCj4gPiA+ID4gPiA+IGFsbAo+ID4gPiA+ID4gPiB0aGUgcmVs
ZXZhbnQgY3J0Y3MgdG8gdGhlIHN0YXRlIHdoZW4gbmVlZGVkLgo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBJIGd1ZXNzIHBvcnQgc3luYyBpcyBub3QgZG9pbmcgdGhlIHJpZ2h0IHRoaW5nIGFuZCBpdCBj
b3VsZAo+ID4gPiA+ID4gY2F1c2UKPiA+ID4gPiA+IHVuZGVycnVucy4KPiA+ID4gPiA+IFdoZW4g
aXQgaXMgZ29pbmcgdG8gZW5hYmxlIHRoZSBtYXN0ZXIgQ1JUQyBvZiB0aGUgcG9ydCBzeW5jIGl0
Cj4gPiA+ID4gPiBmb3JjaWJseQo+ID4gPiA+ID4gZW5hYmxlcyB0aGUgc2xhdmUgZmlyc3QsIHdo
YXQgY291bGQgY2F1c2UgdW5kZXJydW5zIGJlY2F1c2Ugb2YKPiA+ID4gPiA+IG92ZXJsYXAKPiA+
ID4gPiA+IGluIGRkYiBhbGxvY2F0aW9ucyh0aGF0IGlzIHdoYXQgSSB1bmRlcnN0b29kIGZyb20g
dGhlIGNvbW1lbnQKPiA+ID4gPiA+IGluCj4gPiA+ID4gPiBza2xfY29tbWl0X21vZGVzZXRfZW5h
YmxlcygpKS4KPiA+ID4gPiAKPiA+ID4gPiBOb3QgbmVjZXNzYXJpbHkganVzdCB1bmRlcnJ1bnMg
YnV0IGV2ZW4gYSBzeXN0ZW0gaGFuZy4gVGhlIGZpeAo+ID4gPiA+IHNob3VsZAo+ID4gPiA+IGJl
Cj4gPiA+ID4gYSB0cml2aWFsICJjaGVjayB0aGUgc2xhdmUgZm9yIGRkYiBvdmVybGFwIGFzIHdl
bGwiLCBidXQKPiA+ID4gPiBhcHBhcmVudGx5IEkKPiA+ID4gPiBmYWlsZWQgYXQgY29udmljaW5n
IHBlb3BsZSB0byBkbyB0aGF0Lgo+ID4gPiA+IAo+ID4gPiA+IEkndmUgYWN0dWFsbHkgYmVlbiBw
b25kZXJpbmcgYWJvdXQgZGVjb3VwbGluZyB0aGUgcGxhbmUgdXBkYXRlcwo+ID4gPiA+IGZyb20K
PiA+ID4gPiB0aGUgY3J0YyBlbmFibGUgc3R1ZmYgZW50aXJlbHkuIEF0IGxlYXN0IHRoZW9yZXRp
Y2FsbHkgY3J0Ywo+ID4gPiA+IGVuYWJsZQo+ID4gPiA+IHNob3VsZCBiZSBhYmxlIHRvIGV4Y3V0
ZSBpbiBhbnkgb3JkZXIgYXMgbG9uZyB3ZSBkb24ndCBlbmFibGUgYW55Cj4gPiA+ID4gbmV3IHBs
YW5lcy4KPiA+ID4gPiAKPiA+ID4gPiBCdXQgbm9uZSBvZiB0aGF0IHJlYWxseSBtYXR0ZXJzIGZv
ciB0aGUgZGlzY3Vzc2lvbiBhdCBoYW5kLgo+ID4gPiA+IFRob3VnaAo+ID4gPiA+IHRoZXJlIGFy
ZSBvdGhlciBwcm9ibGVtcyB3aXRoIHRoZSBwb3J0IHN5bmMgc3R1ZmYgdGhhdCB3b3VsZCBuZWVk
Cj4gPiA+ID4gdG8gYmUgaGFuZGxlZCBiZXR0ZXIuIEVnLiBJIHRoaW5rIGl0IG5vdyBhZGRzIGJv
dGggY3J0Y3MgdG8gdGhlCj4gPiA+ID4gc3RhdGUKPiA+ID4gPiBhbHdheXMgd2hpY2ggaXMgZ29p
bmcgdG8gY3V0IHRoZSBmcHMgaW4gaGFsZi4gQWxzbyB0aGUgcGxhY2UKPiA+ID4gPiB3aGVyZQo+
ID4gPiA+IGl0IGRvZXMgdGhhdCBzdHVmZiBpcyByYXRoZXIgc3VzcGljaW91cy4gQWxsIHRoYXQg
c3R1ZmYgc2hvdWxkIGJlCj4gPiA+ID4gc29tZXdoZXJlIGEgYml0IGhpZ2hlciB1cCBJTU8uCj4g
PiA+ID4gCj4gPiA+ID4gPiBTbyBmb3IgTVNUIHdlIG9ubHkga25vdyB3aG8gaXMgdGhlIG1hc3Rl
ciBpbiB0aGUgY29tbWl0IHBoYXNlCj4gPiA+ID4gPiBhbmQKPiA+ID4gPiA+IGF0Cj4gPiA+ID4g
PiB0aGlzIHBvaW50IHdlIHNob3VsZCBub3QgbW9kaWZ5IHRoZSBjb21wdXRlZCBzdGF0ZS4KPiA+
ID4gPiAKPiA+ID4gPiBJJ20gbm90IHN1Z2dlc3RpbmcgbW9kaWZ5aW5nIGFueXRoaW5nIGR1cmlu
ZyBjb21taXQgcGhhc2UuIEkKPiA+ID4gPiB0aGluawo+ID4gPiA+IHlvdSBhcmUgZWZmZWN0aWVs
eSBkb2luZyB0aGF0IHJpZ2h0IG5vdyBieSBzdHVmZmluZyB0aGF0IG1zdAo+ID4gPiA+IG1hc3Rl
cgo+ID4gPiA+IHRyYW5zY29kZXIgaW50byBpbnRlbF9kcC4KPiA+ID4gCj4gPiA+IFNvcnJ5LCBJ
IHN0aWxsIGRvbid0IGdldCB3aGF0IGFwcHJvYWNoIGFyZSB5b3Ugc3VnZ2VzdGluZyBoZXJlLgo+
ID4gPiAKPiA+ID4gSWYgd2UgY2FuJ3QgbW9kaWZ5IHRoZSBzdGF0ZSBpbiB0aGUgY29tbWl0IHBo
YXNlLCBhZGRpbmcKPiA+ID4gbXN0X21hc3Rlcl90cmFuc2NvZGVyIGluIHRoZSBDUlRDIHN0YXRl
IHdpbGwgbm90IGJlIHBvc3NpYmxlIHdoaWxlCj4gPiA+IHJlc3BlY3RpbmcgdGhlIG9yZGVyIGlt
cG9zZWQgYnkgZGRiIGFsbG9jYXRpb25zLgo+ID4gCj4gPiBUaGUgZGRiIGFsbG9jYXRpb24gb3Jk
ZXJpbmcgb25seSBjb21lcyBpbnRvIHBsYXkgd2hlbiB0aGVyZSBhcmUKPiA+IGFscmVhZHkgYWN0
aXZlIHBpcGVzLiBJdCBzaG91bGQgYWx3YXlzIGJlIHBvc3NpYmxlIHRvIG5vdCBlbmFibGUKPiA+
IHRoZSBzbGF2ZXMgdW50aWwgdGhlIG1hc3RlciBoYXMgYmVlbiBzaHVmZmxlZCBpbnRvIHBsYWNl
IGluIHRoZSAKPiA+IGRkYiBhbmQgZW5hYmxlZC4KPiAKPiBUaGlzIHNvdW5kcyBjb250cmFkaWN0
b3J5IHRvIHdoYXQgeW91IGFuc3dlcmVkIGhlcmU6IAo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL2FyY2hpdmVzL2ludGVsLWdmeC8yMDE5LU5vdmVtYmVyLzIyMTYwOC5odG1sCj4gCj4g
V2lsbCBuZWVkIHRvIHNvbWUgdGVzdGluZyB0byBnZXQgdGhlIHN0ZXBzIGJ1dCBJIHdhcyBhYmxl
IGNvbnNpc3RlbnQgdG8KPiBnZXQgdG8gc3RhdGUgd2VyZSBkb2luZyBhIGZ1bGwgbW9kZXNldCBp
biBwaXBlIEEobXN0IG1hc3RlcikgY2F1c2VkIHRoZQo+IHBpcGUgQihtc3Qgc2xhdmUpIHRvIGVu
YWJsZWQgZmlyc3QgYmVjYXVzZSBvZiB0aGUgZGRiIGFsbG9jYXRpb25zLgo+IAo+IFNvIGNhbiBJ
IG9yIG5vdCBkbyBzb21ldGhpbmcgbGlrZSBwb3J0IHN5bmMgZG9lcz8gQW5kIGZvcmNlIHRoZSBl
bmFibGUKPiBvZiBtYXN0ZXIgYmVmb3JlIHRoZSBzbGF2ZXM/IElmIHBvc3NpYmxlLCB0aGUgY29t
bWVudCBpbgo+IHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKCkgd2lsbCBuZWVkIHNvbWUgY2hh
bmdlcy4KCkkgc3VzcGVjdCBmb3IgdGhlIG1zdCBzdHVmZiB3ZSBzaG91bGQgZG86Cgp3aGlsZV9k
aXJ0eV9tc3RfbWFzdGVycygpIHsKCWlmICghZGRiX292ZXJsYXApCgkJZW5hYmxlKCk7Cn0Kd2hp
bGVfZGlydHlfbXN0X3NsYXZlcygpIHsKCWlmICghZGRiX292ZXJsYXApCgkJZW5hYmxlKCk7Cn0K
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
