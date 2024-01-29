Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FE28403C4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 12:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB20010E4B1;
	Mon, 29 Jan 2024 11:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D317010E35B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 11:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706527645; x=1738063645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bwGu0wzuEOqYc0dQD9BvaaKa510/aZeAoe48EwwZatE=;
 b=bEPUnqIc4kuA2r6Se/10CZI8Nce5OAEBkhKehWltitC2EDv2zuLCv7J2
 8G/hx6tSYfnlTJLTzxxRZ9Py0iQ89EuoSBDqUWGButE3DNQXLPp7NFkkN
 spDRwNeSdnTPo+Ev8U/4TVyExaM7xBRMi4LKthqM4W081aQsNv0rdtl4N
 aaC3B/zLacCZ3WGQyOvDX8XXWsH8tr1zMpe1Sfub8IxyVL4izXJRnCRN0
 TA6MAMXOZ8f2gHvEeuM2qkR7D20YJR+p/m9lXL6RUe8VaBM6NbA0p15Qo
 lgLAjuKHJ8FJDsKpV2mLlEOzPkEWanPXNEsGAZvf3mAup4Pak6QCQK7mn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="9670268"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="9670268"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 03:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="29752021"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 03:27:12 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 03:27:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 03:27:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 03:27:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/82IGVLsAa7D/kebG0IadQaPg6O7OC2W4pPqrQ8wYA/JXt21A4sZxlr8l1XPN3pi8SPqI7dA9hrnQhCtL6IhP+HWavFCV4A93RHNR20auMacPsY1mQZPF9612bD8zg6T7O9mnGEUKbUFfkIJDEh8LWL+taS+tOtoTITLFzsaZNPWdSOrtDO0irQsh8pCunprUjuXRV2ISR7pTAkUW7/vV+sOnS2yIIM9TbFHOmKzWKhBB0JJ0fY8uDK+qcLkkYOzefRSwEzm9juhLbzU91xh3DZysQ5kWBkeTO35WICWlIi+3WwKhE+7VEAULEp/UfwkvPm6hrSn+98dgQLbvLqkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwGu0wzuEOqYc0dQD9BvaaKa510/aZeAoe48EwwZatE=;
 b=QmBf6AfL82f67BpbnOdGTHP/VaxE8UxUDyajtBrY/VbDstEmjwU0dxrR59L9LODdLBkxuGMOogO/smFHbC1sMRK8BqtOq0mIhpS//qIOMcDuPbxmanKZ44i0VfekEJRpNRyRyOWDhQzMlawMwSp3OY+8gA9g7EzMUSPiuW59pZCZ5dXn0ZjnaYvBfRiD1kTGR08YObjsdT7SbIq4cyVgrsyV/arBlppHVX1vcCuLNYWrJnTGXEQN1f3avJy21hMD7yuwU1xM+cq1IJ3rwo+la9i/lR0/P2pYXcUDPOb7HTROSprukuNvqM0yvPmmwolIbAE4gQcRgffuD9M4CXkzUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by MN6PR11MB8172.namprd11.prod.outlook.com (2603:10b6:208:478::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 11:27:09 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::1d23:367a:8c39:5d30]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::1d23:367a:8c39:5d30%3]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 11:27:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Subject: RE: [PATCH] drm/i915/fbc: Allow FBC with CCS modifiers on SKL+
Thread-Topic: [PATCH] drm/i915/fbc: Allow FBC with CCS modifiers on SKL+
Thread-Index: AQHaTdsO74fhx+IcCESAG/DRPG72ArDn/6EAgABTjwCACFzMoA==
Date: Mon, 29 Jan 2024 11:27:09 +0000
Message-ID: <IA1PR11MB6347E77B1110D83AEB3DCD2CF47E2@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20240123090244.30025-1-ville.syrjala@linux.intel.com>
 <ZbBBNsQF_kYGNQTN@intel.com> <ZbCHTpBWzoKBKwGS@intel.com>
