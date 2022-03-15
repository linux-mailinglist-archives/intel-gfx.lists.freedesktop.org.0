Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6034DA276
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6799210E141;
	Tue, 15 Mar 2022 18:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B2110E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647369407; x=1678905407;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=DStdcjsnuiP+sBp6/dzDDKlgqB3BWAYkdhqP86HhKMc=;
 b=V3T3/fZy5mZw4IEB/eXRePU/mrxklp64vsUHX+yo+Mo9lu9n612bsSDH
 IPaNxruwlCaP+J0dZz5VdxFUuL8G+i5ADwqMMsliq7lDkBxGhleYQBwMV
 XeC7voxeRdoWwoTXYNdQm1VYk9MAp0qIt07nKzn/ABHga5VDPIIw0vsO9
 crO1luHK/iYZLBYESIXz+LVEMEKSQDtQFCfholauix0uqNjW+5GCS2fP0
 SfdNqMJDRJCs7djYVfxUi+8EOMWowo4p+czS5r8bkrz5NjJq9eUEnploP
 IL4dvNfIrQX9N/WqZ5pnAdFjAWS487t3DKKXNvx+v3dTsnHC6n3Avrfkg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256589286"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="256589286"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:36:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="714292703"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 15 Mar 2022 11:36:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:36:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:36:45 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 15 Mar 2022 11:36:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/9] drm/i195: Determine DRRS
 frontbuffer_bits ahead of time
Thread-Index: AQHYOHCIbP1o6F7IB0y6kyfewNw6XKzBPASA
Date: Tue, 15 Mar 2022 18:36:44 +0000
Message-ID: <70ad17b40230ecaf0d803dcdffdf753f2b56fae5.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315132752.11849-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D4A0C5325DDCCE4ABE349F5B489B790B@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i195: Determine DRRS
 frontbuffer_bits ahead of time
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

T24gVHVlLCAyMDIyLTAzLTE1IGF0IDE1OjI3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUHJlLWRldGVybWluZSB0aGUgZnJvbnRidWZmZXJfYml0cyBmb3IgdGhlIGVhY2ggcGlw
ZSBkdXJpbmcNCj4gaW50ZWxfZHJyc19lbmFibGUoKS4gV2lsbCBiZWNvbWUgdXNlZnVsIGZvciBi
aWdqb2luZXIgdXNlIGNhc2VzDQo+IHNvb24uDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8ICAx
ICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jICAgICAgICAg
IHwgMTEgKysrKysrKysrKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggZDg0ZTgyZjNlYWI5Li5jOTRlYjdkNTE5
MWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMzAyLDYgKzEzMDIsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0
YyB7DQo+ICAJCXN0cnVjdCBtdXRleCBtdXRleDsNCj4gIAkJc3RydWN0IGRlbGF5ZWRfd29yayB3
b3JrOw0KPiAgCQllbnVtIGRycnNfcmVmcmVzaF9yYXRlIHJlZnJlc2hfcmF0ZTsNCj4gKwkJdW5z
aWduZWQgaW50IGZyb250YnVmZmVyX2JpdHM7DQo+ICAJCXVuc2lnbmVkIGludCBidXN5X2Zyb250
YnVmZmVyX2JpdHM7DQo+ICAJCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcjsNCj4gIAkJ
c3RydWN0IGludGVsX2xpbmtfbV9uIG1fbiwgbTJfbjI7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHJycy5jDQo+IGluZGV4IGU5ZDYyMmZlNjZiMy4uOTFhYWI3N2M0OTVj
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiBA
QCAtMTY4LDYgKzE2OCwxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcnJzX3NldF9zdGF0ZShzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAljcnRjLT5kcnJzLnJlZnJlc2hfcmF0ZSA9IHJlZnJl
c2hfcmF0ZTsNCj4gIH0NCj4gIA0KPiArc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9kcnJzX2Zy
b250YnVmZmVyX2JpdHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNf
c3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICsNCj4gKwlyZXR1cm4gSU5URUxfRlJPTlRCVUZGRVJfQUxM
X01BU0soY3J0Yy0+cGlwZSk7DQo+ICt9DQo+ICsNCj4gIC8qKg0KPiAgICogaW50ZWxfZHJyc19l
bmFibGUgLSBpbml0IGRycnMgc3RydWN0IGlmIHN1cHBvcnRlZA0KPiAgICogQGNydGNfc3RhdGU6
IEEgcG9pbnRlciB0byB0aGUgYWN0aXZlIGNydGMgc3RhdGUuDQo+IEBAIC0xOTAsNiArMTk3LDcg
QEAgdm9pZCBpbnRlbF9kcnJzX2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkNCj4gIAljcnRjLT5kcnJzLmNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+
Y3B1X3RyYW5zY29kZXI7DQo+ICAJY3J0Yy0+ZHJycy5tX24gPSBjcnRjX3N0YXRlLT5kcF9tX247
DQo+ICAJY3J0Yy0+ZHJycy5tMl9uMiA9IGNydGNfc3RhdGUtPmRwX20yX24yOw0KPiArCWNydGMt
PmRycnMuZnJvbnRidWZmZXJfYml0cyA9IGludGVsX2RycnNfZnJvbnRidWZmZXJfYml0cyhjcnRj
X3N0YXRlKTsNCj4gIAljcnRjLT5kcnJzLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9IDA7DQo+ICAN
Cj4gIAltdXRleF91bmxvY2soJmNydGMtPmRycnMubXV0ZXgpOw0KPiBAQCAtMjE2LDYgKzIyNCw3
IEBAIHZvaWQgaW50ZWxfZHJyc19kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpvbGRfY3J0Y19zdGF0ZSkNCj4gIAkJaW50ZWxfZHJyc19zZXRfc3RhdGUoY3J0YywgRFJSU19S
RUZSRVNIX1JBVEVfSElHSCk7DQo+ICANCj4gIAljcnRjLT5kcnJzLmNwdV90cmFuc2NvZGVyID0g
SU5WQUxJRF9UUkFOU0NPREVSOw0KPiArCWNydGMtPmRycnMuZnJvbnRidWZmZXJfYml0cyA9IDA7
DQo+ICAJY3J0Yy0+ZHJycy5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiAgDQo+ICAJbXV0
ZXhfdW5sb2NrKCZjcnRjLT5kcnJzLm11dGV4KTsNCj4gQEAgLTI3OCw3ICsyODcsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9kcnJzX2Zyb250YnVmZmVyX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsDQo+ICAJCQljb250aW51ZTsNCj4gIAkJfQ0KPiAgDQo+IC0JCWZyb250
YnVmZmVyX2JpdHMgPSBhbGxfZnJvbnRidWZmZXJfYml0cyAmIElOVEVMX0ZST05UQlVGRkVSX0FM
TF9NQVNLKGNydGMtPnBpcGUpOw0KPiArCQlmcm9udGJ1ZmZlcl9iaXRzID0gYWxsX2Zyb250YnVm
ZmVyX2JpdHMgJiBjcnRjLT5kcnJzLmZyb250YnVmZmVyX2JpdHM7DQo+ICAJCWlmIChpbnZhbGlk
YXRlKQ0KPiAgCQkJY3J0Yy0+ZHJycy5idXN5X2Zyb250YnVmZmVyX2JpdHMgfD0gZnJvbnRidWZm
ZXJfYml0czsNCj4gIAkJZWxzZQ0KDQo=
