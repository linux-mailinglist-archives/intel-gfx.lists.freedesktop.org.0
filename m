Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257F8E93FB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 01:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64606E82D;
	Wed, 30 Oct 2019 00:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E0B6E82D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 00:05:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 17:05:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="283396703"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga001.jf.intel.com with ESMTP; 29 Oct 2019 17:05:14 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 17:05:14 -0700
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.79]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.48]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 17:05:14 -0700
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 09/10] drm/framebuffer/tgl: Format modifier for
 Intel Gen 12 render compression with Clear Color
Thread-Index: AQHVjc+3Y/7c8LY3B0aN6I/wsr0qWKdyQPDu
Date: Wed, 30 Oct 2019 00:05:13 +0000
Message-ID: <8B74F386D1656545A7968FB3C487BECC2B6F3C52@ORSMSX116.amr.corp.intel.com>
References: <20191028204041.13507-1-radhakrishna.sripada@intel.com>,
 <20191028204041.13507-10-radhakrishna.sripada@intel.com>
In-Reply-To: <20191028204041.13507-10-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.229.14]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 09/10] drm/framebuffer/tgl: Format
 modifier for Intel Gen 12 render compression with Clear Color
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>, "Ekstrand,
 Jason" <jason.ekstrand@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

K0phc29uIAoKTWF5YmUgSmFzb24gYW5kL29yIG90aGVycyBoYXZlIHNvbWUgdGhvdWdodHMgb24g
dGhlIGZvbGxvd2luZz8gR2l2ZW4gdGhlCmRldGFpbGVkIGRlc2NyaXB0aW9uIG9mIHRoZSBjbGVh
ciBjb2xvciBzdHJ1Y3QsIGl0IHNlZW1zIGxpa2Ugd2UnbGwgaGF2ZSB0bwpkZWZpbmUgYSBuZXcg
bW9kaWZpZXIgaWYgdGhlIHN0cnVjdCBmaWVsZHMgY2hhbmdlIGluIGEgZnV0dXJlIGdlbmVyYXRp
b24uCgpPbiBuZWdhdGl2ZSBpcyB0aGF0IHdlIG1pZ2h0IGhhdmUgdG8gbWFrZSBuZXcgbW9kaWZp
ZXJzIHRoYXQgcHJvdmlkZSBubwphZGRpdGlvbmFsIGJlbmVmaXQgKGFzc3VtaW5nIHRoZSBuZXcv
Y2hhbmdlZCBmaWVsZHMgYXJlIHVudXNlZCkuIE9uIHBvc2l0aXZlIGlzCnRoYXQgaXQncyBwcm9i
YWJseSBhIGdvb2QgdGhpbmcgdGhhdCB3ZSBtZW50aW9uZWQgdGhlIFJhdyBjbGVhciBjb2xvciBm
aWVsZHMKYmVjYXVzZSBJIHRoaW5rIDNEIHVzZXMgaXQgZHVyaW5nIHJlbmRlcmluZyBvcGVyYXRp
b25zIGFuZCB3ZSdsbCBiZSBzaGFyaW5nCmZyb20gM0QtdG8tM0QuIE1heWJlIHdlIHNob3VsZCBz
cGVjaWZ5IGhvdyB0aGUgY2hhbm5lbHMgc2hvdWxkIGJlIGZvcm1hdHRlZD8gCgpJIGhhdmVuJ3Qg
dGhvdWdodCB0aHJvdWdoIGhvdyBmaWVsZHMgbGlrZSBDb2xvciBEaXNjYXJkIEVuYWJsZSBhZmZl
Y3QgYnVmZmVyCnNoYXJpbmcuLi4KCkFub3RoZXIgY29tbWVudDogSSBub3RpY2VkIHRoYXQgbm9u
ZSBvZiB0aGUgWStDQ1MgbW9kaWZpZXJzIGV4cGxpY2l0bHkgc3RhdGUKdGhhdCB0aGUgQ0NTIG11
c3QgYmUgaW4gdGhlIHNhbWUgQk8gYXMgdGhlIFktdGlsZWQgbWFpbiBzdXJmYWNlLiBXZSBzaG91
bGQgYXQKbGVhc3QgZml4IHRoYXQgZm9yIG5ld2x5IGRlZmluZWQgbW9kaWZpZXJzIHJpZ2h0PwoK
LU5hbmxleQoKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gRnJv
bTogU3JpcGFkYSwgUmFkaGFrcmlzaG5hCj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDI4LCAyMDE5
IDE6NDAgUE0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBQYW5k
aXlhbiwgRGhpbmFrYXJhbjsgU3lyamFsYSwgVmlsbGU7IFNoYXJtYSwgU2hhc2hhbms7IEFudG9n
bm9sbGksIFJhZmFlbDsgQ2hlcnksIE5hbmxleSBHOyBTcmlwYWRhLCBSYWRoYWtyaXNobmE7IFZp
bGxlIFN5cmphbGE7IEtvbmRhcGFsbHksIEthbHlhbgo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwOS8x
MF0gZHJtL2ZyYW1lYnVmZmVyL3RnbDogRm9ybWF0IG1vZGlmaWVyIGZvciBJbnRlbCBHZW4gMTIg
cmVuZGVyIGNvbXByZXNzaW9uIHdpdGggQ2xlYXIgQ29sb3IKPiAKPiBHZW4xMiBkaXNwbGF5IGNh
biBkZWNvbXByZXNzIHN1cmZhY2VzIGNvbXByZXNzZWQgYnkgcmVuZGVyIGVuZ2luZSB3aXRoCj4g
Q2xlYXIgQ29sb3IsIGFkZCBhIG5ldyBtb2RpZmllciBhcyB0aGUgZHJpdmVyIG5lZWRzIHRvIGtu
b3cgdGhlIHN1cmZhY2UKPiB3YXMgY29tcHJlc3NlZCBieSByZW5kZXIgZW5naW5lLgo+IAo+IFYy
OiBEZXNjcmlwdGlvbiBjaGFuZ2VzIGFzIHN1Z2dlc3RlZCBieSBSYWZhZWwuCj4gVjM6IE1lbnRp
b24gdGhlIENsZWFyIENvbG9yIHNpemUgb2YgNjQgYml0cyBpbiB0aGUgY29tbWVudHMoREspCj4g
djQ6IEZpeCB0cmFpbGluZyB3aGl0ZXNwYWNlcwo+IHY1OiBFeHBsYWluIENsZWFyIENvbG9yIGlu
IHRoZSBkb2N1bWVudGF0aW9uLgo+IHY2OiBEb2N1bWVudGF0aW9uIE5pdHBpY2tzKE5hbmxleSkK
PiAKPiBDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Q2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+
IENjOiBLYWx5YW4gS29uZGFwYWxseSA8a2FseWFuLmtvbmRhcGFsbHlAaW50ZWwuY29tPgo+IENj
OiBSYWZhZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29tPgo+IENjOiBO
YW5sZXkgQ2hlcnkgPG5hbmxleS5nLmNoZXJ5QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBS
YWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgo+IC0t
LQo+ICBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCB8IDE5ICsrKysrKysrKysrKysrKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3Vy
Y2MuaAo+IGluZGV4IDFhYTZkNDY4YzA0OC4uNGFhN2YzZjk3MTJhIDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1f
Zm91cmNjLmgKPiBAQCAtNDM0LDYgKzQzNCwyNSBAQCBleHRlcm4gIkMiIHsKPiAgICovCj4gICNk
ZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIGZvdXJjY19tb2RfY29k
ZShJTlRFTCwgNykKPiAKPiArLyoKPiArICogSW50ZWwgQ29sb3IgQ29udHJvbCBTdXJmYWNlIHdp
dGggQ2xlYXIgQ29sb3IgKENDUykgZm9yIEdlbi0xMiByZW5kZXIKPiArICogY29tcHJlc3Npb24u
Cj4gKyAqCj4gKyAqIFRoZSBtYWluIHN1cmZhY2UgaXMgWS10aWxlZCBhbmQgaXMgYXQgcGxhbmUg
aW5kZXggMCB3aGVyZWFzIENDUyBpcyBsaW5lYXIKPiArICogYW5kIGF0IGluZGV4IDEuIFRoZSBj
bGVhciBjb2xvciBpcyBzdG9yZWQgYXQgaW5kZXggMiwgYW5kIHRoZSBwaXRjaCBzaG91bGQKPiAr
ICogYmUgaWdub3JlZC4gVGhlIGNsZWFyIGNvbG9yIHN0cnVjdHVyZSBpcyAyNTYgYml0cy4gVGhl
IGZpcnN0IDEyOCBiaXRzCj4gKyAqIHJlcHJlc2VudHMgUmF3IENsZWFyIENvbG9yIFJlZCwgR3Jl
ZW4sIEJsdWUgYW5kIEFscGhhIGNvbG9yIGVhY2ggcmVwcmVzZW50ZWQKPiArICogYnkgMzIgYml0
cy4gVGhlIHJhdyBjbGVhciBjb2xvciBpcyBjb25zdW1lZCBieSB0aGUgM2QgZW5naW5lIGFuZCBn
ZW5lcmF0ZXMKPiArICogdGhlIGNvbnZlcnRlZCBjbGVhciBjb2xvciBvZiBzaXplIDY0IGJpdHMu
IFRoZSBmaXJzdCAzMiBiaXRzIHN0b3JlIHRoZSBMb3dlcgo+ICsgKiBDb252ZXJ0ZWQgQ2xlYXIg
Q29sb3IgdmFsdWUgYW5kIHRoZSBuZXh0IDMyIGJpdHMgc3RvcmUgdGhlIEhpZ2hlciBDb252ZXJ0
ZWQKPiArICogQ2xlYXIgQ29sb3IgdmFsdWUgd2hlbiBhcHBsaWNhYmxlLiBUaGUgQ29udmVydGVk
IENsZWFyIENvbG9yIHZhbHVlcyBhcmUKPiArICogY29uc3VtZWQgYnkgdGhlIERFLiBUaGUgbGFz
dCA2NCBiaXRzIGFyZSB1c2VkIHRvIHN0b3JlIENvbG9yIERpc2NhcmQgRW5hYmxlCj4gKyAqIGFu
ZCBEZXB0aCBDbGVhciBWYWx1ZSBWYWxpZCB3aGljaCBhcmUgaWdub3JlZCBieSB0aGUgREUuIEEg
Q0NTIGNhY2hlIGxpbmUKPiArICogY29ycmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0eDEgdGlsZXMg
aW4gdGhlIG1haW4gc3VyZmFjZS4gVGhlIG1haW4gc3VyZmFjZQo+ICsgKiBwaXRjaCBpcyByZXF1
aXJlZCB0byBiZSBhIG11bHRpcGxlIG9mIDQgdGlsZSB3aWR0aHMuCj4gKyAqLwo+ICsjZGVmaW5l
IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQyBmb3VyY2NfbW9kX2NvZGUo
SU5URUwsIDgpCj4gKwo+ICAvKgo+ICAgKiBUaWxlZCwgTlYxMk1ULCBncm91cGVkIGluIDY0IChw
aXhlbHMpIHggMzIgKGxpbmVzKSAtc2l6ZWQgbWFjcm9ibG9ja3MKPiAgICoKPiAtLQo+IDIuMjAu
MQo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
