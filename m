Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F00210CE90
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 19:30:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D98A6E0E0;
	Thu, 28 Nov 2019 18:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443566E0E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 18:30:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 10:30:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,254,1571727600"; d="scan'208";a="199593849"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2019 10:30:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2019 20:30:41 +0200
Date: Thu, 28 Nov 2019 20:30:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191128183041.GV1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-4-jose.souza@intel.com>
 <20191126201506.GH1208@intel.com>
 <625713c7e7111958caf8283a15aeaa7ecf356a5c.camel@intel.com>
 <20191127192449.GN1208@intel.com>
 <a4857777dddd1ba864f6bbd0718561e78c5a542d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4857777dddd1ba864f6bbd0718561e78c5a542d.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
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

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMDE6MDg6MzZBTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjI0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAyNiwgMjAxOSBhdCAxMDoxMjo1MlBNICswMDAwLCBTb3V6
YSwgSm9zZSB3cm90ZToKPiA+ID4gT24gVHVlLCAyMDE5LTExLTI2IGF0IDIyOjE1ICswMjAwLCBW
aWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gT24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6
NTQ6NTZQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQo+ID4gPiA+IHdyb3RlOgo+ID4g
PiA+ID4gRGlzYWJsaW5nIHBpcGUvdHJhbnNjb2RlciBjbG9jayBiZWZvcmUgcG93ZXIgZG93biBz
aW5rIGNvdWxkCj4gPiA+ID4gPiBjYXVzZQo+ID4gPiA+ID4gc2luayBsb3N0IHNpZ25hbCwgY2F1
c2luZyBpdCB0byB0cmlnZ2VyIGEgaG90cGx1ZyB0byBub3RpZnkKPiA+ID4gPiA+IHNvdXJjZQo+
ID4gPiA+ID4gdGhhdCBsaW5rIHNpZ25hbCB3YXMgbG9zdC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgMiArLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPiA+ID4gPiBpbmRleCBkMmYwZDM5
M2QzZWUuLjdkM2E2ZTNjN2Y1NyAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ID4gPiA+IEBAIC0zODA4LDEyICszODA4LDEy
IEBAIHN0YXRpYyB2b2lkCj4gPiA+ID4gPiBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gPiA+ID4gIAllbnVtIHBoeSBwaHkgPSBpbnRl
bF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0KPiA+ID4gPiA+ID5wb3J0KTsKPiA+ID4g
PiA+ICAKPiA+ID4gPiA+ICAJaWYgKCFpc19tc3QpIHsKPiA+ID4gPiA+IC0JCWludGVsX2RkaV9k
aXNhYmxlX3BpcGVfY2xvY2sob2xkX2NydGNfc3RhdGUpOwo+ID4gPiA+ID4gIAkJLyoKPiA+ID4g
PiA+ICAJCSAqIFBvd2VyIGRvd24gc2luayBiZWZvcmUgZGlzYWJsaW5nIHRoZSBwb3J0LAo+ID4g
PiA+ID4gb3RoZXJ3aXNlCj4gPiA+ID4gPiB3ZSBlbmQKPiA+ID4gPiA+ICAJCSAqIHVwIGdldHRp
bmcgaW50ZXJydXB0cyBmcm9tIHRoZSBzaW5rIG9uCj4gPiA+ID4gPiBkZXRlY3RpbmcKPiA+ID4g
PiA+IGxpbmsgbG9zcy4KPiA+ID4gPiA+ICAJCSAqLwo+ID4gPiA+ID4gIAkJaW50ZWxfZHBfc2lu
a19kcG1zKGludGVsX2RwLAo+ID4gPiA+ID4gRFJNX01PREVfRFBNU19PRkYpOwo+ID4gPiA+ID4g
KwkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7Cj4gPiA+ID4g
PiAgCX0KPiA+ID4gPiAKPiA+ID4gPiBUaGUgc3BlYyBzZWVtcyB0byBzYXkgdGhhdCB3ZSBzaG91
bGQgZG8gdGhpcyBhZnRlciB0dXJuaW5nIG9mZgo+ID4gPiA+IERESV9CVUZfQ1RMIG9uIHRnbCsu
Cj4gPiA+IAo+ID4gPiBXaGF0IHN0ZXA/IEkgY2FuJ3QgZmluZCBhbnkgc3RlcCB0YWxraW5nIGFi
b3V0IEFVWCBEUF9TRVRfUE9XRVIuCj4gPiAKPiA+IEkgd2FzIHRhbGtpbmcgYWJvdXQgRERJX0JV
RiBkaXNhYmxlIHZzLiB0cmFuc2NvZGVyIGNsb2NrIGRpc2FibGUuCj4gPiAKPiA+ID4gTXkgdW5k
ZXJzdGF0aW5nIGlzIHRoYXQgd2Ugc2hvdWxkIHBvd2VyIG9mZiBzaW5rIGJlZm9yZSBpbnRlcmZl
cmluZwo+ID4gPiBpbgo+ID4gPiB0aGUgbWFpbmxpbmsgc2lnbmFsIG90aGVyd2lzZSBzaW5rIGNv
dWxkIHRyaWdnZXIgaG90cGx1Z3MgdG8gbm90aWZ5Cj4gPiA+IHNvdXJjZSBhYm91dCBsaW5rIGxv
c3MuCj4gPiAKPiA+IFByZXR0eSBtdWNoLiBOb3RoaW5nIHdyb25nIHdpdGggeW91ciBwYXRjaCBm
b3IgcHJlLXRnbCBJIHRoaW5rLCBidXQKPiA+IGZvcgo+ID4gdGdsKyB5b3UgZGlkbid0IG1vdmUg
dGhlIGNsb2NrIGRpc2FibGUgcXVpdGUgZmFyIGVub3VnaCB0byBtYXRjaCB0aGUKPiA+IGJzcGVj
IHNlcXVlbmNlLgo+IAo+IEFhYWhoCj4gVGhhdCBpcyBmaXhlZCBwYXRjaCA2ICJkcm0vaTkxNS9k
aXNwbGF5L3RnbDogRml4IHRoZSBvcmRlciBvZiB0aGUgc3RlcAo+IHRvIHR1cm4gdHJhbnNjb2Rl
ciBjbG9jayBvZmYiIDpECgpBaCwgc2hvdWxkIGhhdmUga2VwdCBvbiByZWFkaW5nLgoKSW4gdGhh
dCBjYXNlIHRoaXMgb25lIGlzIApSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gCj4gPiAKPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICAJ
aW50ZWxfZGlzYWJsZV9kZGlfYnVmKGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlKTsKPiA+ID4gPiA+
IC0tIAo+ID4gPiA+ID4gMi4yNC4wCj4gPiA+ID4gPiAKPiA+ID4gPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gPiA+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+
ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
