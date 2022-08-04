Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF32589BB7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 14:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9FB975D2;
	Thu,  4 Aug 2022 12:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFFF975CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659616258; x=1691152258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VPMgrtw7gyxvDOoQmfsVttQg4oTHuYktlw/C0ldlnG8=;
 b=MwhKiwYmK6RG0w7XtpqheWaMSTlfIB2AIB82lqqci8Ex8y2TuGF3+4mm
 pq0oa+zcj/eoTQzmQKzRsvqncfxU8PCWMIYuoKhKQlxGVtcR2B1F+Sjjs
 bXtO9wqcLzPRJrrxT+pxDOQ8K5PQH+CbYODcevjSiHplcbolvQljzsajq
 ts+c/nKUpNfhvIjN+vRHdUDtygEzsttQvxb5/x0S7YjcZ6rYF1d4ZwGfF
 SgXF/ZRjtHAzEn/BhuQoPgvSCHsuIHqT+XyRqL1fkmbtO40651O9bxmhr
 FpbVPGzIklvWG3RdOr5PIGEB8n2mNQw+nbrmxTsM/AhjZFx+rB6exy8qG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="276838112"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="276838112"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 05:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="662515857"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 04 Aug 2022 05:30:56 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 05:30:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 05:30:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 05:30:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mrogz35iSVHnTZX/6ahDMHfQsFfMBqO44/wKIOGm4jXsP9yeF1MPo76CtMiX6kgxcVrfyOsyo/YTIpGCAkiEIKXBe7WLEiehUAfscx92t/LBgIgLGR8lOuldIFCpKI2RQlMpjjECBVB8M4+oDQjtjsBidEtMboXifH74uMZe86Yhabdyf65Gj3IVgis4mH3tcstDBkIILGpukbf3344FhkWUQPoRAbbkooM+KNo3pbxCxbyhQSurzGrE/2nf6qbluW9labCovLsC1MNefZO2+oDbQkS3NM37VsrGa4OJk8bB474+GiQyQ6H7JsDs/w6GGJ8PZLNIxNOlhVeBeQDldw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VPMgrtw7gyxvDOoQmfsVttQg4oTHuYktlw/C0ldlnG8=;
 b=dT1AOBvWDNqyw8saP1qLhIdIylwCh+RdbHKCtZbGQ57Cl2GkDFnU8ibGHj+DwRz3UbjZJM1aEizSPLPh1KYMLj/7gS6e5FjAF+oQF3q4OH0Hw6B69ZwXGnhUAF4PUMDZWaTIPDHAgb4KvHJQfvisQqel2p1snvM8ssID/1/zarhtPwlF39hqhctYXqepYsQp8fKzsTh2CpaZu0HI+wSMtl85ifVC6xrWfg2VPGSY4cVvpRwKKBZKVCvMhQSHcQBa1QFcZ+tBMOcO9zFGx5R6ykLnNRpcbtC2RRhOJAxhAqwACBIXyZy+EnqjySpg/o99jwY8+tQYEh3nR5y1IWPHyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BYAPR11MB3237.namprd11.prod.outlook.com (2603:10b6:a03:1e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.14; Thu, 4 Aug
 2022 12:30:53 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79%6]) with mapi id 15.20.5504.014; Thu, 4 Aug 2022
 12:30:52 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>
Thread-Topic: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYnOb/v+1MXmvomUmaaCwLzsl/3a2dtiSAgACXUwCAAHTLgA==
Date: Thu, 4 Aug 2022 12:30:52 +0000
Message-ID: <801e4034e85164d83517bf0a20d9f31f6675fd76.camel@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
 <YurbEfhNA53uoNlk@intel.com>
 <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: acddff9c-2fe8-45c9-ab4e-08da76152bc6
