Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F874C2C5A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 14:01:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC87010FC73;
	Thu, 24 Feb 2022 13:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F1210FC73
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 13:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645707692; x=1677243692;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QA1oshEU1xxoap4W25mOe5NmDgTqzxZmibWbEIf0WX4=;
 b=AodW2bnW8NgfEV1qUXk4eedni6xLAnzzh/WIjC5s2CTCvDaGKfVgqgcG
 CKb7YxeGIuK4wWetaMz6mBngvAWlLkpLF6QQiblEPBaRSYB/ORci3KEHa
 4KrlAfbUb6FsVIvy0xi/n7yuLmaLeTcnxlhLSRBfycMl9kI2NUHYl/EgL
 LrQnkCGG90CGd+9Szh2bDJ5EzSw0ZoY1WiSLB3qb1hPWFrGUagdxbraVE
 bUXDKT3qs0xyxi7mHa0kvJqFaxipkHZUE7dqRG2LhUyFhg5bEB3Suk97c
 7Ab8iliFn6ssSYwQxyh/x+E/r1jFHm1bradLuthotx4l67oMCu/ktIRV4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="338665107"
X-IronPort-AV: E=Sophos;i="5.88,134,1635231600"; d="scan'208";a="338665107"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 05:01:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="637824407"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2022 05:01:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 05:01:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 05:01:24 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 24 Feb 2022 05:01:24 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable PSR2
Thread-Index: AQHYKOz7fWJqCeQPZEycxfqlgPgbDqyjAkWAgAAv4gA=
Date: Thu, 24 Feb 2022 13:01:24 +0000
Message-ID: <6dfd659cd15317139cade1c4c1e2825475167940.camel@intel.com>
References: <20220223194103.715109-1-jose.souza@intel.com>
 <YhdaA6hbK0bhjWsQ@intel.com>
In-Reply-To: <YhdaA6hbK0bhjWsQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC23AEC79B23EF4592725A2190180875@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable
 PSR2
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

T24gVGh1LCAyMDIyLTAyLTI0IGF0IDEyOjEyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDIzLCAyMDIyIGF0IDExOjQxOjAzQU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gU29tZSB1c2VycyBhcmUgc3VmZmVyaW5nIHdpdGggUFNS
MiBpc3N1ZXMgdGhhdCBhcmUgdW5kZXIgZGVidWcgb3INCj4gPiBpc3N1ZXMgdGhhdCB3ZXJlIHJv
b3QgY2F1c2VkIHRvIHBhbmVsIGZpcm13YXJlLCB0byBtYWtlIGxpZmUgb2YgdGhvc2UNCj4gPiB1
c2VycyBlYXNpZXIgaGVyZSBhZGRpbmcgYSBvcHRpb24gdG8gZGlzYWJsZSBQU1IxIHdpdGgga2Vy
bmVsDQo+ID4gcGFyYW1ldGVyLg0KPiA+IA0KPiA+IFVzaW5nIHRoZSBzYW1lIGVuYWJsZV9wc3Ig
dGhhdCBpcyBjdXJyZW50IHVzZWQgdG8gdHVybiBQU1IxIGFuZCBQU1IyDQo+ID4gb2ZmIG9yIG9u
IGFuZCBhZGRpbmcgYSBuZXcgdmFsdWUgdG8gb25seSBkaXNhYmxlIFBTUjIuDQo+ID4gVGhlIHBy
ZXZpb3VzIHZhbGlkIHZhbHVlcyBkaWQgbm90IGhhZCB0aGVpciBiZWhhdmlvciBjaGFuZ2VkLg0K
PiA+IA0KPiA+IExpbms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
LS9pc3N1ZXMvNDk1MQ0KPiA+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDQgKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BhcmFtcy5jICAgICAgIHwgMiArLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDJlMGIwOTJmNGI2YmUuLmZjNmI2ODRiYjdiZWMgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBA
QCAtMTAwLDExICsxMDAsMTUgQEAgc3RhdGljIGJvb2wgcHNyX2dsb2JhbF9lbmFibGVkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gIA0KPiA+ICBzdGF0aWMgYm9vbCBwc3IyX2dsb2Jh
bF9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gIHsNCj4gPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gKw0K
PiA+ICAJc3dpdGNoIChpbnRlbF9kcC0+cHNyLmRlYnVnICYgSTkxNV9QU1JfREVCVUdfTU9ERV9N
QVNLKSB7DQo+ID4gIAljYXNlIEk5MTVfUFNSX0RFQlVHX0RJU0FCTEU6DQo+ID4gIAljYXNlIEk5
MTVfUFNSX0RFQlVHX0ZPUkNFX1BTUjE6DQo+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+ICAJZGVm
YXVsdDoNCj4gPiArCQlpZiAoaTkxNS0+cGFyYW1zLmVuYWJsZV9wc3IgPT0gMikNCj4gPiArCQkJ
cmV0dXJuIGZhbHNlOw0KPiA+ICAJCXJldHVybiB0cnVlOw0KPiA+ICAJfQ0KPiA+ICB9DQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jDQo+ID4gaW5kZXggZWVhMzU1YzJmYzI4YS4uYTli
OTdlNmViM2RmMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bh
cmFtcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYw0KPiA+
IEBAIC05NCw3ICs5NCw3IEBAIGk5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9oYW5nY2hl
Y2ssIGJvb2wsIDA0MDAsDQo+ID4gIA0KPiA+ICBpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFi
bGVfcHNyLCBpbnQsIDA0MDAsDQo+ID4gIAkiRW5hYmxlIFBTUiAiDQo+ID4gLQkiKDA9ZGlzYWJs
ZWQsIDE9ZW5hYmxlZCkgIg0KPiA+ICsJIigwPWRpc2FibGVkLCAxPWVuYWJsZSB1cCB0byBQU1Iy
IGlmIHN1cHBvcnRlZCwgMj1lbmFibGUgdXAgdG8gUFNSMSkgIg0KPiANCj4gVGhhdCBzZWVtcyB2
ZXJ5IHVuaW50dWl0aXZlLiBJIHdvdWxkIGp1c3QgbWFrZSBpdCAxPT1QU1IxIGFuZCAyPT1QU1Iy
Lg0KDQpUaGlzIHdpbGwgYnJlYWsgY3VycmVudCBiZWhhdmlvci4NCg0KT3RoZXIgb3B0aW9uIGlz
IHRvIGFkZCBhbm90aGVyIHBhcmFtZXRlci4uLg0KDQo+IA0KPiA+ICAJIkRlZmF1bHQ6IC0xICh1
c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4gPiAgDQo+ID4gIGk5MTVfcGFyYW1fbmFtZWQocHNy
X3NhZmVzdF9wYXJhbXMsIGJvb2wsIDA0MDAsDQo+ID4gLS0gDQo+ID4gMi4zNS4xDQo+IA0KDQo=
