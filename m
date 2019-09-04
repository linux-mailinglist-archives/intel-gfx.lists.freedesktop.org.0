Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CED2A84E3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 16:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3992F89225;
	Wed,  4 Sep 2019 14:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4305D89225
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 14:02:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 07:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="199038872"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 04 Sep 2019 07:02:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 17:02:46 +0300
Date: Wed, 4 Sep 2019 17:02:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190904140246.GB7482@intel.com>
References: <20190903154018.26357-1-ville.syrjala@linux.intel.com>
 <8947f85cce38cdcb3b185af1e187e9e7252c3d82.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8947f85cce38cdcb3b185af1e187e9e7252c3d82.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Fix DP-MST crtc_mask"
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
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "jadahl@gmail.com" <jadahl@gmail.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMDg6MTA6MThQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA5LTAzIGF0IDE4OjQwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdy
b3RlOgo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiA+IAo+ID4gVGhpcyByZXZlcnRzIGNvbW1pdCA0ZWFjZWVhM2EwMGY4ZTkzNmE3ZjQ4
ZGNkMGM5NzVhNTdmODg5MzBmLgo+ID4gCj4gPiBTZXZlcmFsIHVzZXJzcGFjZSBjbGllbnRzICht
b2Rlc2V0dGluZyBkZHggYW5kIG11dHRlcit3YXlsYW5kIGF0Cj4gPiBsZWFzdCkKPiA+IGhhbmRs
ZSBlbmNvZGVyLnBvc3NpYmxlX2NydGNzIGluY29ycmVjdGx5LiBXaGF0IHRoZXkgZXNzZW50aWFs
bHkgZG8KPiA+IGlzCj4gPiB0aGUgZm9sbG93aW5nOgo+ID4gCj4gPiBwb3NzaWJsZV9jcnRjcyA9
IH4wOwo+ID4gZm9yX2VhY2hfcG9zc2libGVfZW5jb2Rlcihjb25uZWN0b3IpCj4gPiAJcG9zc2li
bGVfY3J0Y3MgJj0gZW5jb2Rlci0+cG9zc2libGVfY3J0Y3M7Cj4gPiAKPiA+IEllLiB0aGV5IGNh
bGN1bGF0ZSB0aGUgaW50ZXJzZWN0aW9uIG9mIHRoZSBwb3NzaWJsZV9jcnRjcwo+ID4gZm9yIHRo
ZSBjb25uZWN0b3Igd2hlbiB0aGV5IHJlYWxseSBzaG91bGQgYmUgY2FsY3VsYXRpbmcgdGhlCj4g
PiB1bmlvbiBpbnN0ZWFkLgo+ID4gCj4gPiBJbiBvdXIgY2FzZSBlYWNoIE1TVCBlbmNvZGVyIG5v
dyBoYXMganVzdCBvbmUgdW5pcXVlIGJpdCBzZXQsCj4gPiBhbmQgc28gdGhlIGludGVyc2VjdGlv
biBpcyBhbHdheXMgemVyby4gVGhlIGVuZCByZXN1bHQgaXMgdGhhdAo+ID4gTVNUIGNvbm5lY3Rv
cnMgY2FuJ3QgYmUgbGl0IHVwIGJlY2F1c2Ugbm8gY3J0YyBjYW4gYmUgZm91bmQgdG8KPiA+IGRy
aXZlIHRoZW0uCj4gPiAKPiA+IEkndmUgc3VibWl0dGVkIGEgZml4IGZvciB0aGUgbW9kZXNldHRp
bmcgZGR4IFsxXSwgYW5kIGNvbXBsYWluZWQKPiA+IG9uICN3YXlsYW5kIGFib3V0IG11dHRlciwg
c28gaG9wZWZ1bGx5IHRoZSBzaXR1YXRpb24gd2lsbCBpbXByb3ZlCj4gPiBpbiB0aGUgZnV0dXJl
LiBJbiB0aGUgbWVhbnRpbWUgd2UgaGF2ZSByZWdyZXNzaW9uLCBhbmQgc28gbXVzdCBnbwo+ID4g
YmFjayB0byB0aGUgb2xkIHdheSBvZiBtaXNjb25maWd1cmluZyBwb3NzaWJsZV9jcnRjcyBpbiB0
aGUga2VybmVsLgo+IAo+IEluIHRoZSBtZWFudGltZSBhcmUgeW91IHBsYW5pbmcgdG8gc2VuZCBh
IHBhdGNoIGRvaW5nOgo+IAo+IGZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpCj4gCQlpbnRl
bF9lbmNvZGVyLT5jcnRjX21hc2sgfD0gQklUKHBpcGUpOwo+IAo+IFdlIGhhZCBhIHBhdGNoIGRv
aW5nIHRoYXQgaW4gb25lIG9mIHRoZSBUR0wgZW5hYmxpbmcgc2VyaWVzIGJ1dCBpdCB3YXMKPiBk
cm9wcGVkIGJlY2F1c2Ugb2YgeW91ciBwYXRjaCBsb29rZWQgYmV0dGVyLCBJIGNhbiBicmluZyBp
dCBiYWNrIGlmIHlvdQo+IGFyZSBub3QgcGxhbm5pbmcuCgpZZWFoLCBwbGVhc2UgcmVzZW5kIHlv
dXIgdmVyc2lvbi4KCj4gCj4gPiAKPiA+IFsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcveG9yZy94c2VydmVyL21lcmdlX3JlcXVlc3RzLzI3Nwo+IAo+IEp1c3QgbG9va2VkIHRvIHRo
ZSBtZXJnZSByZXF1ZXN0IGFib3ZlLCBub3QgdG8gdGhlIG90aGVyIHVzZXJzcGFjZQo+IGNsaWVu
dHMKPiAKPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+CgpUYS4KCj4gCj4gPiAKPiA+IENjOiBKb25hcyDDhWRhaGwgPGphZGFobEBnbWFp
bC5jb20+Cj4gPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+Cj4gPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5A
aW50ZWwuY29tPgo+ID4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5
YW5AaW50ZWwuY29tPgo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMTUwNwo+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiA+IGluZGV4IDZkZjI0MGEwMWI4Yy4uMzcz
NjZmODEyNTViIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYwo+ID4gQEAgLTYxNSw3ICs2MTUsNyBAQCBpbnRlbF9kcF9jcmVhdGVfZmFrZV9t
c3RfZW5jb2RlcihzdHJ1Y3QKPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQs
IGVudW0KPiA+ICAJaW50ZWxfZW5jb2Rlci0+dHlwZSA9IElOVEVMX09VVFBVVF9EUF9NU1Q7Cj4g
PiAgCWludGVsX2VuY29kZXItPnBvd2VyX2RvbWFpbiA9IGludGVsX2RpZ19wb3J0LQo+ID4gPmJh
c2UucG93ZXJfZG9tYWluOwo+ID4gIAlpbnRlbF9lbmNvZGVyLT5wb3J0ID0gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UucG9ydDsKPiA+IC0JaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gQklUKHBpcGUp
Owo+ID4gKwlpbnRlbF9lbmNvZGVyLT5jcnRjX21hc2sgPSAweDc7Cj4gPiAgCWludGVsX2VuY29k
ZXItPmNsb25lYWJsZSA9IDA7Cj4gPiAgCj4gPiAgCWludGVsX2VuY29kZXItPmNvbXB1dGVfY29u
ZmlnID0gaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnOwoKLS0gClZpbGxlIFN5cmrDpGzDpApJ
bnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
