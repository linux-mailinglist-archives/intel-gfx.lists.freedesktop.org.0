Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C9A7DF8EF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 18:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FFC10E970;
	Thu,  2 Nov 2023 17:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005E110E970
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 17:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698946860; x=1730482860;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0aSQMWgM3vKTdsnqajJ9IDzVdym63AdgXZkmIWuoe/s=;
 b=l7llecRHcji0fZD7l6Ci4ryB4e9ncQRXWbkzHBhIVjNfQO5LEKAqdiv9
 FdEwR4WjZ8WsZzgDnRC3A3Q3eeV6iwZ9zx75Qzt8zPhckO6xQlKAGek0p
 sZOpD2dt8OHYOrjzr+JAvAx5UEFBX8jLp/s6/NVG7TkDZ3YLxObczCBry
 NUtEgTx26PBWIUgQAi4QPmGWv6x/1Vyv4Ata6hiawr5x8bXUgmB4KYb7a
 i1TAPc/jbrh89EJyB32G/sVbfIG645U9TFpEcvxGE9gQucoEBF+/Gc6DL
 VbMjzmcSUsFplpT0wIK92CzKoe22kSjPaJtcvx4xNaREGXbNyvml6dGlJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1702669"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="1702669"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 10:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="831757005"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="831757005"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 10:40:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 10:40:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 10:40:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 10:40:56 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 10:40:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WCh5uvzPy8KrvyPxCiEctwwQ/APVzFjj0/NSH5/oZl6BIPqI7AVYSvrDGdQiVXGHWCEpG+I2xtwAXsaU0QwaTwI5jVzuNcjo9OdJqgd5nhguAroSre1+JLw2DDQ1LKgQMEsY2qpv2I0Remk875WTUpNLJbiIGVUYIKPubNYMT9unE/x0HxpxlB/mIh3vWZDvQiOnkDoPW4uqW/TYEYw0pWToIgYeYGIc9UsePMRyDqYqw3kn4ucvGSXuEXo+tM5R/oT65OuoFFanmnxZEPtMUWdp0amZz83wxgH3btdcnj2KNrso/2Z+Dn7BzbXwLXrpL61Xn2RlyulBThJqlCrGKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0aSQMWgM3vKTdsnqajJ9IDzVdym63AdgXZkmIWuoe/s=;
 b=UR9bpzsYBuZJfp04UleTXQkxq5Ure+62F47ZjZ7YUVSUsnDaLonCy1xSKskvG/X1Qr9qeFQwd1v4OnRXubEpCTgN/1vGoMaIykwRcS844B/KUBKhRFU9ZaQhR/TdxfcZBhjjuXRvoE1AvWhd4Pn0hkCgc2OY8vzMAQRCRFdtObTtgulK9zhrRSR8YEy6MGAiJQLT+75JCZpLwf0UidkMsiq8yNoU5EL6FbG1VC+E/rkK1xLzU+B27xYcMh0R0R3G5nbySmbFcwmxVj6hogEpIlwOIaoFiVj8wb7GXD1vjGPUV0PeQopHqSCTQYBtsaOLSKz87PHwjh0OalMV77npYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Thu, 2 Nov
 2023 17:40:52 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 17:40:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHaCM51q+aHofUAW0+doMykXeneyLBjin4AgAAOBbCAABlKAIADo60Q
Date: Thu, 2 Nov 2023 17:40:52 +0000
Message-ID: <BL1PR11MB5979B3634C84853FE8363488F9A6A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231027115711.2713226-1-animesh.manna@intel.com>
 <c47bd13869e6664367d1684ebcf4305517909df1.camel@coelho.fi>
 <DS7PR11MB5990F52A4CC52DB9758FE8EEF9A0A@DS7PR11MB5990.namprd11.prod.outlook.com>
 <7c282e7dd97334032862e6f92f450fb2c4e5b90e.camel@coelho.fi>
