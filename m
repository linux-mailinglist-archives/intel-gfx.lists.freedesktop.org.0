Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D523C724781
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 17:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1204510E371;
	Tue,  6 Jun 2023 15:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7348810E371
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 15:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686064814; x=1717600814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sK5bfrm7dtOviXQwn7bzhMzXtWzU7LMrCY7BnJgKhuU=;
 b=fdXb9L4mGNEJZI119MtwqVsAyLb3bHxaNUnJFQAhaM9luBs7IZ5NQWfT
 9h+1Axx2W6hWayqt0Lk1Kk9TH00x/SbJv1s2UxkNgdQXRXymWw9LhZVAT
 gnwe3gFlx+DG54gNbY9yYvX29fhUSFZW+6sWOQxRSeurhZef3EEiiswzi
 c4aOyGPK8xQUOh5lcklW4z9IXjgPhTLCD4hXJxfrSpsTkMuKp9xe2pzh6
 ECjKROC7ZO62klB6Nu9cDhG0JCn2cpQOpGS8WOa5+uTaa0MgJ1d5vIghm
 FZyEPZTTiyu78vppJltm71SStYtrwpUR/bC0z4y/KfRGmv0WgE9hKGUjO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="354202591"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="354202591"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 08:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="686579121"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="686579121"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2023 08:18:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 08:18:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 08:18:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 08:18:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ORx1YdHruJdkZ/zjFWkOazO8L4nLFyer6m+fKpX/po0/MwRy8jEScypBQnaL1G6i8E0jhmoBV71nz/bAXWnizG8dPYzENFD7YuTR8tIOri9a4/RLb7eWWDxY3789JSVWhGM/sRLeIEAKErBosBFr+aYTSnae5M8gDGQQ0nGLvso6lFAI4Q226XuAVFAMu3fUoHS8rebUbjijbRwplg7GqUuUbLubOT9MgCgrCdUpurx4qPXv1st2X4TGOHJBeb23raQ+WHHUkBu/WmK+FYkaaWOtj2ZflpRSZFIQ66pKiFg9+1I9M9uzbDXc7MSJrP96LmzJ1rgZezW3LkNrPJfAlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sK5bfrm7dtOviXQwn7bzhMzXtWzU7LMrCY7BnJgKhuU=;
 b=LBqHaVU/aKOzVa8y0gTJNwli612lfmU0tn5Z0G5BF4wviib8a75szdqAy3eTlAn9KTy9yZ58c7sCaW7uEYcds+GKyIxDEiqxiivdedxdSZbCwxHlNBaVKn0xHilIHJXIMFA4wZNLNU2pPKMZBb607ThLsgJNMao+m3t1BcyLw/fQGxxTeP0hNH+AaSnaV19hb3/XIPVddljEw2zEjuBWdmMphMwg+GOTOVWgwJTJ2mCuvTGI6ix+o0y9u+A9TUPCwQFqF/9rNd4PBxGw1hR3oMaSbZNitfu4W4Hjw3lg2E7+wFV9ZYhlQ/tJIzEDNIA5dxjyuU7Yv/ti9L190fx9QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by BL1PR11MB5512.namprd11.prod.outlook.com (2603:10b6:208:314::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 15:18:17 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::fadb:2488:f86:2632]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::fadb:2488:f86:2632%3]) with mapi id 15.20.6433.022; Tue, 6 Jun 2023
 15:18:17 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Add new vswing table for C20 phy to
 support DP 1.4
