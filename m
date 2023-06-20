Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FA87376B4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 23:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1850B10E023;
	Tue, 20 Jun 2023 21:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D34210E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 21:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687296932; x=1718832932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fwK7TDiqOWqX8CGhf/ga5GupY5R1V2OgZNuPPSC84do=;
 b=k06axnQfrJ/mH6BkjhGwmX8Msb4aMmHUiLjl8pidSRN8xkboTXulANQR
 RcDtm9AruJnuRB00lPN1BKjBKMCmsHoOp+2p050ZPd4VDJlD6aBcJxeg+
 1gX4VPwMQwGywDDFGKPa6Goi6QUBJ8ZkmCmiAoS9ZfVKZ0RYrMnJFC4pl
 tnFaUnNMA/Eh+JwRIAVAgEVfhUWkGq4RHJeMDTVZs0c2AuJ0N+0y+tWp9
 ASZyhKBgqb1XXbYO1P38wa1A0Bu9kjA9ytjggojxXT5L2sxboz00gUGpG
 gWUCF/uos0izKTlIuQFmia6ZgXQXJbao/nOmRkx4v+cIKdCz6HfAHRf8c g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344731946"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="344731946"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 14:35:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="743911884"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="743911884"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Jun 2023 14:35:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 14:35:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 14:35:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 14:35:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLl47bwAlQn7m6Ad61U0QAwPNnG8KlKNF/uVYHkz5Yb1kG0SpxpocNqZcSWGst4xxOOR+M0QlSWzh8m9i7SZti6a/cGf46sESQrYxrSQtpcztlBZ0rErZaSX6pWJIsRh5nhyslTEPWz8JlbBENbMFtBYlz00kk4QD8s206T+RW8Ct9mMWP8AFmIwfd9w+BmHO2Yj6i/VJly0UxDEwSSi6N8WDVEBBti6E82pOzkAfV4Ayn5mHaBxynUBWI1sJ++na5Tjdp/7gf4Ctpm+nENxfJz5PJxbKj4L8VCNfmnFFA9P30p2HWLGjYRXwgsdXeHAy4S+z3oJ36sCJW531ne5Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwK7TDiqOWqX8CGhf/ga5GupY5R1V2OgZNuPPSC84do=;
 b=e12v8JRHWDfvBVZqx5EhIl17R6KkhKO3oCSuJXgslyP15uC8nDxKTKK4rydi9uN7NAcxh23JfnAJQxvtLz5h2RfQGeGBU+Z1Dn1TL3maSwAb4gf2Yv6eK2CDKsEodDeB+TSF0xEGy7wKitYspsoHXH+QxGyX/tKCV1IQEg7vIMmYes4nXI6D3G4FkSf2YuWRhXB1Io1r/sltILg+x9FhFH/7/i3w+HM2W3r1AH1To7rwEkSazAF3P9N29FVf9BDOvvi99xjAXAGY+PmmDQ+MXJEQ4tFGnFHIsHuVDl5luOsqJwcL5KQdCTYfHHFS0h1pdyvUDvnMztNJWqy57Bo+4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ1PR11MB6299.namprd11.prod.outlook.com (2603:10b6:a03:456::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 21:35:27 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 21:35:27 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter
 selection on MTL
Thread-Index: AQHZoJXTPMyCXfsJhUeCLDslIq3TC6+UNf+AgAAG7oA=
Date: Tue, 20 Jun 2023 21:35:27 +0000
Message-ID: <DM4PR11MB59710DEADAFD5A823AEE78F1875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
 <f78a4825e63acc93ae6f4bde4916e66ca1f0c3db.camel@intel.com>
In-Reply-To: <f78a4825e63acc93ae6f4bde4916e66ca1f0c3db.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ1PR11MB6299:EE_
x-ms-office365-filtering-correlation-id: 1a26ef39-b47e-4f45-2f5b-08db71d64381
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: odSsHA2WbI+7Sz6CU6zjpKk+X8xyO2E6i+hms8IL/13FYbGQAo2hWxpwtTAEJpksXM8uojwf0+SvPTpbavwZ2c3SNjOuIzMJwqsUIhvWlavAkstrif65K8b+xPja5YVvQumBzzUI7DEw8Nw8RoR6y3cMCpQJIZ6a65N6kys9DDv2mhmOP8DR1ebqb7xHc+YtWz7FoGT4xSHM48RecvSUE4i7ajO03WE17o47HSjsL/RAjVIgzpfSSl3BuA216BH3IjQA+NWXP0z9f6Lzkl1CWBdVUDl6T79ej8BQVy7b92WoEYltyBzF54PtCCmO9+4rUiHWBwPfaTsYnoaevpjBkb0Swy3RDDeim1H8++Z0VyBlNOOHbny2cxXR9+uZYMi+Y6mRR40T9VEXZ+nNPcGFS6Fc3G2Dm1n1WKgt8Z9Wg84qG7/ZsUmfca0HJ5h3vanTB+ZBjDtfyVa8RPbLhOF2Jf9Fj06I44aHAKgBeh02tQa0tgZPiiGxZ+W9nalfHMtFDVHK5ba+ij+MO1yrFcjP0gdu9bUXTDnP8/eZMJ/r7OzxA9nxxEFh1+6k43YRvsAzzSR+xKc4Rsa6moqjSg9HZbrYkdjIF0QVG+w085bbBjbU+ZO1kC1t7D4GHwF8mYx/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199021)(33656002)(5660300002)(52536014)(66476007)(8936002)(8676002)(41300700001)(38070700005)(86362001)(66446008)(66556008)(76116006)(64756008)(38100700002)(122000001)(316002)(82960400001)(4326008)(55016003)(66946007)(107886003)(26005)(53546011)(6506007)(2906002)(9686003)(186003)(7696005)(478600001)(110136005)(83380400001)(71200400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SS9ZS0N5QVFDNnhyazhPUHg0aEJUMmZQU3pGbVlxVCtGRElncDJ1TEZjK3RG?=
 =?utf-8?B?YjIydm41VWs1QWhYOHlsZzVrb1RoUUhVT0ltQkVUcjA1d2ZFRWNtV3M1NHNK?=
 =?utf-8?B?di94TnlpT1haV0NOQmNpNXdEZHY3MmQyOTNrbW10a2d5SzBMRE52enpzWkEx?=
 =?utf-8?B?NHhWc0hZMzBUWkVUWGFYUGprMUpqNlFTWnczMTdtSnlGKyt2SHRZZ0tRdkpz?=
 =?utf-8?B?Y05aMVhiVDZNMGxzMXpGT1ZEL3ZsTTZyOXZFZE9xak1ScHZLQ1dERTV0UlBJ?=
 =?utf-8?B?RzdMNGM2YzRSSUJnRmpRTUhGaWRMN0cwUjdnR2ZsMVRvOEl3NTRvbjUwMWVY?=
 =?utf-8?B?eTdhMG9SZStPTU16OEREL1cvdGpwelUxV1gzcE14TGMvd1JONVZMMmhHRFhX?=
 =?utf-8?B?RFlIY00wVUw5cmJnUHR3dGs1Mi8vWkMxTWwxQTZqVHI4cUNGeW9mR0pRNGsy?=
 =?utf-8?B?YUdGZEY0clltZkNlNXZxMHA3SVhaMEsrVm5ZeGhZNTgreE9yN1BzcWJXcDVU?=
 =?utf-8?B?ZzhrY0RtL3RGNytlZ1FoQ0kzOGN4NkxoTktKTmNuZzJ0VGNJU2R4dzl4Vy9r?=
 =?utf-8?B?TWZBc3FjNE1MWVVrbDA3R1BFVHU2NFh0QjhqVm8wM3VVN2NXS09pckU4NHhY?=
 =?utf-8?B?MGNSQVJKbXVpd0lKd2I2dkkyM1FNSVh6Yi9sdWduZHJJR2I0Z0tPOFdhRS9C?=
 =?utf-8?B?RkZvMVA1S2FxNFVaQXc4cDg3VUNrUUdGMXFrTjdSWUc3d2krenpXMTNkN1hM?=
 =?utf-8?B?VDhxQU5pTFVnMnJJWjJ2TUIrMXUyVkd4ZTVscFBHY3dHQmZRUCtiUE1qTjRa?=
 =?utf-8?B?bE95dVdKODVNV3RBc0hBb1JQbXRNeGpzSVZSZk56YnAvUHJ3WElwUklLQVRK?=
 =?utf-8?B?MU5CZ0NVa1JsRml6bUVKZ2FtSkdPVHJsNXZWbzBxTDZvQnZObTlva0lRU3BK?=
 =?utf-8?B?Q0tpSDB1K1JqNkFyV2ZNNkMrY2RXQVdBUTRMM282M0l0dWZYTVFoNXNrTFdy?=
 =?utf-8?B?aDFteVlENWpZV2ZIb2VMVFdPWTlhUmx5eWRENHo1aitZbXhWYUtKUndMMDBY?=
 =?utf-8?B?anRScUtNbjdZU3IxUnE5Y0phd0tVTDlLMU9ha29sbFJNMUtHZ3hNbWMwSnZS?=
 =?utf-8?B?VmFnSmxEblVrUk9lL0tjQjRBZ0lJcmpDdXJQTFdVWFZaamlOYXUvTGNDdGtG?=
 =?utf-8?B?a0VjMTdncGNxbVZ4K2lUWW1PTXltZlV1U3FvTE1WUkNMVUgvRkVzeTNpcHlH?=
 =?utf-8?B?bE04SU9xZExpSTVsSmZ4VW9LdDZibkxUL0EvdlA5Z3AwQ3psMkd5TTV5eEdp?=
 =?utf-8?B?S1UxUGR1eDVtTkRXUmxYdDZ2VmZTYWR5Z3Q5L2dIY2FMeUgvS3g3RTh2THln?=
 =?utf-8?B?WGxXakhVZkwveDRiSG9CVGVaNDZpbGVKZ0d5N0dTQ2Rkc1NrRHNNUGpPdm03?=
 =?utf-8?B?R1N2dFRzYkEwalh5bnBXYVhQaHpsRmJUcXQvR2hXbkwrejgxNWE2UFVQZy9Q?=
 =?utf-8?B?THc3Qm1LUUlNTEtnSWQrUE5JWTdKdUJ0d1puSEJIb2dka09pSWhBM0ZGSHhw?=
 =?utf-8?B?Q0NFZzhERHV6MTNJamJUZGJMZkVjR2ZIdWZxNm5PNHRaTWJiS2V1ck0rU0Rj?=
 =?utf-8?B?UFFMR1ErM3p4b1Y0cm1mMXljWjJnKzViNjNpSllXRFhxNjByTXNlcTVBV2c1?=
 =?utf-8?B?V0htdnF5N0VuQWRSeTY0ZU8zV2ZrZTd5aFl3cy9BSDluMlUrMUVuMld5alJj?=
 =?utf-8?B?RVJzdEFiN1dPMDM3UzN0UUZHOHN5NlBPT1JpS2RmcVhRczlnWlVLUWNaKzBa?=
 =?utf-8?B?VjVQNlI1QnhJYWhPQ0hEbkFaQ2xVNktGQjB1Ky9HQ2NOOUZ2SXhCYXpjck52?=
 =?utf-8?B?MzRsYUhlajJkR2xLWlVJa3g3bHU0cUFtY0hHRFY1QllJdERKMzN0enJsWGlW?=
 =?utf-8?B?K01uT1ZRNEJOaUNWakpSWjVyb0FRUlk2QnNHQXo0QUFNcnp3WXBpVDdKeGJk?=
 =?utf-8?B?SHRIWU9yVmVXOGcvd2JCMjVteWpnTFVOY2ZleEFkOEw3L3EyazNEUkFacVY0?=
 =?utf-8?B?S2xkejhrSkxBVmxwT3Q1OEJOSnZMZlc1Rkw1dlUvbEZ6cHNreTVWQVovMHgy?=
 =?utf-8?B?eDhGZ2d1UC9nOWlISmhJSnQ5THMwbDczQjZOSEJId1k2Zk1kemRob3pMUEpz?=
 =?utf-8?B?a2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a26ef39-b47e-4f45-2f5b-08db71d64381
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 21:35:27.2127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: awf5olSrZnzgUffGWoxGzq5l7aKiXlOfA4tRGI5ZYmlPsgACl9Zl59URH9okrBLtciCN4H/FFCFKoLWjvkMLW9yVm+DZ0QooxWscl5dptEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt
 hdmi_level_shifter selection on MTL
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

TWVyZ2VkLiBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuDQoNCi0tUmFkaGFrcmlzaG5hKFJLKSBT
cmlwYWRhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVGF5bG9yLCBD
bGludG9uIEEgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBK
dW5lIDIwLCAyMDIzIDI6MTAgUE0NCj4gVG86IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFr
cmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IExlZSwgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPjsgQWxtYWhh
bGxhd3ksIEtoYWxlZA0KPiA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBTa2lwIHVzaW5nIHZidCBoZG1pX2xldmVsX3No
aWZ0ZXIgc2VsZWN0aW9uDQo+IG9uIE1UTA0KPiANCj4gT24gRnJpLCAyMDIzLTA2LTE2IGF0IDE0
OjAwIC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3cm90ZToNCj4gPiBUaGUgaGRtaV9sZXZl
bF9zaGlmdGVyIHBhcnQgb2YgR2VuZXJhbCBCeXRlcyBkZWZpbml0aW9uIGluIFZCVCwgd2hpY2gg
d2FzDQo+ID4gdXNlZCBmb3IgY2hvb3NpbmcgZGlmZmVyZW50IGxldmVscyBvbiBlYXJsaWVyIHBs
YXRmb3JtcyBpcyBub3cgYSBoaWRkZW4NCj4gPiBvcHRpbiBhbmQgc2hvd3MgdGhlIGRlZmF1bHQg
dmFsdWUgb2YgMC4gVGhlIGxldmVsIHNoaWZ0ZXIgaXMgbm93IHRvIGJlDQo+ID4gZGVkdWNlZCBm
cm9tIGhkbWlfZGVmYXVsdF9lbnRyeSBpbiAgaW50ZWxfZGRpX2J1Zl90cmFucyBmb3IgZWFjaCBw
aHkuDQo+ID4NCj4gPiBTa2lwIHByb3ZpZGluZyB0aGUgZGVmYXVsdCBodyBwcm92aWRlZCB2YWx1
ZSB0byBmb3JjZSBkcml2ZXIgdG8gY2hvb3NlIGhkbWkNCj4gPiBkZWZhdWx0IGVudHJ5Lg0KPiA+
DQo+ID4gQnNwZWM6IDIwMTI0DQo+ID4gQ2M6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFs
bWFoYWxsYXd5QGludGVsLmNvbT4NCj4gPiBDYzogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGlu
dGVsLmNvbT4NCj4gPiBDYzogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5h
LnNyaXBhZGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYyB8IDMgKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBpbmRleCAzNGEzOTdhZGJkNmIuLjRiOWJmNzZl
MTM3ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jDQo+ID4gQEAgLTI2MTUsNyArMjYxNSw4IEBAIGludGVsX2Jpb3NfZW5jb2Rlcl9pc19sc3Bj
b24oY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ID4gKmRldmRhdGEp
DQo+ID4gIC8qIFRoaXMgaXMgYW4gaW5kZXggaW4gdGhlIEhETUkvRFZJIERESSBidWZmZXIgdHJh
bnNsYXRpb24gdGFibGUsIG9yIC0xICovDQo+ID4gIGludCBpbnRlbF9iaW9zX2hkbWlfbGV2ZWxf
c2hpZnQoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhKQ0K
PiA+ICB7DQo+ID4gLQlpZiAoIWRldmRhdGEgfHwgZGV2ZGF0YS0+aTkxNS0+ZGlzcGxheS52YnQu
dmVyc2lvbiA8IDE1OCkNCj4gPiArCWlmICghZGV2ZGF0YSB8fCBkZXZkYXRhLT5pOTE1LT5kaXNw
bGF5LnZidC52ZXJzaW9uIDwgMTU4IHx8DQo+ID4gKwkgICAgRElTUExBWV9WRVIoZGV2ZGF0YS0+
aTkxNSkgPj0gMTQpDQo+ID4gIAkJcmV0dXJuIC0xOw0KPiA+DQo+IFJldmlld2VkLWJ5OiBDbGlu
dCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPg0KPiANCj4gLUNsaW50DQo+IA0K
PiA+ICAJcmV0dXJuIGRldmRhdGEtPmNoaWxkLmhkbWlfbGV2ZWxfc2hpZnRlcl92YWx1ZTsNCg==