In-Reply-To: <7c282e7dd97334032862e6f92f450fb2c4e5b90e.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 998866ff-2ca9-44e8-ff00-08dbdbcadc08
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ElzVo+qBeQl7a2WJc5h+lCVPJLlnoJGUPHqBivUZKZyQIHY0gk36ML+V3/uC+GUY5pRrAFnEGL/Z1oBFo4m5thkQXNpMj2kttGLOEN80FhnW7l6snl2zvnDMPklfpk9f/OqAmwKgptYOwGMtYraxHDikIUJ6G1zZZC85pLlTIov2M51BGotISMWyOW/ajsyRHhGZ6htDegOmPI7roUdq8bDiOyR7JaRf42jZp/iP6Q7k0auq3T7E3QW9knDI+JRm3mvwO6EcHPk8kf7AO2SGF20VP17YMEqs4TjZ3KjWUpEE/JDUnjD/yTPDnUUJgbDITf1s3NNqFP/YSqO/4VwJ8IB63X3aTxa3NVNOW9EtjkFoSFejfoQg4Y5RE0WNBbQpl6bYSSJIeZPcP18MBEBNAXqXxI6qrkPPWHdh6Ky93R1dyM6O3epdRqnGO+n2k+nMylWD6S8ksoQrahs6ZYVtgA3J7Cz5KfQd/3w4o1A1uvcoPrChUl/etST1hNZDcWaK0ZsVruSyx6D1lPA9blOTR8YaLFWuzGmJ+RSXEBdy45Ii2k55tCa56enAU8Frwwwzrh+bqpcIds/8qe05sWXQaNbIZxlydYCJzqwm2iDh1kidr/447/fWkcAorGgwvKCBXWFAiAZ4FTFleix1gmBVIg05mMpWvGeGhaObkDYRxsI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(230922051799003)(230273577357003)(230173577357003)(186009)(451199024)(64100799003)(1800799009)(122000001)(9686003)(82960400001)(107886003)(26005)(38070700009)(8676002)(4326008)(52536014)(8936002)(5660300002)(33656002)(4001150100001)(316002)(2906002)(86362001)(41300700001)(66556008)(66946007)(64756008)(66446008)(66476007)(76116006)(110136005)(71200400001)(53546011)(55236004)(7696005)(6506007)(478600001)(55016003)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qm56NkZVY2ZYYWk0ZTlHY2tid1JQanpITlUxUnhPdDR0S3RraUZwNDZ0K01T?=
 =?utf-8?B?QVZERGYwUWFaNWRzZUpjamt5bG9oYzNGcXE0ZTVPajMyZzl0WEJOZ0RKeVVE?=
 =?utf-8?B?dENmTncrR0x2cFM3ZFVZZWhRVWpoaUl0L292cE5adEpBR3BrUEhjay9mVXFU?=
 =?utf-8?B?bEpXT2ZtaWlzb2ZFQmtQejd3ZnR6VXRpSmdrdnBHdm5zK3NYb2xOdjhLTWNl?=
 =?utf-8?B?ODN3Q0tYNDFoM08zVzArVGtxbnBSaTQ2U0xLQ1daV3F2Yzd4Snltb3Avc1dD?=
 =?utf-8?B?OTEvLzFlTGMrZWxnK3E4dWtVV0h6cnNyTG9LUVdjQUJCNDRxQTUxWGRCTkdj?=
 =?utf-8?B?KytQbXJuclA2Z0RnSWpLZGhhVVZINy9LZURaNkM2MjZYQzBCQ0hrQUdQUDd2?=
 =?utf-8?B?RlZVMVRjbGFLQnNDVDY2MUJ0MWYrQUVlcnhNMVpkaHl0dEhUb2E0a2c2QUFK?=
 =?utf-8?B?RWtTdDJrQnNJQjZMaUZSTHhrL1ZWek8zUGNhdVZhRytsVnFDbXJLeWYxcFlW?=
 =?utf-8?B?bC84SnBabkc5SmU2Y0V2eEFOQjkzNy9MTTVJVEhLS2JTcDFSd2k5K3ZLcHJ5?=
 =?utf-8?B?anZwcHVQY2ZjN2lLMjJ0YWVsRDY0cUNLNGJhSzFYT0xnM1hFU3kwckxYZVRv?=
 =?utf-8?B?Y2Fyb2wzV1dXZkJiN21lTC9yRGk2aTlNREE0d2hCMVZjTHYwQnh6bEdhRk9p?=
 =?utf-8?B?ODRuVDdNU2poVlZJRWNNRkh5eSt6ZllSUXNSL3JkRWlBZmlxRkNDc1dDUk9K?=
 =?utf-8?B?dVliV1U2SDZNQXdJeklyWjgvVjYrY0FudjhzRVlmNzRweHorcEpBU3RJWTV2?=
 =?utf-8?B?NmhCRm5HUjgvS0NheUNsZmthREpRYmFHb1VCVStla09pNkxEcHlRN0F0cWhX?=
 =?utf-8?B?L3dva3ptV0JlYU9WcGxsUWE1L1hiaGk0YnFYTjRmODU1dmRQMCtEZmRySm1O?=
 =?utf-8?B?WGdNc2pDU0YrbTBvS0tZemtUL2VkVHZHUWlHUlZYSmNYdU9aTEp2a1hCbmpQ?=
 =?utf-8?B?RmxuQlhEUVBua0d1ZFNhQ1p1dllyTys0bVdCZ2VBZXNDSzlQelo4NVI4RTRQ?=
 =?utf-8?B?QXFKVk5aalBJQlpVaFRYa215NWtDTStkdU0xbXFmVFlsVWUyQk9qcmNzZXJD?=
 =?utf-8?B?eUVFRGNGN3plVkVYZ0VkVWxiblhPblowMHRoV0U1Q3dTTDU1MVJISDNxK09E?=
 =?utf-8?B?eGdvRzRpQW5BRnB3N2hwSUl3YTU3MkxDcDNwNEpmVEFVS1lqUXFhY3JUMnpE?=
 =?utf-8?B?bWpTMDg1OTl0dFNRYktkQ0ZsUXJ1YlRFQytBc09xdUlqK1RzVWRxTFZMdC90?=
 =?utf-8?B?ck53ZGtoQzBoSGlPVjNWa09rYzlFN2ZVZUZ5NlNOVU1TV0ZXOWM2dGM4SEpP?=
 =?utf-8?B?dXUvK0pqQlpsWWFWQ0lGVC9PVGlzLy9sdjRIV3ROMC90cCsrcGpPUnJkUmJw?=
 =?utf-8?B?M3pHV3NPaHJXNUZaL2ozaFcwR09wQWwwVG4wbXZBZ1FIS3plY0l6WjFRUWZa?=
 =?utf-8?B?UXhuaGtiUUR2dnlrNkRNbHgrSXlUdEpxaHNKLzBtejNicFZZbVdzQTFIazFW?=
 =?utf-8?B?eUp4blk3ejFnK0NONXJYMXYremF3dkg0WW9RS1VhbU9UVEppZ1VsbEUrbC9Z?=
 =?utf-8?B?VVQzU0tGcDRPMk5jNXJ3dVRvYSs4UDAxd1YxRmFlRXhseEFmcElldkYxeFQ0?=
 =?utf-8?B?QjMyaWE5VE9PTXYzR0dUWGEwdzdYOXc1Y2V5blEvTmdjaGtUNm9GVWh2dWVY?=
 =?utf-8?B?d0pHeW4wc2hBYXl6UUs5MWNVYzJsVkZpMnZ3UlV4cEhFNDUrQnVVNjYzYi9P?=
 =?utf-8?B?N0dHejFCZWpwaFVFZnY2ZEdkQzlmWU1lclpXdFdXRW5mU0VjRWt2VUZWNk93?=
 =?utf-8?B?MFA0VnNSNlBuNzI0dnVsUFZBZDJsSXNTZ1gwUDBLemtmRjhzN21KWGJmZDhz?=
 =?utf-8?B?R1F5eG84QlIrSnNZYmJ6RWZxUkluNzd1WXVGOWNud2VOVDlvTVBobkYzMVFj?=
 =?utf-8?B?VXZEV0dockt3YzlyL0pUdTVWUXVxVGgyODRrQ1kxZWowZmlSRmZtSlZjYXc1?=
 =?utf-8?B?OGtUNzZSd25jV01pdy9abDg1N3BSeFZlUW9mSmxEeUZlTzcrUFg0QjNkbXQw?=
 =?utf-8?Q?5GKpZiL05Plcm5JLNMavdOfhg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 998866ff-2ca9-44e8-ff00-08dbdbcadc08
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 17:40:52.3969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cPXy9n4HzkQ69axJHDAm691htn+Smxid1Iavg23OaLHSifyD/wVI0aZnwqep89zKL18it7a3jAwWrWl75j+YGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1
Y2FAY29lbGhvLmZpPg0KPiBTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDMxLCAyMDIzIDM6MzUgUE0N
Cj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0K
PiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCB2NF0gZHJt
L2k5MTUvZHNiOiBEU0IgY29kZSByZWZhY3RvcmluZw0KPiANCj4gT24gVHVlLCAyMDIzLTEwLTMx
IGF0IDA5OjE1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPg0KPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEx1Y2EgQ29lbGhvIDxsdWNhQGNvZWxo
by5maT4NCj4gPiA+IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgMzEsIDIwMjMgMToxNCBQTQ0KPiA+
ID4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0K
PiA+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQ
QVRDSCB2NF0gZHJtL2k5MTUvZHNiOiBEU0IgY29kZQ0KPiA+ID4gcmVmYWN0b3JpbmcNCj4gPiA+
DQo+ID4gPiBPbiBGcmksIDIwMjMtMTAtMjcgYXQgMTc6MjcgKzA1MzAsIEFuaW1lc2ggTWFubmEg
d3JvdGU6DQo+ID4gPiA+IFJlZmFjdG9yIERTQiBpbXBsZW1lbnRhdGlvbiB0byBiZSBjb21wYXRp
YmxlIHdpdGggWGUgZHJpdmVyLg0KPiA+ID4gPg0KPiA+ID4gPiB2MTogUkZDIHZlcnNpb24uDQo+
ID4gPiA+IHYyOiBNYWtlIGludGVsX2RzYiBzdHJ1Y3R1cmUgb3BhcXVlIGZyb20gZXh0ZXJuYWwg
dXNhZ2UuIFtKYW5pXQ0KPiA+ID4gPiB2MzogUmViYXNlZCBvbiBsYXRlc3QuDQo+ID4gPiA+IHY0
Og0KPiA+ID4gPiAtIEFkZCBib3VuZGFyeSBjaGVjayBpbiBkc2JfYnVmZmVyX21lbXNldCgpLiBb
THVjYV0NCj4gPiA+ID4gLSBVc2Ugc2l6ZV90IGluc3RlYWQgb2YgdTMyLiBbTHVjYV0NCj4gPiA+
ID4NCj4gPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KPiA+ID4gPiAtLS0NCj4gPiA+DQo+ID4gPiBbLi4uXQ0KPiA+ID4gPiArdm9pZCBpbnRlbF9k
c2JfYnVmZmVyX21lbXNldChzdHJ1Y3QgaW50ZWxfZHNiX2J1ZmZlciAqZHNiX2J1ZiwNCj4gPiA+
ID4gK3UzMiBpZHgsIHUzMiB2YWwsIHNpemVfdCBzaXplKSB7DQo+ID4gPiA+ICsJaWYgKChpZHgg
PiBkc2JfYnVmLT5idWZfc2l6ZSAvIDQpIHx8IChzaXplID4gZHNiX2J1Zi0+YnVmX3NpemUgLQ0K
PiA+ID4gPiAraWR4DQo+ID4gPiA+ICsqIDQpKQ0KPiA+ID4NCj4gPiA+IFlvdSBhY3R1YWxseSBk
b24ndCBuZWVkIHRoZSBmaXJzdCBleHByZXNzaW9uLiAgVGhpcyBleHByZXNzaW9uDQo+ID4gPiBz
aG91bGQNCj4gPiA+IGVub3VnaDoNCj4gPiA+DQo+ID4gPiAJZHNiX2J1Zi0+YnVmX3NpemUgPD0g
KGlkeCArIHNpemUpICogc2l6ZW9mKCpkc2JfYnVmLT5jbWRfYnVmKQ0KPiA+DQo+ID4gSGVyZSBz
aXplIGlzIGluIGJ5dGVzLCBidXQgaWR4IGlzIGluZGV4IG9mIDMyIGJ5dGVzIGFycmF5LiBTbywg
dGhlDQo+ID4gYWJvdmUgZXhwcmVzc2lvbiB3b3VsZCBiZSwNCj4gPg0KPiA+IGRzYl9idWYtPmJ1
Zl9zaXplIDw9IChpZHggKiBzaXplb2YoKmRzYl9idWYtPmNtZF9idWYpICsgc2l6ZSkNCj4gDQo+
IE9oLCB5b3UncmUgcmlnaHQsIG9mIGNvdXJzZS4NCj4gDQo+IA0KPiA+IFRoZSBzYW1lIGlzIGRv
bmUgd2l0aCAybmQgZXhwcmVzc2lvbiBidXQgYWdyZWUgdG8gdXNlIHNpemVvZigpIGluc3RlYWQg
b2YNCj4gbWFnaWMgbnVtYmVyIDQuDQo+ID4NCj4gPiBUaGUgZmlyc3QgZXhwcmVzc2lvbiBpcyBh
ZGRlZCBpZiBpZHggaXMgYmlnIG51bWJlciBhbmQgZHVlIHRvIG92ZXJmbG93IHRoZQ0KPiBhYm92
ZSBjaGVjayBjYW4gcGFzcyB3aGljaCBpcyBub3QgY29ycmVjdC4gUGxlYXNlIGxldCBtZSBrbm93
IHlvdXIgdGhvdWdodHMsDQo+IGlmIHlvdSBhcmUgbm90IG9rIHdpbGwgZHJvcCBtYXliZS4NCj4g
DQo+IElmIHlvdSdyZSB3b3JyaWVkIGFib3V0IG92ZXJmbG93IHdoZW4geW91J3JlIG11bHRpcGx5
aW5nIGJ5IDQsIHRoZW4geW91IGNhbg0KPiBqdXN0IGRvIGl0IHRoZSBvcHBvc2l0ZSB3YXksIHN0
aWxsIHdpdGggYSBzaW5nbGUgZXhwcmVzc2lvbjoNCj4gDQo+IGRzYl9idWYtPmJ1Zl9zaXplIC8g
c2l6ZW9mKCpkc2JfYnVmLT5jbWRfYnVmKSA8PSBpZHggKyBzaXplIC8NCj4gc2l6ZW9mKCpkc2Jf
YnVmLT5jbWRfYnVmKQ0KPiANCj4gT3IsIHRha2luZyBhZHZhbnRhZ2Ugb2YgdGhlIGZhY3QgdGhh
dCBib3RoIGJ1Zl9zaXplIGFuZCBzaXplIG5lZWQgdG8gYmUNCj4gZGl2aWRlZCBieSBzaXplb2Yo
KSwgd2UgY291bGQgc29tZXRoaW5nIGxpa2U6DQo+IA0KPiBpZHggPiAoZHNiX2J1Zi0+YnVmX3Np
emUgLSBzaXplKSAvIHNpemVvZigqZHNiX2J1Zi0+Y21kX2J1ZikNCj4gDQo+IC4uLmJ1dCB3ZSdy
ZSBiaWtlLXNoZWRkaW5nLiAgSSBkb24ndCB0aGluayB0aGUgbnVtYmVyIG9mIGV4cHJlc3Npb25z
IG9yIHRoZQ0KPiBjb21wbGV4aXR5IG9mIHRoZSBleHByZXNzaW9ucyBtYXR0ZXIgbXVjaCBoZXJl
LCB1bmxlc3MgeW91J3JlIHJlYWxseSBpbiBhDQo+IGhvdHBhdGgsIGluIHdoaWNoIGNhc2UgeW91
IHNob3VsZCBhZGQgYW4gdW5saWtlbHkoKSBvciBzby4NCj4gDQo+IEknbGwgbGVhdmUgaXQgdG8g
eW91Lg0KPiANCj4gDQo+ID4gPg0KPiA+ID4gPiArCQlyZXR1cm47DQo+ID4gPg0KPiA+ID4gQmxp
bmRseSByZXR1cm5pbmcgaGVyZSBkb2Vzbid0IHNvbHZlIHRoZSBwcm9ibGVtLCBpdCBqdXN0IGhp
ZGVzIGl0Lg0KPiA+ID4gSSB0aGluayB0aGUgYmVzdCB3b3VsZCBiZSB0byB1c2UgV0FSTl9PTigp
IGluc3RlYWQgb2YgaWYuDQo+ID4gPg0KPiA+ID4gU286DQo+ID4gPiAJV0FSTl9PTihkc2JfYnVm
LT5idWZfc2l6ZSA8PSAoaWR4ICsgc2l6ZSkgKiBzaXplb2YoKmRzYl9idWYtDQo+ID4gPiA+IGNt
ZF9idWYpKTsNCj4gPg0KPiA+IEkgd2lsbCBhZGQgdGhlIFdBUk5fT04oKS4NCj4gDQo+IFRoaXMg
aXMgdGhlIHBhcnQgdGhhdCBJIGFjdHVhbGx5IHRoaW5rIGlzIGltcG9ydGFudC4gOykNCg0KVGhh
bmtzIGZvciByZXZpZXcsIGhhdmUgZmxvYXRlZCB2NSBhZnRlciBhZGRpbmcgdGhlIGNoYW5nZXMu
DQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg==
