Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8466DCAF59
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFCA66EA6C;
	Thu,  3 Oct 2019 19:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AA66EA6B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:38:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 12:38:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="191360941"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2019 12:38:00 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 3 Oct 2019 12:37:59 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.82]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.34]) with mapi id 14.03.0439.000;
 Thu, 3 Oct 2019 12:37:58 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 19/22] drm/i915: don't allocate the ring
 in stolen if we lack aperture
Thread-Index: AQHVeiBVKJZuu8J5aUubn300wsFs8KdJTxjA
Date: Thu, 3 Oct 2019 19:37:57 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC29E9450461@FMSMSX103.amr.corp.intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-20-matthew.auld@intel.com>
In-Reply-To: <20191003192444.10113-20-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTJhNGNhMGItMTBlNy00NGNhLWI2NjUtYTVlMTdiZTMyNDBkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMEkxVkM0c3d2ME11XC9MekYyZ2lqc1pyY28yMHBkXC9YbjRyNno1Mis3Y1ViOVlyaHRrNldEMVRpcEZLMGhMSWZyIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 19/22] drm/i915: don't allocate the ring
 in stolen if we lack aperture
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBNYXR0
aGV3IEF1bGQNCj4gU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMywgMjAxOSAxMjoyNSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggdjIgMTkvMjJdIGRybS9pOTE1OiBkb24ndCBhbGxvY2F0ZSB0aGUgcmluZyBpbg0K
PiBzdG9sZW4gaWYgd2UgbGFjayBhcGVydHVyZQ0KPiANCj4gU2luY2Ugd2UgaGF2ZSBubyB3YXkg
YWNjZXNzIGl0IGZyb20gdGhlIENQVS4gRm9yIHN1Y2ggY2FzZXMganVzdCBmYWxsYmFjayB0bw0K
PiBpbnRlcm5hbCBvYmplY3RzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmdidWZmZXIuYyB8IDQgKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmdidWZmZXIuYw0KPiBpbmRleCBlMjIwYzA5YzZmMzIuLmM0OGYxZDIwYWY1ZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYw0KPiBA
QCAtMTI3Myw3ICsxMjczLDkgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqY3JlYXRlX3Jpbmdf
dm1hKHN0cnVjdA0KPiBpOTE1X2dndHQgKmdndHQsIGludCBzaXplKQ0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmo7DQo+ICAJc3RydWN0IGk5MTVfdm1hICp2bWE7DQo+IA0KPiAt
CW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUpOw0KPiArCW9i
aiA9IEVSUl9QVFIoLUVOT0RFVik7DQo+ICsJaWYgKEhBU19NQVBQQUJMRV9BUEVSVFVSRShpOTE1
KSkNCj4gKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oaTkxNSwgc2l6ZSk7
DQoNCkRvbid0IHdlIGFscmVhZHkgc3VwcG9ydCBsb2NhbCBzdG9sZW4gbWVtb3J5IHJlZ2lvbj8g
IEluIHRoaXMgY2FzZSwgaWYgaXQgaGFzIGFwZXJ0dXJlLCBpdCBpcyBiaW9zIHN0b2xlbiBzeXN0
ZW0gbWVtb3J5LCBpZiBubyBhcGVydHVyZSwgaXQgaXMgbG9jYWwgc3RvbGVuIG1lbW9yeSwgdGhl
IHNhbWUgY2FsbCB0byBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbigpIHdpbGwgd29yayBp
biBib3RoIGNhc2VzLg0KDQotLUNRDQoNCg0KPiAgCWlmIChJU19FUlIob2JqKSkNCj4gIAkJb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsNCj4gIAlpZiAo
SVNfRVJSKG9iaikpDQo+IC0tDQo+IDIuMjAuMQ0KPiANCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
