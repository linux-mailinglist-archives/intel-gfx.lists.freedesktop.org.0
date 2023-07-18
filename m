Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D384B757865
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 11:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57EEC10E307;
	Tue, 18 Jul 2023 09:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC29810E307
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 09:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689673730; x=1721209730;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Mq3Xu0pAiVWJapu+hxwxN+7Ds2nZdRIK9+r8+yDMzgk=;
 b=iAGgdP7Hwc3T4BwCYzQpoXzVQv5Y+Rfgz+4CDIUT2bKhabM5r6J/VYHk
 M1iha0s816xZtQUbNvA0Dz+URR4ts95mkfe2+ZwzEtX2VZiS1VVAOtgf3
 N7Kxo++j4T/LlpbNkS0gCeSGDgigwK2EoXmYlACzQHRSuIeS1ig4tzNQ+
 ytSW1pw0qeg6F+KukJen3HAEw4tWZbAbDv0l8/BMsNOkisw9niAk9ogWJ
 lpueBA1qTq+qDpENqmzgtOjcIr7foHKRA3qFQAqrb1uGLeuQHAormROsZ
 w1sJ8fl9b65KH5cllAxjHB8NqVKBn30AVMgr2vNtQMkQPETptycgsVRhn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="345754441"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="345754441"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 02:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="813680726"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="813680726"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Jul 2023 02:48:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 02:48:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 02:48:49 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 02:48:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzCgRZCPmnvjnfn2UAv5IYO2Q0xKst7/jO/GatdBGTEMcR2fdQRGbmaxh1BslZ4BDlCVChwcaeWICv4AyQqX5CTLHqd8fQLU1/lMyaT7IJ/wlQa6S3ntSsZmCF7Yf/Uwy7q6rf5BhgcNOUfKf6bZ2MPMKXtAGu6b3Eu1xEYFiqoJicflcvWxY0HCMDkVK6/uyyl9fUbJMUPbNYtS92JUPaeeldM2S8+cSRfpIEq2mevUNVZVqk4bzGPq7e93at9/XFRmxSMUWgrx1QB8GBv2+6nOBphZJwXc/lAFStkK3PqLFjVWM6takOS+AmXPIsSpMuGlz0AuYK2stboN2gFWvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mq3Xu0pAiVWJapu+hxwxN+7Ds2nZdRIK9+r8+yDMzgk=;
 b=kxVb08wkvlnF75wkIA9uogRmJCVjDbUGZITiiFr2OiqpP2oqm+sFA4GkqyVndB8urnfBoC7IKfaFQ1FPM5KZqbIVV8IvSvXpQwkiWVD/fC9HkiZ540esFLSYjtzB3eYZM41SYMAUw1glkmBacuV7m4lmE2R7786lExJUzlpV5v14FHO271SxKjae97l73SztVK3Ctfa5aI4ZNSJsYUwlyxVOa9mcAoYxmUUB48SVOASNv5gnrhvLHYEg0K+zvcbgsjjag7fb8d5Fcsfi5nlyBBqDtZsiOLZd/Oh3LgVYv7xf+lcDejlmq0e9oaUyBMhEZrAW9BVQwXn+KpX+DtGnCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Tue, 18 Jul
 2023 09:48:47 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::c48f:554a:acec:5ea]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::c48f:554a:acec:5ea%4]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 09:48:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/panelreplay: enable/disable
 panel replay
Thread-Index: AQHY9RZHxarwSMIkA0qaW67+YL4dba+6MnWAgAadT7A=
Date: Tue, 18 Jul 2023 09:48:47 +0000
Message-ID: <PH7PR11MB59817D2DFDD9390F9193F33EF938A@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-5-animesh.manna@intel.com>
 <DM6PR11MB31774DACC01F7E33E401D969BA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31774DACC01F7E33E401D969BA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7788:EE_
