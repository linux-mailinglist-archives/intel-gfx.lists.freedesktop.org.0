Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C1815075B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:36:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3116E6E347;
	Mon,  3 Feb 2020 13:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53BCA6E347
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:36:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20100234-1500050 for multiple; Mon, 03 Feb 2020 13:35:58 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200203132907.GB13686@intel.com>
References: <20200202134338.3796606-1-chris@chris-wilson.co.uk>
 <20200203132907.GB13686@intel.com>
Message-ID: <158073695580.25329.16405421677069436227@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 13:35:55 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix NULL-crtc deref in
 calc_min_cdclk()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMDMgMTM6Mjk6MDcpCj4gT24gU3VuLCBG
ZWIgMDIsIDIwMjAgYXQgMDE6NDM6MzhQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
WyAgIDIzLjQxOTQ0Ml0gQlVHOiBLQVNBTjogbnVsbC1wdHItZGVyZWYgaW4gaW50ZWxfcGxhbmVf
Y2FsY19taW5fY2RjbGsrMHg4Mi8weDQ0MCBbaTkxNV0KPiA+IFsgICAyMy40MTk1MjddIFJlYWQg
b2Ygc2l6ZSA0IGF0IGFkZHIgMDAwMDAwMDAwMDAwMDBmOCBieSB0YXNrIGluc21vZC83MzUKPiA+
IFsgICAyMy40MTk1NzhdCj4gPiBbICAgMjMuNDE5NjQ0XSBDUFU6IDIgUElEOiA3MzUgQ29tbTog
aW5zbW9kIE5vdCB0YWludGVkIDUuNS4wKyAjMTE0Cj4gPiBbICAgMjMuNDE5NzE2XSBIYXJkd2Fy
ZSBuYW1lOiDvv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73v
v73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv70g77+977+9
77+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+9
77+977+977+977+977+977+977+977+977+977+977+977+9L++/ve+/ve+/ve+/ve+/ve+/ve+/
ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/
ve+/ve+/ve+/ve+/ve+/ve+/ve+/vSwgQklPUyBSWUJEV2kzNS44NkEuMDI0Ni4yCj4gPiBbICAg
MjMuNDE5NzkzXSBDYWxsIFRyYWNlOgo+ID4gWyAgIDIzLjQxOTg2NF0gIGR1bXBfc3RhY2srMHhl
Zi8weDE2ZQo+ID4gWyAgIDIzLjQxOTkyN10gIF9fa2FzYW5fcmVwb3J0LmNvbGQrMHg2MC8weDkw
Cj4gPiBbICAgMjMuNDIwMTU3XSAgPyBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsaysweDgyLzB4
NDQwIFtpOTE1XQo+ID4gWyAgIDIzLjQyMDM5N10gIGludGVsX3BsYW5lX2NhbGNfbWluX2NkY2xr
KzB4ODIvMHg0NDAgW2k5MTVdCj4gPiBbICAgMjMuNDIwNjMwXSAgaW50ZWxfYXRvbWljX2NoZWNr
KzB4NDU1Zi8weDY1YTAgW2k5MTVdCj4gPiBbICAgMjMuNDIwNzA4XSAgPyBtYXJrX2hlbGRfbG9j
a3MrMHg5MC8weDkwCj4gPiBbICAgMjMuNDIwOTI5XSAgPyBpbnRlbF9jcnRjX2R1cGxpY2F0ZV9z
dGF0ZSsweDJlLzB4MWIwIFtpOTE1XQo+ID4gWyAgIDIzLjQyMTE3Ml0gID8gaW50ZWxfcGxhbmVf
ZHVwbGljYXRlX3N0YXRlKzB4MmQvMHhjMCBbaTkxNV0KPiA+IFsgICAyMy40MjEyMzldICA/IF9f
ZHJtX2RiZysweGE0LzB4MTIwCj4gPiBbICAgMjMuNDIxMzAzXSAgPyBfX2thc2FuX2ttYWxsb2Mu
Y29uc3Rwcm9wLjArMHhjMi8weGQwCj4gPiBbICAgMjMuNDIxMzU1XSAgPyBfX2ttYWxsb2NfdHJh
Y2tfY2FsbGVyKzB4MjNhLzB4MzIwCj4gPiBbICAgMjMuNDIxNjAyXSAgPyBpbnRlbF9jYWxjX2Fj
dGl2ZV9waXBlcysweDFjMC8weDFjMCBbaTkxNV0KPiA+IFsgICAyMy40MjE4NTJdICBzYW5pdGl6
ZV93YXRlcm1hcmtzKzB4MjIwLzB4NTEwIFtpOTE1XQo+ID4gWyAgIDIzLjQyMjA5Ml0gID8gaW50
ZWxfYXRvbWljX2NoZWNrKzB4NjVhMC8weDY1YTAgW2k5MTVdCj4gPiBbICAgMjMuNDIyMTY0XSAg
PyBkcm1fbW9kZXNldF91bmxvY2tfYWxsKzB4ODgvMHgxMzAKPiA+IFsgICAyMy40MjI0MDJdICBp
bnRlbF9tb2Rlc2V0X2luaXQrMHgxYjc2LzB4M2M5MCBbaTkxNV0KPiA+IFsgICAyMy40MjI2NDdd
ICA/IGludGVsX2ZpbmlzaF9yZXNldCsweDJkMC8weDJkMCBbaTkxNV0KPiA+IFsgICAyMy40MjI4
NTFdICA/IGludGVsX2lycV9pbnN0YWxsKzB4MTJjLzB4MjEwIFtpOTE1XQo+ID4gWyAgIDIzLjQy
MzA3Nl0gIGk5MTVfZHJpdmVyX3Byb2JlKzB4MTNlNy8weDI5MzAgW2k5MTVdCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAt
LS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5j
IHwgMTEgKysrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+IGluZGV4IDkxYWI2ZTJhYjFmZC4uODM1MDViZDhh
ZDgwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWNfcGxhbmUuYwo+ID4gQEAgLTE2NSwxNCArMTY1LDE1IEBAIGludCBpbnRlbF9wbGFu
ZV9jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+ICAg
ICAgICAgICAgICAgaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5l
KTsKPiA+ICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhwbGFu
ZV9zdGF0ZS0+aHcuY3J0Yyk7Cj4gPiAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3Rh
dGUgKmNkY2xrX3N0YXRlOwo+ID4gLSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19j
cnRjX3N0YXRlID0KPiA+IC0gICAgICAgICAgICAgaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gPiAtICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqb2xkX2NydGNfc3RhdGUgPQo+ID4gLSAgICAgICAgICAgICBpbnRlbF9hdG9taWNfZ2V0X29s
ZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKPiAKPiBEb2guIE5vdCBOVUxMIHNhZmUgY2xlYXJs
eS4KPiAKPiA+ICsgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19z
dGF0ZTsKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsK
PiA+ICAKPiA+IC0gICAgIGlmICghcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSB8fCAhcGxhbmUt
Pm1pbl9jZGNsaykKPiA+ICsgICAgIGlmICghY3J0YyB8fCAhcGxhbmVfc3RhdGUtPnVhcGkudmlz
aWJsZSB8fCAhcGxhbmUtPm1pbl9jZGNsaykKPiAKPiBTaG91bGQgYmUgbm8gbmVlZCBmb3IgdGhl
ICFjcnRjIGNoZWNrLiBXZSBjYW4ndCBoYXZlIHZpc2libGU9PXRydWUKPiB3aXRob3V0IGEgY3J0
Yy4KClRhLCBJIHRob3VnaHQgdGhhdCBtaWdodCBiZSB0aGUgY2FzZS4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
