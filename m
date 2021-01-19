Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09EE2FBD7F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 18:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C586E880;
	Tue, 19 Jan 2021 17:26:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E45E6E880
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 17:26:53 +0000 (UTC)
IronPort-SDR: k2kMPXdGSi39pU8Gd/u8IfmBnjhL0coJEhfPb7fhETfADcI8Y/6o6TAVVBUkxs+I11C6imVo0G
 Dr82aidexgKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="166055757"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="166055757"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 09:26:53 -0800
IronPort-SDR: L/bnP4vNDrDfvz74W/BPzrKph2iXvDTjMZ+eGeTDBmUtGeWukMOOKkQkz4J6i9co00YuICSJaG
 GzopH20XJV2w==
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="426546454"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 09:26:50 -0800
Date: Tue, 19 Jan 2021 19:26:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Message-ID: <20210119172644.GC1199567@ideak-desk.fi.intel.com>
References: <20200822064837.3276-1-khaled.almahallawy@intel.com>
 <20210113150440.GA371457@ideak-desk.fi.intel.com>
 <097601d8899c497ba574d9360b4292832a9a9d98.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <097601d8899c497ba574d9360b4292832a9a9d98.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: DPTX writes
 Swing/Pre-emphs(DPCD 0x103-0x106) requested during PHY Layer testing.
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
Reply-To: imre.deak@intel.com
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKYW4gMTksIDIwMjEgYXQgMDk6NDM6NTZBTSArMDIwMCwgQWxtYWhhbGxhd3ksIEto
YWxlZCB3cm90ZToKPiA+ID4gWy4uLl0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwo+ID4gPiBpbmRleCA3OWMyN2Y5MWY0MmMuLjUwNDQyMDFjYTc0MiAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4g
PiBAQCAtNTUwMyw2ICs1NTAzLDkgQEAgdm9pZCBpbnRlbF9kcF9wcm9jZXNzX3BoeV9yZXF1ZXN0
KHN0cnVjdAo+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiA+Cj4gPiA+ICBpbnRlbF9kcF9h
dXRvdGVzdF9waHlfZGRpX2VuYWJsZShpbnRlbF9kcCwgZGF0YS0+bnVtX2xhbmVzKTsKPiA+ID4K
PiA+ID4gK2RybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9kcC0+YXV4LCBEUF9UUkFJTklOR19MQU5F
MF9TRVQsCj4gPiA+ICtpbnRlbF9kcC0+dHJhaW5fc2V0LCBpbnRlbF9kcC0KPiA+ID4gPmxhbmVf
Y291bnQpOwo+ID4KPiA+IFRoaXMgc2hvdWxkIGJlIHJlYmFzZWQgb24gYSByZWNlbnQgY2hhbmdl
IHVzaW5nIGluc3RlYWQKPiA+IGNydGNfc3RhdGUtPmxhbmVfY291bnQuCj4KPiA+IFRoYXQncyBh
bHNvIG5vdCBjb21wbGV0ZWx5IGNvcnJlY3Qgc2luY2UgaXQncwo+ID4gbm90IGd1YXJhbnRlZWQg
dGhhdCB0aGUgb3V0cHV0IGlzIGVuYWJsZWQgKGhhdmluZyB1cC10by1kYXRlIGxpbmsKPiA+IHBh
cmFtcyBpbiBjcnRjX3N0YXRlKSBhdCB0aGUgdGltZSBvZiB0aGlzIHRlc3QgcmVxdWVzdC4KCkFj
dHVhbGx5IGludGVsX2RwX3ByZXBfcGh5X3Rlc3QoKSBtYWtlcyBzdXJlIHRoYXQgdGhlIG91dHB1
dCBpcyBlbmFibGVkLApzbyBudm0gdGhlIGFib3ZlLgoKPiBbLi4uXQo+ID4gSSdtIGFsc28gbm90
IHN1cmUgaG93IGludGVsX2RwX2F1dG90ZXN0X3BoeV9kZGlfZGlzYWJsZSgpL2VuYWJsZSgpCj4g
PiBhZmZlY3RzIHRoZSB2c3dpbmcvcHJlLWVtcCBzZXR0aW5nIG9mIHRoZSBzb3VyY2UgKERQVFgp
IHRoYXQgZ290Cj4gPiBpbml0ZWQgd2hlbiB0aGUgb3V0cHV0IHdhcyBsYXN0IGVuYWJsZWQuIFRo
ZSB2cy9wZSBwcm9ncmFtbWluZwo+ID4gc2VxdWVuY2Ugc2hvdWxkIGJlIGFsc28gcGFydCBvZiB0
aGUgcG9ydCBlbmFibGluZy4gTWF5YmUgdGhlIEhXCj4gPiByZXRhaW5zIHRoZSBjb25maWcgYWNy
b3NzIHRoZSB0aGUgYWJvdmUgcG9ydCBkaXNhYmxlL2VuYWJsZSBjYWxscwo+ID4gYW5kIHNvIHRo
aXMgaGFwcGVucyBub3QgdG8gYmUgYSBwcm9ibGVtLgo+IAo+IFRoZSByZXF1ZXN0ZWQgVnN3aW5n
L1ByZS1lbXBoIGZyb20gdGVzdCBzY29wZSBpcyBjb21pbmcgYXMgcGFydCBvZgo+IHNob3J0IEhQ
RCBub3QgYXMgcGFydCBvZiBMaW5rIFRyYWluaW5nLCBzbyBJ4oCZbSBub3Qgc3VyZSBob3cgd2Ug
Y2FuIHVzZQo+IHRoZXNlIHJlcXVlc3RlZCB2c3dpbmcvcHJlLWVtcGggdmFsdWVzIGFzIHdlIGRv
IGZvciBsYW5lIGNvdW50IGFuZCBMaW5rCj4gcmF0ZSBhcyBpbiA6IGludGVsX2RwX2FkanVzdF9j
b21wbGlhbmNlX2NvbmZpZwoKTG9va3MgbGlrZSBkdXJpbmcgUEhZIHRlc3RpbmcgYSByZWd1bGFy
IGxpbmsgdHJhaW5pbmcgc2hvdWxkIGJlCnBlcmZvcm1lZCAoaW5jbHVkaW5nIGFueSBMVFRQUnMg
b24gdGhlIGxpbmspLCBhbmQgdGhlbiBmb3IgRFBSWCBpbnN0ZWFkCm9mIHRoZSByZWd1bGFyIGNy
L2VxIGp1c3Qgc2V0IHRoZSByZXF1ZXN0ZWQgdnMvcGUgbGV2ZWxzIGFuZCB0aGUgdGVzdApwYXR0
ZXJuLiBJZiBURVNUX0xBTkVfQ09VTlQvUkFURSBjaGFuZ2VzIHRoZSBsaW5rIG5lZWRzIHRvIGJl
IHJldHJhaW5lZAphZ2FpbiwgaWYgb25seSB0aGUgcmVxdWVzdGVkIHRlc3QgcGF0dGVybiBvciB2
cy9wZSBsZXZlbHMgY2hhbmdlIHRoZW4KY2hhbmdpbmcgb25seSB0aGVzZSB3L28gcmV0cmFpbmlu
ZyB0aGUgbGluayBzaG91bGQgYmUgb2suCgo+IEhvd2V2ZXIgdGhlIHJhdGlvbmFsZSBiZWhpbmQK
PiBpbnRlbF9kcF9hdXRvdGVzdF9waHlfZGRpX2Rpc2FibGUoKS9lbmFibGUoKSBpcyBiYXNlZCBv
biBTcGVjczo1MDQ4Mgo+IHdoaWNoIHNhaWQgVFJBTlNfQ09ORiBhbmQgVFJBTlNfRERJX0ZVTkNf
Q1RMIG11c3QgYmUgZGlzYWJsZWQgcHJpb3IgdG8KPiBlbmFibGluZyB0aGUgdGVzdCBwYXR0ZXJu
CgpPaywgbWFrZXMgc2Vuc2UsIHNvIHRoaXMgaW5kZWVkIHNlZW1zIHRvIG5lZWQgc3BlY2lhbCBj
YXNpbmcgZm9yIFBIWQp0ZXN0aW5nLgoKLS1JbXJlCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
