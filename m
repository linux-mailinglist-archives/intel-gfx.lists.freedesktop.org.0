Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A945464D548
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 03:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA29110E4E0;
	Thu, 15 Dec 2022 02:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009D010E4E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 02:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671070792; x=1702606792;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vbMXfdXcPaEwy30jHeyHMtxdBYSbB5Bgn1aYnh+xja8=;
 b=Nm9LAJEmNsGKMFGFN4r1PX3L7YuZ+7v2lpwv8HiGSMl5WlkY8w5k+rnX
 wLGaKTEnq+QeWytAOw/y18OmeThUo8nVBNBrxOJlTR9GQgOLVCw4IeVzy
 AyOFHV9W7BdNGnmIQMJBamqsxwuLyKaCMfeJqLryiIDt5tzGce2Lzs897
 JrNcQr20x7JAXx6cP4jstze/IFYjxaxgCvkwOhroAicdV88MDA9h4seJ4
 xACv2J/+Vz+g33EHRz1GqrKkGwxOJGeAWp7pCePjPXDZeiDGhbuUgbYtS
 F77NRMAtjhSxCVZpVxdZoM+RM3uIX3AuTK9WNseh4dGF9pRuDUyqhWUIK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382868977"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="382868977"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 18:19:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="756154541"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="756154541"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2022 18:19:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 18:19:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 18:19:48 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 18:19:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvX3how0rdA5zQ7xJUUIUsncF8VDvFQHCoxyZEU8IZKNKCs/qm6UTTjqa7JOTtRVr6r4OsAX8lKYmW1Wx7gR79sLSPpPFGLdc52YlrqS0PrInsGiPvC51nfyaQ82+9hSlqQ0k8+3zum1Z7/THRqqma/6TDFigQX3N6oa2wkJbm5LEE2BcDawlES2/Fu2Rb47hPVPqfOV9Mie70ZB6YgUECFetd5oropNvvZ6bc3MGytMAt2b/L/6zRPiNqSRt+5rUMHj6yeo4OwisegGLdGxVxhJ6ULyyIzCUYit+SWEhBv0jcECRHrZKwB7le/MKHfkiH4ZKy6hEJeT0uCCY5fGKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vbMXfdXcPaEwy30jHeyHMtxdBYSbB5Bgn1aYnh+xja8=;
 b=nOyUMRCg9jRrAy1GMK6tgVytsGZL2pBsOxx2ijolIxvVjzrjLVQXi7wXWiC1UI0FVkyVS/mtlpXfPZQr1JM4rrB4uJj+7eTy48wux5D2oJXTxWBq82XjXpVqzTjl4woR348DsN+JxbQ/VWf+GS2Sz24PTHx1KPjwzfCghLVQlhOGdGpEXE8yoat9VgJsYE/2/FDPP08S6Ia1fLnBwNRk4OsAzoi34KW+8dJwlfgFcC9f6fj+f1tOQQp7qOFUMg0kvFmf02xfGAkX7+NW+Adm9Wkg1/2nA2pLKhN/CfP0qKj8nqyB1NodcsAeHzB2EEiJ3+BfeHrAMqzvhhJpky0HZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB7280.namprd11.prod.outlook.com (2603:10b6:8:108::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Thu, 15 Dec 2022 02:19:41 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 02:19:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
Thread-Index: AQHZDrbKxbIjEpoIdUuaRItoCyOqzq5svmLggAA7RoCAAT+3oA==
Date: Thu, 15 Dec 2022 02:19:41 +0000
Message-ID: <DM6PR11MB3177BD99792FBDAD9EF8D1BEBAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221213055106.2044535-1-ankit.k.nautiyal@intel.com>
 <BL0PR11MB3170C9A62B892B5619D8D943BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <5c564d27-29f9-5908-f73f-aa791f31bedf@intel.com>
In-Reply-To: <5c564d27-29f9-5908-f73f-aa791f31bedf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DM4PR11MB7280:EE_
x-ms-office365-filtering-correlation-id: 037d353e-de2e-483c-003f-08dade42d2d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TbYwDVsST+XEfvA7IlxCr81Eqc0Ov2jMKah2LLggWx2eSQXy0PXPVJ1dxzhFCNyppn5h4eLTjE7aDoNVrZeobpkPDX55S7pZfSNezy/Z5W9kOnFeP9dQJovdDL0wpPNtWUqNW56cwJGHqR+H8fMCknybmkWsC6sJdHvB0aZTvRaxNFwCcIlUg9Ek2y4hMI4wJW/bWvl4H5C8vyhvPbf/MqJ/CTBXPEk0KgVW1UnwFUrwtVOlpZn0cfeuCnLhp9gnTXCFLzjLNKva4cncYI1fP1QDiWh/7fkAxha+4gqsuq9EaB3ZqjDbrZBSvBYDV8UCLMW2fZARFCd5ImPL+62oQN58DyLJ9HLREB89636D5OWyS5tUANvkOeYAv0ZKRaa/yu9fo4R++V6uqsSTNKkmgTxrG/2X5bff3eUNszAbWFX0f8/qgMCBC3Ee3w4tOp8pwqC++65VEV9B6gUGLMQYRXMKRf6ZrfjKEGpTTQUgIuL8QMYuB7vsA+FQj2ZykVgqIcrl2IrhQfZxD1RYGbeIUl2noYQIxtZbAlxH6tlfKo3RFcRzlAnsN6gRx+E2Lz+sIHFe35RbGkaz3MPrudctWiFWd5qHp/iZafxIYCFlLaqYbgihD3CHW2k7g9SwQU0RD81zL+RLvGtz7b9InMTnXJtWk1eH9o2B2P3GhOdXrLSYEau8kEWClbUavIW5mo6go0rBATcgeFrKUhkcOCcWIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(366004)(346002)(451199015)(55016003)(2906002)(186003)(82960400001)(38100700002)(83380400001)(122000001)(8936002)(33656002)(71200400001)(9686003)(41300700001)(26005)(5660300002)(38070700005)(52536014)(86362001)(316002)(66556008)(66476007)(64756008)(53546011)(478600001)(110136005)(8676002)(55236004)(66446008)(66946007)(7696005)(76116006)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkROb0I2REFnZUI5bnhYMVhnTHg4dWljOU5GcHBrWG1NMWtlcFZ2UE9pdVIx?=
 =?utf-8?B?cjZPTnplOTZZcEFVeTJwMWh2cHFCVzh0OEY2akNXYXp0TUZaTEpJQW5PaG9z?=
 =?utf-8?B?ZFY4dG5XRmhUOWxBU2J2eWkxS1Q5a3M5RVk4QWs0SzI4TXU0TmF1eGhSVkRC?=
 =?utf-8?B?dllmMzF6TzhyVHBrenh6NXBjWGZNNDVrUFZlZTMvQllsS2NOOGNrZXJnbzNN?=
 =?utf-8?B?bUVNSGZHclovbk4wRGF6WmJ1NStoazVNL1h0dEh3dTRKZitSU0J1OGVhVEdo?=
 =?utf-8?B?QXFrc0RDOUx6bDI4NFgyYUVHb1pNVVRvSndKUEtyTzdVWi9UR2p3d2NpV2hi?=
 =?utf-8?B?Z1VTL0dNNHhFS2lxZUdEMy9QbzIzNUlFZFMwcVl5Tm4vZTNvcnlxN3A0cEJ6?=
 =?utf-8?B?U2xuRXdlVWw4NTlUTEM1clcxQmo5RXZXVTB3WkYrWTZIVG81Z3RqZURsYWl0?=
 =?utf-8?B?bDlXVjJIUVJwV3hkTHBYZHlYazBWWU11eGNxYnd1M0FRK09UL3BWdHdsbnlK?=
 =?utf-8?B?S3RRd2pVYWprdis0QnpWNG0zcG02U3BWZ3ZCdkovL1lzaVVKQ2ptcFZDbU4v?=
 =?utf-8?B?Y0VwNGJaM01CSmhvN0s1dHVQZDE1SlFKMmExaHIrb2ZSNTlON2R5UVJsU2dQ?=
 =?utf-8?B?RnRMY3N4NDFWVG45cEF0S29FWjZyTXpEV1FyWlg4aklXTVdvd3RvczA3NU4v?=
 =?utf-8?B?UzlNajliOFhZVi9POGpvc3ZTR3lza0dleXYxTzBha1IyZ1N2Y0JFbzFIdXRp?=
 =?utf-8?B?ZGNEcWthY3pYbEhURHVyUTlmeTZ6RVF4VU1zdU9mcGliZ2k2VmpCbGFiTk81?=
 =?utf-8?B?SGVCd3VtYmpWa3JRMnJoM3d4d2RJcU90a3pQTG9zRTVOd05UdmdqVDZyS2pq?=
 =?utf-8?B?VTB0Vzh0RW5hUis0SnhHMHh3WVJIbTdsZ2dhSGQ1WDJCOHZsYzJ4aHdLU3ZE?=
 =?utf-8?B?S0NUUklBNURKVWlTRzVoOTI4Qi8rRFQyQXFqOTdoUWgwNkxxMEFzRGxwNHBE?=
 =?utf-8?B?YnNSaG9FS2w0UXVxa1YzQ0g3cERnOVpuQTVUdDMxZU9PbjNYRStIZEhCcTBu?=
 =?utf-8?B?eEwzVVJHNjg0aFJLVTNxaWNteDNoU3JRU0ZYMWpsVEo1dTh4VGhUWTQwZ2Fz?=
 =?utf-8?B?MjNVT0VUK3dIcitLcHdNU1NMRU5yWEoyQ0tvR3dGT2ZnS0pYaG1rcEZhTnp5?=
 =?utf-8?B?WTd1WXo3MDkyUU10dVVPQnRXTC9pU0VyNGs5dlFLSS9ZTnNaWVNaczhhbHgz?=
 =?utf-8?B?d2RRWmlZbDA4WTBDb1NWRWgxOC9TZlRmNVhaM240K1NFWXNFQ2JYK0txQ1Yv?=
 =?utf-8?B?UWlsSEIvaXBURWpLRHlMRDFTRVBjd0Q1RWZYN0NsUTh5cU03eDBDV2toZGNo?=
 =?utf-8?B?dXE5V3BiWHJ1M2RiU1AzOXlBWEMwWFQzMlg1Z2daVWZMRGtjMDNES0tETlBj?=
 =?utf-8?B?b1lBaHBXUloxMnR6bHQxdy8vaEpuU1hsYU1YNUdtb3NrSm04YmR0MlA0UFpn?=
 =?utf-8?B?TGcvRXdITDZ5Zk12dktmNXpBQ0Zsa0Z4ZHhRNjJDSUhWTnpZMzQwWTRFaXZq?=
 =?utf-8?B?SDgyUVloSzdhNkhzT3pHVDBadFpyNnZSZVlKbXZKWEcwSTJqVXZPT3kvV0tN?=
 =?utf-8?B?dXUrMU51RGdMOHI2QkV3eGxmRzFncUxnS3ZYNjZLSEF6NGR6SitPUUlNMGZS?=
 =?utf-8?B?dkJEQUlEWGQvM09ITjZPc0IzWkVNZDdCVnZ0Tzh4K1VObjFNVThoQWZZZmlo?=
 =?utf-8?B?Wncxcjl2R0h0NmE2U0dMTGVHRTR4Z1c5ZUNUd0xRRTRWWWIva2xvWjVMUXNU?=
 =?utf-8?B?NEhwZGZPdzhtYzluSDcwaVlEMWdlbFplYjM5MUc3MXBnY1dzRVFiaDhUUHZH?=
 =?utf-8?B?Ym1TUGlaeTRraUpjV21Lam9peVFBZklqU0pGL296aU1UT1JVRGpMSG5yMzk0?=
 =?utf-8?B?MURBaGJpeHQ4VWFyVkt6azZmeXE1OWtnakRGRUY5MTA2MXFGVEJVU2QxVVZk?=
 =?utf-8?B?K0d0V28wckhBaFY2YTZlbUIvbWthbWtmY2g0b295bUExc3FhcnhNRStDeWpI?=
 =?utf-8?B?UmdmbVhSYVF1YkZKaHhNVEZCVWswQnI2NlJjaE5OZENJVzZDQ1JoVDlTRUY0?=
 =?utf-8?Q?Gu+IPkdzTZg8ECLzea8O/hhsq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 037d353e-de2e-483c-003f-08dade42d2d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 02:19:41.2260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Q6QYzUzLxV5qVi4V8ywWiVdy+33camNyFK39oim0+tpFUJtuf9VXyeKcJFMZNqoU6IpzfF8JtaE3b9RxdKhIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7280
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOYXV0aXlhbCwgQW5raXQgSyA8
YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIg
MTQsIDIwMjIgMTI6NDMgUE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGlu
dGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2hkbWk6IEdvIGZvciBzY3JhbWJsaW5n
IG9ubHkgaWYNCj4gcGxhdGZvcm0gc3VwcG9ydHMgVE1EUyBjbG9jayA+IDM0ME1Ieg0KPiANCj4g
DQo+IE9uIDEyLzE0LzIwMjIgOToxNiBBTSwgTXVydGh5LCBBcnVuIFIgd3JvdGU6DQo+ID4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4
LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4gPj4gT2YgQW5raXQg
TmF1dGl5YWwNCj4gPj4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgMTMsIDIwMjIgMTE6MjEgQU0N
Cj4gPj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4gU3ViamVjdDog
W0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9oZG1pOiBHbyBmb3Igc2NyYW1ibGluZyBvbmx5
IGlmDQo+ID4+IHBsYXRmb3JtIHN1cHBvcnRzIFRNRFMgY2xvY2sgPiAzNDBNSHoNCj4gPj4NCj4g
Pj4gVGhlcmUgYXJlIGNhc2VzLCB3aGVyZSBkZXZpY2VzIGhhdmUgYW4gSERNSTEuNCByZXRpbWVy
LCBhbmQgVE1EUw0KPiA+PiBjbG9jayByYXRlIGlzIGNhcHBlZCB0byAzNDBNSHogdmlhIFZCVC4g
SW4gc3VjaCBjYXNlcyBzY3JhbWJsaW5nDQo+ID4+IG1pZ2h0IGJlIHN1cHBvcnRlZCBieSB0aGUg
cGxhdGZvcm0gYW5kIGFuIEhETUkyLjAgc2luayBmb3IgbG93ZXIgVE1EUw0KPiA+PiByYXRlcywg
YnV0IG5vdCBzdXBwb3J0ZWQgYnkgdGhlIHJldGltZXIsIGNhdXNpbmcgYmxhbmtvdXRzLg0KPiA+
Pg0KPiA+PiBTbyBhdm9pZCBlbmFibGluZyBzY3JhbWJsaW5nLCBpZiB0aGUgVE1EUyBjbG9jayBp
cyBjYXBwZWQgdG8gPD0gMzQwTUh6Lg0KPiA+Pg0KPiA+IERvZXNuJ3QgdGhpcyBjbGFzaCB3aXRo
IHNjcmFtYmxpbmcgd2l0aCBsb3cgcmF0ZXM/DQo+IA0KPiBIaSBBcnVuLA0KPiANCj4gQXMgcGVy
IEhETUkgMi4wIHNwZWMsIHNjcmFtYmxpbmcgaXMgYWx3YXlzIHJlcXVpcmVkIHdoZW4gVE1EUyBj
aGFyIHJhdGUgID4NCj4gMzQwTWNzYw0KPiANCj4gU28gc2NyYW1ibGluZyBpcyBvcHRpb25hbCBm
b3IgcmF0ZSA8PSAzNDAsIGlmIHNvdXJjZSBhbmQgc2luayBib3RoIHN1cHBvcnQNCj4gc2NyYW1i
bGluZywgaXQgaXMgZW5hYmxlZCBieSB0aGUgc291cmNlLg0KPiANCj4gR2VuIDEwIG9ud2FyZCBI
RE1JIDIuMCBpcyBzdXBwb3J0ZWQsIHRoZSBtYXggdG1kcyBjbG9jayBpcyA1OTRNSHosIGFuZA0K
PiBzY3JhbWJsaW5nIGlzIHN1cHBvcnRlZC4NCj4gQnV0IHRoZXJlIHNlZW0gdG8gYmUgY2FzZXMg
d2hlcmUgZm9yIGNlcnRhaW4gcGxhdGZvcm1zIHRoYXQgc3VwcG9ydCBIRE1JDQo+IDIuMCwgdGhl
cmUgaXMgYW4gSERNSTEuNCByZXRpbWVyIGNoaXAgYW5kIHRoZSBtYXggdG1kcyBjbG9jayBpcyBj
YXBwZWQgYnkNCj4gVkJUIHRvIGxlc3MgdGhhbiAzNDBNSHouDQo+IEluIHN1Y2ggY2FzZXMgd2hl
biBhbiBIRE1JMi4wIHNpbmsgaXMgY29ubmVjdGVkLCB0aGUgZHJpdmVyIGNoZWNrcyBmb3IgR2Vu
DQo+ID49IDEwICsgc2luayBzY3JhbWJsaW5nIHN1cHBvcnQsIGFuZCBnb2VzIHdpdGggc2NyYW1i
bGluZyBldmVuIGZvcg0KPiByZXNvbHV0aW9ucyB0aGF0IHJlcXVpcmUgbG93ZXIgY2xvY2tzLg0K
PiBUaGlzIGNyZWF0ZXMgcHJvYmxlbSBhcyBIRE1JMS40IHJldGltZXIgY2hpcCBkb2Vzbid0IHN1
cHBvcnQgc2NyYW1ibGluZy4NCj4gDQo+IFNvIGluIHRoaXMgcGF0Y2gsIHdlIHJlcGxhY2UgdGhl
IGNoZWNrIGZvciBHZW4gPj0xMCB3aXRoIGNoZWNrIGlmIG1heCBzb3VyY2UNCj4gVE1EUyBjbG9j
ayA+IDM0MCBNSHogKHRha2luZyBpbnRvIGFjY291bnQgdGhlIFZCVCBjYXBwaW5nKS4NCj4gDQo+
IEluIGdlbmVyYWwgY2FzZSBmb3IgR2VuPj0gMTAgKHdoZW4gVkJUIGRvZXMgbm90IHJlc3RyaWN0
IHRoZSBtYXggdG1kcw0KPiBjbG9jayksIGlmIHNpbmsgYWxzbyBzdXBwb3J0cyBzY3JhbWJsaW5n
IGZvciBsb3dlciByYXRlLCBkcml2ZXIgd2lsbCBnbyB3aXRoDQo+IHNjcmFtYmxpbmcgd2l0aCBs
b3dlciBjbG9ja3MgdG9vLg0KPiANCkdvdCBpdCwgdGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24u
IEJldHRlciBpZiB0aGlzIGlzIGNvbW1lbnRlZCBpbiB0aGUgY29kZSBhcyB3ZWxsLg0KSnVzdCB0
byBrbm93IHRoZSByZXN0cmljdGlvbiBjb21pbmcgZnJvbSBWQlQuDQoNCldpdGggYWRkaW5nIGFi
b3ZlIGNvbW1lbnQgaW4gY29kZSwgDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5y
Lm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCj4gVGhhbmtzICYgUmVnYXJkcywNCj4gDQo+IEFua2l0
DQo+IA0KPiA+DQo+ID4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiA+IEFydW4gUiBNdXJ0aHkNCj4g
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlh
bCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNyArKysrKystDQo+ID4+ICAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+Pg0KPiA+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4g
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiA+PiBpbmRl
eCBlZmEyZGEwODBmNjIuLmMxMjRmZTY2N2JjMCAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gPj4gQEAgLTIyNDQsNiArMjI0NCwxMSBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9oZG1pX2lzX2Nsb25lZChjb25zdCBzdHJ1Y3QNCj4gPj4gaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPj4gICAJCSFpc19wb3dlcl9vZl8yKGNydGNf
c3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrKTsNCj4gPj4gICB9DQo+ID4+DQo+ID4+ICtzdGF0aWMg
Ym9vbCBzb3VyY2VfY2FuX3N1cHBvcnRfc2NyYW1ibGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0K
PiA+PiArKmVuY29kZXIpIHsNCj4gPj4gKwlyZXR1cm4gaW50ZWxfaGRtaV9zb3VyY2VfbWF4X3Rt
ZHNfY2xvY2soZW5jb2RlcikgPiAzNDAwMDA7IH0NCj4gPj4gKw0KPiA+PiAgIGludCBpbnRlbF9o
ZG1pX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiAg
IAkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4gPj4gICAJ
CQkgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkgQEAgLQ0KPiA+
PiAyMzAxLDcgKzIzMDYsNyBAQCBpbnQgaW50ZWxfaGRtaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZW5jb2Rlcg0KPiA+PiAqZW5jb2RlciwNCj4gPj4NCj4gPj4gICAJcGlwZV9jb25maWct
PmxhbmVfY291bnQgPSA0Ow0KPiA+Pg0KPiA+PiAtCWlmIChzY2RjLT5zY3JhbWJsaW5nLnN1cHBv
cnRlZCAmJiBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApIHsNCj4gPj4gKwlpZiAoc2NkYy0+
c2NyYW1ibGluZy5zdXBwb3J0ZWQgJiYNCj4gPj4gK3NvdXJjZV9jYW5fc3VwcG9ydF9zY3JhbWJs
aW5nKGVuY29kZXIpKSB7DQo+ID4+ICAgCQlpZiAoc2NkYy0+c2NyYW1ibGluZy5sb3dfcmF0ZXMp
DQo+ID4+ICAgCQkJcGlwZV9jb25maWctPmhkbWlfc2NyYW1ibGluZyA9IHRydWU7DQo+ID4+DQo+
ID4+IC0tDQo+ID4+IDIuMjUuMQ0K
