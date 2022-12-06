Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B789643B1F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 03:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20CF610E2F0;
	Tue,  6 Dec 2022 02:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7832D10E2F0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670292113; x=1701828113;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wpqA9x0/K4ss8kscJq10BgFz1KqS9ruPxy/05Qs61X0=;
 b=c/pbDvEUouiUdvW4Au1w6TiwxKppNK4Lefc31fEQcmJBP6bQ5eCt5O8t
 sciFPjjFcjMEAREYpn2vhN/Am5q8ie7x7gOFvb4aanFu1LSCPpmqRgYL5
 e1QD00mgW/2rTXq2YEIX/FlPdVh1cOKOoOHqFSylSRePAJ3PfOEMDGwSg
 6aD71IOTTEKD6SeRKQhzVaqR/RCkktPBVItfo8ANQe46hbuDm7k7QeTb7
 1ahuJRJlYiw3lRiKX+51wIBlvtpKznxUCfqyilMfx3JUEolw6xk9jN0s5
 DsfP88OUKx5MP0ETBPHGwAcOhxgBWHByeWN0ygaojvPbMFS2/kWyhGU+j g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="299939042"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="299939042"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 18:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="891197693"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="891197693"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 05 Dec 2022 18:01:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 18:01:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 18:01:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 18:01:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmY0VVvYO8e2HkRXzPj0gb3dBq7+9L4tE5/wRykJSdn+Pj1mRCUnaVHG/cnEaEHl95HLCGhCZesaGwDUovu4IE8OOxVU98Toz2GmvSr8UW6PckGENqeJY0NnSiOHT04ve6fj1Tl3uX1hFfedYo/Q7rvnUFAvBTmf03h4K1ZSVYgrz69yb9V04ThLB/aUKTT50Vm3tvUdAOxTNLXa8+DutDOGpUwHLctIEBONwH/jhYoFj3NlZJVp4AmUQvoXIc6gaAnFJ3dSSiLKhn4W9po5OHfPdhtyvLEAdtQDF5sS/ncGrU1319jtCwIa9TjRHsQ1WWQjEiOj3WtyHEqFcY8AwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpqA9x0/K4ss8kscJq10BgFz1KqS9ruPxy/05Qs61X0=;
 b=c8wIG5TgjUHQPt8Z4QUQjTxMn2cCQ9srNt12VwJfCq+Lc113b9BP4YAfxGPn/8THa6SUfvJvWavkd9fyYXFOelRZoirx24kNfQiGE+RoDJEtj3Ms2bBiVu6UMI5ZB8hx0OYGMVkq55kdGrjT+JQSyXwkfxpSu40hzm6PrKvEM6gRvY/K0+FzvrRqTORVAgqQ9D+m8LJQoAragFP3z8jZRiGuEHmvqZ+WDHAekoN1nK3S9lCXm5ok7BgwHEBK8SKFZvC9tGkVE4WBVxac+YxCZyXRfTJkKxmDES1Q6apG+HaxRgrfaizA1Bo9Oq5gUUfEE5otoUlNjXP0wWyxOTJb2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5305.namprd11.prod.outlook.com (2603:10b6:408:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Tue, 6 Dec
 2022 02:01:49 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 02:01:49 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 6/6] drm/i915/guc: Move
 guc_log_relay_chan debugfs path to uc
Thread-Index: AQHYY+gZgarq8+op3kO1XG+epJoj962IEHcAgNlV6QA=
Date: Tue, 6 Dec 2022 02:01:49 +0000
Message-ID: <fcc2e286740bc20296ae4ef67563964e813d035b.camel@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-7-alan.previn.teres.alexis@intel.com>
 <87sfmvr48v.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87sfmvr48v.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN9PR11MB5305:EE_