Thread-Index: AQHZmGPkdArleaY1dUWd0XKh2yOmpa99413g
Date: Tue, 6 Jun 2023 15:18:17 +0000
Message-ID: <SN7PR11MB7041EDE8CFE504E21EA41178EF52A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
In-Reply-To: <20230606104306.32001-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|BL1PR11MB5512:EE_
x-ms-office365-filtering-correlation-id: 8efb125b-493a-453e-cf9e-08db66a14144
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uPmATLmQ/DhJQWRmn6glunxhMmC6xAKXtHzuUAnfOf3a3eDyjRP9O8EjCnKtMR/0AK/9ccyzvq9BeFLKH/ly1siLRLdUYeA/gUnOL4oreN1/lJQrfiE4fC/HF71WzW7cN62X+08ORaqobONT4lANdbDOBDw57UCsnGzNSIdPa4qeW/PzDsaV8QhReI6zMrbM5QBVGxU0d6a1/7ZQsnGKAHdwloEHkcHA9nEJ4acgPi3kxC3x6yqIdcrJIbGN/yEBmkB6zcDkgKopbIDQMMp/4NXjECUvscgE1Qq+LFIX6groCk+7/qVNJWWtJYtaDfgjEoTX025QApUCw5lDM7l2Gv9mk56p6tsCim+UyexRL/Vp6sLeJ5XaNs1YVvikBUtuHMRdX75fLA13hzg9gBSH8+0VnL847lwM9RSAJOOI/w+JjMTnhOngc2fmEQU7ROwNKsWDibn7jYrNkZHjkXB6/glIfRzl4aBDXw9Ehnm8aD9/t66GhbPORj0eMIPbi+8g6ta8RCv4sO4Kp4Q+0+zGTKajJRpp6MelFhUMkBcwolOKb/j4H+ARjmeCvxmS+SQcs5fc7xOfCys9rixvDvZknMs6p8hKBSDMzEg6dow6YzDB9jkjyCyrfh0TdZN5KLyP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(396003)(366004)(136003)(376002)(451199021)(71200400001)(26005)(110136005)(66446008)(64756008)(76116006)(66476007)(66556008)(66946007)(82960400001)(4326008)(122000001)(38100700002)(7696005)(83380400001)(478600001)(2906002)(9686003)(53546011)(6506007)(41300700001)(33656002)(38070700005)(316002)(54906003)(55016003)(8676002)(8936002)(5660300002)(86362001)(52536014)(186003)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHhzTmdkQnl3dkQ2emVjZk9vUXhTbE5RNlNLeGpwRHh4R21TQ3U5cVVtNm5S?=
 =?utf-8?B?VEgvRzJIRytHNE5DdjBPZUhUL0VPRFVYdzVjZWN4UG5paC9wM0U3dXFMdGNq?=
 =?utf-8?B?bGQ3UGpMRzNUdDkyMTg1aUk1MUFnMnNXTDBpTUc2ZWVuUk1MZ3NXZnE0QzdH?=
 =?utf-8?B?UVdRNHg4dWNmMCsxWGo5bkYySmJ4T0dLSVRCNDR5bUNaYlZBT3VlTkgxbmJr?=
 =?utf-8?B?YmpQWlNVMzhJR25lRmpGZDg4Vkg5aWljR1BEV3l3SGw5bWIrRjFmblJsWTdi?=
 =?utf-8?B?TFZrdGdXUWgvZkk3RnpTUlFjVG5Cd2dmbmFZZ2J0ZE10Um5lamt0S3hZUnJu?=
 =?utf-8?B?OTdCN0NvREtjdUJJNzltYTVLSTdFWUQxdHlUNUlPRWtnTkdpNi9QZEpSQm9v?=
 =?utf-8?B?QVpGUGpyMi8xNW85OGpwSWoyRXhTcHBXVXJYK01ONGxybFF1OWRRU3RKUUkv?=
 =?utf-8?B?RnJUd2dGQTg5YlpGc0MybEF5blFURk9DeXA0NXlSTG9veE5WOTkrVTl4RDFJ?=
 =?utf-8?B?bHdRTWc3aTdlaCtrRWVpQXFRSmYwT3gvUVpyd21keVZFNUhRTkRZM3kvRGZF?=
 =?utf-8?B?ZEdmendoVDVkalVoK3ZrQktyeWxlRUZ6czU4aEw5QktDTUVRelIwQ2hnbHIv?=
 =?utf-8?B?bnVORVpuSFJSN00wUzFsbXJNbWREZ0lRdG53dTF4K3JrMzBqNWwzUE1VY2xF?=
 =?utf-8?B?TkoxbEc0T3BrTWZCR1AzU2tub1F4SFJKdUJ4WEF5eWQzOXdpdTBPMWZsb3Bn?=
 =?utf-8?B?QmVBZUFKOTJiODZGR2Y1V1FaV1MzQnZCY1FMeVU4NWliOGpYWlltNXRCamlK?=
 =?utf-8?B?ekJUazhuT3NkbkZEaXdWUUhFV3l6dUl4aTNodDVEREt4V0xzdHdoOUVYRHo1?=
 =?utf-8?B?VUIvM1R2L2N2dEl2TTY3MnJSaFh0cU5ZTzlqVnFkWWhUUzVlR2UyNUgrMFVn?=
 =?utf-8?B?WFVVVmpTd25YdnhlOXNzOFBXaUlmZHJ3b0QwMnR5VEU1YTJTczJrSTZtUVNK?=
 =?utf-8?B?bGhPanEwMkRnL0JvR0p3TEtzT2xNM2hxQ1BnY1lEdTJxNWt5M3BvaFA0VW53?=
 =?utf-8?B?czZRYTJKRWtBbk5MU1BIaFUvVDdDNjUyeWdBa0tBbHliSXd3T256Yml1bCsy?=
 =?utf-8?B?WGFmVFlFQmRKaFU5MG1RMXdpeGFOY09pVUFyU0ZOZzE0ZnJzNEU0dHNDMWZI?=
 =?utf-8?B?eUY5OUV3ME1zVFNxbHdxN0VmQkxKNlNyWVhZM0FZZlFQT0dJZzlTN2dKNkF3?=
 =?utf-8?B?VnNnWnplUVFvVEZoZUFzYTV2ckFySUpLMzFuVTRSNE0xWEN2NWNKOThaUlJD?=
 =?utf-8?B?YlFJMnl4NXdNWnllNTNTenp2aUZCZkliQXZjcWU3enBYcHVFaFBuL1dCMVh3?=
 =?utf-8?B?Q0ExemFhcHhxbGkvZUpoS29SRnZ2ODlFbGNDa00vREFlLzZsV0dnTDFlangz?=
 =?utf-8?B?UVd5TXBjUlNjQTh3OFNTWUNrd3I3TU0xZVAxcUh1bWxjSnBCaGYxMnlVeHd5?=
 =?utf-8?B?SERKOUJvVlJFWmJ2T0hCUjlOOTg2K1NSMTNZRFR5aTlBQ1ZVN2NURmYrb1Ex?=
 =?utf-8?B?WHE5dU0wd0pDQXE3d29WOUJVdmlvN0dOb0xobGpPSmpUVXpqcjhkRjhJbmx3?=
 =?utf-8?B?MzhpV0VGbVYxTUNVczZsYVFzajRXK2x6MnBSdkQxKzd4OWE5T3g4a1JKTzQx?=
 =?utf-8?B?MlRha0RqZGE2dk5BMlZNOU9veVVqYXBhOTc3b2VVSERnc3EvRHlCU0FpK0g2?=
 =?utf-8?B?ZWcrNUtjNFdxeTZBV0VaQS9HNnhRVkdqWGNNbUhwWko3MW5GdHl4c3hwSzJw?=
 =?utf-8?B?N1VWZC9vVlRyd09hMzIzeVZsWmsrQ3pzWFc0bVUvS0RwQnZ5SzIxWVR1OVBN?=
 =?utf-8?B?K0xmeWRVcFJWOWptL2MyMUFvOUh2TmNBSExtZFVqSWtidGV5SHlSQmk5NVpu?=
 =?utf-8?B?UGF5VExDbjhDOXZlSDNJcFRaelQxc3RNOVNjZ0VWSVA0NnFTM1d2eVhieHZH?=
 =?utf-8?B?V01naGx2aTZyR3Rhc1Nka0kvVHJOTDVqajBrVEpZakpnM0hrb3haMGVBU2dZ?=
 =?utf-8?B?T3VZTm5nZCs4MGxaQjlBU0NSYlpQa3RQM3VCV2s4RjFpVHBTTmlaZGdScnZl?=
 =?utf-8?Q?UU+B47S6P+teNdUNCY9j0YjmU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8efb125b-493a-453e-cf9e-08db66a14144
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 15:18:17.3506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wV/D8vezEcbd5YzFMP4kERD6QnsGpuLY8KiZ4m3LSWQhZ4/j+uHnZMuwd8o1F41HJkT+aadeJ48OC3NC/KjQHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5512
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add new vswing table for C20
 phy to support DP 1.4
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMZWUsIFNoYXduIEMgPHNoYXdu
LmMubGVlQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVuZSA2LCAyMDIzIDE6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IExlZSwgU2hhd24g
QyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+OyBUYXlsb3IsIENsaW50b24gQQ0KPiA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+
OyBTcmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47
IFNoYW5rYXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFU
Q0hdIGRybS9pOTE1L210bDogQWRkIG5ldyB2c3dpbmcgdGFibGUgZm9yIEMyMCBwaHkgdG8gc3Vw
cG9ydCBEUCAxLjQNCj4gDQo+IEFkZCB2c3dpbmcgdGFibGUgdG8gc3VwcG9ydCBEUCAxLjQgZm9y
IEMyMCBwaHkuDQo+IA0KPiBCc3BlYzogNzQxMDQNCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMg
PHNoYXduLmMubGVlQGludGVsLmNvbT4NCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+DQo+IENjOiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29t
Pg0KPiBDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVs
LmNvbT4NCj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jICAgIHwgMjEgKysr
KysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9i
dWZfdHJhbnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90
cmFucy5jDQo+IGluZGV4IGI3ZDIwNDg1YmRlNS4uNmExNTA3NTE1MTE5IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0K
PiBAQCAtMTA1NSw2ICsxMDU1LDIwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyBtdGxfY3gwX3RyYW5zID0gew0KPiAgCS5oZG1pX2RlZmF1bHRfZW50cnkgPSBBUlJB
WV9TSVpFKF9tdGxfYzEwX3RyYW5zX2RwMTQpIC0gMSwgIH07DQo+IA0KPiArLyogRFAxLjQgKi8N
Cj4gK3N0YXRpYyBjb25zdCB1bmlvbiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5IF9tdGxfYzIw
X3RyYW5zX2RwMTRbXSA9IHsNCj4gKwl7IC5zbnBzID0geyAyMCwgMCwgMCAgfSB9LCAgICAgIC8q
IHByZXNldCAwICovDQo+ICsJeyAuc25wcyA9IHsgMjQsIDAsIDQgIH0gfSwgICAgICAvKiBwcmVz
ZXQgMSAqLw0KPiArCXsgLnNucHMgPSB7IDMwLCAwLCA5ICB9IH0sICAgICAgLyogcHJlc2V0IDIg
Ki8NCj4gKwl7IC5zbnBzID0geyAzNCwgMCwgMTQgfSB9LCAgICAgIC8qIHByZXNldCAzICovDQo+
ICsJeyAuc25wcyA9IHsgMjksIDAsIDAgIH0gfSwgICAgICAvKiBwcmVzZXQgNCAqLw0KPiArCXsg
LnNucHMgPSB7IDM0LCAwLCA1ICB9IH0sICAgICAgLyogcHJlc2V0IDUgKi8NCj4gKwl7IC5zbnBz
ID0geyAzOCwgMCwgMTAgfSB9LCAgICAgIC8qIHByZXNldCA2ICovDQo+ICsJeyAuc25wcyA9IHsg
MzYsIDAsIDAgIH0gfSwgICAgICAvKiBwcmVzZXQgNyAqLw0KPiArCXsgLnNucHMgPSB7IDQwLCAw
LCA2ICB9IH0sICAgICAgLyogcHJlc2V0IDggKi8NCj4gKwl7IC5zbnBzID0geyA0OCwgMCwgMCAg
fSB9LCAgICAgIC8qIHByZXNldCA5ICovDQo+ICt9Ow0KPiArDQo+ICAvKiBEUDIuMCAqLw0KPiAg
c3RhdGljIGNvbnN0IHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgX210bF9jMjBfdHJh
bnNfdWhicltdID0gew0KPiAgCXsgLnNucHMgPSB7IDQ4LCAwLCAwIH0gfSwgICAgICAgLyogcHJl
c2V0IDAgKi8NCj4gQEAgLTEwOTAsNiArMTEwNCwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2RkaV9idWZfdHJhbnMgbXRsX2MyMF90cmFuc19oZG1pID0gew0KPiAgCS5oZG1pX2RlZmF1
bHRfZW50cnkgPSAwLA0KPiAgfTsNCj4gDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnMgbXRsX2MyMF90cmFuc19kcDE0ID0gew0KPiArCS5lbnRyaWVzID0gX210bF9j
MjBfdHJhbnNfZHAxNCwNCj4gKwkubnVtX2VudHJpZXMgPSBBUlJBWV9TSVpFKF9tdGxfYzIwX3Ry
YW5zX2RwMTQpLCB9Ow0KPiArDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZf
dHJhbnMgbXRsX2MyMF90cmFuc191aGJyID0gew0KPiAgCS5lbnRyaWVzID0gX210bF9jMjBfdHJh
bnNfdWhiciwNCj4gIAkubnVtX2VudHJpZXMgPSBBUlJBWV9TSVpFKF9tdGxfYzIwX3RyYW5zX3Vo
YnIpLCBAQCAtMTY3OCw2ICsxNjk3LDggQEAgbXRsX2dldF9jeDBfYnVmX3RyYW5zKHN0cnVjdA0K
PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFu
cygmbXRsX2MyMF90cmFuc191aGJyLCBuX2VudHJpZXMpOw0KPiAgCWVsc2UgaWYgKGludGVsX2Ny
dGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0hETUkpICYmICEoaW50ZWxfaXNf
YzEwcGh5KGk5MTUsIHBoeSkpKQ0KPiAgCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmbXRs
X2MyMF90cmFuc19oZG1pLCBuX2VudHJpZXMpOw0KPiArCWVsc2UgaWYgKCFpbnRlbF9pc19jMTBw
aHkoaTkxNSwgcGh5KSkNCj4gKwkJcmV0dXJuIGludGVsX2dldF9idWZfdHJhbnMoJm10bF9jMjBf
dHJhbnNfZHAxNCwgbl9lbnRyaWVzKTsNCj4gIAllbHNlDQo+ICAJCXJldHVybiBpbnRlbF9nZXRf
YnVmX3RyYW5zKCZtdGxfY3gwX3RyYW5zLCBuX2VudHJpZXMpOyAgfQ0KPiAtLQ0KPiAyLjMxLjEN
Cg0K
