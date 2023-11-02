Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1427DFC4E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 23:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093DB10E178;
	Thu,  2 Nov 2023 22:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA62110E178
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 22:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698963693; x=1730499693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eycODG6xUdfhR2pZPvjCUWPvnEY89b4opv5fGA3i6uk=;
 b=e8ZVa2QX74ACwVA6A7igECG8n04627VqJef9o2I3xqjD2RdlJc64p76b
 4v13hhRLxW30KS0ZsKymlcIsTe13J7GSZKInVhu61uWQgcaf610gSNDz3
 8DqkqJfyBEgtUEHgZFn+JyCRi406y3Y7jGQt1EBQi/wps4Y9bQJ2FxXZr
 H67lqx1H+G9LIfgjRSyZT6I4UXjYucpQwLd532H9eIEfv0UZjsr0nPitZ
 kKfULOjAoQzs1WMMI5T105dduJP89fpGqO8rnxpINojQx9JqxvdCKnue9
 lljD9LpchdA8W8iSzoHG/8JoFda1oMcvCItCmiQR5hFMWJCfGYBLt3zJ5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="387719451"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="387719451"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 15:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="852081273"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="852081273"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 15:14:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 15:14:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 15:14:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 15:14:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2FlNPGuFLad+HQzB41xaOQ1i25bzUDsaMS9UZnzD3TtYG/yvUnYI20RWeeSUjz7xVMvY2wDM9XloI9d9ogiLKGt6klX5l6Wa+QRphjrpSapw5vkBuhQXv4eZvRAt/i4yPnbj0lsqo4IjsZ7CJucLj2ybU2ovarN/jx1pVjVoIK9/YHu7KYHpDjaOwDO8/F6GJiHPk3WsJ5fqx91X4510wrWHG0NoJ9rrFfgV8XARUMF8LjbfQrGnh44/on0xUBjFwKEb3LUAyi4bxZnGr2f01bpahDCUA1ArEQ4vbemV8tZCRca5Z8ROaBnquk90ZHr4pvP3KoXm8vVBJUirT3ShQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eycODG6xUdfhR2pZPvjCUWPvnEY89b4opv5fGA3i6uk=;
 b=PfO1u/+iXUqWMZAWjqLef+ojYLHl+iZm8UFMNabkj13FaM7Jlf0OyJAwufeiRxfh53hnCx3PVGviZR1fLBfnzRbWUIr11AEq8AJHTxCyUt0CETEHxq2h3scnmLDSjKHN9irJJ4SsDMWpj9RzuL/ENfH5Aaqrsx9IvJ2jweOo6iqy6pGZCaoHcXKOb4yuz0SZgCA2burUM+3Wfmed/BZ++mvOrXvIdHxtD2eeAx1E+a5lOpHrOVMIdRsZ7UOia/hYeA82licxpaqXBl5W1SbSFPfWC0XRfYG3a/yQNCwijVUwGEJE+AxdzTQKuD0TBQLknJ3MnQIxp3PSjaExdqD/ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH3PR11MB8592.namprd11.prod.outlook.com (2603:10b6:610:1b1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 22:14:18 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85%4]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 22:14:18 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Hajda, Andrzej"
 <andrzej.hajda@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d
 is enabled
Thread-Index: AQHaDabTvnAABxr1ckWWdxkrt2u5lbBnQFgAgAAL7YCAAADLgA==
Date: Thu, 2 Nov 2023 22:14:18 +0000
Message-ID: <DM4PR11MB59717CE2FEF0F4DA5380992187A6A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
 <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