x-ms-office365-filtering-correlation-id: 669aec46-7fd4-4335-a911-08dad72dd62e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3xGMdoTwL6edZuK/6Kve5ErIAm3MRW7jY77JZeaEqKKhR5ToSykBiZhlIn13DbxFnJLdQ4gdBcDPdImmMr1h+w4+aSF6bPgZH+MOQBdaXIigMkEbQ8MZKEaGd5eneCRmnhsDAooAypcDUoqynUye2IgxjiYYLUhLdBmY8sDM4MFNzMu6SXn1BOx380kwu3nWvxIxh9wl6Wdu0q4Jk7APjsSChmWpw+JWWT5odMSo3B2EiA4bz47m734fcj7zAjvNGtSfNkSiAgbfOHqLqVlMaUJX+l1zdGq2/GYsmkpU5C9h2iGOwusqHxq+fqOGAZ62rFeZbNlXVqixpRj6v+aUez6LLKPUVkMMdG3fRJO25EeLeXUOIJkpw7DemVuqu4V8MkrB7fOSUicx8rQrLUOs9F+ZL5r/GJbx841yjI+YT8Qw+WbDWldlUa5aYh3uHAQBwsJIHspNsFkCIL30BRHGkl2HSkpzFs3XSDunlbOKEytbYtVBsNU9pG3tJskeCSRo+MOyJR+gBnxlRMzAZF9L3oMDNcpH3+uv6nnZFszuF4rgbo4ov+E8d2367gHz/4OLkvsYt6KC7zTB/yS0TeBcwdtCs+pQ4OW62Wl9KZq7g+CTvEko5d36I7tl3DQc+0nqQ3s05S0mACGU0Xwz3l8xZ0ViWSzikmF2IwiSeOcEo+OHnsI2ubt6wDLn4QjiBkA4wAb17tanSI/byhEAMWsNzA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(136003)(346002)(396003)(366004)(451199015)(36756003)(66946007)(41300700001)(76116006)(186003)(2906002)(86362001)(38100700002)(6512007)(66476007)(26005)(122000001)(38070700005)(82960400001)(8676002)(2616005)(5660300002)(66556008)(91956017)(4326008)(8936002)(66446008)(64756008)(6636002)(71200400001)(478600001)(37006003)(6862004)(316002)(6486002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nkw0bUFVRU9kRnJUSUZJTVVhaE9oSHZNRW13STBnR0o0NnY2d1QxdGNkUy8z?=
 =?utf-8?B?ZThQRlY0OW1HdkVqYVJZMFVpcm5iQ244djFYU3hwOFVZVGZpRm5qS1cxVXlZ?=
 =?utf-8?B?ZEo3ZkU3LzFEbG54OVdaUVJIYjVOQ2tndjFNRm1GcFpzbk91WVdMSG1HNDd6?=
 =?utf-8?B?SEovK1gwRzFzSENha0kzc3RkTnpoZkQ0dWJSSHNGSGQ5cE1zRG9rb1NQdkF2?=
 =?utf-8?B?cmZZM3FEK0RRejl1Q1RjYlJTNVpQNUhVSk9UaElWOUpkbTlyekk3T3l2Slha?=
 =?utf-8?B?Zk9hckh2V0RUclJSZUpXNkhrWXovRXN4RFQ1SlFxQkptbjhpU0ZZcjJ0cTlP?=
 =?utf-8?B?ekRsZXQ1SWNLWEdNTDhQMS92cWRGOXVYZ29iL3ppZkMrUldaTDZQVVhxendX?=
 =?utf-8?B?UUw5RHoxL0dqWVBPZHdYRG9BVnp4K1kzQ29GenN4ek1iL280MzFhcVppemd5?=
 =?utf-8?B?UlZzbFF3dTZOVkVsRUREc3RzQ0tXMiticFB2aFh3Q3Uva09VaXdjSUc2S04y?=
 =?utf-8?B?MVJDM1pTeUJ0L044VlBDVVluN1FvSmxCR1V5L0lWWUFPMWw2MU92MUhsb0tp?=
 =?utf-8?B?R2lLd2VFbmY3Z3FRNVhJV1JmRCtIeldMaSs5b2RnTjg2MkFsbndDWXZwdlF5?=
 =?utf-8?B?WXBlaVBHRUdXT0VEc0NDTEcvNnhOdCtZbFp4eVlNNU9tTTdGUWhKQkx4SFBv?=
 =?utf-8?B?bVVRTTkyS0pIVzkwMXlHWmMvaGs1bWhBdisxak9yNVJzaGlUT3FCYzdyTVVK?=
 =?utf-8?B?M1BKQ1NRVVVQY2Z4M21LMEx5d1VHQng2T0o1UzgyYldGMkFNRE5UZGtTelZy?=
 =?utf-8?B?ZEZTMXpaQTE1SXd2eVd4OUMzd3FveG1HL09BdnFwekx4aUFUTys2V3cyUm1u?=
 =?utf-8?B?ejdwWUJIb0J6MFJiendRaHN1QWxvU1RUNDRDTFBFRTVZcjFoVlo5SWdUTWxB?=
 =?utf-8?B?bFhnN01iUTZ0YUN1ak1KZzJsb1g1cFhiUVN5cmE2MmxlNDg0c2tCaS9jNlFp?=
 =?utf-8?B?elpUazlPL0NYZ2FtVk1BREVJRnZsT1REaGZMbGpXeENuRGtyNkMwc29ESGJY?=
 =?utf-8?B?TWdJdGdIcytmcExiV0VrUjNMeC9lTysyRUR3SHJhWVk5SEk5RVhKMldRczMw?=
 =?utf-8?B?MXVpa2F5V3lvem9qRUZkek1QVjJlY09DSXMraGs5WmtIQUc3eGdCZ2kxKzFC?=
 =?utf-8?B?ZC81UzZEZHQwU29xcUEzQ0JaalM5QUNuZHVKVk5TYlFuaVZwbWhvTjFYRkEz?=
 =?utf-8?B?WVFtMjJrYzJMSDVUQWNQRlZFczF5MG1TdU5wQnVtb2hnT0E1Q2ZkVm9UUzU1?=
 =?utf-8?B?WC9icm1YL2t4THdIUXhVcC85aS85ZnNuZ045bHNYZ2FUL2E1L1VYZG5QTG1Y?=
 =?utf-8?B?aU5QdC9PS2FxSU9mYmF6U3VKV3plYUY5dW14STZqcGVIZHpiRTBTRzlRTWs0?=
 =?utf-8?B?U094d1NZdWpjT0Y1T3pHcEtlTDI0dEs0UlRpQUZKU2FPWmZIUFBPMXRUb3Mr?=
 =?utf-8?B?bXVBQkZuTks4MzZ4L0pKTmdHQlZ0eGRiNjZZd3BXUk9kNFJaTTJzQUQvTFdC?=
 =?utf-8?B?MkQyek84QWxKQUR6eFJKYU5zSHFCWDZZejlBakJTTXh3OGIvcWJqbCtFNDl2?=
 =?utf-8?B?WTBuMGp3UjVycG1NQWljSGg0ajF2eXloTDhmOWJOTGJsREkrNDlwVDAwVFlF?=
 =?utf-8?B?MXg1NGYrbWhyOVBJMExJa2VQNlh4d0UrWlh4WVFvb0hMOFA2a3JjUnluUFdH?=
 =?utf-8?B?NUU0eDJjais5QWF6MDlZdk1IUkhTS0hINXAzOUNHbkp5RnkrYnF6Y3ZQNURJ?=
 =?utf-8?B?UDkyVDMrVFpXbUtXaElLU3hmMkVmNzhPelpZMlRFRTh5dUVHM1FnVzQrZDVI?=
 =?utf-8?B?amhNcWxteHBhN2d1cU15TGIyZEM2MUVzTlU3ZVNzZ0E1WmN1eGh2WmFUTDVs?=
 =?utf-8?B?RWRFNVZFTmVudGZYQjYxQVAyTkkzaVkvTk5MMGUrOHJpQ08wRjNNQThycVdj?=
 =?utf-8?B?WHg5Nk8xQTAwWTMyUVpoWlN0VDg0enVKTlJ4OTVJYVRzakgzbFBGWDF3Zk4z?=
 =?utf-8?B?Yzh6YW00d2JWNkpDeG5VSVFhOE0xY0MxKzZpRFVXM2QxLzdQRlB4MGRISlkr?=
 =?utf-8?B?SE1oazVNTldVai9hNTVPL0I5NE5kSlE4b1VKNjRTb25OZysrWDNyck5hVWcy?=
 =?utf-8?Q?zDtfe2KYc2D4UtB7IzVz0h0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC0911463D017B4195BF31C7E677116A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 669aec46-7fd4-4335-a911-08dad72dd62e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 02:01:49.3072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yz+G80GG56ITqZaSTUV+nsf/HMnm9RoghcCqKlDsqibaFvULSEnPMgTiie/GjiZpCOhd6vEbahOyq3ToZs0zn36FRgqPrgvpzXVzhxFtdL3i8rBSCtQ8e/vyr3qL3P0P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5305
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 6/6] drm/i915/guc: Move
 guc_log_relay_chan debugfs path to uc
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

