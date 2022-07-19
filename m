Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1145793BD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 09:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467CC10F887;
	Tue, 19 Jul 2022 07:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348B610F887
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 07:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658214193; x=1689750193;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GBxRP4NIRftqUPz/gUnoDzSADpypjXQ2VssL2QLockc=;
 b=EEcx+Ipk5h1rphYj49+2sazLp2AnSVeeUJJJwPXQPhUJgKj0LUWOFUbg
 1iZ0rg6E3WDHWgwLT3j+zLYfJ+XS/xaBiyWVRi4FXszS9ItNi0wM0bz+7
 3PLpiC76yPjLl+YK8wcavhDZ+zL/NMRtvMkAeTqbhb7H3yYGEqqn9chNR
 WeW/M0igiAVdhH0WXoKjqi+oxvE/BIFE4ZcE5c7A+BYZPxx0giG6SBhMU
 VeaK64AxvFK8KbBcO0pEErPSowVnvNk4VtcsVqGihycpmMLHV1emf69FN
 jy8p8jblW1pa6gQK9sOoN+Q+/zzt/wTom/5OXJ79roOLuMtu/NLUAH3KC w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="350378472"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="350378472"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 00:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="665317068"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jul 2022 00:02:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 00:02:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 00:02:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 00:02:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 00:02:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFpu7s9nsUDQTvHzCh2W0UEBbBDs856ckg1eGskm/QlNb3LrOkBpOju0Iyy64whkvnKMUXVg0z3F3z4Vai+8dF9FBrXqtix/e1So7PFqjMfP2bndrvzG4kpRnvSZ/AKisJu9f7fSqKDqI5RhNB200eP6t8dAZs1QusXSAsLNByRSdwmI73UAsf27zOPlzxxOMIKxz2QbXOgxR5yOuUTenZzIr+TQSol1wDScdTu7YseAa3focMrAixiFY/EYBSNtIMy1CaaZs2yLCmx7PwlLleA+4MxIYquj15Jsx7480E8gQXsDCU5QNmSJ//miMOfnnz57KMrXmjFe9hlOU1/6lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBxRP4NIRftqUPz/gUnoDzSADpypjXQ2VssL2QLockc=;
 b=hqseMPcWgvT7vlNesRQw5smq3vPjSU+tPGmiHjoSlKM7Mu/ztZCTAheNeNGLLC3cXSI1A6PI7Zpc/b+cfBac4OKyiDiirn0l+hVxFwWAkHAmec/zITXQBNOWJ7Fcw/GNOvguwVUPYuVmRvfjkUuCKYcUfP762WQ9HkJbLUq0dUGKhO5VxnXk4asBjy1WPf0Rk8BFj5Bpsx5l4LuVQNXjKO4e9SxUkrS5ILXGrYs1Ilg33TfxFyph3wWLnV/o12W/2Q/V3iTqI2UBod3OGqyJOEcK5Y/rMxWBNFvcGSeCPhSvzBRaWyTp6TfTjhszgN8AieijZz+puUhGEqyEcMTrcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CO1PR11MB4818.namprd11.prod.outlook.com (2603:10b6:303:93::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.19; Tue, 19 Jul 2022 07:02:28 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 07:02:28 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
Thread-Index: AQHYkcJv5q/lPkN+5E6eprkCmYrMba1z1j4wgABq5oCAENZhsIAAMWKAgAANSAA=
Date: Tue, 19 Jul 2022 07:02:28 +0000
Message-ID: <DM6PR11MB31778E9B592622E38D26AF57BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
 <c758d7c0-cb11-7135-2048-a197998ac2da@intel.com>
 <DM6PR11MB3177EFA94C68E9D3D23EAB79BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <63bd6ab5-6450-2934-6634-18d61f7dd77f@intel.com>
In-Reply-To: <63bd6ab5-6450-2934-6634-18d61f7dd77f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 435ebcd5-bd11-47bb-64cc-08da6954a489
x-ms-traffictypediagnostic: CO1PR11MB4818:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +Dl9ygcyVyeF77tfgRfWbE5o/sB0zeSDPcYF6RYhgXmb3A3m2pax5cPFQb0RnFkpeHIU5rlSBLz4WkVZH5ZcNaz4u9ADIAZKSPMuqGd7838aSGZLZhZriHfbLI0rGvsxJfMUM49eciskC4SHu4hw+oMsHpWOj3o2xMr/vLqoTjZcxIXrMNAkw9ZflDeIjp+oGiw5X3D+BNsTfdsl5C3IeHMobsthRwJu8EYu+hI6LcQvG44TNlMoA2ZUNhM83YTHx8Lbpewci69A7O21eF5/DNuEzpEdIwnM2I3+qD8H32Lf/EMldiDV/z7iejVy4DOrpf3/c1ECDKkZKBA0DRs/wDfi9dzNoWD0LY+MAESJM6wDm5Tf+vK8Oyw3L5tvSqSVuaejeJvNtB8dEpzXZVS/Ki9ndNhlfEjnoh4jMhQlSumUoy/9+LeDJpginz1EOzC32kZrtQgqx74/IL8PEfAMWteCSETE9Qs+vTEu4VfBsHzeV2gyB3TYZFUxelVAV2PVIIP63qfDCkv/CTZnGeyzWl4Tg8GTm6uQZkNRVugfzQiWOCv5GJF0vQfvsviCT1chnWI7S86oYAcMdipPcwVDgKnSJgtoWWSdF8butAsTx2gD53vD8kLgLR7H0X18RRzp2XsWDKFXJU9WJlWIjotdKXfzAhovNXHogpLr18yE7duupx2NmbT8yS4NaTUteAGglDxPp/s2iDZ621OkmopAtqQswpfX5Cx2dOYrjmFbs3PdKLqaD3/uV8xFN9sqecg6/+kLIgCh5UG9d9lmZcnf36G6QblqPXxFsbO9bhfnbN05d0qZqCFiBklbURKODwgr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(366004)(136003)(346002)(396003)(186003)(9686003)(26005)(41300700001)(2906002)(122000001)(5660300002)(83380400001)(71200400001)(478600001)(110136005)(66446008)(66946007)(66476007)(66556008)(64756008)(86362001)(33656002)(8936002)(52536014)(8676002)(53546011)(76116006)(316002)(55236004)(7696005)(82960400001)(6506007)(38070700005)(55016003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elpTZzJNWG9SQm11QlZzcXVMSDJyQ2pUR1JmZVp1K1ZNMFU5WmRxWEFpRllR?=
 =?utf-8?B?SGJLRTBOOE9OYzlqZE1zMDArckRBZ1R1YXpIR0U2SCsrSGNLRTNMazZVcDkr?=
 =?utf-8?B?b2NBN3E0UkFieWlTeVU0OFM4Uk52SGRPQzVKbGVDU1U3NjZ0RDVYWndkQ2xK?=
 =?utf-8?B?Nkd1dXYreUUva05yMW1Icng1YmZtbWFWa0J2aHBIVjRRaEhOdzMveDRRSkRT?=
 =?utf-8?B?RDVQckVuUjdHdyt0ci9xZWlsRXJQZGhyVE5iOGsvVU1TK0N2TnBvbTVpOWZx?=
 =?utf-8?B?bjg5RHNCTThNNG5LQ1ZjTElBZjRFYWl4elNDYmZDckRFWE9xYkYvVWc1Y3Jw?=
 =?utf-8?B?ZVo1NjRaQ1NpT0VRTHRVVG1Zb0xNNytJRVVXT3RHV3gyaCtpQ0k0Zmw2T0Va?=
 =?utf-8?B?eGF5U251aHVoZVp2YzdSd2hTZmN6YjFxeU44Y1lMbVczSTNScWpJT0tpS0hz?=
 =?utf-8?B?YzNLeWluU1B3cjVqTlBPYUx0bzhLclFqV0w1UnNnbVBkbVhnSzl6ck5lY0du?=
 =?utf-8?B?ZEREcDRPcnpIcXRwbzNTUnY4N3YrZFVCL01aZlM2V1ZFeEoydGZiZXlEenMw?=
 =?utf-8?B?WTduTWVIWHdTcGRsK1dEWm4rZGtvU0MveDFzRTA2T0UyeUlEV21YNUNEamVR?=
 =?utf-8?B?Y29rQ2FIU3BtVVVMR2dYZnlVR3NUanlZVFh5M3BRb1VsZzhZZmsrR3RNRjhx?=
 =?utf-8?B?K1lwNVBjc1BnOXlWM2FKWHlKNGFFZmZJenBjSHZsNmRiVjlyRURwVS9qcE5K?=
 =?utf-8?B?R2tjNXVqUkVRS2k5OGhCTmRseVdJZFBHbUNrUEFFY205VTZBeDArTnZ5VnBN?=
 =?utf-8?B?ZHVJWUMvNi9sckYxM3JwK09LOG4yZXhqUU1jY2k1RzhUcWtUZjJQbGs5SjFF?=
 =?utf-8?B?Tld2WU9tblZsTXBuZ3pFamJUZ2xCMWg4NldPTTdFUk9OYlBBVno5QVJYbVov?=
 =?utf-8?B?Wk9TTFhWTnZQUEM1dE1HbUxqc2liTVc5MlJzcC9VaGlwcXNKMktaYzVGbHFa?=
 =?utf-8?B?eURzeU53R3M1ZGRCRTdlclF2S1FJWklYY1orVDFNOG8xaG5wbzIyaDhoM2Nk?=
 =?utf-8?B?Y3FuZ0tOWmxmYUQzbitmSURwNlplbkhKUXZGbnVpalcxaGN0VTd5TTRpemR1?=
 =?utf-8?B?b0VBRXZPZTRwWk1Rc1BBZnBvRnRGOVdBT3pGL3JhSzN1aVVXczJ5TTk2SExY?=
 =?utf-8?B?d01WZ25pUkM3ZEVXVTRWZ2VsNWxlQzhKMzFCcTVhUzJjYlc3YlEwaVVCM0Ix?=
 =?utf-8?B?NFgvN0pMeXpBUktqbnlvSi9tdG5GdlQxbFhNYWtYSHdsVmdsR0s3UVBkaVlk?=
 =?utf-8?B?TGIyckcwaklKZVNtOXJYTDVIMGNPdFJKZ09ndzEzN2dyYU5OVEdXeXVBS2lT?=
 =?utf-8?B?WG5XR0dRZEdhbGZTM1AvK1E2N3RXWUdOTHA0UENZWlRBRFZYWkNEb1B1Sk1y?=
 =?utf-8?B?L1RSYjZYdHk2aTdLUWpidmk5WDBTQkFYM3dTMG12S1FNQlJrVllCREM2WWp5?=
 =?utf-8?B?Tjl0SmRsS1pTazhiWmlmUTUvaWVkTFpFL0FRVEhKRTQxaE13WDhYNUVyTmpN?=
 =?utf-8?B?VjE1UkdWaTNBWGIzMm9PdVFVUmMzYlZWOVAxa0Y1OHRXaUQ2Q01nNEtqYldp?=
 =?utf-8?B?djBYdUI1NXY2TlkwRW43dXRqc2ZkUTJBcVNaVTlpaDRCWlNsenU1a1lRdkdt?=
 =?utf-8?B?ZUl3M2s4dkNXMTg1akNLYzN1OW9vVFR0b3dLZ0RuTkpyM21mNnpEemgreHN3?=
 =?utf-8?B?aUxaTzVQcC9ZSHpSY1R6YU85elo0N1MvbDRvUjhvdWc0MWl3Z2M5bHNVU2E3?=
 =?utf-8?B?a0MybnhTKytkUFd2STNsMmVMYzVsNFpoN2FEU0VFK3VNZUVEcUFhWUlqZVlo?=
 =?utf-8?B?YU91NjFhU2M5bGIxaXh4VDBhMmh6VWtCL0xmdjR6NnROMW9IQS9vdjgzeFBj?=
 =?utf-8?B?YXpwenE1R0NaS0d2S2p3UTVNVjF3YUtPMXNPbUZ6Yks0Z1R1d3BOR2hJNnBq?=
 =?utf-8?B?SmRINWllQjNOaXpsbXJVWXVBTWRmMWMrOWhpYVVEOG4xMHFjT3VSbkNSY1pj?=
 =?utf-8?B?QkN6WGRGQjM4REJLaUxaYUxuNW1WbDdESmlwaWdVNzI5VFVTRDVSU2xpeU5G?=
 =?utf-8?Q?Vm/h4nnVbiIkod1l5EMAYBKwA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 435ebcd5-bd11-47bb-64cc-08da6954a489
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 07:02:28.4514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ccm/VEWErcDouxjG38TCgE7YIdN9+STlUIjm1NWmRh4FCcIYVdZuYVEPNowFp8sFFb6SunjgRWuG8S72qnoT2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOYXV0aXlhbCwgQW5raXQgSyA8
YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bHkgMTksIDIw
MjIgMTE6NDAgQU0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNv
bT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBb
SW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2hkbWk6IFBydW5lIG1vZGVzIHRoYXQgcmVxdWly
ZQ0KPiBIRE1JMi4xIEZSTA0KPiANCj4gDQo+IE9uIDcvMTkvMjAyMiA4OjQ1IEFNLCBNdXJ0aHks
IEFydW4gUiB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJv
bTogTmF1dGl5YWwsIEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+PiBT
ZW50OiBGcmlkYXksIEp1bHkgOCwgMjAyMiAzOjM2IFBNDQo+ID4+IFRvOiBNdXJ0aHksIEFydW4g
UiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPj4gZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkx
NS9oZG1pOiBQcnVuZSBtb2RlcyB0aGF0DQo+ID4+IHJlcXVpcmUNCj4gPj4gSERNSTIuMSBGUkwN
Cj4gPj4NCj4gPj4gSGkgQXJ1biwNCj4gPj4NCj4gPj4gVGhhbmtzIGZvciB0aGUgY29tbWVudHMu
DQo+ID4+DQo+ID4+IFBsZWFzZSBmaW5kIG15IHJlc3BvbnNlIGlubGluZS4NCj4gPj4NCj4gPj4g
T24gNy84LzIwMjIgOTozMCBBTSwgTXVydGh5LCBBcnVuIFIgd3JvdGU6DQo+ID4+Pj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4+Pj4gT2YgQW5raXQg
TmF1dGl5YWwNCj4gPj4+PiBTZW50OiBUaHVyc2RheSwgSnVseSA3LCAyMDIyIDEwOjU3IEFNDQo+
ID4+Pj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4+PiBTdWJqZWN0
OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2hkbWk6IFBydW5lIG1vZGVzIHRoYXQNCj4g
Pj4+PiByZXF1aXJlDQo+ID4+Pj4gSERNSTIuMSBGUkwNCj4gPj4+Pg0KPiA+Pj4+IEhETUkyLjEg
cmVxdWlyZXMgc29tZSBoaWdoZXIgcmVzb2x1dGlvbiB2aWRlbyBtb2RlcyB0byBiZQ0KPiA+Pj4+
IGVudW1lcmF0ZWQgb25seSBpZiBIRE1JMi4xIEZpeGVkIFJhdGUgTGluayAoRlJMKSBpcyBzdXBw
b3J0ZWQuDQo+ID4+Pj4gQ3VycmVudCBwbGF0Zm9ybXMgZG8gbm90IHN1cHBvcnQgRlJMIHRyYW5z
bWlzc2lvbiBzbyBwcnVuZSBtb2Rlcw0KPiA+Pj4+IHRoYXQgcmVxdWlyZSBIRE1JMi4xIEZSTC4N
Cj4gPj4+Pg0KPiA+Pj4gSWYgdGhlIGhhcmR3YXJlIGRvZXNuJ3Qgc3VwcG9ydCBGUkwgdGhlbiBp
dCBiYXNpY2FsbHkgYmxvY2tzIEhETUkyLjENCj4gPj4gZmVhdHVyZS4NCj4gPj4+IFRoZW4gaXQg
d29udCBiZSBwb3NzaWJsZSB0byB1c2UgYW55IHJlc29sdXRpb24gYWJvdmUgNGs2MCBpcyBpdD8N
Cj4gPj4NCj4gPj4gWWVzIHJpZ2h0LiBBcyBJIHVuZGVyc3RhbmQsIHRoZSBIRE1JMi4xYSBzdXBl
cnNlZGVzIEhETUkyLjBiLCBhbmQgc28NCj4gPj4gdGhlDQo+ID4+DQo+ID4+IHBsYXRmb3Jtc8Kg
IHN1cHBvcnRpbmcgSERNSTIuMCBtdXN0IG5vdyBwYXNzIHRoZSBIRE1JMi4xIENUUy4NCj4gPj4g
VGhlIEhETUkyLjFhIHNwZWMgaW50cm9kdWNlcyBNYXJrZXRpbmcgRmVhdHVyZSBuYW1lcyBmb3Ig
NEsxMDAsDQo+ID4+IDRLMTIwLCA4a0A1MCwgOGtANjAgd2l0aCBzdWZmaXggQSwgYW5kIEIuDQo+
ID4+IFN1ZmZpeCBBIG1lYW5pbmcgbW9kZSBzdXBwb3J0ZWQgd2l0aG91dCBjb21wcmVzc2lvbiwg
YW5kIEIgbWVhbmluZywNCj4gPj4gbW9kZSBzdXBwb3J0ZWQgd2l0aCBjb21wcmVzc2lvbi4NCj4g
Pj4NCj4gPj4gVGhlcmUgYXJlIENUUyB0ZXN0cyB0aGF0IGV4cGVjdCB0aGVzZSBtb2RlcyBub3Qg
dG8gYmUgZW51bWVyYXRlZCwgaWYNCj4gPj4gdGhlIHNvdXJjZSBkb2VzIHN1cHBvcnQgdGhlIGdp
dmVuIHJlcXVpcmVtZW50cy4NCj4gPj4NCj4gPj4NCj4gPiBUaGFua3MgZm9yIHRoZSBjbGFyaWZp
Y2F0aW9uLg0KPiA+DQo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0
LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+Pj4+IC0tLQ0KPiA+Pj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMjENCj4gPj4gKysrKysrKysrKysrKysr
KysrKysrDQo+ID4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykNCj4gPj4+
Pg0KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYw0KPiA+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMNCj4gPj4+PiBpbmRleCBlYmQ5MWFhNjlkZDIuLjkzYzAwYjYxNzk1ZiAxMDA2NDQNCj4gPj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiA+Pj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ID4+Pj4g
QEAgLTE5NzQsNiArMTk3NCwyMCBAQCBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoc3RydWN0
DQo+ID4+Pj4gZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBpbnQgY2xvY2ssDQo+ID4+Pj4gICAg
CXJldHVybiBzdGF0dXM7DQo+ID4+Pj4gICAgfQ0KPiA+Pj4+DQo+ID4+Pj4gKy8qDQo+ID4+Pj4g
KyAqIEhETUkyLjEgcmVxdWlyZXMgaGlnaGVyIHJlc29sdXRpb24gbW9kZXMgbGlrZSA4azYwLCA0
SzEyMCB0byBiZQ0KPiA+Pj4+ICsgKiBlbnVtZXJhdGVkIG9ubHkgaWYgRlJMIGlzIHN1cHBvcnRl
ZC4gUGxhdGZvcm1zIG5vdCBzdXBwb3J0aW5nDQo+ID4+Pj4gK0ZSTA0KPiA+Pj4+ICsgKiBtdXN0
IHBydW5lIHRoZXNlIG1vZGVzLg0KPiA+Pj4+ICsgKi8NCj4gPj4+PiArc3RhdGljIGJvb2wNCj4g
Pj4+PiAraGRtaTIxX2ZybF9xdWlyayhpbnQgZG90Y2xvY2ssIGJvb2wgZnJsX3N1cHBvcnRlZCkg
ew0KPiA+Pj4+ICsJaWYgKGRvdGNsb2NrID49IDYwMDAwMCAmJiAhZnJsX3N1cHBvcnRlZCkNCj4g
Pj4+PiArCQlyZXR1cm4gdHJ1ZTsNCj4gPj4+PiArDQo+ID4+Pj4gKwlyZXR1cm4gZmFsc2U7DQo+
ID4+Pj4gK30NCj4gPj4+PiArDQo+ID4+Pj4gICAgc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVz
DQo+ID4+Pj4gICAgaW50ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IsDQo+ID4+Pj4gICAgCQkgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9k
ZSkgQEAgLTIwMDEsNiArMjAxNSwxMw0KPiA+PiBAQA0KPiA+Pj4+IGludGVsX2hkbWlfbW9kZV92
YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+Pj4+ICAgIAkJY2xvY2sg
Kj0gMjsNCj4gPj4+PiAgICAJfQ0KPiA+Pj4+DQo+ID4+Pj4gKwkvKg0KPiA+Pj4+ICsJICogQ3Vy
cmVudCBQbGF0Zm9ybXMgZG8gbm90IHN1cHBvcnQgSERNSTIuMSBGUkwgbW9kZSBvZg0KPiA+Pj4+
IHRyYW5zbWlzc2lvbiwNCj4gPj4+PiArCSAqIHNvIHBydW5lIHRoZSBtb2RlcyB0aGF0IHJlcXVp
cmUgRlJMLg0KPiA+Pj4+ICsJICovDQo+ID4+Pj4gKwlpZiAoaGRtaTIxX2ZybF9xdWlyayhjbG9j
aywgZmFsc2UpKQ0KPiA+Pj4+ICsJCXJldHVybiBNT0RFX0JBRDsNCj4gPj4+PiArDQo+ID4+PiBJ
bnN0ZWFkIG9mIHNldHRpbmcgdGhpcyBmcmxfc3VwcG9ydGVkIGFzIGZhbHNlLCBjYW4gd2UgZ2V0
IHRoaXMgaW5mbw0KPiA+Pj4gZnJvbSBoYXJkd2FyZSwgc28gdGhhdCB3aGVuIG91ciBoYXJkd2Fy
ZSBzdXBwb3J0cyBpdCBsYXRlciBpdCB3b3VsZA0KPiA+Pj4gYmUNCj4gPj4gZWFzeSB0byBlbmFi
bGUgdGhpcy4NCj4gPj4NCj4gPj4gV2UgY2FuIGhhdmUgc29tZXRoaW5nIGxpa2U6DQo+ID4+DQo+
ID4+IHNyY19zdXBwb3J0c19mcmwoKQ0KPiA+Pg0KPiA+PiB7DQo+ID4+DQo+ID4+IC8qIEZSTCBu
b3Qgc3VwcG9ydGVkIGluDQo+ID4+DQo+ID4+IHJldHVybiBmYWxzZTsNCj4gPj4NCj4gPj4gfQ0K
PiA+Pg0KPiA+IFllcyBzb21ldGhpbmcgbGlrZSB0aGlzIGxvb2tzIGdvb2QuIEl0IHdvdWxkIGJl
IGEgZ29vZCBkZXNpZ24gdG8ganVkZ2UNCj4gPiB0aGlzIGJhc2VkIG9uIHRoZSBEaXNwbGF5IHZl
cnNpb24uDQo+IA0KPiBJIGRvIGFncmVlLCB3ZSBuZWVkIHRvIGhhdmUgdGhpcyBjaGVjayB3aGVu
IHdlIGhhdmUgSERNSTIuMSBzdXBwb3J0IGZvcg0KPiBhbnkgcGxhdGZvcm0uDQo+IA0KPiBJbiBm
dXR1cmUgcGF0Y2hlcywgd2hlbiBGUkwgdHJhbnNtaXNzaW9uIHdpbGwgYmUgZW5hYmxlZCwgYXQg
dGhhdCB0aW1lIGl0DQo+IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gY2hlY2sgZm9yIGRpc3BsYXkgdmVy
c2lvbiwgYW5kIHBhcnNlIGZyb20gVkJUIGFib3V0DQo+IHdoYXQgcmF0ZSBpdCBhbGxvd3PCoCBl
dGMuDQo+IA0KQXdhaXRpbmcgcGF0Y2ggd2l0aCBoYW5kbGluZyB0aGlzIHByb3Blcmx5IQ0KUmV2
aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQpUaGFu
a3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tDQo=
