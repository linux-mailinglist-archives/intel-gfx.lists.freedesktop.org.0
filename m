Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D9D4BBDD8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 17:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9197C10EE47;
	Fri, 18 Feb 2022 16:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BE810E2BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 16:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645203276; x=1676739276;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=9VYZR+yDY77ajO76Dp4cPmOu//TE1adimg1NkijXdqs=;
 b=SysWpCJGPhXJ+a/9VQOtnL7XrPi7DzP6B9chP93zGQ+r9rkDcJOjdiIX
 47AwjZjwUTxFYbTo3JapTR2I6dBJr0YX8Q2bvFGIh31gz8WF+HUISiKVd
 OO+BqNBwW4yKFbv11qkH1ad99fdV/x5Auchj+I8mYa1i3EOyszfCHJHxL
 6BXVyvGCqvqjbkAIZpJEF0sPCjlG1QOg3agIWHv8eTXO2J7iRH//FC/PH
 yJsVTr8O/8n2hDFfq5FC5tbMrkxnEjH1kdjubRtsVM1lw7IPAu5vEBPrz
 syw8LNhGuCC2jjf/OlJnbjG1rMZNEYqWm6x1xdAbibm2TeJv/I5pRl7gh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="251106165"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="251106165"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 08:54:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="590261940"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 18 Feb 2022 08:54:35 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 08:54:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 08:54:34 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Fri, 18 Feb 2022 08:54:34 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Do not use phy E
Thread-Index: AQHYJK1yAxlb1PZhUUms4XAZOxU9xKyaDcmA
Date: Fri, 18 Feb 2022 16:54:34 +0000
Message-ID: <a98458a0117cd9d5374a138cd826dca24f4ddbe1.camel@intel.com>
References: <20220218095438.451576-1-lucas.demarchi@intel.com>
 <20220218095438.451576-3-lucas.demarchi@intel.com>
In-Reply-To: <20220218095438.451576-3-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <31976715D41E014F8D3424CF333D56A4@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Do not use phy E
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTAyLTE4IGF0IDAxOjU0IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFBPUlRfVEMxIGlzIHN0aWxsIG5vdCBiZWluZyBpbml0aWFsaXplZCAtIHRoYXQgaXMgdGhl
IHBvcnQgdGhhdCB1c2VzIHBoeQ0KPiBFLiAgSG93ZXZlciB0aGUgaW50ZWxfcGh5X2lzX3NucHMo
KSByZXBvcnRzIHRoYXQgcGh5IGFzIGJlaW5nIHByZXNlbnQsDQo+IHdoaWNoIGNhdXNlcyB3YXJu
aW5ncyBhYm91dCB1bmNsYWltZWQgYWNjZXNzIHRvIHRoZSBQSFlfTUlTQyByZWdpc3Rlci4NCj4g
RXZlbiB3aXRoIHNvbWUgYmFzaWMgd2lyaW5nIHVwIGZvciB0aGF0IHBvcnQsIGl0IHN0aWxsIGdp
dmVzIHRoZSBlcnJvcjoNCj4gDQo+IAlpOTE1IDAwMDA6MDM6MDAuMDogW2RybV0gKkVSUk9SKiBT
TlBTIFBIWSBFIGZhaWxlZCB0byBjYWxpYnJhdGUgYWZ0ZXIgMjVtcy4NCj4gDQo+IFNvIHJlbW92
ZSBpdCBmb3Igbm93Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNSArKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDU5OTYxNjIxZmU0YS4uYzNi
YjJkYTllOTNhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiBAQCAtMjE0OCw5ICsyMTQ4LDEwIEBAIGJvb2wgaW50ZWxfcGh5X2lzX3Nu
cHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkpDQo+ICAJ
ZWxzZSBpZiAoSVNfREcyKGRldl9wcml2KSkNCj4gIAkJLyoNCj4gIAkJICogQWxsIGZvdXIgImNv
bWJvIiBwb3J0cyBhbmQgdGhlIFRDMSBwb3J0IChQSFkgRSkgdXNlDQo+IC0JCSAqIFN5bm9wc2lz
IFBIWXMuDQo+ICsJCSAqIFN5bm9wc2lzIFBIWXMuIEhvd2V2ZXIgdGhlIGxhc3Qgd2lsbCBvbmx5
IGJlIHVzZWQgd2hlbg0KPiArCQkgKiBQT1JUX1RDMSBpcyBlbmFibGVkLg0KPiAgCQkgKi8NCj4g
LQkJcmV0dXJuIHBoeSA8PSBQSFlfRTsNCj4gKwkJcmV0dXJuIHBoeSA8PSBQSFlfRDsNCj4gIA0K
PiAgCXJldHVybiBmYWxzZTsNCj4gIH0NCg0K
