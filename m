Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0FC5F9B8D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 11:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0187010E472;
	Mon, 10 Oct 2022 09:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24F110E472
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 09:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665392469; x=1696928469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HuuoaZMMcJAOUWkXC5E0b01z9nS0OfOibm22Nzq69Nk=;
 b=V8GNOQbl6TqGSrOzn7GlH0/kAKWSGJJC5lwIyjWzN4tr5XjTADEuuwSI
 bNAmEp2pRtZYIL7urq5rQ9FmpEJJSCFpXLBMDyB/GSERZq+KeqSN5ylMr
 RJHmdnnorZ7C8HCtv31T1D8qI52rKohDKK9LN5LT4bwIy9NS+l0/R7lIK
 MC4SlHfuFxqHpm4FLVI/Qk7Jc84OUauSaVqzj5334q6au53NIWyqsCTHB
 zn2SeAjaiAz6M6SrQoNxrJ1/loGVklGfrt8VHErDIhFWKp1U7RM1PYyIV
 iQQTnZiihoAfx0WEYme3jj7OW3rbDzl8wKZL0o69/Mufqwir2rNKCRcW8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="284557150"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="284557150"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 02:01:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="871031815"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="871031815"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 10 Oct 2022 02:01:09 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 02:01:08 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 02:01:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 02:01:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 02:01:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIhXAiwN1XFRqKYXbamoNwLkc36H2o0/SeLpcvnU9rzO4wyi1CwDITOl65CPwfcLUTPIFkqir72egM8AIMydZSxpxGgxz6N1llNmi/mcl/MFXbes8sGesBVeEuiNTPlgwhTZ4eUnHseQ7KAtx/nJU7U8xNusIxgQESl5sE2FvlAO1yKzlShc2RYgNvO8v0yMf7LqFnEdQvhYje+aBdfd1olCpT/g6uSP4kK+5u1T4vq/IIdYWEbFf7NLjUBpv581I/a54EVY8sBzc1lYiw5yNi0NolTR5mnGEuGiDemPIteFR4ToGVlgeVMAy0k5mC1VBbXIubpxCjYZtcmZYSqetw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HuuoaZMMcJAOUWkXC5E0b01z9nS0OfOibm22Nzq69Nk=;
 b=I3nLScOJ4eh+XTybHYXNBCJVA+9XpHGSHYti7KlNKYFaOgwDEtTaUNRdNMzCs1O8P10imdSa806cQwbfiPWTmBucplfeNURAd6LMM9Xzli7GX/d1QZ0f8k456t3/LMq5VJufHOSQ+fj6V0rEiueGk0SQMNfPNzOkVonuMFZFwY+6rko/niJGExL4r+3tBp7zfxA6mwIh/bwVeg1CZnyVsS2MT+/DvPiR3dG4Y6Yh9kV3S2+zRALfGQYYxzkpkAZFvelHdr7RX4f5rT1ajlCYtsPwucHBikWC/xwYrW7CqAiPtiSBFU6lutP/+7RDh17HoS6LX3WaBuHo6N33JjLNEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by BN9PR11MB5338.namprd11.prod.outlook.com (2603:10b6:408:137::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Mon, 10 Oct
 2022 09:01:05 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::8d5f:f673:eede:6def]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::8d5f:f673:eede:6def%6]) with mapi id 15.20.5676.038; Mon, 10 Oct 2022
 09:01:05 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3IgUHJvdmlzaW9uIHRvIGln?=
 =?utf-8?Q?nore_long_HPDs_in_CI_systems_(rev2)?=
Thread-Index: AQHY3IWlGhlftH7xh02ZiumY+Bm1lK4HVJsA
Date: Mon, 10 Oct 2022 09:01:05 +0000
Message-ID: <2a76afa9e7c843e85f8a3a270194c68b38465a11.camel@intel.com>
References: <20221010083447.139768-1-vinod.govindapillai@intel.com>
 <166539195136.29673.16059547637667935229@emeril.freedesktop.org>
