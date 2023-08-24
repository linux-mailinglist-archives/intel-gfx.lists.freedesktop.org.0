Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0A78694C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE2610E108;
	Thu, 24 Aug 2023 08:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFCB10E108
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864160; x=1724400160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ojAO6KlRnX9XOT/pV+Vr+MtTiHPTYbfEShQgz+WdGD4=;
 b=gBXbPo5Grry8Ko6BkskP89b86dnt/3bSl5OgaOHUKM4DRsE+HOnVD1tx
 Vsp00P2T2k3VsgaEcDVgb4+CanPyU6UoAy5aVA4xPt7p5QyKH86uSN9U4
 H4+bgJeS4RuqstnOGP0aljMO2EGpDaiDpBSIy0sXkIuzQanA3Etg+umCU
 RvP1C1bfN4eYAzQ73EGPeD5rrJ8uIndIgZpMq3sCwYiD6IKoKng3YYh8O
 vG0hx1YJgMlloAcpDN327WJOFFaVW1ilfjp13wMFioZ6iJSvVO0P6QkQF
 f0YKxbuu5DKYZ02cEHW6s9izGeIh5nzRelgfnrm0WfAaXMAE17XrCAFKH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405376269"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405376269"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="851392422"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851392422"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 24 Aug 2023 00:51:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 00:51:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 00:51:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 00:51:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 00:51:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKU9syqdHJA1uq9VUeazIW2Mob1RtJ41XTkxOGY4stx1wmM5QgSSU6WaqquRS4ttwCPtt4DnCofLShWS3alK2vpRC5Cp7CP3j9GVxToyxg+AJzqAynpbPctvqo/xTPnsJm/LbfDOKuMUtfKhnnjUujrqC2Y59BC/5XkZRwsKqI3jcUL55MnL3PU40M6lw9nezg4XJnuD87IKkCEIHCRck7IJTd0j7vDgu4hhjj1mtm1/QYfNQ6IbCKN4izJghvvfR8+6QAf/ucIE3QmVk0oj1AuCfHrAuNesLBLMxDwWc9RucDP3nRYwTPphRHzNxW7zHj8pL/+DOejtHDRmyoJRyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojAO6KlRnX9XOT/pV+Vr+MtTiHPTYbfEShQgz+WdGD4=;
 b=P6VKEXMMH+BNnj+PiNPUWdB8It96cem+t6srEYOcF8/RDqFoAFTsxbCwv6Dc6LaT/zYM6ohkiJV9mFMJwYW4jf+3ZKnIOQDdNOfDKqD0T/F7yGr5yIdU6vmDDCbKDCN0AWqj92ak1dr2/YxI94qWHOldsDuHL1lctdGGj+l/g0wAi2rAZpjPJEBsK5Vae/q4kMIB0LG0l1Px9U8AJ4l/uc5Z3VlqMXP6SH4KMWulIeYL24GX3bbUPn55NhxJsgQkW61U34FCKPMlnRNUkFBlJqkYKaE0Vxd8l/ZHALbpxFGOOV8sTB85hUMc3Z5g1vCtksj+0lmGAGxTGeJDkxU5yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CH3PR11MB7297.namprd11.prod.outlook.com (2603:10b6:610:140::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 07:51:27 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 07:51:27 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
Thread-Index: AQHZ0k/kBXR6r405JEKmQ8S7MoG8gK/1BNaAgAQWF4A=
Date: Thu, 24 Aug 2023 07:51:27 +0000
Message-ID: <349b90127ceec594aefc2e4e5d9a342bc58c0083.camel@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <bnbw4nv42wwbk5mhztglj5a4t4sjqi4rqi6u7f7gfewvigky6z@yiu6vwcp3l5d>
 <SN7PR11MB67507FD38D8BEDCE40273BB7E31EA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67507FD38D8BEDCE40273BB7E31EA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CH3PR11MB7297:EE_
x-ms-office365-filtering-correlation-id: ba50c32a-8898-4afa-6c55-08dba476ec1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pyq1fNmWZ7k+UaUN57plVIFgXsyyCtc0z+fm8BPRZJ+BwmGQUfs4RHrL9QmuCX1uDToU/Q8ZBq+Hecjpqc9D0ZEaQsAuL1RXuAhmE2/sLM7R3rQrZww8QpRHxvpkiW/UE9IZdf5oh7SewaK0iqc0pxtnQe6r3OcP/EAWeUXWCvCeR5U1fS+p/DaAS0OBUW78C3O8hSMWmJ0q5qhAolJHChxlKT9PVL9xbttChNuJdnEg+DI5N5nB7qlWryx/yjR9Lz3b1OCc8TQupl60i5JLqVkrFsWpjnu3C6cqNKYtzY2HE0OFAIJt8cK/WG6tR94SmCn7EZmCwLPtMB84JERI45ZSaMpKoMZ4zI9n6WRcddjJ6B/79ebrBQg0RiI1RnEJdyEEfQSdcTNLvlw5a4xzvS2fQSrld6yx4Qz4GreMcGkRH0/bhdq+jaOHvu2/SVWBamyUrgdPi8HYH2v99xjnzRfHlRI/z3yB7H19jP74nQOMNiveCNOPRNJnh4PBZFxsY4g2omnpWul9HFGAZocu58PrfV7vLBMOqKrpWum8oP3PFqEcOWR/bSkVXtKLvdy4j9+CfQX/MEyG1wYcMCLN/9du3am4NkrH4xuTx78hv0OVwLwQdwGRstgx7mmgxvFr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(366004)(39860400002)(451199024)(186009)(1800799009)(66446008)(64756008)(6636002)(66946007)(76116006)(66476007)(66556008)(316002)(82960400001)(122000001)(478600001)(110136005)(91956017)(26005)(38070700005)(38100700002)(71200400001)(41300700001)(86362001)(6486002)(6506007)(2906002)(6512007)(4326008)(8676002)(8936002)(2616005)(5660300002)(36756003)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUU2RnlWNDFzd0JlQUdNa2xTeUNUSktLODcvTzluaHJaT0tPWFpaT0NxdjRi?=
 =?utf-8?B?WFlHQmRKY3oxS05HakNGWW40YXZ3QzRORHhSQ3AxMUhBc0Y0ekhBaHV0Z3Fx?=
 =?utf-8?B?Q0l2TDFHUEZSZGVzNkxFVzdIditYYWJJZmx0WEY2VHQzM3YxNVNTaDVBbXlR?=
 =?utf-8?B?MHJDT0ZRMHB6aGVwMnpKN0dpd2lTb3pVV3F1bHd3NEZhMFVVOUkyVHB4ZWdY?=
 =?utf-8?B?MEVWMGdmQjdIRkczYmw1WEVqdWlLNXk3MFBiaWh4a2Y5RmsvMmthYStycmNh?=
 =?utf-8?B?MGxjQVZvUTFyV2wwQXNOb2pONUhxbmlCQmFhSFBLS01zRUxKd2xpeWIwS2xk?=
 =?utf-8?B?eXlOUlMweWdYM3dyMGZBU3dKTjU4SWlCb2VuUG0zcVkwOVpTSUptKzBHc1Zo?=
 =?utf-8?B?ZzJUaTNCVGoveFRHSDdyS2NEVlNyWXYwdFFScWJCa0xINzVTTU5UTFpsV3dL?=
 =?utf-8?B?aTY4OER0a25vWXdncXhBNmV6M1hIRlpoanVGdy96WG10cGUvTkRENXJSa3pj?=
 =?utf-8?B?WnFGTVZiSE5lbk5HQWdxSkNYMjlodUhiWU8ray85MzFiYjFvQ1Rsek5YcE5T?=
 =?utf-8?B?N21VUWtHU25WVGIzRjJWRS9aM0ZZT0VSSHdxSCtYenVXMWkwSThNRUtqaGhp?=
 =?utf-8?B?Qzh5am9HUDRvSVJ6dllNSGVuNmhiK2hmeGJBbVVVYnN0OEVCak5VYThZaWt4?=
 =?utf-8?B?N2NyalhNblUyQi9Wb24rQStidWRqOWFzcUt1YUtMZFd5NmhibHZGczZRMjJ5?=
 =?utf-8?B?OGExQVhuT3BaYXcvcG4yb1BaODVuSVc1UGdkby93WWd4R0RIb01BNENnUkdw?=
 =?utf-8?B?NHlyMzZ2WThlOXZpTStrU0VoaVdvZ3kvdUR3ZHR2eC9zcGVEOFhnNkFyTnhq?=
 =?utf-8?B?VUIrWmpoSUhGU1F5bSt6Qys4bFBuaE12WXBvTkVucExuM2ZVVVV0OTFreXQ2?=
 =?utf-8?B?VllWdTVsaDJjQmhIb0xuUnBhSW84c3VsNEllUFVtRWY4SGRudHhCTHhMNlhs?=
 =?utf-8?B?bkZpWGlMenNGRmh0TDJNN1NYNWU2QzJqaTZLSVE1c0N3ZU1jVG9OcFBheXJ4?=
 =?utf-8?B?RWltQnVVNGx1UEdqQThpZ3ZhN204blZvL2p2N2R6YjF2bjM5c2Rwd1RvbUpl?=
 =?utf-8?B?OTg1ZCtQQzRWdklVejBBZXVVL3F0L1BQb2UySUxuRW5rVlNweThDZTE3SDZO?=
 =?utf-8?B?VDhMc3lQS0NKd2xkKzJLZHFOWCtqdm9rV01mbU9CRzdTYzJQaE1NVjJCVkpR?=
 =?utf-8?B?aUpXaXRhYUI4eXBmNmlRSU15TEo3N0gvMnpMeTRDY1JOSXlhcXVPaVM0aUth?=
 =?utf-8?B?R3hHQUZWWUp6a2ZXT2VLcGxuZDQrUmsvYnJKaTVkNXBuemNxMzJXUnVzY2pk?=
 =?utf-8?B?cjZHVTZXc1hXcVNYNFVLaU9UNVAxdU5mclh5dmxhek5HOFZyZ3R0MFkrdVZS?=
 =?utf-8?B?Ukp4bFpSTUp5a3FzU0tBY0F3OGowQVhCY3hDRmE1em5JYzNobTRGbGZoV0J0?=
 =?utf-8?B?ME1EQi9ST3B5T2t6WERVcVZrckN5VUxUYW16bXB2SUkxUXJoOFZ6TmU4RkRN?=
 =?utf-8?B?VkllcDZ5Q25KNElrQW03enpLK3hFVjNnczdpTjR6MTZaR3RUN2h4dm9ZM0dO?=
 =?utf-8?B?azNCV1R6dG5SVUp5bHlLV0VCRy9IWWVEcXd1U3hROWNFd2g5VmZlemxPcEQ5?=
 =?utf-8?B?NkMxS3dTQlFQaitkN0JFNkNES0kvS1IxK0t3TDlkTFZUQVg1T1g3Mjczd3dT?=
 =?utf-8?B?Yk5STG5oYzMyWkJPcndPNi9DOVNFYVRITjd2K29LQUpmdjE0aVZKazNTTkpP?=
 =?utf-8?B?TkdJL00vR3RQdENPTmNqY0k3OVQ4MDRNbjhiTlVjQUhrRCtMdkFxbzFXYk9B?=
 =?utf-8?B?WjFCcmw1K0poTVdHWUJYclNlZmNMREE2V000Z2lMUFZVOGZuV1B3amV6clgv?=
 =?utf-8?B?N1hnUzZYTjI2bERUUG9OcXJReVYxUFozVTArT1FWeFhUYWM4eXQwNDEybHdy?=
 =?utf-8?B?VlR1bzAzTzVGNDh5RC82cVphVFpnSFFaZit2VjJlRGxvbzhRZFNXSFl5YXBV?=
 =?utf-8?B?cEtmSEh6ZHNoWkh5dFVCSDJxZmhjR2dDNkVwWlBULzFCMXpZRDNKT3JVMFRx?=
 =?utf-8?B?S1ZVSWs1MUxuMmFoTHdVQ29pTU5xKzh5TFpXOHhvZ21uZ1ppZVJFU1lrenhC?=
 =?utf-8?B?V2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6194B0035847C54FB66350724778258C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba50c32a-8898-4afa-6c55-08dba476ec1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 07:51:27.7611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cY0c/V4+frfUvolbKrFBWTl7WCFZcQ8tvZziMjKU2JGZsdJ9Q9GRLpsqGy1JgeYvuUb+d3pZku08tNo5GUmQHtWwi77y8uVycQ/Q7uTwkMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
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

T24gTW9uLCAyMDIzLTA4LTIxIGF0IDE3OjI3ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gMC80XSBkcm0vaTkxNS90Yzogc29tZSBjbGVhbi11cHMgaW4gbWF4DQo+ID4gbGFuZSBjb3Vu
dCBoYW5kbGluZyBjb2RlDQo+ID4gDQo+ID4gT24gRnJpLCBKdWwgMjEsIDIwMjMgYXQgMDI6MTE6
MTdQTSArMDMwMCwgTHVjYSBDb2VsaG8gd3JvdGU6DQo+ID4gPiBIaSwNCj4gPiA+IA0KPiA+ID4g
SGVyZSBhcmUgZm91ciBwYXRjaGVzIHdpdGggc29tZSBjbGVhbi11cHMgaW4gdGhlIGNvZGUgdGhh
dCBoYW5kbGVzIHRoZQ0KPiA+ID4gbWF4IGxhbmUgY291bnQgb2YgVHlwZS1DIGNvbm5lY3Rpb25z
Lg0KPiA+ID4gDQo+ID4gPiBUaGlzIGlzIGRvbmUgbW9zdGx5IGluIHByZXBhcmF0aW9uIGZvciBh
IG5ldyB3YXkgdG8gcmVhZCB0aGUgcGluDQo+ID4gPiBhc3NpZ25tZW50cyBhbmQgbGFuZSBjb3Vu
dCBpbiBmdXR1cmUgZGV2aWNlcy4NCj4gPiA+IA0KPiA+ID4gSW4gdjI6DQo+ID4gPiAgICogRml4
IHNvbWUgcmViYXNpbmcgZGFtYWdlLg0KPiA+ID4gDQo+ID4gPiBJbiB2MzoNCj4gPiA+ICAgKiBG
aXhlZCAiYXNzaWdtZW50IiB0eXBvLCBhcyByZXBvcnRlZCBieSBjaGVja3BhdGNoLg0KPiA+ID4g
DQo+ID4gPiBQbGVhc2UgcmV2aWV3Lg0KPiA+IA0KPiA+IHdoYXQgaGFwcGVuZWQgdG8gdGhpcyBz
ZXJpZXM/IEl0IHNlZW1zIG9ubHkgdGhlIGxhc3QgcGF0Y2ggaXMgbm90IHJldmlld2VkLg0KPiA+
IEFyZSB5b3UgZ29pbmcgdG8gc3VibWl0IGEgcmViYXNlZCB2ZXJzaW9uPw0KPiA+IA0KPiANCj4g
U28gSSBoYWQgc29tZSByZXZpZXcgY29tbWVudHMgb24gcGF0Y2ggMyB3YXMgd2FpdGluZyBmb3Ig
THVjaWFubyB0byB1cHN0cmVhbQ0KPiB0aGUgbGF0ZXN0IGNoYW5nZXMgdGhlbiByZXZpZXcgdGhl
IDR0aCBwYXRjaA0KDQpTb3JyeSBmb3IgdGhlIGRlbGF5LCBJJ3ZlIGJlZW4gZm9jdXNpbmcgb24g
YSBoaWdoLXByaW9yaXR5IGJ1Zy4NCg0KSSdsbCBzZW5kIGEgbmV3IHZlcnNpb24gb3V0IHNvb24u
DQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
