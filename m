Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFBC64D540
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 03:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC12010E4DF;
	Thu, 15 Dec 2022 02:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E38810E4DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 02:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671070284; x=1702606284;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=X22p7h7ix3KLp0Gnj6/NyJhsHSc82NmdOj0QE3j2DRI=;
 b=iNu9GeF7Kzx1hCVVBS3HIz6lF2WWokh3tfqWpTdoKLC8qZGj4bARYEjQ
 u2gZ1UFC1m2uhAXnml0RXV899AEeTAdex90liehk1cLYJofrUZ477De/z
 RgVuyZN82EboIYhNEGcir049u0N6ORigz1oN56qSarlgmFWpLCUfFGbTQ
 Wsj23WLI1TXfen+NGFFdFWIJ658WCaLIpbL7NdqDxyRrhjIv5ma0aiFe9
 ieelr1aAIKFKIjq/bq9TnV9Ob+auzitFoPcnN2nkmhbjMgOc297sX+074
 Q+6XuGjfKjwbCbKxXA6TpT560+6/jGHKy+WkPm4gXCyN/+YcbM8+6e6/7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="380758608"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="380758608"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 18:11:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="737926878"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="737926878"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Dec 2022 18:11:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 18:11:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 18:11:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 18:11:14 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 18:11:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwISDSScA20zO+HQ9TiIWOYm3SygAE1g3nPzss9lQY7dD5RuhgBJ5B9uHGCuJ1qGReizNdRRLXM7PK7WaDzn5ogtZNCoNqwkC0lNSLFoxPXEacdpGxAQe/O7sLI/1LhzDGyu4JZTFVjiEl6qv0s4ryt5VRX1Wj9DLrvi0g/Eji/SvYf57+/Bxw6XqvZwRwFEWWaKJPzZO+84dze7glxobMUOsIZVSojzxNqrjlyiHt7j5hHvQFgqy6jgvUPCivJyjHaBlSZEsIYsal5KJDineAPmd9WqYaM8kxjdLvzhfy5Lz3tCzCV4q6utO43Wju16tcZ2B8Rrgpsg0D7oh7/MaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X22p7h7ix3KLp0Gnj6/NyJhsHSc82NmdOj0QE3j2DRI=;
 b=eJf3dqzy7hknQ6RGTzyD+2rEHjHDupHbnfW6J1iGu0w1/kx5Lpgd4p5K8M2B1LsZT33fTkvYiTuA/iwRzDAChHAJqJaQN9u9y1Fkow0eSVEUnrdBGVWA+mo9DslNlUuOZgO+D23K6h+DvUjsSM7XLuUSdxKQ/7jmA/zZXtZkomIEjmG1sfklBQqxEfI2J6sckWjMvDufPvVBZBKZwJCRekiJeTwyiml30KSGberXgHqf/HZl3zNFKCGKGwoRlIvwNt5zJxN1T+Vhx3DaIRcAKI/dpMlhawYZys8F2NahUnT/7ObN4rGGkrvxZTAngm1NELfTFOaj3zWQOe5scTNiJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH0PR11MB5412.namprd11.prod.outlook.com (2603:10b6:610:d3::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.11; Thu, 15 Dec 2022 02:11:12 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 02:11:12 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
Thread-Index: AQHZDjY7S6mr+lYzqEqInl+7DRVqrK5syLlwgABT+ICAARpkIA==
Date: Thu, 15 Dec 2022 02:11:11 +0000
Message-ID: <DM6PR11MB31777C066D99AFF73AD5D956BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <87k02uwdlw.fsf@intel.com>
In-Reply-To: <87k02uwdlw.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CH0PR11MB5412:EE_
x-ms-office365-filtering-correlation-id: 8972721b-6c6a-4eb1-76e7-08dade41a345
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b3dmfESpcyrrhmDJ+cEMtVNDBg04whtacqFLAJmDn9nrN7U+ZW7ZR6rbiKtZniytfLi1yRiAYSMs/jJV8P1vgcIlvztwJPlPAjGsLf4/nw2UXMKMS8MT4eWfic5bE0JwvCbGH+1hnqxwjF8Glh1zXMKNlQFX3nb01N1daOqts5Te1/X9n66LEv8xUPeXagGXb8pcFW4GoNiK07GnRiUzKEY8DDx/Tv9F7rB0wRnB4E+/7+e9ZH2zjNEYbnOzUH4aqdYo6ZlXjp8WDPIsLbibogWhzGdb4bh0yfNClO/i6k4A0kG1HhKjgg9IvqnFUSlQhW3aXazp8MpFHRfeNJtxBm8J7biSu3IizE9EFsWOn3+NkzA/1aIKt+9/fvkkWE0bPiXT1z19xQUqeSW/H8IKr3dBkntaF/G+W9E8nCFoxi2ddds9U2/R2DGNw95nWHJlvFAWCkgzuTW+SJMI7f4gmj1m9dZBeQq+jER3GWXN2bFiOt9YA0VS0wDX1uPgRDD58tAuHkvBkrb6H3Vopv1AzFKW5u7ltxrKxVWc4kL5JSXdH0hnnYYP/5tFnIWtPjcQFPf51igO+TnWFFhVW0hAFuwjaKhQ5boijFVVTGEEjarXgsEzQ3A6oQkjysKzFQWzT2RALJ9qksG5MAeN1Z4uFjGfdP1wQQftdFAbvBO+on3ygCcW3d5rRyihEJ94ho9clrghsgY57YZGjeBiBJXFZg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199015)(86362001)(478600001)(55236004)(7696005)(38100700002)(71200400001)(9686003)(53546011)(6506007)(186003)(26005)(82960400001)(122000001)(8936002)(2906002)(41300700001)(110136005)(52536014)(83380400001)(316002)(38070700005)(66476007)(8676002)(76116006)(66556008)(64756008)(66446008)(66946007)(5660300002)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cU04L2RuWCsxbk9wNEJOZ3gzTVExQ0owMFlsQUYyOWpnZnd6bWlCMUFpcE1E?=
 =?utf-8?B?UW5rdWhjSTVJWFpKQW5ENE1PUjdTVGMxZm9HTlFaQWhXVHQzWm1icUZXZjI5?=
 =?utf-8?B?ZXJQcEZJdUxwMXZBV0hTbCt1TVZXREFxNkYyOEdoOTdWUmVCYVZWbkpQYWhk?=
 =?utf-8?B?ZTVoYWZ3bWlpRW43ZjdCdStCWGd2ZVpqZk12V1M2UHlUQ3FRdUNNQWFWamow?=
 =?utf-8?B?UDJRT2ZPUDBYYVVpVmJGSkhOL3FMRmo3azZBMTBmMStENmpXTjcxbmd5RG9E?=
 =?utf-8?B?SjBzVXVLemZLMXRSTnpMb0FZUGZvbStMU0hlVkRuV2wyaWtXZ0JuWVppUVY0?=
 =?utf-8?B?cTZIMkNBRExST2VzZC9sYWxXSWNwcUxMWnZKUGZTa2NJRXNOenFSYXE2RmJU?=
 =?utf-8?B?WGVqdjQ3Q1ROK3gzMXpxeXRPYmJ2MU1RSFI2WmpSQ2dQeFozSG9PRytTNVk4?=
 =?utf-8?B?TGVoVHUxQXpMbzRJL1ZINW5hNVBGOFJZYjFuR2szQ0FwZ3Vxdmtwbk12MlF6?=
 =?utf-8?B?SFd5czZkZW15SGNybHRCdVlHMXpDK2RONWdlV082N2M1WTZwL1NuY3B5NHVi?=
 =?utf-8?B?Zm85KzJ3VWNhd0NIbXRVekhWeEIwVlhVSnQ5R24xK0xGVnErK3N3OUpadWR4?=
 =?utf-8?B?ekh4Y0R6dFd1ZHI3OXVHV0pUWlpCRTh6TDFZVVErRkJHMHVrdDB5Ti80U2dO?=
 =?utf-8?B?cmlMV2YzdXlQWDdyZTh6ZTRGdEJyOG1UcWMycGZQb1dDZXhCckdNcHRxaVR0?=
 =?utf-8?B?RHhIbldYVGNWSlhiUW8vcnRHWWZkV1Vlb1R6dk9WOVRNcmJXRzBZbGYybUds?=
 =?utf-8?B?a0xsSlpuU20raS9GWmRHQjVaOU13a0lPZ093YUtVZTVzdHFCT2JlaVFQZVQw?=
 =?utf-8?B?SEdSMVNtZjl6aXRjS3Y2WmpQQUdJakQ3OWlsREU5cGNLbFJlTHl5K0pzaW5O?=
 =?utf-8?B?N3h0VlNuaVV0TVFjL0dMMEdvOSt1bmtzbjZtdVRRejU4WUdRaGplRjZyb1lk?=
 =?utf-8?B?a0NqTEFmcEcyWXJUYVVmUXdwQjFzOHBqdGY3U0xIcnhoeGlzWXpKdy9XMEdZ?=
 =?utf-8?B?cnJjMDNIWFA0Qy9yOGxuUG1qamlabWkvNC9JN0Nmd2NvaHBzSmdVNGU3RXB2?=
 =?utf-8?B?YzJFeGlKWE95bnV1SmZiMmtWdk9qVFppaHlxSGhCdGN1K3VsY3VNVGdyWHZJ?=
 =?utf-8?B?WmpVUGRiNkdYb2F4cnV0RWRWZUdlZ0Rqb1ZiLzI3OFRkanhNYWdwTU1nVVFk?=
 =?utf-8?B?ZUxoUGlaZlpHQlh2dnFMWFkvbnJYY3I5c3FMR21iM0t2MHovNS8zVlFqSmxy?=
 =?utf-8?B?RmFHei9hbzFSUkZvV2FiRjlscVJtcTJFYlF0bEk0Tk1Uak5Id1pqeHp2R0Zr?=
 =?utf-8?B?dkxDRWFtR2tGc1E0MVhwY3E1YTBOV05ZQllVTWp2VWpJMlozbVpiZGJFRVZX?=
 =?utf-8?B?K3poOXc5TTRRbVpjZmhIamt0T0tFRW16SFFUTzJ3SEpya0ZzUlE5UEpubTVz?=
 =?utf-8?B?em1nUjE2aDYxVUJrYTE4SkNrT1ZWbng2NEl5eTFMdnM2TEc5Y2t1bWJHcU5M?=
 =?utf-8?B?MFhDVS9Wd3ZxQk9Jd3R0Vlc5SHFOUXRBaEw0cnYveEtSWkVDZzVnUE5IUHFB?=
 =?utf-8?B?Qm9COWRBeVlNOURGV1lLd1J0NmgyMmE4Uk1tNVp6Nm1DcTlJQm0zRE15UjlK?=
 =?utf-8?B?SklUdUcxOVFRVXZKUkZaNC8xaGUxUCtESFR4SllhK0V0ZTUrR1ZQZjJYNjJT?=
 =?utf-8?B?dTdJNHJiTXVwVnBmN2hrSVk0N1FQV01CbnFISFRGQ0VLaGlNNmF6SWF5cWZv?=
 =?utf-8?B?S2NWME9ERHBSSkgrS1ZQTmQyKzBySmNxTFlzcWVZZm5aQXRPY0hKaHNCSnow?=
 =?utf-8?B?c014enpKejRpQzcyOTlLZEFoUkVLdVBGcDNjSEZsY2dnSTJTZzA1THIvZ0U4?=
 =?utf-8?B?Z3hVNHhZbjZhdHdpQTN4Y2NIMzAzUHBOeXQ5eStUMmxJMjFuUTNiMHZhR0h2?=
 =?utf-8?B?eThUTCtCOEtPeExRQzFYOE5mWFRoQkQ0YXFKVGxOQTlVaGdCcHNmanJrT3hy?=
 =?utf-8?B?Q1d0S2xYUFBSY1d2MUg2M3dvTzJSUHZmQkh3WVpaY0gwZXRwN2Y2NU1Xdmlp?=
 =?utf-8?Q?zNv4tAFdt4MG1pS4ADwoVxhF/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8972721b-6c6a-4eb1-76e7-08dade41a345
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 02:11:11.9200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jo4KItfUIxKJfjHi+WGTwSMTJ9tolXgnVXmONPhRSIhO22qmoi0x5b1sC22ju2IEQ+E7LWf2CtdWbdha9ZbF1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBEZWNlbWJlciAxNCwgMjAyMiAy
OjQ1IFBNDQo+IFRvOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVs
LWdmeF0gW1BBVENIIDIvN10gZHJtL2k5MTUvZGlzcGxheTogbW92ZSBtb3JlIHNjYW5saW5lDQo+
IGZ1bmN0aW9ucyB0byBpbnRlbF92YmxhbmsuW2NoXQ0KPiANCj4gT24gV2VkLCAxNCBEZWMgMjAy
MiwgIk11cnRoeSwgQXJ1biBSIiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4+IE9mIEph
bmkgTmlrdWxhDQo+ID4+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMTIsIDIwMjIgNzo1OSBQTQ0K
PiA+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBDYzogTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAyLzddIGRybS9pOTE1L2Rpc3BsYXk6IG1vdmUgbW9yZSBzY2FubGluZQ0KPiA+PiBm
dW5jdGlvbnMgdG8gaW50ZWxfdmJsYW5rLltjaF0NCj4gPj4NCj4gPj4gUmVkdWNlIGNsdXR0ZXIg
aW4gaW50ZWxfZGlzcGxheS5jIGJ5IG1vdmluZyB0aGUgc2NhbmxpbmUNCj4gPj4gbW92aW5nL3N0
b3BwZWQgd2FpdCBmdW5jdGlvbnMgdG8gaW50ZWxfdmJsYW5rLltjaF0uDQo+ID4+DQo+ID4+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+PiAt
LS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MzYNCj4gPj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YmxhbmsuYyAgfA0KPiA+PiAzNSArKysrKysrKysrKysrKysrKysrIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmggIHwNCj4gPj4gMiArKw0KPiA+PiAg
MyBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkNCj4gPj4N
Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gPj4gaW5kZXggNmNkZmRhZTJjNzEyLi4wY2RiNTE0ZDdlZTAgMTAwNjQ0DQo+ID4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4+IEBA
IC0xMTUsNiArMTE1LDcgQEANCj4gPj4gICNpbmNsdWRlICJpbnRlbF9xdWlya3MuaCINCj4gPj4g
ICNpbmNsdWRlICJpbnRlbF9zcHJpdGUuaCINCj4gPj4gICNpbmNsdWRlICJpbnRlbF90Yy5oIg0K
PiA+PiArI2luY2x1ZGUgImludGVsX3ZibGFuay5oIg0KPiA+PiAgI2luY2x1ZGUgImludGVsX3Zn
YS5oIg0KPiA+PiAgI2luY2x1ZGUgImk5eHhfcGxhbmUuaCINCj4gPj4gICNpbmNsdWRlICJza2xf
c2NhbGVyLmgiDQo+ID4+IEBAIC0zODYsNDEgKzM4Nyw2IEBAIHN0cnVjdCBpbnRlbF9jcnRjICpp
bnRlbF9tYXN0ZXJfY3J0Yyhjb25zdA0KPiA+PiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gPj4gICAgICAgICAgICAgICByZXR1cm4gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT51YXBpLmNydGMpOw0KPiA+PiAgfQ0KPiA+Pg0KPiA+PiAtc3RhdGljIGJvb2wgcGlwZV9z
Y2FubGluZV9pc19tb3Zpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBwaXBlIHBpcGUpDQo+ID4+
IC17DQo+ID4+IC0gICAgIGk5MTVfcmVnX3QgcmVnID0gUElQRURTTChwaXBlKTsNCj4gPj4gLSAg
ICAgdTMyIGxpbmUxLCBsaW5lMjsNCj4gPj4gLQ0KPiA+PiAtICAgICBsaW5lMSA9IGludGVsX2Rl
X3JlYWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gLSAgICAgbXNs
ZWVwKDUpOw0KPiA+PiAtICAgICBsaW5lMiA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykg
JiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gLQ0KPiA+PiAtICAgICByZXR1cm4gbGluZTEgIT0g
bGluZTI7DQo+ID4+IC19DQo+ID4+IC0NCj4gPj4gLXN0YXRpYyB2b2lkIHdhaXRfZm9yX3BpcGVf
c2NhbmxpbmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiA+PiBib29sIHN0YXRl
KSAtew0KPiA+PiAtICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gPj4gLSAgICAgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5w
aXBlOw0KPiA+PiAtDQo+ID4+IC0gICAgIC8qIFdhaXQgZm9yIHRoZSBkaXNwbGF5IGxpbmUgdG8g
c2V0dGxlL3N0YXJ0IG1vdmluZyAqLw0KPiA+PiAtICAgICBpZiAod2FpdF9mb3IocGlwZV9zY2Fu
bGluZV9pc19tb3ZpbmcoZGV2X3ByaXYsIHBpcGUpID09IHN0YXRlLCAxMDApKQ0KPiA+PiAtICAg
ICAgICAgICAgIGRybV9lcnIoJmRldl9wcml2LT5kcm0sDQo+ID4+IC0gICAgICAgICAgICAgICAg
ICAgICAicGlwZSAlYyBzY2FubGluZSAlcyB3YWl0IHRpbWVkIG91dFxuIiwNCj4gPj4gLSAgICAg
ICAgICAgICAgICAgICAgIHBpcGVfbmFtZShwaXBlKSwgc3RyX29uX29mZihzdGF0ZSkpOw0KPiA+
PiAtfQ0KPiA+PiAtDQo+ID4+IC1zdGF0aWMgdm9pZCBpbnRlbF93YWl0X2Zvcl9waXBlX3NjYW5s
aW5lX3N0b3BwZWQoc3RydWN0IGludGVsX2NydGMgKmNydGMpIC17DQo+ID4+IC0gICAgIHdhaXRf
Zm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKGNydGMsIGZhbHNlKTsNCj4gPj4gLX0NCj4gPj4gLQ0K
PiA+PiAtc3RhdGljIHZvaWQgaW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpIC17DQo+ID4+IC0gICAgIHdhaXRfZm9yX3BpcGVfc2Nhbmxp
bmVfbW92aW5nKGNydGMsIHRydWUpOw0KPiA+PiAtfQ0KPiA+PiAtDQo+ID4+ICBzdGF0aWMgdm9p
ZA0KPiA+PiAgaW50ZWxfd2FpdF9mb3JfcGlwZV9vZmYoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gPj4gKm9sZF9jcnRjX3N0YXRlKSAgeyBkaWZmIC0tIGdpdA0KPiA+PiBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4+IGluZGV4IDc4YTU3OTQ5NmFk
MS4uZjI1ZWM2NDNhMGEzIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPj4gQEAgLTQxNywzICs0MTcsMzggQEAgaW50IGludGVs
X2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4+ICpjcnRjKQ0KPiA+Pg0K
PiA+PiAgICAgICByZXR1cm4gcG9zaXRpb247DQo+ID4+ICB9DQo+ID4+ICsNCj4gPj4gK3N0YXRp
YyBib29sIHBpcGVfc2NhbmxpbmVfaXNfbW92aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwNCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gcGlw
ZSBwaXBlKSB7DQo+ID4+ICsgICAgIGk5MTVfcmVnX3QgcmVnID0gUElQRURTTChwaXBlKTsNCj4g
Pj4gKyAgICAgdTMyIGxpbmUxLCBsaW5lMjsNCj4gPj4gKw0KPiA+PiArICAgICBsaW5lMSA9IGlu
dGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gKyAg
ICAgbXNsZWVwKDUpOw0KPiA+PiArICAgICBsaW5lMiA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gKw0KPiA+PiArICAgICByZXR1cm4gbGlu
ZTEgIT0gbGluZTI7DQo+ID4+ICt9DQo+ID4+ICsNCj4gPj4gK3N0YXRpYyB2b2lkIHdhaXRfZm9y
X3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiA+PiArYm9v
bA0KPiA+PiArc3RhdGUpIHsNCj4gPj4gKyAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ID4+ICsgICAgIGVudW0gcGlwZSBw
aXBlID0gY3J0Yy0+cGlwZTsNCj4gPj4gKw0KPiA+PiArICAgICAvKiBXYWl0IGZvciB0aGUgZGlz
cGxheSBsaW5lIHRvIHNldHRsZS9zdGFydCBtb3ZpbmcgKi8NCj4gPj4gKyAgICAgaWYgKHdhaXRf
Zm9yKHBpcGVfc2NhbmxpbmVfaXNfbW92aW5nKGRldl9wcml2LCBwaXBlKSA9PSBzdGF0ZSwgMTAw
KSkNCj4gPj4gKyAgICAgICAgICAgICBkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLA0KPiA+PiArICAg
ICAgICAgICAgICAgICAgICAgInBpcGUgJWMgc2NhbmxpbmUgJXMgd2FpdCB0aW1lZCBvdXRcbiIs
DQo+ID4+ICsgICAgICAgICAgICAgICAgICAgICBwaXBlX25hbWUocGlwZSksIHN0cl9vbl9vZmYo
c3RhdGUpKTsgfQ0KPiA+PiArDQo+ID4+ICt2b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2Nhbmxp
bmVfc3RvcHBlZChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yykgew0KPiA+PiArICAgICB3YWl0X2Zv
cl9waXBlX3NjYW5saW5lX21vdmluZyhjcnRjLCBmYWxzZSk7IH0NCj4gPj4gKw0KPiA+IElzIHRo
aXMgd3JhcHBlciBmdW5jdGlvbiByZXF1aXJlZCwgc2luY2Ugbm90aGluZyBlbHNlIGlzIGJlaW5n
IG90aGVyDQo+ID4gdGhhbiBjYWxsaW5nIHRoZSBmdW5jdGlvbiB3YWl0X2Zvcl9waXBlX3NjYW5s
aW5lX21vdmluZywgY2FuIHRoaXMgYmUNCj4gPiByZXBsYWNlZD8NCj4gDQo+IFdlbGwsIGZpcnN0
LCB0aGlzIHBhdGNoIGlzIG9ubHkgYWJvdXQgY29kZSAqbW92ZW1lbnQqLiBBbnkgY2hhbmdlcyBs
aWtlIHRoYXQNCj4gd291bGQgaGF2ZSB0byBiZSBzZXBhcmF0ZS4NCj4gDQpPay4NClJldmlld2Vk
LWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KPiBBbmQgaG93
IHdvdWxkIHlvdSBwcm9wb3NlIHRvIGRyb3AgdGhlIHdyYXBwZXI/IFRoZSB3cmFwcGVycyBhcmUg
YWxsDQo+IGFib3V0IHJlYWRhYmlsaXR5IGluIHRoZSBjYWxsZXIgc2lkZToNCj4gDQpJIGRpZG7i
gJl0IG1lYW4gdG8gZHJvcCB0aGUgd3JhcHBlciwgdW5kZXJzdGFuZCB0aGF0IHdyYXBwZXIgaXMg
bW9yZSByZWFkYWJsZSwgd2hhdCBJIG1lYW50IGlzIHRvIHJlcGxhY2Ugd2FpdF9mb3JfcGlwZV9z
Y2FubGluZV9tb3Zpbmcvc3RvcHBlZCB3aXRoIGl0cyBmdW5jdGlvbiBjb250ZW50cy4NCg0KVGhh
bmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4g
aW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9zdG9wcGVkKGNydGMpDQo+IA0KPiB2cy4NCj4g
DQo+IGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKGNydGMsIGZhbHNlKQ0KPiAN
Cj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+DQo+ID4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiA+IEFy
dW4gUiBNdXJ0aHkNCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+DQo+ID4+ICt2b2lkIGlu
dGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KSB7DQo+ID4+ICsgICAgIHdhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKGNydGMsIHRydWUp
OyB9DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZibGFuay5oDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuaA0KPiA+PiBpbmRleCA5YzAwMzRkNzQ1NGQuLjU0ODcwY2FiZDczNCAxMDA2NDQNCj4gPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaA0KPiA+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5oDQo+ID4+IEBA
IC0xNyw1ICsxNyw3IEBAIHUzMiBnNHhfZ2V0X3ZibGFua19jb3VudGVyKHN0cnVjdCBkcm1fY3J0
YyAqY3J0Yyk7DQo+ID4+IGJvb2wgaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVzdGFtcChzdHJ1
Y3QgZHJtX2NydGMgKmNydGMsIGludA0KPiAqbWF4X2Vycm9yLA0KPiA+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGt0aW1lX3QgKnZibGFua190aW1lLCBib29sDQo+ID4+IGlu
X3ZibGFua19pcnEpOyBpbnQgaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpOw0KPiA+PiArdm9pZCBpbnRlbF93YWl0X2Zvcl9waXBlX3NjYW5saW5lX3N0b3Bw
ZWQoc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiA+PiArdm9pZCBpbnRlbF93YWl0X2Zvcl9w
aXBlX3NjYW5saW5lX21vdmluZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ID4+DQo+ID4+
ICAjZW5kaWYgLyogX19JTlRFTF9WQkxBTktfSF9fICovDQo+ID4+IC0tDQo+ID4+IDIuMzQuMQ0K
PiA+DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyDQo=
