Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C06557E1E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 16:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B283F10E532;
	Thu, 23 Jun 2022 14:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 612DA10E532
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 14:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655995727; x=1687531727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vSrogKRtMei4qpG23ZLREOoNyOxGgPdr9l8f1PNnyBM=;
 b=f8S8072MPkl7MzmYy+WM6g4ItyV/kxErFGhWzQdnBoRooCueEMoe3c9J
 apqhW1HOqYTTqbpiNfQ80NdatAuBgFyQtfQGRKVZC+9UrYRRRsqJoQSPK
 t5FSaIQmxk/ozCcv1kNlTEmT+FCfEnTjX515zpFPjYQpiRN4s3LMdezyz
 3I+98zT72G+lwxlYltBClBuSgBP9LSqw+qM9u2avkaeOJ0KA8qQfbrP5S
 bqJOpY9SidJ5v7p2q8u+7vuPWu6fV6/W8taXajcQoUpNUfikt8q0cTwvJ
 pmVuPN1XzTpNgrqhRXpn5NIkyboXGZ45vR5R2OyWggHeo5jho3aaoTxfm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="342421723"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="342421723"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 07:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="538913697"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 23 Jun 2022 07:48:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 07:48:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 07:48:32 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 23 Jun 2022 07:48:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only after
 display is turned off
