Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD1D63846
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 16:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF946E072;
	Tue,  9 Jul 2019 14:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ADF6E072
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 14:57:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 07:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="249170912"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 09 Jul 2019 07:57:01 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 07:57:00 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 07:57:00 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.155]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.179]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 20:26:57 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [V3] drm/i915: Add icl mipi dsi properties
Thread-Index: AQHVLQAPeL4h63P780qoI7+tHu5qx6bCER4AgABh0HA=
Date: Tue, 9 Jul 2019 14:56:56 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B8090B0B0@BGSMSX108.gar.corp.intel.com>
References: <20190627152457.26146-1-vandita.kulkarni@intel.com>
 <20190709143614.GW5942@intel.com>
In-Reply-To: <20190709143614.GW5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODM5MDZhOWQtY2YwZC00NjVkLThiMzEtNjdmNjU0YzZkMWZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJDb0REdjF4V2RUcTh1QnJOSFZGNVMxV2NmdHdKTlRYcVRJMHpTUUU0cEZ5QStSNlAwRUp5OVVBSEdqUFJRZjB3In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V3] drm/i915: Add icl mipi dsi properties
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2VudDogVHVlc2RheSwgSnVseSA5LCAyMDE5
IDg6MDYgUE0KPiBUbzogS3Vsa2FybmksIFZhbmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBTdWJqZWN0OiBSZTogW1YzXSBkcm0vaTkxNTogQWRk
IGljbCBtaXBpIGRzaSBwcm9wZXJ0aWVzCj4gCj4gT24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDg6
NTQ6NTdQTSArMDUzMCwgVmFuZGl0YSBLdWxrYXJuaSB3cm90ZToKPiA+IEFkZCBzY2FsaW5nIGFu
ZCBwYW5lbCBvcmllbnRhdGlvbiBwcm9wZXJ0aWVzIGZvciBpY2wgbWlwaSBkc2kuCj4gPgo+ID4g
djI6IEFkZCBwbGF0Zm9ybSBzcGVjaWZpYyBmdW5jdGlvbiAoVmlsbGUpCj4gPiB2MzogUmVtb3Zl
IHJlZHVuZGFudCBjaGVjayBhbmQgdXBkYXRlIHNjYWxlciBjYWxsIChKYW5pLCBWaWxsZSkKPiA+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4KPiAKPiBQdXNoZWQgdG8gZGlucS4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCgpUaGFu
ayB5b3UuCi1WYW5kaXRhCj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ljbF9kc2kuYyB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPiA+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jIHwgIDQgKystLQo+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+IGluZGV4IGI4NjczZGViZjkzMi4uM2NmOTVj
MzQxNDNjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4g
PiBAQCAtMTUwOCw2ICsxNTA4LDI2IEBAIHN0YXRpYyB2b2lkIGljbF9kcGh5X3BhcmFtX2luaXQo
c3RydWN0IGludGVsX2RzaQo+ICppbnRlbF9kc2kpCj4gPiAgCWludGVsX2RzaV9sb2dfcGFyYW1z
KGludGVsX2RzaSk7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgdm9pZCBpY2xfZHNpX2FkZF9wcm9w
ZXJ0aWVzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiA+ICt7Cj4gPiArCXUz
MiBhbGxvd2VkX3NjYWxlcnM7Cj4gPiArCj4gPiArCWFsbG93ZWRfc2NhbGVycyA9IEJJVChEUk1f
TU9ERV9TQ0FMRV9BU1BFQ1QpIHwKPiA+ICsJCQkgICBCSVQoRFJNX01PREVfU0NBTEVfRlVMTFND
UkVFTikgfAo+ID4gKwkJCSAgIEJJVChEUk1fTU9ERV9TQ0FMRV9DRU5URVIpOwo+ID4gKwo+ID4g
Kwlkcm1fY29ubmVjdG9yX2F0dGFjaF9zY2FsaW5nX21vZGVfcHJvcGVydHkoJmNvbm5lY3Rvci0+
YmFzZSwKPiA+ICsJCQkJCQkgICBhbGxvd2VkX3NjYWxlcnMpOwo+ID4gKwo+ID4gKwljb25uZWN0
b3ItPmJhc2Uuc3RhdGUtPnNjYWxpbmdfbW9kZSA9IERSTV9NT0RFX1NDQUxFX0FTUEVDVDsKPiA+
ICsKPiA+ICsJY29ubmVjdG9yLT5iYXNlLmRpc3BsYXlfaW5mby5wYW5lbF9vcmllbnRhdGlvbiA9
Cj4gPiArCQkJaW50ZWxfZHNpX2dldF9wYW5lbF9vcmllbnRhdGlvbihjb25uZWN0b3IpOwo+ID4g
Kwlkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHkoJmNvbm5lY3Rv
ci0+YmFzZSwKPiA+ICsJCQkJY29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlLT5oZGlzcGxheSwK
PiA+ICsJCQkJY29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlLT52ZGlzcGxheSk7Cj4gPiArfQo+
ID4gKwo+ID4gIHZvaWQgaWNsX2RzaV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikgIHsKPiA+ICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOyBA
QCAtMTYwMSw2ICsxNjIxLDggQEAKPiB2b2lkCj4gPiBpY2xfZHNpX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4gIAl9Cj4gPgo+ID4gIAlpY2xfZHBoeV9wYXJhbV9p
bml0KGludGVsX2RzaSk7Cj4gPiArCj4gPiArCWljbF9kc2lfYWRkX3Byb3BlcnRpZXMoaW50ZWxf
Y29ubmVjdG9yKTsKPiA+ICAJcmV0dXJuOwo+ID4KPiA+ICBlcnI6Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMKPiA+IGluZGV4IGUyNzJkODI2MjEwYS4uYzgwMDJm
ZmQyOWU3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZf
ZHNpLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jCj4g
PiBAQCAtMTY0NCw3ICsxNjQ0LDcgQEAgdmx2X2RzaV9nZXRfcGFuZWxfb3JpZW50YXRpb24oc3Ry
dWN0Cj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gPiAgCXJldHVybiBpbnRlbF9kc2lf
Z2V0X3BhbmVsX29yaWVudGF0aW9uKGNvbm5lY3Rvcik7Cj4gPiAgfQo+ID4KPiA+IC1zdGF0aWMg
dm9pZCBpbnRlbF9kc2lfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2Nvbm5lY3Rvcgo+ID4g
KmNvbm5lY3RvcikKPiA+ICtzdGF0aWMgdm9pZCB2bHZfZHNpX2FkZF9wcm9wZXJ0aWVzKHN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiA+ICB7Cj4gPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gPgo+
ID4gQEAgLTE5ODMsNyArMTk4Myw3IEBAIHZvaWQgdmx2X2RzaV9pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiA+ICAJaW50ZWxfcGFuZWxfaW5pdCgmaW50ZWxfY29ubmVj
dG9yLT5wYW5lbCwgZml4ZWRfbW9kZSwgTlVMTCk7Cj4gPiAgCWludGVsX3BhbmVsX3NldHVwX2Jh
Y2tsaWdodChjb25uZWN0b3IsIElOVkFMSURfUElQRSk7Cj4gPgo+ID4gLQlpbnRlbF9kc2lfYWRk
X3Byb3BlcnRpZXMoaW50ZWxfY29ubmVjdG9yKTsKPiA+ICsJdmx2X2RzaV9hZGRfcHJvcGVydGll
cyhpbnRlbF9jb25uZWN0b3IpOwo+ID4KPiA+ICAJcmV0dXJuOwo+ID4KPiA+IC0tCj4gPiAyLjIx
LjAuNS5nYWViNTgyYQo+IAo+IC0tCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