x-ms-traffictypediagnostic: BYAPR11MB3237:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b1LyVOmYrQqZYG4MMOxFTWD1JsCIYzQ4PxSGGqwgustCQU757G596KTbES5IMHZeBgub2jEKaFKU3612hxCNaOQkgI+dGAeOZxahNANyTqSCqEFZtF2wNfnLDOytXL3DAV1tyqIDBeeCk2tRTVbvyofnGFWELgMXnehaanCj9yV/+GOT3+5tgeS5kN7MVGPQSa5SKRf/HHmWenfa4Ax8rurzWinmeDQ76GCV0s+vkiBgtTzkLvQxUUVlcK/S3QUNeSYmRX/WBgnvKOiipE1V24XwyxzSDcez/B7uLipWoaLJEL9YAKaBJKvbJLUSKhOa/dHOxFUhK46H6UhFqHKiqn2O6buvAq9Rf2ze25t5E4mluhZEhQYgaA8DUs8eRzm2/qsFb1rmXHTHWPv0a6MFIbetusTX2Z3GLyLFxnVL2Bs5QI21STOHKMQyxI9C4QpsT8WulcPBsYgg+tPetWLijlmkVKAuG81jw/L84/aE1oSxxPhQksIqGGB7z/Vx4nY4oJkMRvSZKD6uvFZVGYupZpq8tuOCPgME7X67Q1HsXJS67AJ9QG1H6QuwpulL8qDPp2V5xnmNEiREPtEOboB/9hTkUMkJZTNCfGcY84Te63ASQfBHPAbkiCzCgwarPw91okgXOLc2jVH/37SOan4JOdyHIruq3Q9Y3wTcOFQSizYHeXgDaRA/GWGMsbEc9nG3y4QwByvpOM7SHuNTO7tK08BbUhSK4Aql2EK00ifwaiY9mx4t2v5JW6vQEODe/3M/P4Az8lMGFlQBWjZLn5qtJDXelBHyxHQZATw+p1cjI5o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(376002)(39860400002)(346002)(136003)(83380400001)(316002)(122000001)(54906003)(41300700001)(37006003)(6636002)(6862004)(2906002)(38100700002)(8936002)(26005)(86362001)(64756008)(66476007)(2616005)(66446008)(66556008)(8676002)(71200400001)(6512007)(4326008)(36756003)(53546011)(186003)(91956017)(82960400001)(6486002)(38070700005)(5660300002)(76116006)(6506007)(478600001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b09LSEVWREJUZm5PTlFheVdpZUZDZTNpVzFQcWVCZmhWRnlnbW4zcWdpcTE1?=
 =?utf-8?B?L1JGbXJBZHpra1VhampXTjh2SjJ2OU9jeTZ1Ymk1TTN4dVpyUHlpektGUlZk?=
 =?utf-8?B?U3dJa1N1R050OUY2TklHQXJlVUhNOG9QS3dMb2RnNGFBQVkxZFlkNG5neUpF?=
 =?utf-8?B?QXZ0UXRLQnRxWUVHejRXMDFSZnAzVDF6UkUxR3lHd0gwSFBBbklRcDZrY2Fy?=
 =?utf-8?B?cUlUTHVtWURvdnlaK2lLbzNqUUdhaFdaTVZkTFZMcmViSGNGTlFtWVpFR2Za?=
 =?utf-8?B?UUovMklFTG1JV1E1TlBHd09SaEFTYkdMVWtRdm5GYTRNSXpHczh6VnkwRVJR?=
 =?utf-8?B?bXhwRFZ1Szc2TDJIeVdrMTdyS0hyUUM3azZnbkg5SnAwbnZCOUdzT1l5VHcx?=
 =?utf-8?B?U3doZXVsVS9RcHk3SDRlamhFbExKSHg2WWRDYTVaSnQ5VEJVMHgwaDRtU3Fs?=
 =?utf-8?B?OW55MTNDUHZMaGNwcXhxbThsbnNSMkZDR2JWWFhSbWlCZXJtdktJNEJXb1Ux?=
 =?utf-8?B?Z2VXTk1WQTBHWkJQczhGazgwUDVEZEplMkQ1YlhoNlhQS28rOStkU3FTRXIv?=
 =?utf-8?B?bFpJSjIvbGlnNmxtdm5oWENwaHAyU1VNaDI2Z0kvYzE1K1ZOQnEwYVBURFM1?=
 =?utf-8?B?bGVJcnhQUVpENWZzZ3R2QU94R3FwaGZsMm96MGVHTnpybW0rc1c0cWxEZ2JW?=
 =?utf-8?B?NE9KazBIUDNzcERjZDZTSnlobjNWelZ3cWg3MUttSWswcUdZaWpzMWQvZFRn?=
 =?utf-8?B?YnhsUXdQbml2VU84QkNKemlMMWxBSUEyQTEyVDg0bFA2YVo4RnQwMXl5VFJZ?=
 =?utf-8?B?dDFDVEVBYTZmQ2tpdTV5bzV6RWFYUDYrTFlFcFprZ0JPekxVTUVVeGQwWlJ2?=
 =?utf-8?B?d0hiRjJHN0p2SkwreGFQdXlTMFF0eTY4amNMSWFDVEJCckl6OGQ3NTRtOHpv?=
 =?utf-8?B?UVJ6aFhYTHZ5dnNpREwrenlUdnpGeW9ZZUV4N2xLKytrc3FwTGVIWHM5NE1L?=
 =?utf-8?B?UENrNTNtUzczZ0tTaFQrbGZ6bFlNdVI2NjBoR05EOUdPQkhYY1RQaGtDLzFP?=
 =?utf-8?B?ckV6OHorZFFXOFBpbDRZRk52TzFjSE1zYm1NekpQZS9MR1ZqQkdLVXBRaFpz?=
 =?utf-8?B?L3JKc1FlYnN4MytmTUdvZk12UzlBcUZnQm4wTXlvMG0zeTNhSlJzVFhvQnU4?=
 =?utf-8?B?bEZvejdGdWlrMUlBRXFDZy9Ed0hLWU9IMHNmRnNEendaWjd6R2lvWU1rYUVX?=
 =?utf-8?B?MXhzTHZrQWNYM2YrbERvS0lKZy9tbXlPSG5tRVhmM2laa29EMlNob3NmWDM1?=
 =?utf-8?B?ZnlHenhNaVk5VmhXMFhHZzVUMlU4OFF5Z08yc013RXpFQXNJeUhBOVVGenJy?=
 =?utf-8?B?TnBXZDRaa1NuRUxOT25FU0dnbjNUTmViMHlFdnJ0bmpjWitoc3J2bE5kSGtu?=
 =?utf-8?B?UVc3VnE0VEYwVHBsSFZYMzkzQTR4NUVLendlaUllTWI1UWEwRmdjQk53UURE?=
 =?utf-8?B?Sk9UZFJkbFJoL09oZ2VwWTdkUEJWUEFmSnluUjdaMUNCbWdMOVRab01LQll5?=
 =?utf-8?B?T3ZPaHphWEFqaFAzYkNzTGZETWJxY1E3K3lqVXdMbUQ4emFjdm9HUTZuSkNk?=
 =?utf-8?B?M3UwdXI2d0F1V3hISis2S3FoeEhBaGVnQmFkVEdXRGpxRGxVd3dQeFJSZGl2?=
 =?utf-8?B?dzloaWVTZVFaZzRpeThhcWVUTEd2S2g1cllGdFozWFN4TTI0TUIxZ2RMR2Z1?=
 =?utf-8?B?M0lNb2RVd2sxWVlSM2o2THNqay8xR1JEYUlxVWFVWGRZbkdTK0xRYUJJeis0?=
 =?utf-8?B?QzZySDVtL09ZbStzZUV5ZGN6dXY1T3gyOWpneG5hUjFERmo4OWphUVY1d05p?=
 =?utf-8?B?Q21pOUswNnN4UVhieVNEU25IWnk4SVc2c1FqK2tvaDZ4UStYTFFnRSs1dXA4?=
 =?utf-8?B?b2o0VlJ3ZmwzUTFlTFR0K2s5S1VYbnVTeFdpaDZxQ3F1WFVqcmRUWitvamsz?=
 =?utf-8?B?c0VFbGxGTE8xUDZIbTZFWXdaTit3WG1KcStsUVZqWVNJU3g1VWRTSlJucW92?=
 =?utf-8?B?R0JvdDBxdHljN2J2T05oUElDcWZVc0pzSXVXUjM5a3lJRVhvc0JHbkNuN0g4?=
 =?utf-8?B?WEZwVmh2bUhXWGo5ekVZSElrR0hCNTJWdFVITnlUc0tmZk50d1ZsSUp6alJX?=
 =?utf-8?B?RWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <05ED351892AD8342AA5179E626BE20AD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acddff9c-2fe8-45c9-ab4e-08da76152bc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 12:30:52.7022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j7PAVqUcoRGD+wMRQ/Lyx7FVCbeUILeEmoaYlsAr1NYm6vpc6rxvIbFhYTh1WhI8ta4kDwz9WKEwR4G5svlaTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3237
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA4LTA0IGF0IDA1OjMyICswMDAwLCBUYW5ndWR1LCBUaWxhayB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogVml2aSwg
Um9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gPiBTZW50OiBUaHVyc2RheSwgQXVn
dXN0IDQsIDIwMjIgMjowMSBBTQ0KPiA+IFRvOiBUYW5ndWR1LCBUaWxhayA8dGlsYWsudGFuZ3Vk
dUBpbnRlbC5jb20+DQo+ID4gQ2M6IEV3aW5zLCBKb24gPGpvbi5ld2luc0BpbnRlbC5jb20+OyBC
ZWxnYXVta2FyLCBWaW5heQ0KPiA+IDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT47IFJvcGVy
LCBNYXR0aGV3IEQNCj4gPiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT47IFdpbHNvbiwgQ2hy
aXMgUA0KPiA+IDxjaHJpcy5wLndpbHNvbkBpbnRlbC5jb20+Ow0KPiA+IE5pa3VsYSwgSmFuaSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgR3VwdGEsIHNhdXJhYmhnDQo+ID4gPHNhdXJhYmhnLmd1
cHRhQGludGVsLmNvbT47IEd1cHRhLCBBbnNodW1hbg0KPiA+IDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+OyBOaWxhd2FyLCBCYWRhbA0KPiA+IDxiYWRhbC5uaWxhd2FyQGludGVsLmNvbT47DQo+
ID4gRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT47IElkZGFtc2V0dHksIEFyYXZpbmQN
Cj4gPiA8YXJhdmluZC5pZGRhbXNldHR5QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDEvOF0gZHJtL2k5MTU6IEFkZGVk
IGlzX2ludGVsX3JwbV9hbGxvd2VkDQo+ID4gaGVscGVyDQo+ID4gDQo+ID4gT24gVGh1LCBKdWwg
MjEsIDIwMjIgYXQgMDM6Mjk6NDhQTSArMDUzMCwNCj4gPiB0aWxhay50YW5ndWR1QGludGVsLmNv
bcKgd3JvdGU6DQo+ID4gPiBGcm9tOiBUaWxhayBUYW5ndWR1IDx0aWxhay50YW5ndWR1QGludGVs
LmNvbT4NCj4gPiA+IA0KPiA+ID4gQWRkZWQgaXNfaW50ZWxfcnBtX2FsbG93ZWQgZnVuY3Rpb24g
dG8gcXVlcnkgdGhlIHJ1bnRpbWVfcG0NCj4gPiA+IHN0YXR1cyBhbmQNCj4gPiA+IGRpc2xsb3cg
ZHVyaW5nIHN1c3BlbmRpbmcgYW5kIHJlc3VtaW5nLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiB2Mjog
UmV0dXJuIC0yIGlmIHJ1bnRpbWUgcG0gaXMgbm90IGFsbG93ZWQgaW4gcnVudGltZV9wbV9nZXQg
YW5kDQo+ID4gPiBza2lwDQo+ID4gPiB3YWtlcmVmIHJlbGVhc2UgaW4gcnVudGltZV9wbV9wdXQg
aWYgd2FrZXJlZiB2YWx1ZSBpcyAtMi4gLSBKYW5pDQo+ID4gPiBODQo+ID4gDQo+ID4gU2hvdWxk
IHdlIGhhdmUgc29tZSBkZWZpbmVzIGluc3RlYWQgb2YgdGhlIC0jcz8NCj4gT2sgd2lsbCBhZGRy
ZXNzIHRoaXMuDQo+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBUaWxhayBUYW5ndWR1IDx0aWxh
ay50YW5ndWR1QGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9ydW50aW1lX3BtLmMgfCAyMw0KPiA+ICsrKysrKysrKysrKysrKysrKysrKyst
DQo+ID4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggfMKgIDEgKw0K
PiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3Bt
LmMNCj4gPiA+IGluZGV4IDZlZDU3ODZiY2QyOS4uNzA0YmVlZWI1NjBiIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jDQo+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMNCj4gPiA+IEBAIC0xMTMs
NyArMTEzLDcgQEAgc3RhdGljIHZvaWQNCj4gPiB1bnRyYWNrX2ludGVsX3J1bnRpbWVfcG1fd2Fr
ZXJlZihzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oHVuc2lnbmVkIGxvbmcgZmxhZ3MsIG47DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBmb3Vu
ZCA9IGZhbHNlOw0KPiA+ID4gDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAodW5saWtlbHkoc3Rh
Y2sgPT0gLTEpKQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHVubGlrZWx5KHN0YWNrID09IC0x
KSB8fCB1bmxpa2VseShzdGFjayA9PSAtMikpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybjsNCj4gPiA+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fbG9j
a19pcnFzYXZlKCZycG0tPmRlYnVnLmxvY2ssIGZsYWdzKTsgQEAgLTMyMCw2DQo+ID4gPiArMzIw
LDIxDQo+ID4gQEANCj4gPiA+IHVudHJhY2tfYWxsX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZnMo
c3RydWN0IGludGVsX3J1bnRpbWVfcG0NCj4gPiA+ICpycG0pwqAgfQ0KPiA+ID4gDQo+ID4gPiDC
oCNlbmRpZg0KPiA+ID4gK3N0YXRpYyBpbnQgaW50ZWxfcnVudGltZV9wbV9zdGF0dXMoc3RydWN0
IGludGVsX3J1bnRpbWVfcG0gKnJwbSkNCj4gPiA+IHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHJl
dHVybiBycG0tPmtkZXYtPnBvd2VyLnJ1bnRpbWVfc3RhdHVzOyB9DQo+ID4gPiArDQo+ID4gPiAr
Ym9vbCBpc19pbnRlbF9ycG1fYWxsb3dlZChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKQ0K
PiA+IA0KPiA+IHdoeSBub3Qgc3RhdGljPw0KPiDCoFdlIG5lZWQgaXNfaW50ZWxfcnBtX2FsbG93
ZWQgZm9yIHJjNiBoZWxwZXJzICwgdGhlIGhlbHBlcnMgdXNlDQo+IHBtX3J1bnRpbWVfZ2V0X3N5
bmMsDQo+IFRvIGF2b2lkIGxvY2sgaXNzdWUgd2UgbmVlZCB0byB1c2UgaXQgaGVyZSB0b28uDQo+
IA0KPiBTZWUgdGhpcyBwYXRjaCAiIGRybS9pOTE1OiBHdWFyZCByYzYgaGVscGVycyB3aXRoDQo+
IGlzX2ludGVsX3JwbV9hbGxvd2VkIiANCj4gDQo+ID4gDQo+ID4gPiArew0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgaW50IHJwbV9zdGF0dXM7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBy
cG1fc3RhdHVzID0gaW50ZWxfcnVudGltZV9wbV9zdGF0dXMocnBtKTsNCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoGlmIChycG1fc3RhdHVzID09IFJQTV9SRVNVTUlORw0KPiA+IA0KPiA+IEkgZG9uJ3Qg
aGF2ZSBhIGdvb2QgZmVlbGluZyBhYm91dCB0aGlzLiBJZiB3ZSBhcmUgcmVzdW1pbmcgd2UNCj4g
PiBzaG91bGRuJ3QgZ3JhYg0KPiA+IGV4dHJhIHJlZmVyZW5jZXMuLi4gVGhpcyBzZWVtcyBhIHdv
cmthcm91bmQgZm9yIHRoZSBsb2NrIG1lc3MuDQo+ID4gDQo+ID4gPiA+ID4gcnBtX3N0YXR1cyA9
PSBSUE1fU1VTUEVORElORykNCj4gPiANCj4gPiBhbmQgd2hlbiB3ZSBhcmUgc3VzcGVuZGluZyBh
bmQgd2UgY2FsbCB0aGlzIGZ1bmN0aW9uIGlzIGJlY2F1c2Ugd2UNCj4gPiBuZWVkIHRvDQo+ID4g
d2FrZSB1cCwgbm8/IQ0KPiANCj4gQXMgd2UgaGF2ZSByZS11c2VkIGk5MTVfZ2VtX2JhY2t1cF9z
dXNwZW5kLCBpOTE1X2dlbV9zdXNwZW5kX2xhdGUNCj4gwqBhbmQgaTkxNV9nZW1fcmVzdW1lICwg
VGhlc2UgZnVuY3Rpb25zIHVzZSBydW50aW1lIGhlbHBlcnMsIHdoaWNoIGluLQ0KPiB0dXJuIGNh
bGwNCj4gwqBydW50aW1lIHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcyBhbmQgbGVhZHMgdG8gZGVh
ZGxvY2suDQo+IMKgU28sIHRoZXNlIGhlbHBlcnMgbmVlZCB0byBiZSBhdm9pZGVkLsKgIHdlIGhh
dmUgYWRkZWQNCj4gaXNfaW50ZWxfcnBtX2FsbG93ZWQNCj4gwqBhbmQgZGlzYWxsb3dlZCBycG0g
Y2FsbGJhY2tzIHdpdGggYWJvdmUgY29uZGl0aW9uIGR1cmluZyBzdXNwZW5kaW5nDQo+IGFuZCBy
ZXN1bWluZw0KPiDCoHRvIGF2b2lkIGRlYWRsb2NrLg0KDQpXaHkgZG9lcyB0aGVzZSBmdW5jdGlv
bnMgaW4gc3VzcGVuZCByZXN1bWUgcGF0aCBhcmUgdXNpbmcgdGhlIHJ1bnRpbWUNCmNhbGxiYWNr
cz8NCkNhbid0IHdlIGhhdmUgYSByZWZhY3RvciBvbiB0aGF0IGFyZWEgdGhhdCBhbGxvd3MgdGhl
IHBhdGhzIHRoYXQgd2UNCm5lZWQgaW4gYSBwbGFjZSB3aGVyZSB3ZSBhcmUgc3VyZSB0aGF0IGRl
dmljZSBpcyBub3QgZ29pbmcgdG8gZDM/DQp0aGVuIHdlIGNhbiBoYXZlIGEgY2xlYXIgaW5mcmE/
DQoNCj4gPiANCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFs
c2U7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gPiArfQ0KPiA+ID4gDQo+ID4gPiDCoHN0YXRp
YyB2b2lkDQo+ID4gPiDCoGludGVsX3J1bnRpbWVfcG1fYWNxdWlyZShzdHJ1Y3QgaW50ZWxfcnVu
dGltZV9wbSAqcnBtLCBib29sDQo+ID4gPiB3YWtlbG9jaykNCj4gPiA+IEBAIC0zNTQsNiArMzY5
LDkgQEAgc3RhdGljIGludGVsX3dha2VyZWZfdA0KPiA+IF9faW50ZWxfcnVudGltZV9wbV9nZXQo
c3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJ1bnRpbWVfcG0pOw0KPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoGludCByZXQ7DQo+ID4gPiANCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghaXNfaW50
ZWxfcnBtX2FsbG93ZWQocnBtKSkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gLTI7DQo+ID4gPiArDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gcG1fcnVu
dGltZV9nZXRfc3luYyhycG0tPmtkZXYpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9XQVJO
X09OQ0UoJmk5MTUtPmRybSwgcmV0IDwgMCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAicG1fcnVudGltZV9nZXRfc3luYygpIGZhaWxlZDogJWRcbiIs
IHJldCk7DQo+ID4gPiBAQCAtNDkwLDYNCj4gPiArNTA4LDkNCj4gPiA+IEBAIHN0YXRpYyB2b2lk
IF9faW50ZWxfcnVudGltZV9wbV9wdXQoc3RydWN0IGludGVsX3J1bnRpbWVfcG0NCj4gPiA+ICpy
cG0sDQo+ID4gPiANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1bnRyYWNrX2ludGVsX3J1bnRpbWVf
cG1fd2FrZXJlZihycG0sIHdyZWYpOw0KPiA+ID4gDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAo
d3JlZiA9PSAtMikNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47
DQo+ID4gPiArDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcnVudGltZV9wbV9yZWxlYXNl
KHJwbSwgd2FrZWxvY2spOw0KPiA+ID4gDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcG1fcnVudGlt
ZV9tYXJrX2xhc3RfYnVzeShrZGV2KTsNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcnVudGltZV9wbS5oDQo+ID4gPiBpbmRleCBkOTE2MGUzZmY0YWYuLjk5NDE4YzNhOTM0
YSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVf
cG0uaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5o
DQo+ID4gPiBAQCAtMTczLDYgKzE3Myw3IEBAIHZvaWQgaW50ZWxfcnVudGltZV9wbV9pbml0X2Vh
cmx5KHN0cnVjdA0KPiA+ID4gaW50ZWxfcnVudGltZV9wbSAqcnBtKTvCoCB2b2lkIGludGVsX3J1
bnRpbWVfcG1fZW5hYmxlKHN0cnVjdA0KPiA+ID4gaW50ZWxfcnVudGltZV9wbSAqcnBtKTvCoCB2
b2lkIGludGVsX3J1bnRpbWVfcG1fZGlzYWJsZShzdHJ1Y3QNCj4gPiA+IGludGVsX3J1bnRpbWVf
cG0gKnJwbSk7wqAgdm9pZA0KPiA+ID4gaW50ZWxfcnVudGltZV9wbV9kcml2ZXJfcmVsZWFzZShz
dHJ1Y3QNCj4gPiA+IGludGVsX3J1bnRpbWVfcG0gKnJwbSk7DQo+ID4gPiArYm9vbCBpc19pbnRl
bF9ycG1fYWxsb3dlZChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKTsNCj4gPiANCj4gPiBp
ZiByZWFsbHkgbmVlZCB0byBleHBvcnQgcGxlYXNlIGZvbGxvdyB0aGUgbmFtaW5nIGNvbnZlbnRp
b24uXA0KPiANCj4gT2sgd2lsbCBhZGRyZXNzIHRoaXMuDQo+IA0KPiAtVGlsYWsNCj4gPiANCj4g
PiA+IA0KPiA+ID4gwqBpbnRlbF93YWtlcmVmX3QgaW50ZWxfcnVudGltZV9wbV9nZXQoc3RydWN0
IGludGVsX3J1bnRpbWVfcG0NCj4gPiA+ICpycG0pOw0KPiA+ID4gaW50ZWxfd2FrZXJlZl90IGlu
dGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZShzdHJ1Y3QNCj4gPiA+IGludGVsX3J1bnRpbWVf
cG0NCj4gPiA+ICpycG0pOw0KPiA+ID4gLS0NCj4gPiA+IDIuMjUuMQ0KPiA+ID4gDQoNCg==