DQpPbiBXZWQsIDIwMjItMDctMjAgYXQgMTI6MDggLTA3MDAsIERpeGl0LCBBc2h1dG9zaCB3cm90
ZToNCj4gT24gTW9uLCAwOSBNYXkgMjAyMiAxNDowMTo1MSAtMDcwMCwgQWxhbiBQcmV2aW4gd3Jv
dGU6DQo+ID4gDQo+ID4gQWxsIG90aGVyIEd1QyBSZWxheSBMb2dnaW5nIGRlYnVnZnMgaGFuZGxl
cyBpbmNsdWRpbmcgcmVjZW50DQo+ID4gYWRkaXRpb25zIGFyZSB1bmRlciB0aGUgJ2k5MTUvZ3Qv
dWMvcGF0aCcgc28gbGV0J3MgYWxzbyBtb3ZlDQo+ID4gJ2d1Y19sb2dfcmVsYXlfY2hhbicgdG8g
aXRzIHByb3BlciBob21lDQpBbGFuOltzbmlwXQ0KDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19sb2cuYw0KPiA+IGluZGV4IDc5M2EwNmExNjg3NC4uZjY1Nzg1NjVm
ZWQ2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Y19sb2cuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19s
b2cuYw0KPiA+IEBAIC00MTksOCArNDE5LDExIEBAIHN0YXRpYyBpbnQgZ3VjX2xvZ19yZWxheV9j
cmVhdGUoc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykNCj4gPiAJICovDQo+ID4gCW5fc3ViYnVm
cyA9IGludGVsX2d1Y19sb2dfcmVsYXlfc3ViYnVmX2NvdW50KGxvZyk7DQo+ID4gDQo+ID4gKwlp
ZiAoIWd1Yy0+ZGJnZnNfbm9kZSkNCj4gPiArCQlyZXR1cm4gLUVOT0VOVDsNCj4gDQo+IE9uY2Ug
YWdhaW4sIHdoeSBpcyB0aGlzIGNoZWNrIG5lZWRlZD8gVGhlIHBhdGNoIGlzIG90aGVyd2lzZSBm
aW5lLg0KPiANCg0KQmVjYXVzZSBvbiBpOTE1IHVwc3RyZWFtIHRvZGF5LCB3ZSBkbyBoYXZlIGEg
Y29kZSBwYXRoIHdoZXJlIHRoYXQgZGJnZnNfbm9kZSBpcyBub3QgYmVpbmcgcG9wdWxhdGVkIGFu
ZCBpIGFzc3VtZSB0aGF0DQp3b3VsZCBiZSB0aGUgY2FzZSBpZiBjb25maWcgZmlsZSBkaXNhYmxl
cyBkZWJ1Z2ZzPyBBbmQgd2l0aG91dCB0aGF0IHdlIGRvbid0IHN1cHBvcnQgZ3VjLXJlbGF5LWxv
Z2dpbmcuDQoNCg==