Thread-Index: AQHYgn1f8Ta7WcJKh0OFurxyQdI4Yq1UcVEAgAYglICAAeqfgIABFHUA
Date: Thu, 23 Jun 2022 14:48:32 +0000
Message-ID: <80633c435571ead14b963a17d96874bcb9cd92e6.camel@intel.com>
References: <20220617190629.355356-1-jose.souza@intel.com>
 <YqzV9N4qGegV7Y3h@mdroper-desk1.amr.corp.intel.com>
 <2ace5508071ad1e7fc9048cb988ceea313bcb151.camel@intel.com>
 <YrOVVcGkuq5QEMrY@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YrOVVcGkuq5QEMrY@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F4AC94052FFE494F94A3B830CAEDB188@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only
 after display is turned off
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTA2LTIyIGF0IDE1OjE5IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIEp1biAyMSwgMjAyMiBhdCAxMDowMzowNEFNIC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiBPbiBGcmksIDIwMjItMDYtMTcgYXQgMTI6MjggLTA3MDAsIE1hdHQgUm9wZXIgd3Jv
dGU6DQo+ID4gPiBPbiBGcmksIEp1biAxNywgMjAyMiBhdCAxMjowNjoyOVBNIC0wNzAwLCBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiA+ID4gPiBHZW0gYnVmZmVycyBjb3VsZCBzdGls
bCBiZSBpbiB1c2UgYnkgZGlzcGxheSBhZnRlciBpOTE1X2dlbV9zdXNwZW5kKCkNCj4gPiA+ID4g
aXMgZXhlY3V0ZWQgc28gdGhlcmUgaXMgY2hhbmNlcyB0aGF0IGk5MTVfZ2VtX2ZsdXNoX2ZyZWVf
b2JqZWN0cygpDQo+ID4gPiA+IHdpbGwgYmUgYmVpbmcgZXhlY3V0ZWQgYXQgdGhlIHNhbWUgdGlt
ZSB0aGF0DQo+ID4gPiA+IGludGVsX3J1bnRpbWVfcG1fZHJpdmVyX3JlbGVhc2UoKSBpcyBleGVj
dXRlZCBwcmludGluZyB3YXJuaW5ncyBhYm91dA0KPiA+ID4gPiB3YWtlcmVmcyB3aWxsIGJlaW5n
IGhlbGQuDQo+ID4gPiANCj4gPiA+IEJ5IHRoZSBzYW1lIGxvZ2ljIGRvIHdlIG5lZWQgdG8gYWRq
dXN0IGk5MTVfZHJpdmVyX3JlbW92ZSgpIHRvbz8NCj4gPiANCj4gPiBOb3BlLCBhbGwgZGlzcGxh
eSBidWZmZXJzIGFyZSBmcmVlZCBpbiBpOTE1X2RyaXZlcl91bnJlZ2lzdGVyKCkgY2FsbCBjaGFp
bjoNCj4gPiANCj4gPiANCj4gPiBpOTE1X2RyaXZlcl9yZW1vdmUoKQ0KPiA+IAlpOTE1X2RyaXZl
cl91bnJlZ2lzdGVyKCkNCj4gPiAJCWludGVsX2Rpc3BsYXlfZHJpdmVyX3VucmVnaXN0ZXIoKQ0K
PiA+IAkJCWRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKCkNCj4gPiAJaTkxNV9nZW1fc3VzcGVu
ZCgpDQo+ID4gCQlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKCkNCj4gPiANCj4gPiANCj4g
PiBPbmx5IEZCQyBjb21wcmVzc2VkIGZyYW1lYnVmZmVyIGlzIGZyZWVkIGFmdGVyIHRoYXQgYnV0
IHRoYXQgd2lsbCBub3QgY2F1c2UgYW55IHdhcm5pbmdzIGFzIGl0IGlzIGFsbG9jYXRlZCBmcm9t
IHN0b2xlbiBtZW1vcnkuDQo+IA0KPiBPa2F5IHNvdW5kcyBnb29kOyB0aGFua3MgZm9yIGNoZWNr
aW5nLg0KPiANCj4gSSdtIHN0aWxsIGhhdmluZyBhIGJpdCBvZiB0cm91YmxlIHVuZGVyc3RhbmRp
bmcgeW91ciBkZXNjcmlwdGlvbiBvZiB0aGUNCj4gaXNzdWUgaW4gdGhlIGNvbW1pdCBtZXNzYWdl
IHRob3VnaDoNCj4gDQo+ICAgICAgICAgIi4uLnNvIHRoZXJlIGlzIGNoYW5jZXMgdGhhdCBpOTE1
X2dlbV9mbHVzaF9mcmVlX29iamVjdHMoKSB3aWxsDQo+ICAgICAgICAgYmUgYmVpbmcgZXhlY3V0
ZWQgYXQgdGhlIHNhbWUgdGltZSB0aGF0DQo+ICAgICAgICAgaW50ZWxfcnVudGltZV9wbV9kcml2
ZXJfcmVsZWFzZSgpLi4uIg0KPiANCj4gSSdtIG5vdCBzdXBlciBmYW1pbGlhciB3aXRoIHRoZSBk
cml2ZXIgdGVhcmRvd24gcGF0aHMsIG9yIHRoZSBtZW1vcnkNCj4gbWFuYWdlbWVudCBjbGVhbnVw
IGRldGFpbHMuICBJbnR1aXRpdmVseSBpdCBtYWtlcyBzZW5zZSB0aGF0IHdlIHNob3VsZA0KPiBj
bGVhbiB1cCBtZW1vcnkgbWFuYWdlbWVudCAoR0VNKSBvbmx5IGFmdGVyIHdlJ3ZlIHRvcm4gZG93
biBkaXNwbGF5IHNvDQo+IHRoYXQgYWxsIG9iamVjdHMgdGhhdCB3ZXJlIHVzZWQgYnkgZnJhbWVi
dWZmZXJzIGFyZSBvdXQgb2YgY2lyY3VsYXRpb24uDQo+IEJ1dCBmcm9tIGEgY3Vyc29yeSB2aWV3
LCBpdCBsb29rcyBsaWtlIGk5MTVfZ2VtX3N1c3BlbmQoKSBpcyBtb3N0bHkNCj4gY29uY2VybmVk
IHdpdGggcXVpZXNjaW5nIHRoZSBHVCBhbmQgY2xlYW5pbmcgdXAgUFBHVFQgKHdoaWNoIGRvZXNu
J3QNCj4gaW1wYWN0IGRpc3BsYXkgc2luY2UgYWxsIG9mIGl0cyBidWZmZXJzIGFyZSBpbiB0aGUg
R0dUVCkuDQo+IA0KPiBJcyB0aGUgcHJvYmxlbSBhcmlzaW5nIGZyb20gaTkxNS0+bW0uZnJlZV93
b3JrIHN0aWxsIGRvaW5nIGFzeW5jaHJvbm91cw0KPiB3b3JrIHRvIGFjdHVhbGx5IHJlbGVhc2Ug
dGhlIHVudXNlZCBvYmplY3RzIGF0IHRoZSBzYW1lIHRpbWUgd2UncmUNCj4gdGVhcmluZyBkb3du
IHJ1bnRpbWUgUE0gbGF0ZXI/ICBJZiBzbyBkb2VzIHN3YXBwaW5nIHRoZSBvcmRlciBvZiB0aGUN
Cj4gZ2VtX3N1c3BlbmQgYW5kIGRpc3BsYXkgZGlzYWJsZSBoZXJlIGFjdHVhbGx5IHByZXZlbnQg
dGhhdCBmcm9tDQo+IGhhcHBlbmluZyBvciBkb2VzIGl0IGp1c3QgbWFrZSB0aGUgcmFjZSBsZXNz
IGxpa2VseSBieSBoZWxwaW5nIHNvbWUNCj4gb2JqZWN0cyBmcmVlIHVwIGVhcmxpZXI/DQoNClNv
IHdoZW4gdGhlIGxhc3QgcmVmZXJlbmNlIG9mIGEgZ2VtIG9iamVjdCBpcyByZW1vdmVkIGl0IGlz
IGFkZGVkIHRvIHRoZSBtbS5mcmVlX2xpc3QgbGlzdCBhbmQgbW0uZnJlZV93b3JrIGlzIHF1ZXVl
ZCB0byBhY3R1YWxseSBmcmVlIHRoZSBvYmplY3QuDQppOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmpl
Y3RzKCkgZmx1c2hlcyB0aGUgbW0uZnJlZV93b3JrLg0KDQpJZiBhbnkgb3RoZXIgZ2VtIG9iamVj
dCBoYXMgaXRzIGxhc3QgcmVmZXJlbmNlIHJlbW92ZWQgYWZ0ZXIgaTkxNV9nZW1fc3VzcGVuZCgp
L2k5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoKSB0aGUgd2FybmluZyBpbg0KaW50ZWxfcnVu
dGltZV9wbV9kcml2ZXJfcmVsZWFzZSgpIGNhbiBoYXBwZW4gYXMgdGhlIG1tLmZyZWVfd29yayBj
b3VsZCBiZSBydW5uaW5nIGF0IHRoZSBzYW1lIHRpbWUuDQoNCkJ1dCB3aGVuIHBjaV9kcml2ZXIu
cmVtb3ZlKCkgaXMgY2FsbGVkLCBwcm9iYWJseSBhbGwgZmlsZSBkZXNjcmlwdG9ycyBhdHRhY2hl
ZCB0byB0aGlzIGRldmljZSBoYXZlIGJlZW4gY2xvc2VkIGFuZCB0aGUgZnVuY3Rpb25zIGNhbGxl
ZCBhZnRlcg0KaTkxNV9nZW1fc3VzcGVuZCgpIHdpbGwgbm90IGZyZWUgYW55IGdlbSBvYmplY3Qs
IHNvIEkgZG9uJ3QgYmVsaWV2ZSB3ZSB3aWxsIGhhdmUgYW55IG1vcmUgd2FybmluZ3MuDQoNCj4g
DQo+IA0KPiBNYXR0DQo+IA0KPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IE1hdHQNCj4gPiA+
IA0KPiA+ID4gPiANCj4gPiA+ID4gU28gaGVyZSBvbmx5IGNhbGxpbmcgaTkxNV9nZW1fc3VzcGVu
ZCgpIGFuZCBieSBjb25zZXF1ZW5jZQ0KPiA+ID4gPiBpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmpl
Y3RzKCkgb25seSBhZnRlciBkaXNwbGF5IGlzIGRvd24gbWFraW5nDQo+ID4gPiA+IHN1cmUgYWxs
IGJ1ZmZlcnMgYXJlIGZyZWVkLg0KPiA+ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0K
PiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyB8IDQgKystLQ0KPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
PiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+ID4gPiBpbmRl
eCBkMjZkY2NhN2U2NTRhLi40MjI3Njc1ZGQxY2ZlIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gPiA+ID4gQEAgLTEwNjcsOCArMTA2Nyw2IEBAIHZv
aWQgaTkxNV9kcml2ZXJfc2h1dGRvd24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+
ID4gPiA+ICAJaW50ZWxfcnVudGltZV9wbV9kaXNhYmxlKCZpOTE1LT5ydW50aW1lX3BtKTsNCj4g
PiA+ID4gIAlpbnRlbF9wb3dlcl9kb21haW5zX2Rpc2FibGUoaTkxNSk7DQo+ID4gPiA+ICANCj4g
PiA+ID4gLQlpOTE1X2dlbV9zdXNwZW5kKGk5MTUpOw0KPiA+ID4gPiAtDQo+ID4gPiA+ICAJaWYg
KEhBU19ESVNQTEFZKGk5MTUpKSB7DQo+ID4gPiA+ICAJCWRybV9rbXNfaGVscGVyX3BvbGxfZGlz
YWJsZSgmaTkxNS0+ZHJtKTsNCj4gPiA+ID4gIA0KPiA+ID4gPiBAQCAtMTA4NSw2ICsxMDgzLDgg
QEAgdm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiA+ID4gIA0KPiA+ID4gPiAgCWludGVsX2RtY191Y29kZV9zdXNwZW5kKGk5MTUpOw0K
PiA+ID4gPiAgDQo+ID4gPiA+ICsJaTkxNV9nZW1fc3VzcGVuZChpOTE1KTsNCj4gPiA+ID4gKw0K
PiA+ID4gPiAgCS8qDQo+ID4gPiA+ICAJICogVGhlIG9ubHkgcmVxdWlyZW1lbnQgaXMgdG8gcmVi
b290IHdpdGggZGlzcGxheSBEQyBzdGF0ZXMgZGlzYWJsZWQsDQo+ID4gPiA+ICAJICogZm9yIG5v
dyBsZWF2aW5nIGFsbCBkaXNwbGF5IHBvd2VyIHdlbGxzIGluIHRoZSBJTklUIHBvd2VyIGRvbWFp
bg0KPiA+ID4gPiAtLSANCj4gPiA+ID4gMi4zNi4xDQo+ID4gPiA+IA0KPiA+ID4gDQo+ID4gDQo+
IA0KDQo=
