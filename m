Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1413220
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 18:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408036E819;
	Fri,  3 May 2019 16:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4526E819
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 16:24:47 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 09:24:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="145768859"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 03 May 2019 09:24:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 19:24:43 +0300
Date: Fri, 3 May 2019 19:24:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20190503162443.GT24299@intel.com>
References: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
 <20190502200607.14504-2-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F81FECC9B@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FECC9B@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Allow ICL pipe "HDR mode"
 when the cursor is visible
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

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDM6MzE6NDlQTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBWaWxsZSBT
eXJqYWxhIFttYWlsdG86dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb21dCj4gPlNlbnQ6IEZy
aWRheSwgTWF5IDMsIDIwMTkgMTozNiBBTQo+ID5UbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+ID5DYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBTaGFy
bWEsIFNoYXNoYW5rCj4gPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgo+ID5TdWJqZWN0OiBb
UEFUQ0ggMi8yXSBkcm0vaTkxNTogQWxsb3cgSUNMIHBpcGUgIkhEUiBtb2RlIiB3aGVuIHRoZSBj
dXJzb3IgaXMgdmlzaWJsZQo+ID4KPiA+RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Cj4gPlR1cm5zIG91dCB0aGUgY3Vyc29yIGlzIGNvbXBh
dGlibGUgd2l0aCB0aGUgcGlwZSAiSERSIG1vZGUiLiBJdCdzIG9ubHkgdGhlIGFjdHVhbCBTRFIK
PiA+cGxhbmVzIHRoYXQgZ2V0IGVudGlyZWx5IGJ5cGFzc2VkIGR1cmluZyBibGVuZGluZy4gU28g
bGV0J3MgaWdub3JlIHRoZSBjdXJzb3Igd2hlbgo+ID5jaGVja2luZyBpZiB3ZSBoYXZlIGFueSBw
bGFuZXMgYWN0aXZlIHRoYXQgYXJlbid0IEhEUiBjb21wYXRpYmxlLiBUaGlzIGZpeGVzIHRoZQo+
ID5yZWdyZXNzaW9ucyBpbiB0aGUga21zX2N1cnNvcl9jcmMgYW5kIGttc19wbGFuZV9jdXJzb3Ig
dGVzdHMuCj4gCj4gQ2hlY2tlZCBmb3IgZGV0YWlscyBhcm91bmQgdGhpcyBpbiBzcGVjLCBjb3Vs
ZG4ndCBnZXQgYW55dGhpbmcgc3BlY2lmaWMgYXJvdW5kIGhvdyBjdXJzb3IKPiBiZWhhdmVzIHdy
dCBIRFJfTU9ERS4KClllYWgsIHRoZSBzcGVjIGlzIHJhdGhlciB2YWd1ZSBvbiB0aGlzIHRvcGlj
LgoKPiBCdXQgd2l0aCB0aGUgdGVzdCByZXN1bHRzIGl0IGFwcGVhcnMgdGhhdCB0aGV5IGRvIGZv
bGxvdyB0aGUgSERSCj4gcHJlY2lzaW9uLiBXaXRoIHRoaXMgb2JzZXJ2YXRpb24gYW5kIGRhdGEs
IGNoYW5nZSBsb29rcyBvay4KPiAKPiBSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4KClRoYW5rcy4gU2VyaWVzIHB1c2hlZCB0byBkaW5xLgoKPiAKPiA+Q2M6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gPkNjOiBTaGFzaGFuayBTaGFy
bWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4gPkJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA1NzkKPiA+Rml4ZXM6IDA5YjI1ODEy
ZGIxMCAoImRybS9pOTE1OiBFbmFibGUgcGlwZSBIRFIgbW9kZSBvbiBJQ0wgaWYgb25seSBIRFIg
cGxhbmVzIGFyZQo+ID51c2VkIikKPiA+U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+LS0tCj4gPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAzICsrLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+ID5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rp
c3BsYXkuYwo+ID5pbmRleCAyODA0MmExNjA4NGQuLmNjMTIwMzkwMWVmNCAxMDA2NDQKPiA+LS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gPisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+ID5AQCAtODkyNyw3ICs4OTI3LDggQEAgc3Rh
dGljIHZvaWQgYmR3X3NldF9waXBlbWlzYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+
ID4qY3J0Y19zdGF0ZSkKPiA+IAkJCVBJUEVNSVNDX1lVVjQyMF9NT0RFX0ZVTExfQkxFTkQ7Cj4g
Pgo+ID4gCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmCj4gPi0JICAgIChjcnRjX3N0
YXRlLT5hY3RpdmVfcGxhbmVzICYgfmljbF9oZHJfcGxhbmVfbWFzaygpKSA9PSAwKQo+ID4rCSAg
ICAoY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH4oaWNsX2hkcl9wbGFuZV9tYXNrKCkgfAo+
ID4rCQkJCQkgICBCSVQoUExBTkVfQ1VSU09SKSkpID09IDApCj4gPiAJCXZhbCB8PSBQSVBFTUlT
Q19IRFJfTU9ERV9QUkVDSVNJT047Cj4gPgo+ID4gCUk5MTVfV1JJVEUoUElQRU1JU0MoY3J0Yy0+
cGlwZSksIHZhbCk7Cj4gPi0tCj4gPjIuMjEuMAo+IAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