x-ms-office365-filtering-correlation-id: 064d0b40-fd0d-449a-52ce-08db87742ec7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Das6M/5ljXIYP2IVvsP/4bFG/SEgNIJGWwnwBHLcenhQTeEdn3lQ11KDvc7N97i9TR/njDMBKFvkTYFLBqCAVy0PtjgiCdiO22m5QahIoJJHFmughHV81X3opwsHeXZTUWt7RGQGiC6GhcvtJ+yrvkXHECZqzT6PEZh1Fm+IP3zo+4NpEWa2WlaIRAFq60j+ZnO271fFndJm1sqBU9itOU3XPqvKLMtsXeSPmNhBz0mH7GBcs04sS0MFkPOSOGY55nEL0ejOdH7MmW6jGQ2YhXwR9HC+Yj31neEcFYBIX7MI5RZSfs81Zi8dZmPR0CNoVOBifCdDEpP3G+JuhciBdHutLiBPsaXddiu3sj356PrnkDjnt+37DVGM5ksjyyHFPOdo3fJ7rjkTxqbi7YP3B4Lv9/3jFxRjETN5WmaCAUe1LethYBRy9mANN9YJg4q3Ff9optdDfKlJ4fOkcCrUt4XJWMkEwrS6VIpzprO8zJ21CiMamO/g6bp7ng/0cROx4FSEi5yOl4nHPbGN9MECdG2OJfdQoWa5UbUgAxhzhNuwlwEdF2SNpl13YROzzFZ6NMfH+aNhRxmsquZc/p0M/Rqo6fyvLN7kg5Nv5qL6RsyB+VXomzKhpP/lKLHEtbuY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199021)(55016003)(122000001)(38100700002)(83380400001)(110136005)(82960400001)(7696005)(71200400001)(52536014)(41300700001)(8676002)(5660300002)(8936002)(64756008)(478600001)(316002)(76116006)(66476007)(66446008)(66946007)(66556008)(66574015)(9686003)(186003)(26005)(6506007)(53546011)(86362001)(33656002)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1RFazRBdTlNaC82V3NabVlycE1MU3dZM2N5bTd3RkJKR1kvdW8rMTNsb0VW?=
 =?utf-8?B?Yml5RlMvMlMrTWQ5TjZvZHkwVVNYR3NBbTlYallhM1hEdndLZUcySG1RYnNY?=
 =?utf-8?B?VWlwanUzR2g1Z1JreUVUdnRBZHRPUy9HejFYWE8xQXp2YlFTa2tJSjdwc1I5?=
 =?utf-8?B?RDhzY24wbzdSa2JhTmdZalVuTzNZNmlvT1lobjNsRk1LeUFOUjNxMkpNYWhw?=
 =?utf-8?B?c1JMbXo0MlBRNWlNMmE5U2gxS3VjcUU4VGRLVnRiN2pmR0JWdFQ2UkRjVGdt?=
 =?utf-8?B?ZjlwenNobWhhbHNSNzR1UnVKSTdMcmk2VWwxQlErbkcrSXV0YnllYzVUQkZQ?=
 =?utf-8?B?TUdzdkRRN3F1c2drczJEaDI2TWhBYXl4UWhlaGdkVThGRTFySzBnVTBMYThD?=
 =?utf-8?B?Ri9SclVoVEE0YWVBdG1TeEJ6Z3dmald6dDhxajd0VExkeG14d3VrMEtSV2JR?=
 =?utf-8?B?MmZRVTNVUGMxR3ZOZHBvZEJjS2c0V0lPY0JqMHdPdDRBWFdZZWQzSVZpZGZ6?=
 =?utf-8?B?Qmx1ZHhkUFZua1BrWXBmSnFVRVdmZlB1Z2RHeERZY3VpR0RWNGh2TFlrRTVD?=
 =?utf-8?B?cjlMUmV2cFV1SnJ4ZE9KQ1lOazg4L1N6TWppQ1lOZmlqNzF4cU5aTytqN0FD?=
 =?utf-8?B?YWtLM2p6aHRqQUhsMmhGUDBXZnM3WHMzYU40bW8zQ3ZxTURMK0RWTncvZGta?=
 =?utf-8?B?Y1YwNnQ1MjE5cTUvMmV6SjFGd3hHSFZQV1k4Y2c4OTZRaWVWNjUvdEJyRjNo?=
 =?utf-8?B?NXpJSkMvdlZFSmpWTkYxQUt4eGhRZzNhOU9BUVBuRWJMZDJHcExtV1JFMksz?=
 =?utf-8?B?c2dNRG1jZ3hVNWxLdGo2Mk9GYmhUN3ZlaTlaa0RPQkp3Mnd0b2ZrZ2ZIa3dz?=
 =?utf-8?B?YVU0SjBBMU1UUko4ODhkN1p5SDNPYWU5L3hzcXZJREU4UVBSQlFBTHlTcUpq?=
 =?utf-8?B?S0tEd1plUlpvVzJxa2RJc0F4QUNDVkJaN1o3RGxadWRQd3FtMzlwSG93ZEw0?=
 =?utf-8?B?c295anRGU0V0YUxEZ1NwUE5NUEJyS3NxVGpwTzVTRHhXWjZoTjVsWkJ1YmRN?=
 =?utf-8?B?ZkwzWFFtZlE5QmJ2NUsxajZHR0FTVkxTeUlDY0M1NERYUEVXNlJlMGVpY2VH?=
 =?utf-8?B?SGd3Uy9obTVRMEpBM0Y4NzI0dVFWK01sZGc4Sko5emN5blpVeFc4ZVZmMGdu?=
 =?utf-8?B?bDhnOTN2VWwvOHNZYk5GZ3pVMldEbHRjd2wyOVZFUFhJMlMvcXpjQXNTbitS?=
 =?utf-8?B?bmJhbUpQQVNPaHFWSEJNaGxpNkZ0cXJham9GMjU5QTJIRWFMeDB1aGlWU1V4?=
 =?utf-8?B?aE1tTitCLzJEZUZiOWdmU2FqYTVJK2pCdDk1Sm1kcDNpcFpVZXNicXpDSmVG?=
 =?utf-8?B?V3hwYllla3hiNnh2TG5hTmkxdFlScmd3Q040THowSUlGMVF4M2xjdFdmaXhS?=
 =?utf-8?B?R3ZxUHYvQ1lyQUZjYzFHMEoraS8xNzlNRzQ5UXErU2dVemFYSkpJQ2JFbWJW?=
 =?utf-8?B?cVFtQkorUTlmQXExbVM4eGF2bjZhVlR4RzNoc0lqcUJGU3lacHVlU3VkNjBR?=
 =?utf-8?B?UmZnR1hudnR3dEZ2SWNFSm5OL1kxT281VXI0b0R3blVydlJhWUxKVGU5bzE1?=
 =?utf-8?B?TnYrT0xVdkJFN3B5aEEzL3pxUSs2ZC9uN3FIcnZnK2FrL25WdTNUQzF4OXRi?=
 =?utf-8?B?cDUrK2E2UnNMTUtDZXdZa3dVckVYcmFLc2hPVFpvZnhPUmFpZ1ZQbzBzUlVJ?=
 =?utf-8?B?d2tUMHJzV05vZHJ1aGFSMXJrbVF4bDFiQzdseTdDOVNNOG1ZeVVZWk50Z1ln?=
 =?utf-8?B?TS9QeTRlVDZTMU1ieDd5NWZuT3JxN09oRndJUEJrNFY5WXR0NnJNMEt1Mjdk?=
 =?utf-8?B?SXo3TVptUjJDdlpaNEl2YWNOcGxPaitiSmlJa0N5K0VqK3RCeVJ1cDRvVndU?=
 =?utf-8?B?TU8yUmlGQm9aWUVoemQ5WnFTWEtHQStkTUE0T2IzaTg2S1ZybE14RUFsaDQv?=
 =?utf-8?B?VWhlYXR6OHJDSUkzWVFCNUxhOUV5cFZxVHh5bjc3b0FDU2VPaWVIWDJxRFRv?=
 =?utf-8?B?VVVGYU5qMEtIRDNyUUo3cnMrd3c3NDRMSmhOUlBXMHpsM0M5NFJKcm00Y0Fw?=
 =?utf-8?Q?RuZbmXVHxmIvIplXqjOb8iqAO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 064d0b40-fd0d-449a-52ce-08db87742ec7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 09:48:47.3376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a/dON3f6cspgpNSSv2n8FNeW4UACkKAeUdPrWVVt20q498V2go29CcJ5Xnz/sa8jO0mqAqW+X0njvVIS+jWVfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/panelreplay: enable/disable
 panel replay
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
MTA6MTggQU0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50
ZWwtZ2Z4XSBbUEFUQ0ggNC80XSBkcm0vaTkxNS9wYW5lbHJlcGxheTogZW5hYmxlL2Rpc2FibGUN
Cj4gcGFuZWwgcmVwbGF5DQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gQW5pbWVzaCBNYW5uYQ0KPiA+IFNlbnQ6IFRodXJz
ZGF5LCBOb3ZlbWJlciAxMCwgMjAyMiA4OjMzIFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggNC80XSBkcm0v
aTkxNS9wYW5lbHJlcGxheTogZW5hYmxlL2Rpc2FibGUNCj4gcGFuZWwNCj4gPiByZXBsYXkNCj4g
Pg0KPiA+IFRSQU5TX0RQMl9DVEwgcmVnaXN0ZXIgaXMgcHJvZ3JhbW1lZCB0byBlbmFibGUgcGFu
ZWwgcmVwbGF5IGZyb20NCj4gc291cmNlDQo+ID4gYW5kIHNpbmsgaXMgZW5hYmxlZCB0aHJvdWdo
IHBhbmVsIHJlcGxheSBkcGNkIGNvbmZpZ3VyYXRpb24gYWRkcmVzcy4NCj4gPg0KPiA+IE5vdGU6
IEN1cnJlbnRseSBlbmFibGVkIGZ1bGwtc2NyZWVuIGxpdmUgYWN0aXZlIGZyYW1lIHVwZGF0ZSBt
b2RlIG9mIHBhbmVsDQo+ID4gcmVwbGF5LiBQYW5lbCByZXBsYXkgYWxzbyBjYW4gYmUgZW5hYmxl
ZCBpbiBzZWxlY3RpdmUgdXBkYXRlIG1vZGUgd2hpY2gNCj4gd2lsbA0KPiA+IGJlIGVuYWJsZWQg
aW4gYSBpbmNyZW1lbnRhbCBhcHByb2FjaC4NCj4gPg0KPiA+IENjOiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMwICsrKysrKysrKysrKysrKysrKysrLS0t
LQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gaW5kZXggNTAzOTQxNDNjNzk4Li5iNjQwNmMzMzQzMTYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMzk1LDggKzM5NSwxNCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwDQo+ID4g
KmludGVsX2RwKQ0KPiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBf
dG9faTkxNShpbnRlbF9kcCk7DQo+ID4gIAl1OCBkcGNkX3ZhbCA9IERQX1BTUl9FTkFCTEU7DQo+
ID4NCj4gPiAtCS8qIEVuYWJsZSBBTFBNIGF0IHNpbmsgZm9yIHBzcjIgKi8NCj4gPiArCWlmIChp
bnRlbF9kcC0+cHNyLmVuYWJsZWQgJiYgSVNfUEFORUxfUkVQTEFZKGludGVsX2RwKSkgew0KPiA+
ICsJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwNCj4gPiBQQU5FTF9SRVBMQVlf
Q09ORklHLA0KPiA+ICsJCQkJICAgRFBfUEFORUxfUkVQTEFZX0VOQUJMRSk7DQo+ID4gKwkJcmV0
dXJuOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWlmIChpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxl
ZCkgew0KPiA+ICsJCS8qIEVuYWJsZSBBTFBNIGF0IHNpbmsgZm9yIHBzcjIgKi8NCj4gPiAgCQlk
cm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsDQo+ID4gRFBfUkVDRUlWRVJfQUxQTV9D
T05GSUcsDQo+ID4gIAkJCQkgICBEUF9BTFBNX0VOQUJMRSB8DQo+ID4NCj4gPiBEUF9BTFBNX0xP
Q0tfRVJST1JfSVJRX0hQRF9FTkFCTEUpOw0KPiA+IEBAIC01MjYsNiArNTMyLDE3IEBAIHN0YXRp
YyB1MzIgaW50ZWxfcHNyMl9nZXRfdHBfdGltZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxf
ZHApDQo+ID4gIAlyZXR1cm4gdmFsOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgZGcy
X2FjdGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSB7DQo+ID4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2Rw
KTsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFNSMl9NQU5fVFJLX0NU
TChpbnRlbF9kcC0NCj4gPiA+cHNyLnRyYW5zY29kZXIpLA0KPiA+ICsNCj4gPiBBRExQX1BTUjJf
TUFOX1RSS19DVExfU0ZfUEFSVElBTF9GUkFNRV9VUERBVEUpOw0KPiA+ICsNCj4gQ2FuIGludGVs
X2RlX3JtdygpIGJlIHVzZWQsIGp1c3QgdG8gZW5zdXJlIHRoYXQgbm8gb3RoZXIgYml0cyBhcmUg
dXBkYXRlZC4NCg0KQWdyZWUsIHdpbGwgdXBkYXRlIGluIG5leHQgdmVyc2lvbi4NCg0KUmVnYXJk
cywNCkFuaW1lc2gNCg0KPiANCj4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiBBcnVuIFIgTXVydGh5
DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiA+ICsJaW50ZWxfZGVfcm13KGRldl9wcml2
LCBUUkFOU19EUDJfQ1RMKGludGVsX2RwLT5wc3IudHJhbnNjb2RlciksDQo+ID4gMCwNCj4gPiAr
CQkgICAgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxFKTsNCj4gPiArfQ0KPiA+ICsNCj4g
PiAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkgIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5
MTUoaW50ZWxfZHApOyBAQCAtDQo+ID4gMTEwMSw4ICsxMTE4LDEwIEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3Bzcl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiA+ICAJZHJt
X1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGludGVsX2RwLT5wc3IuYWN0aXZlKTsNCj4gPiAgCWxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJmludGVsX2RwLT5wc3IubG9jayk7DQo+ID4NCj4gPiAtCS8qIHBz
cjEgYW5kIHBzcjIgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZS4qLw0KPiA+IC0JaWYgKGludGVsX2Rw
LT5wc3IucHNyMl9lbmFibGVkKQ0KPiA+ICsJLyogcHNyMSwgcHNyMiBhbmQgcGFuZWwtcmVwbGF5
IGFyZSBtdXR1YWxseSBleGNsdXNpdmUuKi8NCj4gPiArCWlmIChpbnRlbF9kcC0+cHNyLmVuYWJs
ZWQgJiYgSVNfUEFORUxfUkVQTEFZKGludGVsX2RwKSkNCj4gPiArCQlkZzJfYWN0aXZhdGVfcGFu
ZWxfcmVwbGF5KGludGVsX2RwKTsNCj4gPiArCWVsc2UgaWYgKGludGVsX2RwLT5wc3IucHNyMl9l
bmFibGVkKQ0KPiA+ICAJCWhzd19hY3RpdmF0ZV9wc3IyKGludGVsX2RwKTsNCj4gPiAgCWVsc2UN
Cj4gPiAgCQloc3dfYWN0aXZhdGVfcHNyMShpbnRlbF9kcCk7DQo+ID4gQEAgLTEzMDAsNyArMTMx
OSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZXhpdChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAq
aW50ZWxfZHApDQo+ID4gIAkJcmV0dXJuOw0KPiA+ICAJfQ0KPiA+DQo+ID4gLQlpZiAoaW50ZWxf
ZHAtPnBzci5wc3IyX2VuYWJsZWQpIHsNCj4gPiArCWlmIChpbnRlbF9kcC0+cHNyLmVuYWJsZWQg
JiYgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gPiArCQlpbnRlbF9kZV9ybXcoZGV2
X3ByaXYsIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID4gPnBzci50cmFuc2NvZGVyKSwNCj4g
PiArCQkJICAgICBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJMRSwgMCk7DQo+ID4gKwl9IGVs
c2UgaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ID4gIAkJdGdsX2Rpc2FsbG93
X2RjM2NvX29uX3BzcjJfZXhpdChpbnRlbF9kcCk7DQo+ID4gIAkJdmFsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwNCj4gPiAgCQkJCSAgICBFRFBfUFNSMl9DVEwoaW50ZWxfZHAtPnBzci50cmFu
c2NvZGVyKSk7DQo+ID4gLS0NCj4gPiAyLjI5LjANCg0K
