Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A08C757813
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 11:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC0F10E1A0;
	Tue, 18 Jul 2023 09:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 735FB10E1A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 09:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689672718; x=1721208718;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gKhfTu5C7Fb7TspqCLYC9iawF6NQJqJDaPetWrhFoFs=;
 b=SeYvk4Dn1ld31o8Bu8c+2b/QJUbknjhWbpTnWlG0+07/uXI0IbYWX4pi
 /rXPWSSfZ8J4gobzI1yx8GTETysrwJDrPM4o/oJ7DPVCy+I9aOnNHBoJf
 AuBKudKpAVMDEGNP1KgH7dTigfwPoKbj9NJ76sn5D0enjAbLvpOSl8n7Z
 3s7ngMxFDa5moCsCyCD+syGhMsAX8v179/YZeM2eer0do3j244egXil7I
 k9Scd3WmylcJLflEMRXQwoI7QATP/v/cXEOTkGP64whFEDWwMVPjrisO0
 b09+VKKzwfNX9cOB8OYgXZ3so7cEvaXjYZgcPnFo/1TFL8jEH8il7lsMa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="365032093"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="365032093"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 02:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="673844253"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="673844253"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 18 Jul 2023 02:30:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 02:30:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 02:30:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 02:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lC2pwTjfVO5J2UC7JsxhJd3zkQTyURXlnAsjNkZ3Bo1Tyy6FfisDFCodgKuT/IKdTuESWZZQo2pJXO1Kk8EDpp1Gbj4fiHl4rwW1Is35foaG0lAW0Taf/Oqg5nSTEu/okP0zfijrqNYYczTSYoZzxCG/XNVyufx43g26MyS3Toe0SAxBVhbFj2N2BTduq3+W8ZbGTSk+5Uf0k4LxEpZlPNqy7xDgx4vne9YSdiVXDcvBFPJyMyLbFiagByhzCW6P2Tt8Xk6GsEw4ngMtARbSm0U/aLMcBg6tociLKRwxVxyLtizY+kltYhLuhCioawnghuFJ7XZ5jq1SA3c64CqoeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gKhfTu5C7Fb7TspqCLYC9iawF6NQJqJDaPetWrhFoFs=;
 b=RK8X5JmLZ4YmzPCQqek0i1YFkOz6/CWO2M+2ARB/w5BztrHZLhroxHbgiI+GV/aqo+jxXBYPJEl6D0+mEBu+eARRNnwBXPTjMzB6jl5lW9P1fH2RLEu2g/HQmBEzINE3fMWyECBlffN4B8XrgHORLlfpEXChTTofV0mQe7YMYLpZzK6Pze+o/r5/T6pYrEIr4S71nXJTqrvZMtQLDarFtegwzZYE1v11SrJ1Uq/V3cZvWaAowSwZcHwxE+KZX+A9O3agcZOax8sPbl1SUpHe9abcskbWgkljq2RT52kfVGbcGXomNntE2R8D+LL6FFEU/mmgiUZn4DJMmsPM1Jyatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 09:30:35 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::c48f:554a:acec:5ea]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::c48f:554a:acec:5ea%4]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 09:30:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
Thread-Index: AQHY9RZC3tYNiMlYd0CyRkXaPlZWgK+6KcMAgAafqjA=
Date: Tue, 18 Jul 2023 09:30:35 +0000
Message-ID: <PH7PR11MB598100B12BE3EBC1750488AEF938A@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-3-animesh.manna@intel.com>
 <DM6PR11MB31776947D13E9BECFCC5CB8FBA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31776947D13E9BECFCC5CB8FBA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB6349:EE_