In-Reply-To: <166539195136.29673.16059547637667935229@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|BN9PR11MB5338:EE_
x-ms-office365-filtering-correlation-id: 01936f60-d17d-4839-1d3b-08daaa9df701
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mz2iZ3w2UYa7equsJsvFVvDPzS3l6soWPVdzP1KFH6uv19MRwMHZWzN77WXDLkSEA54zvbxU8C4H8fkS3JSVX62SknWeD5dTAnkxt8KR3xgzWKiaj1rHOzV/x6zI9/7/syfXkD7uGvhSnG+kmqF+cTBPeEynItEIbaJw1MxSRwKDD9IXkh6rBpXL2EPsPeM349B5GwnVTBJpOtc6or+fsDvinECEmj39Xoj+gudSMQGDYACzXJgO+bXYxaycMu9rj3zUuYxtE2ISbDlWvncp/AFPMJiW3KldZGd/3QJxUFx19k4rrGTDdiu/uozT3IhpQFxnne/3ylciFs9ty3+0Iwj+pMRZ+g8Z3nhzC3/6wJWwGgPYE7pJHe+7+qgjBX9KjyXW+/WHqhqO+NjiUZF9bHsZQAY5TyPJXe3cgm1QR04U9pH15EP8oWN7s1L2JAOoBhqwl45lyNGL9ORseZN/NsEP5hLkYHi5Xy7iOtF5tJXawuZd0fM4XK/yFwHNu/e5NI8yTv2MZwCS/UYgJ9zS+hcrGtELGWKLlwRG4uyo6NBomRZ5oJ2EzCT79iwVujmzvixMVuwYVqrLtCk4WfR+J9/G9+dboWakjimzbOwiYtT1zbMuO9JpiXvIP1NLHDoK03Ffbyzg5CuBN5eCW3Om0t/M6Ag0utKX/ZjwHEetG77/0wguQvsz2yYpTRokIC0G4UmpfghayakMgkdwLQD9oQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199015)(6916009)(316002)(4001150100001)(2906002)(186003)(4744005)(6486002)(66476007)(2616005)(107886003)(66556008)(41300700001)(66946007)(83380400001)(76116006)(66446008)(8936002)(91956017)(4326008)(38070700005)(71200400001)(64756008)(5660300002)(966005)(122000001)(26005)(6506007)(6512007)(86362001)(82960400001)(478600001)(36756003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1BMOWRMMTFHTy9mc01JdU9lR3RDek1VaDFFNjRkOTZvQldXS3prQSt1V0px?=
 =?utf-8?B?UG8vSERNRU1LbjhqWHFwdzdFaUUxNE1YUGc1dFZXNnNScEJzcWJ2a1pmbmh0?=
 =?utf-8?B?YnFxSzVrL05xOEdxSFZySE5razVBOU9DQ2hNcjVUdFJ3eGN6SG1RTXhSVllZ?=
 =?utf-8?B?Lzl0dUFqM0hpQTVNUXU1RE1rRWlESlJWUWVIQTlxdUMwYUtFNmNxS0JmS1gx?=
 =?utf-8?B?alRzem91K2VrLzVtRmdMb2lVNFJQRi9MZHdXakFVMzhrZ3R0a24xd2tqRW8r?=
 =?utf-8?B?bkljZkZPU0UyNjFRRmNBR3ZWZEZ5RlMrL2NKU3N6U2cvV3pxbUhDakJHN2Zy?=
 =?utf-8?B?QU80T0FjU2dCSjFzYnErWHEyMTUvUzRiUzlxVnJwMlp1T1FiN3ZUQjlab0d5?=
 =?utf-8?B?VFg2cmN1empvUXpvMTJxNVh3dWZZeXZJM1hIYmMwWk5xZ21TSU1WcVR4Q1dE?=
 =?utf-8?B?aDBwMWQwRXB5OGljQjRzNDNVSS8ycVE0MS9rUkxSYlFGUmxyL2huTnBqSmVV?=
 =?utf-8?B?cUpFR2V4ekkzOEkycCtlc0M3ZC9qVjlpNmYrdHJoZ1ZsalBhc1NrUWdpVlky?=
 =?utf-8?B?KzZpODJXVE9UWGlRZEZIOURXWnZXNWpPVS9ZTUxIZGx5UjlkdWhzWk5jSmpB?=
 =?utf-8?B?R0t2OUtncDMybHhiTG1vOUpiRldiWHFjUHkzcnRUNkdtWk83bUcxcmFwODhi?=
 =?utf-8?B?RTkzdHpOZU11TzR0ZWN0MWFVeDcrVXFxc3NaYjBpMmpRdS9IMHY0YXR2MUxs?=
 =?utf-8?B?WVBWUGRLQVdPWWZscTI1dUdCT3hiczN1clk4Wm1CTjdZVmFZR0EvUHJaNlht?=
 =?utf-8?B?Q29YWGhqU3QxRUhpd3lDVkRkMnBScFNpd1U4K1pGemQ1SjNGc0Z4N3VKVEFj?=
 =?utf-8?B?NU5ucnhXQmdMZGJwWDZ1UnQxS3pOblI5MlFCLzc4d3RoNHNOTXNPeDBCNHc0?=
 =?utf-8?B?cGgwdTNiUVdyVmQ1RDJvYTFKUU9MWFAvZ29ENWo5R1R6SHlXRmV0RkY1cGdv?=
 =?utf-8?B?enFDUnhIc2FPQWVxMEhMcHJic3pyWHNkMlY3Yk5zSkxRR0t3MHhwMW1lbzBX?=
 =?utf-8?B?SFVvM0tvWWphS3FNbEJ1U2R1bmVhclk3NXE5Z1NyaGNLMEdFY2VTYWQxU1dX?=
 =?utf-8?B?dGkxQ1crQ29Zd0o2UWFzS0NWMlZiYTYxQXA0dnI5OGw1eUNRSGEzakt2ZDFr?=
 =?utf-8?B?d3gra1lkTVM0QjNabzAzc0M1ek1VVVdocTN1U09xd3UvRENYYjR4MUtHdzYv?=
 =?utf-8?B?YkM2azE2bXYyaXJZZUtBbVB6Zk80RCtYN1h4RTUvb0psaTU4NktjTUhuU0lr?=
 =?utf-8?B?S2VsZW5NQnhWRmF5ZkkyZ2hXdVFkVEsrTklMTUpRTGxYaFVJVlBGam5xS3dG?=
 =?utf-8?B?RS9sdkF2YTZoS1dlb0tmNDVtclpZRlZSTmFqMEdPc0lXakhuc0MzRDFXTld6?=
 =?utf-8?B?bzNCNnlUdVA0QjJXQ3EwNUR0anRMRW1PNzlkV0d1NHNsaFRPUysrT0N2TlhZ?=
 =?utf-8?B?VGJrVjdoek9VaGNDSHNielo3c3hpMDdVWHJMMzZlZEpJVlV2bDdBaDJmN3Rx?=
 =?utf-8?B?TDU3MU5SWWpkUHNZUnNjdkM0cDR0RFpEM2pFQVU1c01NZGdmU3p3UktxUno0?=
 =?utf-8?B?ZTlKbTNpVFNENjVycWQzSW8zSHUreWJXa1RnV3haNE0veDRUNnZjOUQzRlQ5?=
 =?utf-8?B?QUZxUThGZHNpWUgzemg0eFRGaDRXUlNESk10dWNTTmNKTVlwZ2lYYUIyT0k0?=
 =?utf-8?B?ZTRPN3dRQ1FLVlpxbkRpOEN6UFZVbG0yYXcrd2x5RGtWeGwwY2ZneFNna24w?=
 =?utf-8?B?NmdpYVNjMWllZ3RwbGIzeTJQeklpMDArVkdDWFpoS2loNnhFeVNOUFdXNFk2?=
 =?utf-8?B?RXJlNjhoMDYvVUJOVVJmZXdlSTg2U2dEM0haY1BXdHJpcTY3NWJLN2pVY1l1?=
 =?utf-8?B?MFpDNWhJUjNFU1pXZjBrZ1h1N2ZpVXc5QkM3K0c1R2RSR0RBZG1IT0kxUFVx?=
 =?utf-8?B?eHZrUWJURG9wOGVzdkJBUWhQVkVIWVppZ05LN3JpSm0wMEtvWVByNGhoby81?=
 =?utf-8?B?UE0xK01yWnR6VUJ5WW94dS8yV0F4bmZWOWx2NWtocktUV3ZRSzNXaWk4VDNx?=
 =?utf-8?B?Uk94Y1lBRmg0NmpFVkJBMjg3ZVhpaDIvTlNaekJwTlF0Q1NQT3pDdGVtMTU0?=
 =?utf-8?Q?2RrwfiDcqzXlBaXtWRXFRdA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3C4BCDCFB7A5A642B64323DBA6286B40@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01936f60-d17d-4839-1d3b-08daaa9df701
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2022 09:01:05.6667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yy3c0nlUJLsQc6fEV/wHHuDzN5Dl++uma65FkDDdBpA9L2wmsvLHTUutX3beY+sJnNHxM9byRpVC4uVc+dHcKuVyPxo9k091HzUGcjFflE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Provision_to_ignore_long_HPDs_in_CI_systems_=28rev2=29?=
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

V2hlbiB0cmllZCBsb2NhbGx5LCBkaW0gc3BhcnNlIHdlcmUgb2shDQoNCi0tLQ0KU3BhcnNlIHZl
cnNpb246IDAuNi40IChVYnVudHU6IDAuNi40LTIpDQpDb21taXQ6IGRybS9pOTE1L2Rpc3BsYXk6
IGlnbm9yZSBsb25nIEhQRHMgYmFzZWQgb24gYSBmbGFnDQpPa2F5IQ0KDQpDb21taXQ6IGRybS9p
OTE1L2Rpc3BsYXk6IGRlYnVnZnMgZW50cnkgdG8gY29udHJvbCBpZ25vcmUgbG9uZyBocGQgZmxh
Zw0KT2theSENCi0tLS0tLS0NCg0KQlINCnZpbm9kDQoNCk9uIE1vbiwgMjAyMi0xMC0xMCBhdCAw
ODo1MiArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiAN
Cj4gU2VyaWVzOiBQcm92aXNpb24gdG8gaWdub3JlIGxvbmcgSFBEcyBpbiBDSSBzeXN0ZW1zIChy
ZXYyKQ0KPiBVUkzCoMKgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy8xMDk0NzUvDQo+IFN0YXRlIDogd2FybmluZw0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4g
RXJyb3I6IGRpbSBzcGFyc2UgZmFpbGVkDQo+IFNwYXJzZSB2ZXJzaW9uOiB2MC42LjINCj4gRmFz
dCBtb2RlIHVzZWQsIGVhY2ggY29tbWl0IHdvbid0IGJlIGNoZWNrZWQgc2VwYXJhdGVseS4NCj4g
DQo+IA0KDQo=