In-Reply-To: <ZbCHTpBWzoKBKwGS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|MN6PR11MB8172:EE_
x-ms-office365-filtering-correlation-id: 2518d1ca-06d8-4ff6-8749-08dc20bd3b40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wC4frNNIbQ+JwfmLqmD5XW3v7Ann614pFBmzRwGFbb1yTQ+mwBjcx1/dbLtE6h2aeZkQcFK5oxsWuxTA3n38PcG7nMl9xANh+5Vb2ZQFeSdDGL88kRVDW3ZRzfgxX0Af/y3JTH/buq37ouLlMBab0ZvdRuKgK1SYSSIQ5AiRBQcIspTvatAV35oWD4G0piMlt+LWtsk3O9LYFOBXzfCDdWMRdhvRQ/wYJOjkCjcLmI4OX1NprlnCGboTZ6VZ8Br562BRef11hRegHYB8Dc+7dm6Ku0soHdjyW7Of6GLG4yzOlL+ei0NkJlXTBZAZeVX0c/9nWqBX/gRqAaLLqjKuq+UopeVYth7+lJZs5EOOV1gxj4dvwcaQmJr3d2L9v6fDN3sJWtzUw2QbVsnhB66yisRmLsZVnXBVf0E02lq10g3OTgTGWZBNGq1oqrGimmqRXPhzzNy4iqtAT8oF0j4bMPOW9aBLurLtVGuaHaa5G2/R/JwTlefIzzx1wTSgMrK0Yfa7Wb8o9KCA6TRXCz+A65fKvIJJALTnWh35QlKzl9cGbXgolIZbtYCz8gZ9wNKtVPERNJdyzEGge8BvnQgugiw+8toBCRzQYR6FIlvDyP0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(41300700001)(82960400001)(38100700002)(122000001)(55016003)(7696005)(66556008)(66446008)(86362001)(76116006)(110136005)(6506007)(53546011)(64756008)(66946007)(6636002)(316002)(966005)(66476007)(8676002)(8936002)(66574015)(5660300002)(33656002)(9686003)(52536014)(478600001)(2906002)(4326008)(71200400001)(26005)(83380400001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnJoL3BjYlNqWFZEQ0xjd3pTRkY1MTdoVHFQUnpvU3hsNklKdldYeGlOaUtG?=
 =?utf-8?B?alJBVEgyUG9tcmNER0NTeTFPVXBUOHdadFNnYnUwM3F0Qis2OGVRYkt3N2tC?=
 =?utf-8?B?NEh1b1VWbENubGVmK3JHSHhjekRiSG91N1hFVFQwTlJYRDJSUktub2R5OUxj?=
 =?utf-8?B?ajVMQVpURGh1NWFlanExM1RlOU8waEtrU3J2cC9WSFlReTV3bng2dldMcm1Z?=
 =?utf-8?B?UkFzSHl0WVB4NG5WK29CcGRlejMxaXczWFVkelE4LzMzNkFDeUhsay8wSmVQ?=
 =?utf-8?B?WmNxZHpnWVJTZm50czkrZUNpdXpRazlOSE9qb3lSeHJLT1FoUFo5WDd0Z3Y2?=
 =?utf-8?B?bGJvdktmenhnTnlScWdDSlNOUUdQemFWL2FXWDRlYVNURGJIZGFLdU5Jakt1?=
 =?utf-8?B?c05ZQXY3YWdPc2RKK2VYTCtaNzdVNEc4RndlOU9tRGtqZVBzRHQya29EYkty?=
 =?utf-8?B?SU8wdHBEOXFGWGkrNE4vQWtjaVY5SHR3dzd0ZG5KazJhWDNZN0MyeG5zOW9V?=
 =?utf-8?B?V3l1UEFoNGE2NXZzSUwrd3A3T1NwYWllbTZlMURaenFZNEdjZGFrOVR0VERy?=
 =?utf-8?B?RnUxa1lzWkh4b1IwSnNObVhlYm9WckRVZW5LclN2elhSUGtaVEtJdU41NWUx?=
 =?utf-8?B?V0IxeDNVbmRncjlsS3RlN0N0SnRWRUNBcmhyc2FkeVRjajZpaXlKTTdyeFRz?=
 =?utf-8?B?MHlYRk5MZTZCSm9NOXV1SE5nTFRFZ3E4aE9EWmc3ZTVHS04vK043NUorNWhv?=
 =?utf-8?B?RDlPR1VVdldMVFc5NDc3RlRYTFU4RU1jdXZtUzJ1MXphZnlNMFhiSDhNeWxk?=
 =?utf-8?B?cGtLMXdJUzJtM3VXOTg1K0ppdkF3SnhsY1NFb2M2ZnQ5U1h4ZnZqekZ2RXF1?=
 =?utf-8?B?YWl4MDhmbjFLNk9rTTZRYjlMQVBHbjc5SFhLd3pSZWxDUk0wb2lnVDdaRWdS?=
 =?utf-8?B?RGpyMXJ6NHN4ZHFyN1kxZ3ZScSt0dmp4d0QzWHc0MkhSN2xUNHRoVE4veVIz?=
 =?utf-8?B?OFlTajhKWHJBQ3ZpVFoxdnVPdzFBTUNxMS9JMjdoK2QycXFtbDFRZm1NbEo1?=
 =?utf-8?B?VTJYY2FXNkE5R2VxNUJXU2UzK3Z1V0NYN0U3aUNPTnYxd0dpdEt4Uk95QkNT?=
 =?utf-8?B?UzNFUGlyNCs4MFBReWV1U2FMdGUwRFdDLzRabHVKcGlyY1prdWxFZ3NSSkpv?=
 =?utf-8?B?Y1ZTVHo4dVBSOGl2T0p3elBiNVlBRVFacXEwTXAybGdHWVl1U0R0WVlxeHdt?=
 =?utf-8?B?NXc3UGNnU2ZtNXZFOW5hY0VkbCtUMG01RE1UbDhFZEpnS3JMUytuN3FRejNC?=
 =?utf-8?B?ZTJTZG0wSnRTaVY2TTJWNDgzcWtSVlBrRjJ1anZGOHNPc1hZeit4SmFuQm9H?=
 =?utf-8?B?UFU0RFNXa1Evbm9xSGE3R3BhbHI1NXlLN0w1ek92V24zQm5GQmwrYWpaUUY2?=
 =?utf-8?B?TlZaYzRrTGVFUm9rVUwwOE0yZ3pVNDJvMHYxdmlvdW0rejJjaG9GZFJmL3Nw?=
 =?utf-8?B?U2lpSVdVVTdhS3p3N0tZOTVxa2hzbXYrVy9BZXRJK01zK0REK2pRUm9FaUEr?=
 =?utf-8?B?MVUrWEticzlTMWl3TkQ3bEN5clB0b0tRNkdxUUVBcW8zKzBvMVpKV0dEVXRi?=
 =?utf-8?B?UGthYVBwa1ZMWGw4SUVwMTNmcG11eVNoOStRNmM2Q0pCVUc4V016c0dBdCtD?=
 =?utf-8?B?ZjF6OHAvcGNpNFJ4ZGpiV1hrM2FrTGdldURVcEZEQ2d3c2ZKbmREWm1BbWhu?=
 =?utf-8?B?am83MFNxRjBTZGhaT0lnOHVCNnRUVDZkaHJFUGJhQzhOeldXU1JhSE9LWElj?=
 =?utf-8?B?S1R0aTR0MTY0RkRKUjQwWmFGRE5SUVZZMHVqejZ0MWhMamFQSWo3TmVtT0hm?=
 =?utf-8?B?eXlvdE9QeTBRT3ROaXc2aFJNeW1WZkNxcHdTbEFMSjJucTc1NW1NRjkyZ3NT?=
 =?utf-8?B?RHJrR0hjd3hUL0p1WGJ3cGM4TE1ZdmZOTXdXVmo4b0NMODY1em9OOCtaWVJT?=
 =?utf-8?B?RFJYK0xUQkVLbW5Nay9nNXc0SUYxeE1tbVVSbzJvakFkSnJGY2lyOTgrZm5X?=
 =?utf-8?B?SlI3UUpHbW44TWNZSU82MWVrZGF4eEpwdmwzSlpnQ2kvK2FxTWhseHNWNGVx?=
 =?utf-8?Q?6CiuAWQISAMSh1Dqw+jVi1sBp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2518d1ca-06d8-4ff6-8749-08dc20bd3b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 11:27:09.4231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gVzj9Sh3CW+xqDaTDrbDmCWqMGDfNNSraeZ01b2gPXoO1go0gugiPNT/KagbGY30JTPF3zM3UDbTC2NqKgIvww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8172
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBKYW51
YXJ5IDI0LCAyMDI0IDk6MTMgQU0NCj4gVG86IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+DQo+IENjOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJt
L2k5MTUvZmJjOiBBbGxvdyBGQkMgd2l0aCBDQ1MgbW9kaWZpZXJzIG9uIFNLTCsNCj4gDQo+IE9u
IFR1ZSwgSmFuIDIzLCAyMDI0IGF0IDA1OjQ0OjA2UE0gLTA1MDAsIFJvZHJpZ28gVml2aSB3cm90
ZToNCj4gPiBPbiBUdWUsIEphbiAyMywgMjAyNCBhdCAxMTowMjo0NEFNICswMjAwLCBWaWxsZSBT
eXJqYWxhIHdyb3RlOg0KPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gPiA+DQo+ID4gPiBPbmx5IGRpc3BsYXkgd29ya2Fyb3VuZHMg
MDM5MSBhbmQgMDQ3NSBjYWxsIGZvciBkaXNhYmxpbmcgRkJDIHdpdGgNCj4gPiA+IHJlbmRlciBj
b21wcmVzc2lvbiwgYW5kIHRob3NlIGFyZSBsaXN0ZWQgb25seSBmb3IgcHJlLXByb2QgU0tMDQo+
ID4gPiBzdGVwcGluZ3MuIFNvIGl0IHNob3VsZCBiZSBzYWZlIHRvIGVuYWJsZQ0KPiA+ID4gRkIr
Q0NTIG9uIHByb2R1Y3Rpb24gaGFyZHdhcmUuDQo+ID4gPg0KPiA+ID4gQUZBSUsgQ0NTIGlzIGxp
bWl0ZWQgdG8gNTAlIGJhbmR3aWR0aCByZWR1Y3Rpb24gKHBlcmhhcHMgY2xlYXIgY29sb3INCj4g
PiA+IGNhbiBkbyBiZXR0ZXI/KS4gRkJDIGNhbiBleGNlZWQgdGhhdCBudW1iZXIgYnkgcXVpdGUg
YSBiaXQsIGdpdmVuDQo+ID4gPiB0aGUgcmlnaHQga2luZCBvZiBmcmFtZWJ1ZmZlciBjb250ZW50
cy4gU28gcGlsaW5nIG9uIGJvdGgga2luZHMgb2YNCj4gPiA+IGNvbXByZXNzaW9ucyBjb3VsZCBz
dGlsbCBtYWtlIHNlbnNlLg0KPiA+DQo+ID4geWVhcCwgSSB0aGluayBzby4NCj4gPiBUaGUgcmlz
ayBpcyB0byBoaXQgYSB3b3JrYXJvdW5kIHRoYXQgaXMgbm90IGR1Y3VtZW50ZWQgaW4gdGhlIEJT
cGVjDQo+ID4gY2FzZXMgYWZ0ZXIgZ2VuMTEuLi4NCj4gPg0KPiA+IFVtYSwgZG8geW91IHJlY2Fs
bCBoYXZpbmcgc2VlbiBsYXRlbHkgYW55IHdvcmthcm91bmQgd2l0aCBGQkMgYW5kDQo+ID4gcmVu
ZGVyIGNvbXByZXNzaW9uPw0KDQpTb3JyeSBtaXNzZWQgdG8gcmVwbHkgZWFybGllci4gDQpJIGRv
bid0IHNlZSBhbnkgcmVzdHJpY3Rpb24gY2FsbGVkIG91dCBvbiB0aGlzLCBzbyB3ZSBzaG91bGQg
YmUgZ29vZCBlbmFibGluZw0KdGhlbSBib3RoLg0KDQpMZXQncyBlbmFibGUgYW5kIHVuY292ZXIg
YnVncyBpZiBhbnkg8J+YiiAoaGF2ZSBiZWVuIGEgdG91Y2h5IGFyZWEgYW55d2F5cykNCg0KUmVn
YXJkcywNClVtYSBTaGFua2FyDQoNCj4gPiA+DQo+ID4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMTAxMjUNCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
IHwgMTMgKy0tLS0tLS0tLS0tLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMTIgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gaW5kZXggZjE3YTFhZmI0OTI5Li5iNDUzZmNi
ZDY3ZGEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+ID4gPiBAQCAtMTA4NywxOCArMTA4Nyw3IEBAIHN0YXRpYyBib29sIGk4eHhfZmJj
X3RpbGluZ192YWxpZChjb25zdA0KPiA+ID4gc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSkNCj4gPiA+DQo+ID4gPiAgc3RhdGljIGJvb2wgc2tsX2ZiY190aWxpbmdfdmFsaWQo
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gPiAqcGxhbmVfc3RhdGUpICB7DQo+
ID4gPiAtCWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3
LmZiOw0KPiA+ID4gLQ0KPiA+ID4gLQlzd2l0Y2ggKGZiLT5tb2RpZmllcikgew0KPiA+ID4gLQlj
YXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoNCj4gPiA+IC0JY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
WV9USUxFRDoNCj4gPiA+IC0JY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRUQ6DQo+ID4gPiAt
CWNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRUQ6DQo+ID4gPiAtCWNhc2UgSTkxNV9GT1JNQVRf
TU9EX1hfVElMRUQ6DQo+ID4gPiAtCQlyZXR1cm4gdHJ1ZTsNCj4gPiA+IC0JZGVmYXVsdDoNCj4g
PiA+IC0JCXJldHVybiBmYWxzZTsNCj4gPiA+IC0JfQ0KPiA+ID4gKwlyZXR1cm4gdHJ1ZTsNCj4g
Pg0KPiA+IHdlIGNvdWxkIGFsc28gc2ltcGx5IGtpbGwgdGhpcyBmdW5jdGlvbi4uLiB0aGUgY29t
cGlsZXIgZG9lcyB0aGUgcmlnaHQNCj4gPiB0aGluZywgYnV0IHVzZXJzIG5hdmlnYXRpbmcgb24g
dGhlIGNvZGUgbmVlZHMgdG8gZG8gYW4gZXh0cmENCj4gPiBjdGFnL2NzY29wZSBpbnNwZWN0aW9u
cyB0byBzZWUgdGhhdCBpdCBpcyBhIHNpbXBsZSByZXR1cm4uICBCdXQgd2VsbCwNCj4gPiB0aGUg
Y29kZSBkbyBnZXRzIHByZXR0aWVyIHdpdGggdGhlIGZ1bmN0aW9uIDopDQo+IA0KPiBJJ3ZlIGJl
ZW4gdGhpbmtpbmcgb2YgY29udmVydGluZyBhIGJ1bmNoIG9mIHRoaXMgc3R1ZmYgdG8gdmZ1bmNz
LCBzbyBrZWVwaW5nIHRoZQ0KPiBmdW5jdGlvbiBhcm91bmQgaW4gYW50aWNpcGF0aW9uIG9mIHRo
YXQgc2VlbWVkIHNlbWktcmVhc29uYWJsZS4NCj4gDQo+ID4gU28sIHVwIHRvIHlvdToNCj4gPg0K
PiA+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+
IA0KPiBUaGFua3MuDQo+IA0KPiA+DQo+ID4gPiAgfQ0KPiA+ID4NCj4gPiA+ICBzdGF0aWMgYm9v
bCB0aWxpbmdfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gPiAq
cGxhbmVfc3RhdGUpDQo+ID4gPiAtLQ0KPiA+ID4gMi40My4wDQo+ID4gPg0KPiANCj4gLS0NCj4g
VmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