x-ms-office365-filtering-correlation-id: 1c64aa42-9b40-48d3-d427-08db8771a3d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n9jU0JPnQUiyZOFQLAByU6eGLoJDgGx/vMpVFWhX5uYmr9oMBGVF+kHNweWU3pElAXvRnXFigDtiyBCIaNYjIpjO4oafSvcNqIvLaMQLqHBoc95SPSUUEM5DQ/E99x+5cB+/92E+LQN+8yoourIqdTg8aBd2LXkVghu9pbBijC/vmx5av9ek6QRNBaqUz8RDpHg5fpENUwsNgBDy3in7tClvKlsr8avzbRI8GqCAssvcycEoPGlGKzhK8pTdAb/MDUCLdXTWwHJSzO1dgCeFnVMjh+ik+ebymZVstqpupKes4rlEtOjvZR6DF/tWOnHp1xL2jlrp2aJkIUeLYupnS+3AqzReAZPMZ5wK2fcgJeLTMb/owTn2RZS+hXzZECZl/UdNOvkuhSI3SwAtUrwVfFfAa8pLf4EfhvTuka/95LDxUf5UCwrq4mrShs7SW9r6qAy4gi4jtnNo+tIVLuZ6zCYoWiRO4UFfL5al0g9y/jJYmfAMydpLR5nP4Yj7YM3cME3Sw5y6RV1s0kCHuI1kDPd8+DUCYgJzonhAZjg8YMezWbE1oj9ZfVRmYyyclH8lq1aRl7w5KFDTeI/U6+xx4qV3T2jMV4uuKr5680IhO0qn2DJgjA/aOegStGDTFu6E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199021)(7696005)(71200400001)(478600001)(110136005)(83380400001)(33656002)(86362001)(38070700005)(55016003)(76116006)(2906002)(186003)(6506007)(53546011)(26005)(9686003)(38100700002)(122000001)(82960400001)(66476007)(64756008)(66946007)(66556008)(66446008)(41300700001)(316002)(8676002)(8936002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmZWR29lOVlGWWxWWDhjN0NMOWpNVVZaYXJSQmV6eElWTlRuNTVVWEVmYU56?=
 =?utf-8?B?dFk5dFBrZU1yUWRIZDdCR0lBdzZxVlBzY3c1dVhqSTRIaVVYb3AwNS9HaFo4?=
 =?utf-8?B?R3cyUE5YRmpMOC9reG53TnVPRmVxL3Nyaks2RmRVYldQSXp4YTE3QmlxZndZ?=
 =?utf-8?B?alErK2xWY1NUNU1aSHNwc2tOZGVBVkVMNDlzdnFTOW9FdG5iS21GOEE3Q1Zh?=
 =?utf-8?B?Z1dkbUc4aTR2NlZzSWI4NEI0bHdZSEJ0V2NDS21WR0MvZkU2R05BRTdVdFYz?=
 =?utf-8?B?ckFrdVEvckpQZGRMbXdKZGlwWlRkcCs2aDliYnNlZ2FCSWs3Y213dXZOMVJ5?=
 =?utf-8?B?T2FhSUVBSVpPU3VGR2NzZDZkK2VrUlhyYldpN2tJZlVxMHZOc0VhZWhISm5J?=
 =?utf-8?B?R0dTREcrWmp5RUpuajFsUVlPTHhRaFRGSCtBVWpITE5CUVlKQ3RyNGx1MDR0?=
 =?utf-8?B?TmVsM1BDaGJvd2x3NklJdU5OQzJPTVBGSndzQnBnakVUS2tPODlhNmpQY0t5?=
 =?utf-8?B?TlczMUlmaVg4cTR6T2orTHB2aHZUOVdvTlZ1dEh1ZTNQaVhKMGJHUEltZWpa?=
 =?utf-8?B?WE55TStpN29nZXpnL25wSk41b0JyWStaOUNJMVJYbUFEdlVrSDRlL2VHZTVN?=
 =?utf-8?B?YnZGRTI1dkx1OXZrcnhvRk9MZU1ucWt3L0d3c0g3ZjBQQWIvQTRnUXdVYTBD?=
 =?utf-8?B?SHJKVnJXOGh4UjE0WnFlbE00SkJ1U1lCck1sQ013cXpkTjFDNysxTVdid2dI?=
 =?utf-8?B?QS9TYk1PK2czcEZYdVJMSmNtWEJ5dGFVT3ZaNk4xcHRXYVEwbHdEeTQ2bERt?=
 =?utf-8?B?eGw1TjMzczQ0WGtvMm44RHoveVp1VUxlUHo3WXJ0bGZtZVFRd0lzQWRTK0wv?=
 =?utf-8?B?ZjJuYTN5b3k1ZDhaSVU3ZHR1Wi9FRTN1OHZCVFVvUUpQck1WRW9HNHF4aFhE?=
 =?utf-8?B?M0cvdThjM28vMnZEdHprNGZPNUJVd1F3V1FIZWdkTHpzMlJoQXhVWk5YWU5W?=
 =?utf-8?B?T0hkYVRocFhLbEtHVWFsRGJldVg5Mlg1a09Zbm9NQS9hL3VRVjAvT2JvSkdi?=
 =?utf-8?B?Zy9oWDhGVklwVHpTdTZOenpXSm0yQkM2YkpyMCtiWEFTblh4cndIVFo3L0dQ?=
 =?utf-8?B?UDF3UlZFeTQ5R0FHVVRFZ3ZQaldJeGVYNGtXbXRncU9GU0ZuVFZjTCtOME9D?=
 =?utf-8?B?Q2paUFg3aEZ5c1BSdDBvY2dvc0xzVlNhRWdBWTNMVllJazlSYTl1ZCtDU1BN?=
 =?utf-8?B?Y2I1eVl6cmhjaTB3ZTFnSnlGa2JmdGRERURyd2V3Q2F3cjlmWVVndnZkYUxF?=
 =?utf-8?B?ajVvUGJycHJPKzVjbUlJT1k2eEpmaG5FbzBCWStsTmprdTNwMGxYWG5vZ29K?=
 =?utf-8?B?aXZhcWRTV211bUtGQUppOWZ6Wk1NVW1wN2ZObXYyVHpnU1R5dDR3RkhNZVNY?=
 =?utf-8?B?ckJEZ1FCanNURlNtV1krQy9rMVkvNWF3VSsraDNwVURYM1E0WURMekhNK2Ji?=
 =?utf-8?B?dWVPQVBPNXlNcmFreHUyOTRaQlJKdkw0cE9pNGJKbTNPVE1BbjZOVCtlUnEr?=
 =?utf-8?B?Z29uZkl3S1o2YXg2dUVFWDR5c2p1MzlYV21hUGxrampxVGsxRURrWi9FWjcr?=
 =?utf-8?B?UU1HbE90b1JJRzQ0SmxBZmlMSW9TNnBZZm5WYk5lSXF6RE5LQStUT2pySlNE?=
 =?utf-8?B?RkdQOWV3azNMeGJtL2J4SXpOaUgzek1nSzhQZjQwR3kvUmZPMDVndTUzQnVI?=
 =?utf-8?B?RmJaSXlVMEF1bXlVRGJMbVFYZC9WUnNxMFNDbE4xdUVidGkrVWdQTXFNOEZo?=
 =?utf-8?B?dHlzOXl3ZHl0bDJ1YXh3dFVHM2JzSWNjcXR3REJhT1laOS83amlBNUM0d2R4?=
 =?utf-8?B?d0xWREpYMG1GODNjYjBmRzVFcVg3MG1QSXY3Nmp6U2JCbTJCaFJ4Sjg0V3RS?=
 =?utf-8?B?NWEzWHQyNHFVQ2VuS1ZFSWgySDMwNlVVYXVEL0lwK2xvTkZDTmlkRGIxR21P?=
 =?utf-8?B?K25BVzBrcWhBblRlZ1lQajU4dTNVN1FISTRWV0x4UWh4TDg5YTVxVHhEZTlv?=
 =?utf-8?B?N1pObGhJazd0ZFkvMlAyR21OSmJRbU5MckNKbW4zM1hnN0hCamhzTjZuN25m?=
 =?utf-8?Q?y7+uPti4QrxTqK4mOkmCN6bUm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c64aa42-9b40-48d3-d427-08db8771a3d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 09:30:35.2653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QqlbbAijoRWBB7Pqy9ygg+UCT1VinCzwGFWkPK8nWOTbTQgK7mupC15+vHRpllOSJV47+52TkIkuWf/Vw8PnvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEp1bHkgMTQsIDIwMjMg
OTo0NyBBTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsg
aW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUkU6IFtJbnRl
bC1nZnhdIFtQQVRDSCAyLzRdIGRybS9pOTE1L3BhbmVscmVwbGF5OiBBZGRlZA0KPiBIQVNfUEFO
RUxfUkVQTEFZKCkgbWFjcm8NCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zz4gT24gQmVoYWxmIE9mDQo+ID4gQW5pbWVzaCBNYW5uYQ0KPiA+IFNlbnQ6IFRodXJzZGF5LCBO
b3ZlbWJlciAxMCwgMjAyMiA4OjMzIFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMi80XSBkcm0vaTkxNS9w
YW5lbHJlcGxheTogQWRkZWQNCj4gPiBIQVNfUEFORUxfUkVQTEFZKCkgbWFjcm8NCj4gPg0KPiA+
IFBsYXRmb3JtcyBoYXZpbmcgRGlzcGxheSAxMyBhbmQgYWJvdmUgd2lsbCBzdXBwb3J0IHBhbmVs
IHJlcGxheQ0KPiA+IGZlYXR1cmUgb2YgRFAgMi4wIG1vbml0b3IuIEFkZGVkIGEgSEFTX1BBTkVM
X1JFUExBWSgpIG1hY3JvIHRvIGNoZWNrDQo+ID4gZm9yIHBhbmVsIHJlcGxheSBjYXBhYmlsaXR5
Lg0KPiA+DQo+IA0KPiBTaG91bGQgd2UgYWxzbyBjaGVjayBmb3IgRFAyLjAgc3VwcG9ydGVkIG1v
bml0b3IgcGx1Z2dlZCBpbiBhbG9uZyB3aXRoIHRoaXMNCj4gRGlzcGxheSAxMyBjaGVjaz8NCg0K
QWdyZWUsIEN1cnJlbnRseSBIQVNfRFAyMCgpIGlzIGhhdmluZyBESVNQTEFZX1ZFUigpIGNoZWNr
IGluIGl0LiBTbyB3aWxsIG1vZGlmeSBsaWtlIGJlbG93LA0KI2RlZmluZSBIQVNfUEFORUxfUkVQ
TEFZKGk5MTUpCUhBU19EUDIwKGk5MTUpDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IFRo
YW5rcyBhbmQgUmVnYXJkcywNCj4gQXJ1biBSIE11cnRoeQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiANCj4gPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAxICsN
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCBpbmRleCAwNWIzMzAwY2M0ZWQuLmJhNDdmNDQwOWQwYg0KPiA+IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gQEAgLTg3Myw2ICs4NzMsNyBA
QCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICppOTE1
LA0KPiA+ICAjZGVmaW5lIEhBU19EREkoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYp
LQ0KPiA+ID5kaXNwbGF5Lmhhc19kZGkpDQo+ID4gICNkZWZpbmUgSEFTX0ZQR0FfREJHX1VOQ0xB
SU1FRChkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYpLQ0KPiA+ID5kaXNwbGF5Lmhhc19m
cGdhX2RiZykNCj4gPiAgI2RlZmluZSBIQVNfUFNSKGRldl9wcml2KQkJIChJTlRFTF9JTkZPKGRl
dl9wcml2KS0NCj4gPiA+ZGlzcGxheS5oYXNfcHNyKQ0KPiA+ICsjZGVmaW5lIEhBU19QQU5FTF9S
RVBMQVkoZGV2X3ByaXYpCSAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49DQo+ID4gMTMpDQo+ID4g
ICNkZWZpbmUgSEFTX1BTUl9IV19UUkFDS0lORyhkZXZfcHJpdikgXA0KPiA+ICAJKElOVEVMX0lO
Rk8oZGV2X3ByaXYpLT5kaXNwbGF5Lmhhc19wc3JfaHdfdHJhY2tpbmcpDQo+ID4gICNkZWZpbmUg
SEFTX1BTUjJfU0VMX0ZFVENIKGRldl9wcml2KQkgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PQ0K
PiA+IDEyKQ0KPiA+IC0tDQo+ID4gMi4yOS4wDQoNCg==
