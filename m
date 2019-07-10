Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDA064BB0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 19:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315306E11D;
	Wed, 10 Jul 2019 17:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BBE6E11D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 17:51:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 10:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="173924143"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2019 10:51:47 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX102.amr.corp.intel.com ([169.254.3.142]) with mapi id 14.03.0439.000;
 Wed, 10 Jul 2019 10:51:47 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Ye, Tony" <tony.ye@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
Thread-Index: AQHVNyuRkGmwbg72LkOV9exrUM86fqbEIZRw
Date: Wed, 10 Jul 2019 17:51:46 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480FEDA3@ORSMSX108.amr.corp.intel.com>
References: <20190703113640.31100-1-michal.wajdeczko@intel.com>
 <20190703113640.31100-2-michal.wajdeczko@intel.com>
 <156268182280.22347.16782215518232414464@jlahtine-desk.ger.corp.intel.com>
 <op.z4ptu00mxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z4ptu00mxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWMxMTA0NDctYjY4MS00MGU3LWIzZmMtOGM4YzQ0NzI3MjEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNFcwUFg5UnJOcHROZlJRcWI1VGlXeHhVSzcrMkI3dmU2dTBZdVBoS3lLeTc5UWlISm53Rlp6VzY4d1Q5RmZJWSJ9
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFdhamRlY3prbywgTWljaGFsCj5T
ZW50OiBXZWRuZXNkYXksIEp1bHkgMTAsIDIwMTkgNzoyNyBBTQo+VG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IEpvb25hcyBMYWh0aW5lbgo+PGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+OyBTcml2YXRzYSwgQW51c2hhCj48YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT47IFllLCBUb255IDx0b255LnllQGludGVsLmNvbT4KPkNjOiBDZXJhb2xvIFNwdXJpbywgRGFu
aWVsZSA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT47IENocmlzIFdpbHNvbgo+PGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPlN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcm0vaTkx
NS9ndWM6IFR1cm4gb24gR3VDL0h1QyBhdXRvIG1vZGUKPgo+T24gVHVlLCAwOSBKdWwgMjAxOSAx
NjoxNzowMiArMDIwMCwgSm9vbmFzIExhaHRpbmVuCj48am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4gd3JvdGU6Cj4KPj4gQmV0dGVyIHN1YmplY3Qgd291bGQgYmU6ICJFbmFibGUgSHVD
ICh0aHJvdWdoIEd1Qykgb24gc3VwcG9ydGVkCj4+IHBsYXRmb3JtcyIKPgo+U3VjaCBzdWJqZWN0
IHNvdW5kcyBiZXR0ZXIsIGJ1dCBvbiBvbmUgaGFuZCBpdCBkb2VzIG5vdCByZWZsZWN0IHJlYWwg
Y29kZSBjaGFuZ2UKPihzaW5jZSB3ZSBhcmUgbm90IGV4cGxpY2l0bHkgZW5hYmxpbmcgSHVDLCBi
dXQgaW5zdGVhZCB3ZSBhcmUganVzdCBsZXR0aW5nIHRoZSBkcml2ZXIKPmVuYWJsZSBHdUMvSHVD
IHRvIHdoYXRldmVyIG1vZGUgaXQgZGVjaWRlcyksIGJ1dCBvbiBvdGhlciBoYW5kIHRoaXMgaXMg
d2hhdAo+YWN0dWFsIG91dGNvbWUgb2YgdGhlIGNoYW5nZSBpcyAoYXMgaTkxNSBjdXJyZW50bHkg
ZW5hYmxlcyBHdUMgbG9hZGluZyB3aXRoIEh1Qwo+YXV0aGVudGljYXRpb24gb24gZXZlcnkgcGxh
dGZvcm0gd2hlcmUgY29ycmVzcG9uZGluZyBmaXJtd2FyZXMgYXJlCj5kZWZpbmVkL2F2YWlsYWJs
ZSwgYW5kIG5vdGhpbmcgbW9yZSkuCj4KPlBsZWFzZSBjb25maXJtIGlmIHlvdSBzdGlsbCBvcHQt
aW4gdG8gdXNlIHlvdXIgc3ViamVjdC4KPgo+Pgo+PiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28g
KDIwMTktMDctMDMgMTQ6MzY6NDApCj4+PiBHdUMgZmlybXdhcmUgaXMgbm93IG1hdHVyZSwgc28g
bGV0IGl0IHJ1biBieSBkZWZhdWx0Lgo+Pgo+PiBUaGF0J3MgYml0IG9mIGEgbWlzbGVhZGluZyBz
dGF0ZW1lbnQgKGluIG1vcmUgdGhhbiBvbmUgd2F5KS4KPgo+SXQncyBtYXR1cmUgZW5vdWdoIHRv
IHBlcmZvcm0gSHVDIGF1dGhlbnRpY2F0aW9uLCBhbmQgd2UgZG9uJ3QgZXhwZWN0IG1vcmUKPmZy
b20gaXQgOykKPgo+Pgo+PiAiRW5hYmxlIGxvYWRpbmcgSHVDIGZpcm13YXJlICh0aHJvdWdoIEd1
QykgdG8gdW5sb2NrIGFkdmFuY2VkIHZpZGVvCj4+IGNvZGVjcyBvbiBzdXBwb3J0ZWQgcGxhdGZv
cm1zLgo+Pgo+PiBHdUMgZmlybXdhcmUgaXMgcmVxdWlyZWQgdG8gYXV0aGVudGljYXRlIHRoZSBI
dUMgZmlybXdhcmUsIHdoaWNoIGlzIGEKPj4gcmVxdWlyZW1lbnQgZm9yIGl0IHRvIG9wZXJhdGUu
Igo+Cj5UbyBzb21lIGV4dGVuZCB0aGlzIGR1cGxpY2F0ZXMgZXhpc3RpbmcgIkRPQzogSHVDIEZp
cm13YXJlIgo+RG8gd2UgbmVlZCB0byByZXBlYXQgdGhhdCBhZ2FpbiBoZXJlPwo+Cj4+Cj4+IEhh
cyB0aGUgbW9zdCByZWNlbnQgZmlybXdhcmUgYmVlbiBtZXJnZWQgdG8gbGludXgtZmlybXdhcmUg
YW5kIGlzIGl0Cj4+IHByZXNlbnQgaW4gb3VyIENJIHN5c3RlbXM/Cj4KPk15IHVuZGVyc3RhbmRp
bmcgaXM6IE5vIGFuZCBZZXMuCj5NYXliZSBBbnVzaGEgY2FuIHByb3ZpZGUgbW9yZSBkZXRhaWxz
IGhlcmUuCgpXYWl0aW5nIG9uIHRoZSBmaXJtd2FyZSB0byBnZXQgbWVyZ2VkIHRvIGxpbnV4LWZp
cm13YXJlLiBTZW50IHRoZSBQUi4KVGhlIGxhdGVzdCBmaXJtd2FyZSBpcyBob3dldmVyIGF2YWls
YWJsZSBvbiBvdXIgQ0kuCgpBbnVzaGEgCj4+Cj4+IEl0IHdvdWxkIGFsc28gYmUgZ29vZCB0byBs
aXN0IHdoYXQga2luZCBvZiB0ZXN0cyBoYXZlIGJlZW4gcnVuIHRvCj4+IGVuc3VyZSB0aGF0IHRo
ZXJlIGFyZSBubyByZWdyZXNzaW9ucywKPgo+SSdtIGFmcmFpZCBvbiBJR1QgbGV2ZWwgd2UgZG9u
J3QgaGF2ZSBIdUMgdGVzdHMuCj5CdXQgbWVkaWEgdGVhbSB3YXMgdXNpbmcgbW9kcGFyYW0gb3Zl
cnJpZGUgdG8gZm9yY2UgR3VDL0h1QyBmb3IgYSB3aGlsZSwKPlRvbnkgZG8geW91IGhhdmUgc3Vj
aCB0ZXN0IGxpc3QvcmVzdWx0cyBoYW5keT8KPgo+PiBhbmQgd2hpY2ggcGxhdGZvcm1zCj4+IHRo
aXMgY2hhbmdlIGFmZmVjdHMuCj4KPlRoaXMgY2hhbmdlIGFmZmVjdHMgYWxsIHBsYXRmb3JtcyB3
aGVyZSB3ZSBoYXZlIEd1Qy9IdUMgZmlybXdhcmVzIGRlZmluZWQsIHNvOgo+U0tMLCBCWFQsIEtC
TCwgQ0ZMLCBJQ0wuCj4KPk5vdGUgdGhhdCB3ZSdsbCBzdGlsbCBoYXZlIHBvc3NpYmlsaXR5IHRv
IHR3ZWFrIHRoYXQgaW5zaWRlIGRyaXZlciwgYXMgYXV0byBtb2RlIGlzCj5qdXN0IG1vdmluZyBy
ZXNwb25zaWJpbGl0eSB3aGF0IGNhbiBiZSBlbmFibGVkIGZyb20gdGhlIHVzZXIgdG8gdGhlIGk5
MTUuCj4KPj4KPj4gUmVnYXJkcywgSm9vbmFzCj4+Cj4+PiBOb3RlIHRoYXQgdG9kYXkgR3VDIGlz
IG9ubHkgdXNlZCBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+Pj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+
PiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+
Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gLS0tCj4+
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8IDIgKy0KPj4+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAo+Pj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4+PiBpbmRleCBkMjlhZGUzYjdkZTYuLjU3MzZjNTU2OTRm
ZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPj4+IEBAIC01NCw3ICs1
NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKPj4+ICAgICAgICAgcGFyYW0oaW50LCBkaXNhYmxl
X3Bvd2VyX3dlbGwsIC0xKSBcCj4+PiAgICAgICAgIHBhcmFtKGludCwgZW5hYmxlX2lwcywgMSkg
XAo+Pj4gICAgICAgICBwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBcCj4+PiAtICAg
ICAgIHBhcmFtKGludCwgZW5hYmxlX2d1YywgMCkgXAo+Pj4gKyAgICAgICBwYXJhbShpbnQsIGVu
YWJsZV9ndWMsIC0xKSBcCj4+PiAgICAgICAgIHBhcmFtKGludCwgZ3VjX2xvZ19sZXZlbCwgLTEp
IFwKPj4+ICAgICAgICAgcGFyYW0oY2hhciAqLCBndWNfZmlybXdhcmVfcGF0aCwgTlVMTCkgXAo+
Pj4gICAgICAgICBwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCj4+PiAt
LQo+Pj4gMi4xOS4yCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
