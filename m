Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16DE777660
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 12:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D3210E4F8;
	Thu, 10 Aug 2023 10:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACFDB10E4F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 10:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691665178; x=1723201178;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CYGHTEA2j0qs+lwjUNEUpJxoG/ABip7HFjkrM/MyAtI=;
 b=NbEk0G35OK7Lga267JiNfZCPavz0063ThNUEMAoOLUCnGn94jur/wAAN
 4JJPYLrREZfnRaKiRIsV1BDgkIOOd80VD+xQqojIwKSLmODEU23tqclF3
 ri8wxIoEOlCTTBkJI5vRVey2q59yN/c56qW4elh3dwKlKjNDpiap0bNVE
 fDdZ9SFOG5c/AapWtulV098LHZ8Wu66GXfy8oI4PSntPHIWCQCQ5cZZr3
 AXoQANMmk2FsX3gCdEJbdIjC3GvzFsGY6nDVLDBLIosO8k8n04G4oSpcB
 jA0UKS32SFqMKP9MK71fr45DzyQeEpC9EhB1x0/8pw9+bwSAXAJFV8oyX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="437719865"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="437719865"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 03:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="846342044"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="846342044"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2023 03:59:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 03:59:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 03:59:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 03:59:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 03:59:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVIWbuZCw9ECElXbYTWx+MLNwN7Sn+0jtRvYFLy5QzKYc0+9SS8z0+pwyoHCQmfj7026GlNKbAyjxSbHH8/AtEBVgHNGimPh3hCGARRRlkDGFv65zQXyfBt0WwjxgsSxLOjnxUv9TDtyZp3QWIcmINSYrPkxBjbpacPyl2/Jxw0w28rs/BOElLivPVwKqqjm1cdIPFWZNFDhspwlnWxKvuwY7k4XHBIyz5KlOXqHz5gOrFN1B8NUjyX+CzfJtvllcQRM6ySwqBq0re83ZqTaA68idH5eY9k5PFmSVQBcUClvXrZSTPTsNR1sCoOWfkEdW1bg3K06XJoZ5ggamUkUCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CYGHTEA2j0qs+lwjUNEUpJxoG/ABip7HFjkrM/MyAtI=;
 b=ArDhUse71WjBpYg14T5UXjx5OnYvy1kvYKG/ge6LleOOAtiM4x6mRojSKubc5ZzoJ5z/HNiPUjwvJkxE7YqYCtChRTSHZ77SYdtTA+YsIPRAZsGqYcy8oliJoSYESHxYeXG0aUot3F5gWB2UkTSxPfMcGH1tZz+JWoDN5EGRoQ/68kOeTSCyKpba+YQ3pV9X8O3qPjanQQIlnJrzysuuFqaAZf3oblTKdRdIhNgWf++As30SzQkz39+YenCMsppz1kTdSCBlj9axs0zxAPCPO6jaqRsf34OHG4IN0SSqY1lBbIguWkEWVGMwRFgN2QwhYzkoZBael2mdxsEkDPnfWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB5963.namprd11.prod.outlook.com (2603:10b6:208:372::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 10:59:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 10:59:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 6/6] drm/i915/panelreplay: enable/disable panel replay