In-Reply-To: <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH3PR11MB8592:EE_
x-ms-office365-filtering-correlation-id: 28cf0a7a-13da-4808-4d67-08dbdbf10eaa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qN6z5qGhaxoWVhVx3SXdvB6+GSIlVXeBWcwrwtx4I3fUILqQJEn7YCXwiaixOAyJVPCuGtTKAYd2Es8rybT56Xp5IU2OOVVw+oL6Hv7MTBk7E3fFIL7MHvjDPsakmW4+Uy3lLVPZcRDvSC2dCBjdmq8YDsBzJVJB/swSzgGbvFuMk+3M6EOJ9pYzin9MWihTMB+bYQE5J+HhA+zeNHL0DWwudgCKh7DBrpHiJ1zVPRJuI4qNhxJLMXSmi9Par4CAqTMz9rdjOK8BcUW7rMA8cEbQ8U89sKfqGnadTZRVeNEW9HUSfyI8E31j4mn9Lb4nbXmdb+oR5gMfTBhK3Unu/B8bd82ccLXNqLhtrUuTHcS5Tm/QAjmMZErYTbUOZr9A5GXopXyEfLjutrQiKa00NX5rO1cpqfyahXAHWF4cm1euDqdw5Z0uxo/Q7sZnlbzhvctotG2bDlTkziz235nr9ba0dZhRCuzRwU9Y2khDw9rvJI9X67tqE/FpJQ1xIQQIvLQGaFLaFBdWadAz3MF+KkY5w5RRrvP38stFvM0NBBMQs8zG42+jr83ibjXZkub0hD83pCGY4c9e+Y/RnxhsZt632G5r8ewUIeQ4g6tQPuk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(396003)(136003)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(55016003)(966005)(82960400001)(41300700001)(5660300002)(86362001)(122000001)(2906002)(38100700002)(26005)(9686003)(52536014)(8936002)(71200400001)(83380400001)(8676002)(110136005)(66556008)(4326008)(7696005)(478600001)(64756008)(6506007)(53546011)(316002)(66446008)(66946007)(76116006)(66476007)(38070700009)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cm5KckVPTTAyNHNIZEMwZDJJT2Z4REhidlI1Y1d2eUswR3I2S1ZLZUxZMUIv?=
 =?utf-8?B?d1FYWEFQTE1QQjErVTA0R2VnbE44VU9WMWtxTXNwakRkMjFrSk5qZHdadWVa?=
 =?utf-8?B?K0tSU09HZFZzWURXU2ZIcXFkelg4aUNVdmMrckFmNE9paGpkRHRtZ3lxQnlk?=
 =?utf-8?B?WHFkOFNBWXhYd3RIVktMVWFzejBuQUlFcGFJZGRaQnZLNDBLYTYxSUJscDVK?=
 =?utf-8?B?K0thTU0rRndNUjBBd2V0YkNQemkwdVdReXM0N2lXWUNHUUhSckRhbFVjbkNF?=
 =?utf-8?B?bVM5NmdPbmc1RnI0bFZKbExMYzhHS2pMWVdhckFBOWkrVlB4T2QvUVdTL3hM?=
 =?utf-8?B?U0RieHdsZ1RxZlh6T1g5NHZsakVveEMreDRnV1ZJMTZOQ080enkzNXBDUjAy?=
 =?utf-8?B?ekpFZzk0V3dIUUZzK1J4dlRHSnlHVGJZQ2tkS3FFcmtSaCs5VXkrMkxEcElu?=
 =?utf-8?B?dHI5YkRNY0daWmpNRUlrWU5FRG83c2M4T3ZodkhGRXNrUE9zcTNsaGlILy8v?=
 =?utf-8?B?T3k4VkpKZ3Y0RnZpMlhKckVxZzlZcy9vSFZERUU2alFmUjV3L2hOTzYvNWpi?=
 =?utf-8?B?UFNVcUpKMzBXYit6dHRBNm90M0dRc2dLbGVSQUF2UERZZ3NRbDh4SXoxTlc3?=
 =?utf-8?B?ejhudnZzbWk0bWh2MnRhTW5BM21XckkzQTMyVzc0R1RDT095Znp0RGprVzQv?=
 =?utf-8?B?R0d6K25HK2tPQXpodVNMQ1IwTEw3R0R1dUJ6N3R3NFBhQUhCNmJXdEV4eUl1?=
 =?utf-8?B?ZXNvY3VGckxubDVXSFB3SEpvc0lhUGlsREIzK2hQbGVjMFR4RE5XdmxrWENC?=
 =?utf-8?B?R2YrZEFQb2RjUXF0aTVJQk41WHAwT0VlQ0thQnlNSjR3SFdEMW1rK2hCS3Z3?=
 =?utf-8?B?d1B5Ly9vMENCWG1KOFBDVHBVSHFVZ1pJQW9Bc3BlME5CMUo1KzZmdEc0d1JW?=
 =?utf-8?B?c21CemVRVytCVk1scGlZOTJtSGgrT1BWQjNVU0F5ZFN3aHdscW1SNjU3OUdD?=
 =?utf-8?B?NlRuNGUrRW9PSGxVckd5MXdEQVhidU1lcDdWcXcxWXNrUGdxeG1IVHpIZTFU?=
 =?utf-8?B?NHBtWnZJTE9rUXVGWTZZR0VEYmM3QUM4eENpdDBmanMwb0ljc2tsSjZXUmNp?=
 =?utf-8?B?Y21DMUEvYUVqa1BOcjlqTTRGNllEZW9hZ0VIZmxHZjl6TXF3Y084MnZ4dExF?=
 =?utf-8?B?VHR4ZSt3a0VLREhlY2xDeHk5ZGtIZlRsNVlicnJlRmdrUUI0MWNLUkMyb1R2?=
 =?utf-8?B?S0J5Snc4L0lEYUthUmJ1MTZELzVGRkYwaEkwbTAzSWIrWGZFK0VFU0w0Y0xD?=
 =?utf-8?B?dDZFbkNvczRBQkRYS2FHeEsvenBTNlZCWUxVanZmMDIrR2Fib21yZjE4Y0xY?=
 =?utf-8?B?alBYRjBUelNKblkraHVISTFDRzF3aGZRVWxlaDB2aU1GMmpTV2NyZkR1YWZz?=
 =?utf-8?B?aWlFdWtjTXpnblNVbDNtREhHM2RTSU1WV3JsSUxVZWtLSzZpQnBUSjZVYUNu?=
 =?utf-8?B?S3RkV0VneDJhLzJRZ3lLRWE0YmU0U2FaZTNNbEd6cWxIYWx2YmRxQkxIbjhm?=
 =?utf-8?B?a1lDUXA3RjZEQlJIVEZiaVY1Y2l3UU9lVlpQMTR4bTBjWTdIQUFZaUxSemF6?=
 =?utf-8?B?TVo4dU4wd2cyL21qY0piejViMFN6aHpxMmFhRHRtRFhpZmVUUUhUTXdDNGVU?=
 =?utf-8?B?MXZTYzl0R1Q1OC9DM3RQNTFLVVZDa0kxMXdSUitwQkpBdnU3MGZuODc3MGtF?=
 =?utf-8?B?YUJTdGtrSGU1WndEUlVMajNDa1J2dmdBRzhiRDFoLys3NWZsVjM3Y2lRcVhn?=
 =?utf-8?B?UXFiSk1uWXJlUDlIVEd2eFBsQXEwUFNydW5vWWdHY0U1dmZyRGtyUi9PSVpI?=
 =?utf-8?B?NWkySUFhVlNudnQrM1YxOWY1YUJiSDNuMUxKYXlIeVJtWksyUGhGVHhXdjYx?=
 =?utf-8?B?NmtlS3BhQy94NksrYmNqQlg5TnBFZGdXSHVIZ0tHaENDeUlFRGNRWG9lZFB5?=
 =?utf-8?B?RFFXUXJSNVNvbXZjNFIxMkRxOW5uUWpYTWV6L2J1a3JUZ2ViYzJyeGdmZDR2?=
 =?utf-8?B?YUxCdDFSSE1IZ0FnR2pTWjV6dWY0Nys2RlVTMUorb3VqU08rM25lczdrT3M3?=
 =?utf-8?B?aVFsYlZEd3ZFdi9ndDRZWk5SUFJWREQ2aWdmd0tpR29EaTlRS1gxSzdtK0xB?=
 =?utf-8?B?dVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cf0a7a-13da-4808-4d67-08dbdbf10eaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 22:14:18.2170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qLHjJRm2l20BNOD2lEG1uXecm+VBpOh+ZtbPLNO1lmIckGwTuqnelM6qW02EUk1rsobsnx1DmZ0A0UjUh8CPO42A4g7LnQQuSZOKZlOJwYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8592
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJz
ZGF5LCBOb3ZlbWJlciAyLCAyMDIzIDEwOjQxIEFNDQo+IFRvOiBIYWpkYSwgQW5kcnplaiA8YW5k
cnplai5oYWpkYUBpbnRlbC5jb20+OyBTcmlwYWRhLCBSYWRoYWtyaXNobmENCj4gPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9tdGw6IEluY3JlYXNlIGd1
YXJkIHBhZ2VzIHdoZW4gdnQtZCBpcw0KPiBlbmFibGVkDQo+IA0KPiANCj4gT24gMDIvMTEvMjAy
MyAxNjo1OCwgQW5kcnplaiBIYWpkYSB3cm90ZToNCj4gPiBPbiAwMi4xMS4yMDIzIDE3OjA2LCBS
YWRoYWtyaXNobmEgU3JpcGFkYSB3cm90ZToNCj4gPj4gRXhwZXJpbWVudHMgd2VyZSBjb25kdWN0
ZWQgd2l0aCBkaWZmZXJlbnQgbXVsdGlwbGllcnMgdG8gVlREX0dVQVJEIG1hY3JvDQo+ID4+IHdp
dGggbXVsdGlwbGllciBvZiAxODUgd2Ugd2VyZSBvYnNlcnZpbmcgb2NjYXNpb25hbCBwaXBlIGZh
dWx0cyB3aGVuDQo+ID4+IHJ1bm5pbmcga21zX2N1cnNvcl9sZWdhY3kgLS1ydW4tc3VidGVzdCBz
aW5nbGUtYm8NCj4gPj4NCj4gPj4gVGhlcmUgY291bGQgcG9zc2libHkgYmUgYW4gdW5kZXJseWlu
ZyBpc3N1ZSB0aGF0IGlzIGJlaW5nDQo+ID4+IGludmVzdGlnYXRlZCwgZm9yDQo+ID4+IG5vdyBi
dW1wIHRoZSBndWFyZCBwYWdlcyBmb3IgTVRMLg0KPiA+Pg0KPiA+PiBDbG9zZXM6IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjAxNw0KPiA+PiBDYzog
R3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID4+IENjOiBDaHJpcyBX
aWxzb24gPGNocmlzLnAud2lsc29uQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gU2lnbmVkLW9mZi1i
eTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4N
Cj4gPj4gLS0tDQo+ID4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21h
aW4uYyB8IDMgKysrDQo+ID4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4g
Pj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
b21haW4uYw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4u
Yw0KPiA+PiBpbmRleCAzNzcwODI4ZjJlYWYuLmI2NWY4NGM2YmIzZiAxMDA2NDQNCj4gPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jDQo+ID4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYw0KPiA+PiBAQCAtNDU2
LDYgKzQ1Niw5IEBAIGk5MTVfZ2VtX29iamVjdF9waW5fdG9fZGlzcGxheV9wbGFuZShzdHJ1Y3QN
Cj4gPj4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPiA+PiDCoMKgwqDCoMKgIGlmIChpbnRl
bF9zY2Fub3V0X25lZWRzX3Z0ZF93YShpOTE1KSkgew0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
dW5zaWduZWQgaW50IGd1YXJkID0gVlREX0dVQVJEOw0KPiA+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KElTX01FVEVPUkxBS0UoaTkxNSkpDQo+ID4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGd1YXJk
ICo9IDIwMDsNCj4gPj4gKw0KPiA+DQo+ID4gMjAwICogVlREX0dVQVJEID0gMjAwICogMTY4ICog
NEsgPSAxMzFNQg0KPiA+DQo+ID4gTG9va3MgaW5zYW5lbHkgaGlnaCwgMTMxTUIgZm9yIHBhZGRp
bmcsIGlmIHRoaXMgaXMgYmVmb3JlIGFuZCBhZnRlciBpdA0KPiA+IGJlY29tZXMgZXZlbiAyNjJN
QiBvZiB3YXN0ZWQgYWRkcmVzcyBwZXIgcGxhbmUuIEp1c3Qgc2lnbmFsbGluZywgSSBkbw0KPiA+
IG5vdCBrbm93IGlmIHRoaXMgYWN0dWFsbHkgaHVydHMuDQo+IA0KPiBZZWFoIHRoaXMgZmVlbHMg
Y3JhenkuIFRoZXJlIG11c3QgYmUgc29tZSBvdGhlciBleHBsYW5hdGlvbiB3aGljaCBpcw0KPiBn
ZXR0aW5nIGhpZGRlbiBieSB0aGUgY3JhenkgYW1vdW50IG9mIHBhZGRpbmcgc28gSSdkIHJhdGhl
ciB3ZSBmaWd1cmVkDQo+IGl0IG91dC4NCj4gDQo+IFdpdGggMjYyTWlCIHBlciBmYiBob3cgbWFu
eSBmaXQgaW4gR0dUVCBiZWZvcmUgZXZpY3Rpb24gaGl0cz8gTiBzY3JlZW5zDQo+IHdpdGggZG91
YmxlL3RyaXBsZSBidWZmZXJpbmc/DQoNCkkgYmVsaWV2ZSB3aXRoIHRoaXMgbWV0aG9kIHdlIHdp
bGwgaGF2ZSB0byBsaW1pdCB0aGUgbm8gb2YgZnJhbWUgYnVmZmVycyBpbiB0aGUgc3lzdGVtLiBP
bmUgYWx0ZXJuYXRpdmUNCnRoYXQgd29ya2VkIGlzIHRvIGRvIGEgcHJvcGVyIGNsZWFyIHJhbmdl
IGZvciB0aGUgZ2d0dCBpbnN0ZWFkIG9mIGRvaW5nIGEgbm9wLiBBbHRob3VnaCBpdCBhZGRzIG1h
cmdpbmFsDQp0aW1lIGR1cmluZyBzdXNwZW5kL3Jlc3VtZS9ib290IGl0IGRvZXMgbm90IGFkZCBy
ZXN0cmljdGlvbnMgdG8gdGhlIG5vIG9mIGZiJ3MgdGhhdCBjYW4gYmUgdXNlZC4NCiANCj4gDQo+
IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+IFAuUy4gV2hlcmUgZGlkIHRoZSAxODUgZnJv
bSB0aGUgY29tbWl0IG1lc3NhZ2UgY29tZSBmcm9tPw0KMTg1IGNhbWUgZnJvbSBleHBlcmltZW50
IHRvIGluY3JlYXNlIHRoZSBndWFyZCBzaXplLiBJdCBpcyBub3QgYSBzdGFuZGFyZCBudW1iZXIu
DQoNClJlZ2FyZHMsDQpSYWRoYWtyaXNobmEoUkspIFNyaXBhZGENCg==
