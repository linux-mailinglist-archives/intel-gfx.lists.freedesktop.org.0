Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B65E7E05C7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 16:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B375A10E172;
	Fri,  3 Nov 2023 15:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA58610E172
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699026796; x=1730562796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fOEKFCR9ftRIl5yIB8Ccrkn20JDQ9e7T77A3OzCTMEY=;
 b=ZoFhQFO9c08lKU2GYk+9P7WG458/vK3ccFFTjDWK00CA8OKNsi5o4PMW
 ZZXTRgCJZbSLYZXRMI2Vt/dCGZeUEIzjpTlh/MiiWKlcqEJI3m4UPB/qL
 TfV/h2qLgEJeFZ6r/z68+HI9wSXWF/kf3VoahPUDl733HNkDtpf4k1i+x
 u4uG1i37GpC0NAZaFNS7tq4dJE5Zv2X8e457mlMNbYCNwTEO6GHvdU7nq
 gDWCKgt+YN4p6d8FYhSbqwv0iHBvRBFdtOOViG1LtyMd3jIX8kwKUxfaW
 XxUUzI8TWB8lWyjEp86WoN0y98+7+CdxxAZ15jch/Fpm9J5WjoFUq8spB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="453264778"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="453264778"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 08:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="885249859"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="885249859"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 08:53:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 08:53:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 08:53:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 08:53:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nDAS62e47EfNFmXmsoAFpgpLlymzeGq9uFHl2JbxxVlzvQs5e+GA78DoKpEP0WiLYkj/X+vm8rc7ZJhxYQNRbH/jMNg5eiiLKUBSZF69tj25t/w2DgvJ8DlYnE7g2NDJa4EWlycRHhog6xYaaglts/0sLpFRAPQ70Y55tZY786c3UPAI9r4kuKexLKaI1x2g+rVbQv/F3iHL4o1fKctZv60pzTA32ebOj6U3mcYbrnH5k4cdhNNStU+MFFZywWz0KYCtIJZZg5NFLU/NQHBwScenHLZNsTTXmxdIlkfRMtNdylrIZNOQ5xe6EOC9CXMtJh6LGgor28lJr1IQEDxHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fOEKFCR9ftRIl5yIB8Ccrkn20JDQ9e7T77A3OzCTMEY=;
 b=kYM5rNtXSPAnveMgkolyeRyxDbqpbpAHUm1mdgiOeV3EQ1o1o4ZNoos7U9xzNET/MWO89NZE6BrTAdfVET6yrK8cTRsGdQqgFHTx8AoozGxEMYPO4EnmrpAgnn4g8gxYLlBsVKPrSEyy6tIB+ywECGpZUuQyFnuElBCZs19zyd3X6RLpC1MyGRYKMfEL0EzuOtScaIPRye3RARM7vX6Jnor5qxFIWyvdMkjMpklJAgZUZ89UFK2s1xo69J6hSl061cAQQau+02JlVqXhsBr+9t2ONAV+4aYwuNglW6T5Hf19Bhr/dGsofVT/RC7f90bpNlLZA2simKpA8yxIlHNj2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DM4PR11MB5453.namprd11.prod.outlook.com (2603:10b6:5:398::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.21; Fri, 3 Nov 2023 15:53:11 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 15:53:11 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Hajda, Andrzej"
 <andrzej.hajda@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d
 is enabled
Thread-Index: AQHaDabTvnAABxr1ckWWdxkrt2u5lbBnQFgAgAAL7YCAAADLgIAA96IAgABxMPA=
Date: Fri, 3 Nov 2023 15:53:10 +0000
Message-ID: <DM4PR11MB59717882C4AC2BA291D7F12487A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
 <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
 <DM4PR11MB59717CE2FEF0F4DA5380992187A6A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <aee78f9c-1ca4-48ed-aa18-da03a50ebb14@linux.intel.com>
In-Reply-To: <aee78f9c-1ca4-48ed-aa18-da03a50ebb14@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DM4PR11MB5453:EE_
x-ms-office365-filtering-correlation-id: a00180ae-ec44-45dc-d812-08dbdc84fb1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GQalwDjV6wsy3+y250ZtGLjVhpH5a2CdO9Yzp6twufTB9LlIhJ9d8DTJSTau1JPU5flcwNN91QUhk+aaNyNhHXlIsQ9CEszA6BKdYsEzKYdy3eT1JHiBkYmcJlRGiTg71xLlI9qVrTLinvDDky6BT2hijwbmzrwbnTRYxc669etAUIOH1prUrWZ4cMgX9v9tQKJ5Ka2LUSqoTmW5A385Ftz7CuQjEyVUimMuKIUwuzevUbhaMNepKdhTZqoTHG1h1cM13I9HZ5MqqIpiMeKQ+t1iSAjcuWgpzFzDVSqZG+gOVBQdOiyLpwrj4rBL7/s8TeIxArdFrU/vVK9BgmsYL10wTJZUI/eobz6ulXLTFhTEBUHtY7HOQoEAfxYVBICMGzUC2Ak+jnenM+NwrfNtSrZ1jB5twPyf/Uff23ZnPl/Fu4J4gVHtdQ3f975QfnDimqUBK3LcSwh5SwMWt14E0mwLsw7RJjsPQWb3rjsq4KdOVPIvrD+swRKJF5s86HxRUSQQf9OF7GwIuKtplpqYK+m5R7H4LfzsMp3s97fINuQd/YVRIHVx0Utnp6BtUTSHuGjY/+cMfKmTAtt0I86mGv9W440BdaStjom5y+Eok2gfY6s2q87ysb1Hu5WRGQoxKnjjDqODjMTIkNzETyph/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(396003)(366004)(136003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(55016003)(83380400001)(53546011)(38100700002)(122000001)(71200400001)(4326008)(86362001)(966005)(82960400001)(8676002)(8936002)(2906002)(33656002)(41300700001)(52536014)(6506007)(66556008)(9686003)(7696005)(5660300002)(316002)(66946007)(66446008)(478600001)(64756008)(110136005)(54906003)(66476007)(76116006)(26005)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmFIT2pXUGZCNWF4ZzRyZVIyQmZoN3lCNXVPQmtZSkxJU3kweXUzYWV1MFlJ?=
 =?utf-8?B?cWlLVnVaMENNdVUrOGllTStXNHBFNjhxOVJTM2xUVE9QR0YvM1FacUdZQ0g5?=
 =?utf-8?B?S3lGZDFkZ2puOFdyTVkvUGtxNmZFRHhOZi9vdGE3TGt6WXlCb1VxamgxNkU2?=
 =?utf-8?B?Q0F1eXYxWGw4Zk9STnY3cXNuc0E0NElXcXZmTlFweW50dHlYdXFTNFE1YXRi?=
 =?utf-8?B?NjVlRXhvbnFNNEFZOXpNZUFuaGdNdnIyamltYmxHaXRqK1UzcG5rNlV4bGh0?=
 =?utf-8?B?cVNDRnF6YS9JeVBMNmU3SXA3bElUanBQQ09NY0xrb29CVmowdDhseGJudXdr?=
 =?utf-8?B?Zm9yQ2l1VDJYSjFpMlR6YVIvNjJmU2FQa2NBVjBvdm1tUUhodTFyZ0UxNlNr?=
 =?utf-8?B?MDN0Z1Q1ZXBvelRDckhBelFvUTFjcHRMelErMERnNHFxRlYwcnB5SHpielpr?=
 =?utf-8?B?OHRSdUdpb2drK0hkZVU0ZTRKL1Z1bjBZVlp6NEdzZFJxNFZHYXkvNjVrL05i?=
 =?utf-8?B?TU9QYjJtU1gzUmVCMUkxOVYwdks2V3lrTDVRR2RVQllCb0pJQ2NPNW1MdmJK?=
 =?utf-8?B?TS9VMVF2TU9uQW9xUENETUFTcTh3d2RBM204a3N6aWZFZkdBakdjOWR0VWo0?=
 =?utf-8?B?cUYvUWdBalo1RzlNYUZ4RnoxT1c4a0d2RHRpalQrcTNHT3FHQnBWeWU1Lzdh?=
 =?utf-8?B?ZVFCR3lYNjNQZzVkV29ZZTlJSG5wVmFWOUJvTCtyQlVZODBIejRIWEVjWHhK?=
 =?utf-8?B?SWFGSTh3NkxQeTJ6Q09MM3NyM0M2ZW1wbTQ3TkhmZ2dnb3Jhc09QaHo4MnJP?=
 =?utf-8?B?TzhPQnp6a1VnQ3BrVkNDeWgwVmFFT0VqeHlkNCtOYWFObFdzVU9BNmxQTzhC?=
 =?utf-8?B?cWE4K2ZQRDZ2YnBidGd3dWQwSC9tKzltN2lYTzRSeTZlTGx1aVB6akhNMmZQ?=
 =?utf-8?B?THdNTC9UUjlmRURRMENpRTZ6T1FKN1JmcVFLb28zVS9lR2o2ZHNtU3h5NXFE?=
 =?utf-8?B?S3BsZC85UXV2alNDWkVwY1c4RTd2Wm9LampSaDRmSUkzTjlJbWxGcGtrVnpt?=
 =?utf-8?B?ZjBDbFFneXBldS9QVmFKL0tNQUFJa3YzQzB4UEtkbU51Y2JqZEFrSC9iQXY4?=
 =?utf-8?B?VW1FdXdkUkZKdGgrR0lNaHYwVlVuUTBDanhpeGcyUXJMaForN3d1L211YlJ0?=
 =?utf-8?B?MnBKem9GWHk3ME5Zc2pSbEVIdExhQzhsdHBRU1lzdjVyUE1KYkhVQXhCNUwx?=
 =?utf-8?B?YlpYUldWNnRWMXBOL2pYTmNBd2gyOE9vUVJiNlk5KzloYURIV1hzeVRtdkxi?=
 =?utf-8?B?SHZiUWxxcGd1aFBiYTJ0cThla1l0RzBHakczUVpwWXp0UnJqeXhHbldNMWIy?=
 =?utf-8?B?cEhYOTJWa3htUEt1ZmU3OWNlMDdHTW83RFYxN1ZJQ3diVVJ5WW5ndmlUN013?=
 =?utf-8?B?OFc0NE5xRHo1TU5ONTJteVBGaHo5K1QvRHpVRHJOMENWakJzWjFJU2FHUVVC?=
 =?utf-8?B?Tlg4aGVONlI0WGJHZXpwYmVEZFl4WitBYlJ0RkhaSHFKYVZlR0l5OTFoNUR2?=
 =?utf-8?B?c2pDNUp1YXAzdmM0eERZaXVOQ1A3bTNMa2dNeG9LT0gwT0R2YzVvTmNZbWh6?=
 =?utf-8?B?TllHQ1NyNTlyZkpsQ0tnZTFXYWM0SU40cXI1MThrRk1tdnc1VHFURmd0V3RW?=
 =?utf-8?B?S3dXUVVXL2JocnNtVUkwZFBnVGxxR0N6SXYwVUNxTW9rOVVTL0l2dXhKYkpn?=
 =?utf-8?B?SWZBVG5WY1VIN21PZHhDL1JEU2s3T3R0QmZKSmZOU0R4MThLR3ROdWk1akJJ?=
 =?utf-8?B?d2s0SmhuT09BTTNLalNDS05aU1U2dy9CWTY0VlA4WlRWUkp2VUlnOXJJM1NT?=
 =?utf-8?B?Y3huS0NHb2pYbytSOU15OGowSzZSeHJudHNDTmJDSWxTN0o4Qk16RG4veTAw?=
 =?utf-8?B?TG92enZ0RDJvblBrUHhuVkYxZUp5UXVRM3FxdlNFSWtrbW9yajlKcTlDVmIz?=
 =?utf-8?B?RHVoelVlczhYdXJRVi9idC9ya1FTRUk2cEhkdGl5YS9seXh6dVBBTlZxcGpE?=
 =?utf-8?B?WGo1RUZxdEtiQlFQTXQ1ZkVuNmhkWXVlSVJjTjJNZDhiL3lzSm5jemE2L3ho?=
 =?utf-8?B?NkJONzdCelJMTVBSN2JCdjBHdVNtRUpPV1BWb01BYnNLVjZ5cWQ0OXRuTzVS?=
 =?utf-8?B?blE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a00180ae-ec44-45dc-d812-08dbdc84fb1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 15:53:10.9517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MofKERU7Cb/a/uIAT9V3IiVtcuEdnpOJ/xHzKfx4lJDeoPmWYSboMZl7G9iHajXdMakPQDDzciFfddamRL3bdnkQ/vBAuoXpP0PSQojqdKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5453
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRh
eSwgTm92ZW1iZXIgMywgMjAyMyAxOjMwIEFNDQo+IFRvOiBTcmlwYWRhLCBSYWRoYWtyaXNobmEg
PHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IEhhamRhLCBBbmRyemVqDQo+IDxhbmRy
emVqLmhhamRhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9tdGw6IEluY3JlYXNlIGd1YXJk
IHBhZ2VzIHdoZW4gdnQtZCBpcw0KPiBlbmFibGVkDQo+IA0KPiANCj4gT24gMDIvMTEvMjAyMyAy
MjoxNCwgU3JpcGFkYSwgUmFkaGFrcmlzaG5hIHdyb3RlOg0KPiA+IEhpIFR2cnRrbywNCj4gPg0K
PiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0KPiA+PiBTZW50OiBUaHVyc2RheSwg
Tm92ZW1iZXIgMiwgMjAyMyAxMDo0MSBBTQ0KPiA+PiBUbzogSGFqZGEsIEFuZHJ6ZWogPGFuZHJ6
ZWouaGFqZGFAaW50ZWwuY29tPjsgU3JpcGFkYSwgUmFkaGFrcmlzaG5hDQo+ID4+IDxyYWRoYWty
aXNobmEuc3JpcGFkYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzLnAud2lsc29uQGxpbnV4LmludGVsLmNvbT4N
Cj4gPj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBJbmNy
ZWFzZSBndWFyZCBwYWdlcyB3aGVuIHZ0LWQNCj4gaXMNCj4gPj4gZW5hYmxlZA0KPiA+Pg0KPiA+
Pg0KPiA+PiBPbiAwMi8xMS8yMDIzIDE2OjU4LCBBbmRyemVqIEhhamRhIHdyb3RlOg0KPiA+Pj4g
T24gMDIuMTEuMjAyMyAxNzowNiwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6DQo+ID4+Pj4g
RXhwZXJpbWVudHMgd2VyZSBjb25kdWN0ZWQgd2l0aCBkaWZmZXJlbnQgbXVsdGlwbGllcnMgdG8g
VlREX0dVQVJEDQo+IG1hY3JvDQo+ID4+Pj4gd2l0aCBtdWx0aXBsaWVyIG9mIDE4NSB3ZSB3ZXJl
IG9ic2VydmluZyBvY2Nhc2lvbmFsIHBpcGUgZmF1bHRzIHdoZW4NCj4gPj4+PiBydW5uaW5nIGtt
c19jdXJzb3JfbGVnYWN5IC0tcnVuLXN1YnRlc3Qgc2luZ2xlLWJvDQo+ID4+Pj4NCj4gPj4+PiBU
aGVyZSBjb3VsZCBwb3NzaWJseSBiZSBhbiB1bmRlcmx5aW5nIGlzc3VlIHRoYXQgaXMgYmVpbmcN
Cj4gPj4+PiBpbnZlc3RpZ2F0ZWQsIGZvcg0KPiA+Pj4+IG5vdyBidW1wIHRoZSBndWFyZCBwYWdl
cyBmb3IgTVRMLg0KPiA+Pj4+DQo+ID4+Pj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzIwMTcNCj4gPj4+PiBDYzogR3VzdGF2byBTb3Vz
YSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID4+Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXMucC53aWxzb25AbGludXguaW50ZWwuY29tPg0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFJhZGhh
a3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+ID4+Pj4g
LS0tDQo+ID4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4u
YyB8IDMgKysrDQo+ID4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4g
Pj4+Pg0KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZG9tYWluLmMNCj4gPj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
b21haW4uYw0KPiA+Pj4+IGluZGV4IDM3NzA4MjhmMmVhZi4uYjY1Zjg0YzZiYjNmIDEwMDY0NA0K
PiA+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYw0K
PiA+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYw0K
PiA+Pj4+IEBAIC00NTYsNiArNDU2LDkgQEAgaTkxNV9nZW1fb2JqZWN0X3Bpbl90b19kaXNwbGF5
X3BsYW5lKHN0cnVjdA0KPiA+Pj4+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gPj4+PiAg
wqDCoMKgwqDCoCBpZiAoaW50ZWxfc2Nhbm91dF9uZWVkc192dGRfd2EoaTkxNSkpIHsNCj4gPj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBndWFyZCA9IFZURF9HVUFSRDsNCj4g
Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKElTX01FVEVPUkxBS0UoaTkxNSkpDQo+ID4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3VhcmQgKj0gMjAwOw0KPiA+Pj4+ICsNCj4gPj4+DQo+ID4+
PiAyMDAgKiBWVERfR1VBUkQgPSAyMDAgKiAxNjggKiA0SyA9IDEzMU1CDQo+ID4+Pg0KPiA+Pj4g
TG9va3MgaW5zYW5lbHkgaGlnaCwgMTMxTUIgZm9yIHBhZGRpbmcsIGlmIHRoaXMgaXMgYmVmb3Jl
IGFuZCBhZnRlciBpdA0KPiA+Pj4gYmVjb21lcyBldmVuIDI2Mk1CIG9mIHdhc3RlZCBhZGRyZXNz
IHBlciBwbGFuZS4gSnVzdCBzaWduYWxsaW5nLCBJIGRvDQo+ID4+PiBub3Qga25vdyBpZiB0aGlz
IGFjdHVhbGx5IGh1cnRzLg0KPiA+Pg0KPiA+PiBZZWFoIHRoaXMgZmVlbHMgY3JhenkuIFRoZXJl
IG11c3QgYmUgc29tZSBvdGhlciBleHBsYW5hdGlvbiB3aGljaCBpcw0KPiA+PiBnZXR0aW5nIGhp
ZGRlbiBieSB0aGUgY3JhenkgYW1vdW50IG9mIHBhZGRpbmcgc28gSSdkIHJhdGhlciB3ZSBmaWd1
cmVkDQo+ID4+IGl0IG91dC4NCj4gPj4NCj4gPj4gV2l0aCAyNjJNaUIgcGVyIGZiIGhvdyBtYW55
IGZpdCBpbiBHR1RUIGJlZm9yZSBldmljdGlvbiBoaXRzPyBOIHNjcmVlbnMNCj4gPj4gd2l0aCBk
b3VibGUvdHJpcGxlIGJ1ZmZlcmluZz8NCj4gPg0KPiA+IEkgYmVsaWV2ZSB3aXRoIHRoaXMgbWV0
aG9kIHdlIHdpbGwgaGF2ZSB0byBsaW1pdCB0aGUgbm8gb2YgZnJhbWUgYnVmZmVycyBpbiB0aGUN
Cj4gc3lzdGVtLiBPbmUgYWx0ZXJuYXRpdmUNCj4gPiB0aGF0IHdvcmtlZCBpcyB0byBkbyBhIHBy
b3BlciBjbGVhciByYW5nZSBmb3IgdGhlIGdndHQgaW5zdGVhZCBvZiBkb2luZyBhIG5vcC4NCj4g
QWx0aG91Z2ggaXQgYWRkcyBtYXJnaW5hbA0KPiA+IHRpbWUgZHVyaW5nIHN1c3BlbmQvcmVzdW1l
L2Jvb3QgaXQgZG9lcyBub3QgYWRkIHJlc3RyaWN0aW9ucyB0byB0aGUgbm8gb2YgZmIncw0KPiB0
aGF0IGNhbiBiZSB1c2VkLg0KPiANCj4gQW5kIGlmIHdlIHJlbWVtYmVyIHRoZSBndWFyZCBwYWdl
cyByZXBsYWNlZCBjbGVhcmluZyB0byBzY3JhdGNoLCB0bw0KPiBpbXByb3ZlIHN1c3BlbmQgcmVz
dW1lIHRpbWVzLCBleGFjdGx5IGZvciBpbXByb3ZpbmcgdXNlciBleHBlcmllbmNlLiA6KA0KPiAN
Cj4gTHVja2lseSB0aGVyZSBpcyB0aW1lIHRvIGZpeCB0aGlzIHByb3Blcmx5IG9uIE1UTCBvbmUg
d2F5IG9yIHRoZSBvdGhlci4NCj4gSXMgaXQganVzdCBrbXNfY3Vyc29yX2xlZ2FjeSAtLXJ1bi1z
dWJ0ZXN0IHNpbmdsZS1ibyB0aGF0IGlzIGFmZmVjdGVkPw0KDQpJIGFtIHRyeWluZyB0byBkdW1w
IHRoZSBwYWdlIHRhYmxlIGVudHJpZXMgYXQgdGhlIHRpbWUgb2YgZmFpbHVyZSBmb3IgYm90IHRo
ZSBmYW1lIGJ1ZmZlciBhbmQgaWYgcmVxdWlyZWQNCkZvciB0aGUgZ3VhcmQgcGFnZXMuIFdpbGwg
c2VlIGlmIEkgZ2V0IHNvbWUgaW5mbyBmcm9tIHRoZXJlLg0KDQpZZXMgdGhlIHRlc3Qga21zX2N1
cnNvcl9sZWdhY3kgaXMgdXNlZCB0byByZWxpYWJseSByZXByb2R1Y2UuIExvb2tpbmcgYXQgcHVi
bGljIENJLCBJIGFsc28gc2VlIHBpcGUgZXJyb3JzDQpiZWluZyByZXBvcnRlZCB3aXRoIHZhcnlp
bmcgb2NjdXJyZW5jZXMgd2hpbGUgcnVubmluZyBrbXNfY3Vyc29yX2NyYywga21zX3BpcGVfY3Jj
X2Jhc2ljLA0KYW5kIGttc19wbGFuZV9zY2FsaW5nLiBNb3JlIGRldGFpbHMgb24gdGhlIG9jY3Vy
cmVuY2UgY2FuIGJlIGZvdW5kIGhlcmUgWzFdLg0KDQpUaGFua3MsDQpSSw0KDQoxLiBodHRwOi8v
Z2Z4LWNpLmlnay5pbnRlbC5jb20vY2lidWdsb2ctbmcvcmVzdWx0cy9rbm93bmZhaWx1cmVzP3F1
ZXJ5X2tleT1kOWMzMjk3ZGQxN2RkYTM1YTZjNjM4ZWI5NmIzMTM5YmQxYTY2MzNjDQoNCj4gDQo+
IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+IA0KPiA+Pg0KPiA+PiBSZWdhcmRzLA0KPiA+
Pg0KPiA+PiBUdnJ0a28NCj4gPj4NCj4gPj4gUC5TLiBXaGVyZSBkaWQgdGhlIDE4NSBmcm9tIHRo
ZSBjb21taXQgbWVzc2FnZSBjb21lIGZyb20/DQo+ID4gMTg1IGNhbWUgZnJvbSBleHBlcmltZW50
IHRvIGluY3JlYXNlIHRoZSBndWFyZCBzaXplLiBJdCBpcyBub3QgYSBzdGFuZGFyZA0KPiBudW1i
ZXIuDQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+IFJhZGhha3Jpc2huYShSSykgU3JpcGFkYQ0K