Thread-Index: AQHZwVL0AF3hEWHNrkWJmIqvYT67B6/jcNUA
Date: Thu, 10 Aug 2023 10:59:33 +0000
Message-ID: <ba3d8efa58f3587526227050cb478864038b2369.camel@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <20230728124609.2911830-7-animesh.manna@intel.com>
In-Reply-To: <20230728124609.2911830-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB5963:EE_
x-ms-office365-filtering-correlation-id: 84a6fea6-32d3-4d3d-f213-08db9990e14e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6GILw21SODUFAHKjHe5Bzj76qv+LCV98ApG2MuReOgE9CMaToYlQ2Z8W3wEGXx7Sv55lGNgGnldR1ZPCroLsosIUaM/JiVj2eSRPZenaVCiEk0dR7KFWeB1SmGRK5jCveVwk6AGQXFrso+UIXzmzIY61MDT3Cn3tGM5HE1bxwoJRDAdAIAA4EOmtU8DIhSlTODMpTSQ3g1Rdne693eGEQv7X7Md0rRXVA0kowgF67PKMrMTy1jGkPw5nKHkDkozcjY0ViiLmVXggb4x0qMp9VmvvpOojnMabnPSuNQ6HNPa/Jv+WwSG10/Vm2KVqOHMKAb7YQJaSqcBPosYhTKvCtJb4xk4FP9crWvJWWJL3QwGpLzwmLQiYGD14nEQSEolaeEOmADlykWUnpMkZMTZkuItaP8xPTnA1RE+ZBq/GuHZd41Ku+0YwNrYdptMvFwrg53//rIQOEAUwaevenUssElIkLhRo4gzKdMLAFmCqYPX1D/kR8gEOdYG295HAJJpFq4tAVnsuRaN/IzKuVgqzhXghF35r8YCfomwAJntnxDwY41K4PJA+Z54Z6857IIrSCwOElxwSOYe3cqsHW84r9maM/zBTFW9hhVkD9aefvPcnZAh996LEroR0CFEJ+ADB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(136003)(39860400002)(186006)(451199021)(1800799006)(86362001)(5660300002)(38100700002)(110136005)(4326008)(66476007)(66556008)(66446008)(66946007)(76116006)(64756008)(107886003)(38070700005)(8676002)(83380400001)(41300700001)(8936002)(478600001)(91956017)(316002)(2906002)(71200400001)(82960400001)(66574015)(122000001)(2616005)(6486002)(6512007)(36756003)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2E2S2tXMFdNUEFNeTRuVGVLYlhpeUd6a3pGNTNlWERZeEZ1cEZJUmdjYkVU?=
 =?utf-8?B?QWJmTFpwU285YXYvN0NVWlVMOXRXRUtRaHo3Q01XNEVERWl1SEdWWk43b2dS?=
 =?utf-8?B?NUZPdWtmMUd5SVJjdkl1eUZKSUxLcXBHNVo4bVY3cU1XQTRvaDlmc2U3bUh0?=
 =?utf-8?B?b0VwMlhadDRuU20rcHJGZWNUcWpiWUNMYmF6a2ZDcWpJOGkxb25IbVpDbS93?=
 =?utf-8?B?bWpLSW1RSWt3OS9LTnJ0NUpsWkVRY1NWbE91S1VWSmdyNldlYXc2MVhFMksy?=
 =?utf-8?B?VnV0NllLdHZuUUdGREVEUGVYUkVLSW9FZ040eFh6Qzh4ZitKUzdvQkJzdEIw?=
 =?utf-8?B?cHJUWEkzSnJQelRFVmlUQytVcHJ4ak9uaW5icTdSdHFaZnFYd1ZKOHJ1WmNG?=
 =?utf-8?B?NS9DeGtXeDUzT2xvM281VUUvSVZEd2tTUHVNMzJLQmVOUys4NUV4U0VETUNV?=
 =?utf-8?B?bnR3WE40MjhKQXBKMkQvejh3WnMvcjFFSTZwQVVzRzBZK1NrdmVvNW9uSFc5?=
 =?utf-8?B?ejNkeFE5MzV5ejRJTm43NWtGOFp6N3Z5enNsdDZ3VktPY2RWT2V3NHd6MVQ1?=
 =?utf-8?B?dHZoS2FrWXg1aXRXUkxEd3Rqa1FRRDdlUjdGN2VMclpuWDJ0dEZWRlB4cU1t?=
 =?utf-8?B?VVB6aEY1MGRJMnlGNXZSN29sZUEzcFhOZkZFQ1ozVGUxaTRYVHZlcXdYTDVK?=
 =?utf-8?B?QlBxdndDR05lQ1hZa1RydnR0SDZSOWhMczFCUEJ0YTJvbktvK1A5dDJIV1pZ?=
 =?utf-8?B?UGVkdTd0OXZpb0k5dkNDdldaTTN2MytwVXNHZWR5VVlicWNoR25XVGNpQ2pX?=
 =?utf-8?B?Tm5iaGgyaFM4VWJSbzJqWmhQbjExSFc2WCtWM00vVzRLUXpmMmNxWVNwZEFX?=
 =?utf-8?B?MXVPbjh1TytZTFVTamdtbVR4bUpzeklLeXNhYTc5eWZZZkVHcXVSU3dmckpZ?=
 =?utf-8?B?NjQrQlBNQmhZMXBXWnlLLytzdVJ2NG02S2o4QVJna2xka3RwZi9zOVh6b0pr?=
 =?utf-8?B?cktORkNKSi9vS0Y1TnB2bmgzS2lrR0hxQVVUR3lSMzBCR1BjclptdjhaSEFa?=
 =?utf-8?B?bnI3dlRNZ2pQTEsxT0Q2RUlPWTVPZ2xWMFUyNThuSlR3VEtSczJ5ckZSRE5j?=
 =?utf-8?B?c0c5ZGE4bFNVeVIxRm83NkRhcTgxSDhHWW9xV3RYM2NFdUROOUU4VWRER094?=
 =?utf-8?B?VmF2VHlTT3VhUHBGdVo5bjhhYWNkZDBhYjlZYkg5azRSMEVtaE00L01SRUZ4?=
 =?utf-8?B?bENPdDduOGhSZ2NvQi9wTVd1bjZjRzJMRlA0TmQ1dHRBZXdRY0JQVlFhNDdB?=
 =?utf-8?B?VG5PcFFsb3Jhck1RMUR6SGgzb3ZSb1UvZVBjWDVZWlJDOEdGN3ZobURrcndV?=
 =?utf-8?B?SzBYcnU1MVNhZUtaUzJaSXF0Znc4MnZPd0ZaNEp4Q2dFYTV4VHQ4eGtBZGxF?=
 =?utf-8?B?ZzFNdVI1THZUWlJCdjNUUjlPaGliYlRieHN1Qm1ubDRvakllYTE4TzhhSE0x?=
 =?utf-8?B?Zi85WmNJUDV1WUlCNHhvNjdsNmdTQ0ZvK2h1aUtEM1VaMGp2aXlqb1ZqLzlH?=
 =?utf-8?B?emcvSEdvenN2QktGTnpxZGNXa1hUdE5uWjVmNnpJeTJEbjE1VUZuT3FEOTFl?=
 =?utf-8?B?eGZRNmRwSGR6L1lVNkllSFdhbWg1UmU1TG9BbFN6SklnRlNTc1cvL3U1aGtT?=
 =?utf-8?B?SDNTSVljaVZyWXkvVkJJMUVaYU11cXducGNaa2x6cGtmcGFneGNvZ2tQanZJ?=
 =?utf-8?B?akZ6ck5Cc3Qxa0VrYi9FT2hqaDIxVnZXL250VS9sRkN3Q040eHM0QUlocjN4?=
 =?utf-8?B?K3g3d1Vobk81bnN1SVBHUjRsQVNmd2RJMUEyb3hDYk9xOU0vdjZEZzJ4VmtH?=
 =?utf-8?B?U1I1c3hobm0vNWNQYVhHQUNLRjRGcGZWUStYT1FXdUpONzJEeWVVRjFFSjRY?=
 =?utf-8?B?Zk1tTlhQYVVsVVBzRzlRYVBnWkxpdDRCUnc0ZlpCemp3ZUZza1ZzT1pDVWt2?=
 =?utf-8?B?ZjhkTmF4UmhFY2FOS2QrcUpldGVPVGlNS1BCSmppb1N4SDkvK01lV3dTSDhI?=
 =?utf-8?B?Zzk0ekNJYWFTdERhYTBMZnREbTVlK1M4dVlsREVJN25SL3g5MXlYb2xyalJO?=
 =?utf-8?B?ZlhwU0dCZkJJeG1wQk9oZ0tmS3p5STc1cUtmUWYxTDJtOFlyQnMvZUNNcGtR?=
 =?utf-8?B?YkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FF733DD82EFEB74C9695AA8E08252FD4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a6fea6-32d3-4d3d-f213-08db9990e14e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2023 10:59:33.7183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7wbW/4stRl5/nQR6gc7aL+T9cl5bbb362UM0DLteZkxbwFEa0oJChgCsA9duk4L4E72qKE+TGtVTqsUH3leaqbtwGcamV0l1jfZLeSGtDcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5963
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915/panelreplay: enable/disable
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

