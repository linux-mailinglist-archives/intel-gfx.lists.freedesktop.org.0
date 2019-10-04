Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CB0CBFB1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 17:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703B96EBD6;
	Fri,  4 Oct 2019 15:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74A56EBD6
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 15:48:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 08:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="191626852"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 04 Oct 2019 08:48:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 18:48:08 +0300
Date: Fri, 4 Oct 2019 18:48:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20191004154808.GH1208@intel.com>
References: <20191003081738.22101-1-anshuman.gupta@intel.com>
 <20191003081738.22101-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003081738.22101-2-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 1/6] drm/i915/tgl: Add DC3CO required
 register and bits
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

T24gVGh1LCBPY3QgMDMsIDIwMTkgYXQgMDE6NDc6MzNQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gQWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKPiAxLiBE
Q19TVEFURV9FTiByZWdpc3RlciBEQzNDTyBiaXQgZmllbGRzIGFuZCBtYXNrcy4KPiAgICBEQzND
TyBlbmFibGUgYml0IHdpbGwgYmUgdXNlZCBieSBkcml2ZXIgdG8gbWFrZSBEQzNDTwo+ICAgIHJl
YWR5IGZvciBETUMgZi93IGFuZCBzdGF0dXMgYml0IHdpbGwgYmUgdXNlZCBhcyBEQzNDTwo+ICAg
IGVudHJ5IHN0YXR1cy4KPiAyLiBUcmFuc2NvZGVyIEVYSVRMSU5FIHJlZ2lzdGVyIGFuZCBpdHMg
Yml0IGZpZWxkcyBhbmQgbWFzay4KPiAgICBUcmFuc2NvZGVyIEVYSVRMSU5FIGVuYWJsZSBiaXQg
cmVwcmVzZW50cyBQU1IyIGlkbGUgZnJhbWUKPiAgICByZXNldCBzaG91bGQgYmUgYXBwbGllZCBh
dCBleGl0IGxpbmUgYW5kIGV4aXRsaW5lcyBtYXNrCj4gICAgcmVwcmVzZW50IHJlcXVpcmVkIG51
bWJlciBvZiBzY2FubGluZXMgYXQgd2hpY2ggREMzQ08KPiAgICBleGl0IGhhcHBlbnMuCj4gCj4g
ICAgQi5TcGVjczo0OTE5Ngo+IAo+IHYxOiBVc2Ugb2YgUkVHX0JJVCBhbmQgdXNpbmcgZXh0cmEg
c3BhY2UgZm9yIEVYSVRMSU5FXyBtYWNybwo+ICAgICBkZWZpbml0aW9uLiBbQW5pbWVzaF0KPiAK
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4gaW5kZXggZWVmZDc4OWI5YTI4Li44ZmQ5MzAwODIxNGIgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiBAQCAtNDE0NCw2ICs0MTQ0LDcgQEAgZW51bSB7Cj4gICNkZWZpbmUgX1ZU
T1RBTF9BCTB4NjAwMGMKPiAgI2RlZmluZSBfVkJMQU5LX0EJMHg2MDAxMAo+ICAjZGVmaW5lIF9W
U1lOQ19BCTB4NjAwMTQKPiArI2RlZmluZSBfRVhJVExJTkVfQQkweDYwMDE4Cj4gICNkZWZpbmUg
X1BJUEVBU1JDCTB4NjAwMWMKPiAgI2RlZmluZSBfQkNMUlBBVF9BCTB4NjAwMjAKPiAgI2RlZmlu
ZSBfVlNZTkNTSElGVF9BCTB4NjAwMjgKPiBAQCAtNDE5MCwxMSArNDE5MSwxNiBAQCBlbnVtIHsK
PiAgI2RlZmluZSBWVE9UQUwodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WVE9UQUxfQSkK
PiAgI2RlZmluZSBWQkxBTksodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WQkxBTktfQSkK
PiAgI2RlZmluZSBWU1lOQyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZTWU5DX0EpCj4g
KyNkZWZpbmUgRVhJVExJTkUodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9FWElUTElORV9B
KQo+ICAjZGVmaW5lIEJDTFJQQVQodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9CQ0xSUEFU
X0EpCj4gICNkZWZpbmUgVlNZTkNTSElGVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfVlNZ
TkNTSElGVF9BKQo+ICAjZGVmaW5lIFBJUEVTUkModHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMs
IF9QSVBFQVNSQykKPiAgI2RlZmluZSBQSVBFX01VTFQodHJhbnMpCV9NTUlPX1RSQU5TMih0cmFu
cywgX1BJUEVfTVVMVF9BKQo+ICAKPiArI2RlZmluZSAgIEVYSVRMSU5FX0VOQUJMRQlSRUdfQklU
KDMxKQo+ICsjZGVmaW5lICAgRVhJVExJTkVfTUFTSwkJUkVHX0dFTk1BU0soMTIsIDApCj4gKyNk
ZWZpbmUgICBFWElUTElORV9TSElGVAkwCgpXaHkgYXJlIHRoZXNlIGRlZmluZXMgaGFuZ2luZyBt
aWQtYWlyPwoKPiArCj4gIC8qCj4gICAqIEhTVysgZURQIFBTUiByZWdpc3RlcnMKPiAgICoKPiBA
QCAtMTAyODgsNiArMTAyOTQsOCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAgLyogR0VOOSBE
QyAqLwo+ICAjZGVmaW5lIERDX1NUQVRFX0VOCQkJX01NSU8oMHg0NTUwNCkKPiAgI2RlZmluZSAg
RENfU1RBVEVfRElTQUJMRQkJMAo+ICsjZGVmaW5lICBEQ19TVEFURV9FTl9EQzNDTwkJUkVHX0JJ
VCgzMCkKPiArI2RlZmluZSAgRENfU1RBVEVfREMzQ09fU1RBVFVTCQlSRUdfQklUKDI5KQo+ICAj
ZGVmaW5lICBEQ19TVEFURV9FTl9VUFRPX0RDNQkJKDEgPDwgMCkKPiAgI2RlZmluZSAgRENfU1RB
VEVfRU5fREM5CQkoMSA8PCAzKQo+ICAjZGVmaW5lICBEQ19TVEFURV9FTl9VUFRPX0RDNgkJKDIg
PDwgMCkKPiAtLSAKPiAyLjIxLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
