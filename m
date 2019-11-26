Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955FF109C00
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 11:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B386E2D7;
	Tue, 26 Nov 2019 10:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9C46E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 10:11:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 02:11:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="239875869"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2019 02:11:13 -0800
Date: Tue, 26 Nov 2019 15:40:37 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Message-ID: <20191126101037.GB16347@intel.com>
References: <20191122040226.15933-1-ramalingam.c@intel.com>
 <20191122040226.15933-2-ramalingam.c@intel.com>
 <35de6d80-6ea2-9228-efec-54ef7cc30b12@linux.intel.com>
 <157441498323.2524.12613965179682887118@skylake-alporthouse-com>
 <CAKi4VAKNfh5uriVmi6H7wev3XhwMrGrArsaqrGWHJ=qa=vZuzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VAKNfh5uriVmi6H7wev3XhwMrGrArsaqrGWHJ=qa=vZuzw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0yNiBhdCAwMTozODoyMCAtMDgwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IE9uIEZyaSwgTm92IDIyLCAyMDE5IGF0IDE6MzAgQU0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4KPiA+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIw
MTktMTEtMjIgMDk6MjE6NDUpCj4gPiA+Cj4gPiA+IE9uIDIyLzExLzIwMTkgMDQ6MDIsIFJhbWFs
aW5nYW0gQyB3cm90ZToKPiA+ID4gPiBAQCAtNTY4LDkgKzU4MSwyMiBAQCBzdGF0aWMgdm9pZCBp
Y2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
ID4gPiA+ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiA+ID4gPiAgIHsKPiA+ID4gPiArICAg
ICB1MzIgdmFsOwo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICAvKiBXYV8xNDA5MTQyMjU5OnRnbCAq
Lwo+ID4gPiA+ICAgICAgIFdBX1NFVF9CSVRfTUFTS0VEKEdFTjExX0NPTU1PTl9TTElDRV9DSElD
S0VOMywKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBHRU4xMl9ESVNBQkxFX0NQU19B
V0FSRV9DT0xPUl9QSVBFKTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgLyogV2FfMTYwNDU1NTYw
Nzp0Z2wgKi8KPiA+ID4gPiArICAgICB2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVu
Y29yZSwgRkZfTU9ERTIpOwo+ID4gPiA+ICsgICAgIHZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVS
X01BU0s7Cj4gPiA+ID4gKyAgICAgdmFsIHw9IEZGX01PREUyX1REU19USU1FUl8xMjg7Cj4gPiA+
ID4gKyAgICAgLyoKPiA+ID4gPiArICAgICAgKiBGSVhNRTogRkZfTU9ERTIgcmVnaXN0ZXIgaXMg
bm90IHJlYWRhYmxlIHRpbGwgVEdMIEIwLiBXZSBjYW4KPiA+ID4gPiArICAgICAgKiBlbmFibGUg
dmVyaWZpY2F0aW9uIG9mIFdBIGZyb20gdGhlIGxhdGVyIHN0ZXBwaW5ncywgd2hpY2ggZW5hYmxl
cwo+ID4gPiA+ICsgICAgICAqIHRoZSByZWFkIG9mIEZGX01PREUyLgo+ID4gPiA+ICsgICAgICAq
Lwo+ID4gPiA+ICsgICAgIF9fd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgRkZfTU9ERTIsIEZGX01P
REUyX1REU19USU1FUl9NQVNLLCB2YWwsIDApOwo+ID4gPgo+ID4gPiBJZiBJIHdhcyBhIGJldHRp
bmcgbWFuIEknZCBiZXQgbm8gb25lIHdpbGwgZXZlciByZW1lbWJlciB0byBhZGQgdGhlCj4gPiA+
IHZlcmlmaWNhdGlvbiBiYWNrLiBTbyBJIGhhdmUgdG8gc2F5IEkgZGlzYWdyZWUgd2l0aCBMdWNh
cyBvbiB0aGlzIHBvaW50Lgo+ID4gPiBTb21lb25lIGRvIGEgY2FzdGluZyB2b3RlIHBsZWFzZS4g
OikKPiA+Cj4gPiBJIHdvdWxkIGdvIHdpdGggSVNfVEdMX1JFVklEKEEwLCBBMCkgYXMgd2UgZXhw
ZWN0IGl0IHRvIGJlIHBpY2tlZCB1cCBieQo+IAo+IHRoZW4gaXQgaXMgYnJva2VuIGZyb20gc3Rh
cnQ/IEluIEEyIGl0J3Mgbm90IGZpeGVkIHlldC4uLi4gbm90IHN1cmUgaWYKPiBDSSBoYXMgQTIu
Cj4gQnV0IHdlIHNob3VsZCBhZGQgYXQgbGVhc3QgQTIgYW5kIEEzIGFuZCBtYWtlIGl0IHBhc3Mg
b24gdGhlc2UuCkx1Y2FzLAoKSG93IHRvIGdldCB0aGUgcmV2aXNpb24gZGV0YWlscyBmb3IgdGhp
cyBBMiBhbmQgQTMgc3RlcHBpbmc/IHBvaW50ZXJzCnBsei4uLgoKLVJhbQo+IAo+IAo+IEx1Y2Fz
IERlIE1hcmNoaQo+IAo+ID4gdGhlIHNlbGZ0ZXN0cyBpZiB3ZSBoYXZlIGEgbmV3IHN0ZXBwaW5n
IHRoYXQgaXMgdW5maXhlZCAtLSBhbmQgYSBibGlwIGluCj4gPiBDSSBpcyBhIG11Y2ggY2xlYXJl
ciByZW1pbmRlciB0byBjb21lIGJhY2sgYW5kIHJldmlzaXQgdGhpcyBjb2RlLiBXZQo+ID4gc2hv
dWxkIGJlIGFibGUgdG8gZ28gIm9vcHMsIGxpdmVfd29ya2Fyb3VuZHMgaXMgcmVkLCBmYWlsaW5n
IG9uIGN0eDoweGYwMCIKPiA+IGFuZCBmcm9tIHRoZXJlIGZpbmQgdGhpcyBmaXhtZS4gQW5kIHNv
IHVwZGF0ZSBmb3IgYSBuZXcgc3RlcHBpbmcgaW4gdGhlCj4gPiBjb3Vyc2Ugb2YgYSBkYXkgKGJl
Y2F1c2UgdGhhdCdzIGhvdyBsb25nIGl0IHRha2VzIGZvciBDSSB0byBhcHByb3ZlIGEKPiA+IHBh
dGNoKS4KPiA+IC1DaHJpcwo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gCj4gCj4gLS0gCj4gTHVjYXMgRGUgTWFyY2hpCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