T24gRnJpLCAyMDIzLTA3LTI4IGF0IDE4OjE2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IFRSQU5TX0RQMl9DVEwgcmVnaXN0ZXIgaXMgcHJvZ3JhbW1lZCB0byBlbmFibGUgcGFuZWwgcmVw
bGF5IGZyb20KPiBzb3VyY2UKPiBhbmQgc2luayBpcyBlbmFibGVkIHRocm91Z2ggcGFuZWwgcmVw
bGF5IGRwY2QgY29uZmlndXJhdGlvbiBhZGRyZXNzLgo+IAo+IEJzcGVjOiAxNDA3OTQwNjE3Cj4g
Cj4gdjE6IEluaXRpYWwgdmVyc2lvbi4KPiB2MjoKPiAtIFVzZSBwcl8qIGZsYWdzIGluc3RlYWQg
cHNyXyogZmxhZ3MuIFtKb3VuaV0KPiAtIFJlbW92ZSBpbnRlbF9kcF9pc19lZHAgY2hlY2sgYXMg
ZWRwMS41IGFsc28gaGFzIHBhbmVsIHJlcGxheS4KPiBbSm91bmldCj4gCj4gdjM6IGNvdmVyIGxl
dHRlciB1cGRhdGVkIGFuZCBzZWxlY3RpdmUgZmV0Y2ggY29uZGl0aW9uIGNoZWNrIGlzIGFkZGVk
Cj4gYmVmb3JlIHVwZGF0aW5nIGl0cyBiaXQgaW4gUFNSMl9NQU5fVFJLX0NUTCByZWdpc3Rlci4g
W0pvdW5pXQo+IAo+IE5vdGU6IEluaXRpYWwgcGxhbiBpcyB0byBlbmFibGUgcGFuZWwgcmVwbGF5
IGluwqAgZnVsbC1zY3JlZW4gbGl2ZQo+IGFjdGl2ZQo+IGZyYW1lIHVwZGF0ZSBtb2RlLiBJbiBh
IGluY3JlbWVudGFsIGFwcHJvYWNoIHBhbmVsIHJlcGxheSB3aWxsIGJlCj4gZW5hYmxlZAo+IGlu
IHNlbGN0aXZlIHVwZGF0ZSBtb2RlIGlmIHRoZXJlIGlzIGFueSBnYXAgaW4gY3VyZW50IGltcGxl
bWVudGF0aW9uLgo+IAo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4KPiAtLS0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aMKgwqDCoCB8wqAgMSArCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jwqDCoMKgwqDCoCB8IDMyICsrKysrKysrKysrKysrKystCj4gLS0KPiDCoDIgZmlsZXMgY2hh
bmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXgg
MWZmN2U2YzAzYjQ0Li40MWZiZDQ5MzkzZjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IEBAIC0xNjk2LDYgKzE2OTYs
NyBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsKPiDCoMKgwqDCoMKgwqDCoMKgdTE2IHN1X3lfZ3JhbnVs
YXJpdHk7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgc291cmNlX3BhbmVsX3JlcGxheV9zdXBwb3J0
Owo+IMKgwqDCoMKgwqDCoMKgwqBib29sIHNpbmtfcGFuZWxfcmVwbGF5X3N1cHBvcnQ7Cj4gK8Kg
wqDCoMKgwqDCoMKgYm9vbCBwcl9lbmFibGVkOwo+IMKgwqDCoMKgwqDCoMKgwqB1MzIgZGMzY29f
ZXhpdGxpbmU7Cj4gwqDCoMKgwqDCoMKgwqDCoHUzMiBkYzNjb19leGl0X2RlbGF5Owo+IMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgZGVsYXllZF93b3JrIGRjM2NvX3dvcms7Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCBmNmIwMGFiZTkyZDQuLjI0NGZi
MzM2ZjZiYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+
IEBAIC01OTksOCArNTk5LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhz
dHJ1Y3QKPiBpbnRlbF9kcCAqaW50ZWxfZHApCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+IMKgwqDCoMKg
wqDCoMKgwqB1OCBkcGNkX3ZhbCA9IERQX1BTUl9FTkFCTEU7Cj4gwqAKPiAtwqDCoMKgwqDCoMKg
wqAvKiBFbmFibGUgQUxQTSBhdCBzaW5rIGZvciBwc3IyICovCj4gK8KgwqDCoMKgwqDCoMKgaWYg
KGludGVsX2RwLT5wc3IucHJfZW5hYmxlZCkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsCj4gUEFORUxfUkVQTEFZX0NP
TkZJRywKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIERQX1BBTkVMX1JFUExBWV9FTkFCTEUpOwo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gK8KgwqDCoMKgwqDCoMKgfQo+ICsKPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIEVuYWJsZSBBTFBNIGF0IHNpbmsgZm9yIHBzcjIgKi8K
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNkX3dyaXRlYigmaW50
ZWxfZHAtPmF1eCwKPiBEUF9SRUNFSVZFUl9BTFBNX0NPTkZJRywKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9B
TFBNX0VOQUJMRSB8Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9F
TkFCTEUpOwo+IEBAIC03NTAsNiArNzU2LDE4IEBAIHN0YXRpYyBpbnQgcHNyMl9ibG9ja19jb3Vu
dChzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHApCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBw
c3IyX2Jsb2NrX2NvdW50X2xpbmVzKGludGVsX2RwKSAvIDQ7Cj4gwqB9Cj4gwqAKPiArc3RhdGlj
IHZvaWQgZGcyX2FjdGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9k
cC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RlX3JtdyhkZXZfcHJpdiwgUFNSMl9NQU5fVFJLX0NUTChpbnRlbF9kcC0K
PiA+cHNyLnRyYW5zY29kZXIpLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMCwKPiBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElB
TF9GUkFNRV9VUERBVEUpOwoKVGhpcyBpcyBkZWZpbml0ZWx5IG5vdCByaWdodCB0aGluZyB0byBk
byBoZXJlLiBJdCB3aWxsIGJlIHRha2VuIGNhcmUgYnkKaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5z
X21hbl90cmtfY3RsIHdoZW4gd2UgZW5hYmxlIHNlbGVjdGl2ZSB1cGRhdGUKZm9yIHBhbmVsIHJl
cGxheS4KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+ICsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9k
ZV9ybXcoZGV2X3ByaXYsIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtCj4gPnBzci50cmFuc2NvZGVy
KSwgMCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVFJBTlNfRFAy
X1BBTkVMX1JFUExBWV9FTkFCTEUpOwo+ICt9Cj4gKwo+IMKgc3RhdGljIHZvaWQgaHN3X2FjdGl2
YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiDCoHsKPiDCoMKgwqDCoMKgwqDC
oMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9k
cCk7Cj4gQEAgLTEzNjEsOCArMTM3OSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfYWN0aXZh
dGUoc3RydWN0IGludGVsX2RwCj4gKmludGVsX2RwKQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJmludGVsX2RwLT5wc3IubG9jayk7Cj4gwqAKPiAtwqDCoMKgwqDC
oMKgwqAvKiBwc3IxIGFuZCBwc3IyIGFyZSBtdXR1YWxseSBleGNsdXNpdmUuKi8KPiAtwqDCoMKg
wqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpCj4gK8KgwqDCoMKgwqDCoMKg
LyogcHNyMSwgcHNyMiBhbmQgcGFuZWwtcmVwbGF5IGFyZSBtdXR1YWxseSBleGNsdXNpdmUuKi8K
PiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5wcl9lbmFibGVkKQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZzJfYWN0aXZhdGVfcGFuZWxfcmVwbGF5KGludGVsX2Rw
KTsKPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGhzd19hY3RpdmF0ZV9wc3IyKGludGVs
X2RwKTsKPiDCoMKgwqDCoMKgwqDCoMKgZWxzZQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaHN3X2FjdGl2YXRlX3BzcjEoaW50ZWxfZHApOwo+IEBAIC0xNTQxLDYgKzE1NjEsNyBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QKPiBpbnRlbF9kcCAq
aW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBp
bnRlbF9kcC0+cHNyLmVuYWJsZWQpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5w
c3IucHNyMl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjI7Cj4gK8KgwqDCoMKgwqDCoMKg
aW50ZWxfZHAtPnBzci5wcl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3ByOwo+IMKgwqDCoMKg
wqDCoMKgwqBpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9IDA7Cj4gwqDCoMKg
wqDCoMKgwqDCoGludGVsX2RwLT5wc3IucGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+
dWFwaS5jcnRjKS0KPiA+cGlwZTsKPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci50cmFu
c2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7Cj4gQEAgLTE1ODYsNyArMTYwNywx
MCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZXhpdChzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxf
ZHApCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqDCoMKgwqDC
oMKgwqDCoH0KPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnBzcjJfZW5h
YmxlZCkgewo+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnByX2VuYWJsZWQpIHsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfcm13KGRldl9wcml2LCBU
UkFOU19EUDJfQ1RMKGludGVsX2RwLQo+ID5wc3IudHJhbnNjb2RlciksCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUUkFOU19EUDJfUEFO
RUxfUkVQTEFZX0VOQUJMRSwgMCk7Cj4gK8KgwqDCoMKgwqDCoMKgfSBlbHNlIGlmIChpbnRlbF9k
cC0+cHNyLnBzcjJfZW5hYmxlZCkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dGdsX2Rpc2FsbG93X2RjM2NvX29uX3BzcjJfZXhpdChpbnRlbF9kcCk7Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCA9IGludGVsX2RlX3JtdyhkZXZfcHJpdiwKPiBF
RFBfUFNSMl9DVEwoY3B1X3RyYW5zY29kZXIpLAoK
