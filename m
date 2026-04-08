Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAR0H1km1mnYBQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 11:56:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F33BA295
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 11:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2E810E5C5;
	Wed,  8 Apr 2026 09:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P+hzC0OO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC01310E54B;
 Wed,  8 Apr 2026 09:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775642197; x=1807178197;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mAiCO1v7YyTUZ9prBQ5sQIvHtdNi7s/+vx96lUbKBrw=;
 b=P+hzC0OOGhKp3J2J0d/+f8aqujVmaLY+OvnJvi0xvJaNH3YPI2KQ5Lt4
 qtlPI5JIB7Qj47NAIqIo7by4V4EEQLpOdyHSd+pG3lyq4p3k0CXgS929F
 l5MB2pWTvMphb15ltfUcPpiPEnNMt4DFyeXo3IkH0ICPiWCNrM7biEx+R
 wBBXXd8W39jlRa//DKgwUW/J9TM9i+kpD+mmcYS/Kl+UwAatZ8HtWBsvP
 pPO2a/ks3AMoBxVz4yDOVceowHI0bybk+UJJp8Ezto4QGYvtDnGsTT7k9
 0w0DeyrbrdPsXNonKS3rTR3vFDCACHZdy/DaCFYODm6khJhySJP18fear Q==;
X-CSE-ConnectionGUID: HkcR8xAkSvW/y7aEoNZbWA==
X-CSE-MsgGUID: Fnp4AncxQhu4TKpjAmBkSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76497304"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76497304"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 02:56:36 -0700
X-CSE-ConnectionGUID: +vEqxgzMSTy2fDmLwp35hw==
X-CSE-MsgGUID: iqHU3LttR5mdbssd+WRBGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228323421"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 02:56:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 02:56:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 02:56:35 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.8) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 02:56:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HlD9ILlS4xoYoPdBzruXWsgBtsec+bbsRB4a4/yUOLn4iMmj40DjhcQQXccA1yyHQsy2rWJYp/B4xxA0gpOrqEsJJDOjljCXT33UWwgRxa200CHp9xiMJ42J+kT5QpiX2mKvV4kObgF/CgzUBjCqcipw3Sb0+Y/tLlLADZimgKszJ16UVbnBHB+HLcFSmVd5wzC14rpH9SxUPpLnxrdJ12YWDu2nscQ/jhVdrcYZ6JV136Ufip710kWVfzfQdpaVQa1f8f/Z6EdcIYXx7Fjp4l6/ygsrPidlvKdB1lqk985v/6TT6WgEVpixm5gF0Ff5ecn6NaDZ8HCNm6ZKfmhPfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mAiCO1v7YyTUZ9prBQ5sQIvHtdNi7s/+vx96lUbKBrw=;
 b=Kd+12DuiPzQJJdn/UVdvyp8WWW7VCPSvWpfrQ8eR1fO14v3cVcXcR5hFSuswOxWUjQmqqUwXZ6UaUDGAeE0Zcy3+02eES4brLHT0nhwFN8mZ5wKKOkrvSIR1yFCxbpUjs29dnoZMP36SGZf2xoMa9ZAZtF7dOt70nALtdijXnpth394+49q7oLg8Co8gahanZP89ZwGVcYocSg5TWolCeknQEhKHii0/GF8HILM+VbLknHyn7sZY+FkVNS1cIEO7m4vTy9wHo/ZDSw8xGcjenU4cGR2akmGTKQ5TBCZCUu73k5gN9Bnr2tAdkWxhVf8Qm279s6d1XrKRlllvvt/uVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Wed, 8 Apr
 2026 09:56:27 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 09:56:27 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/9] drm/i915/wm: Reject SAGV consistently when
 block_time_us==0
Thread-Topic: [PATCH 1/9] drm/i915/wm: Reject SAGV consistently when
 block_time_us==0
Thread-Index: AQHcu5T+dykvMRUIREOtJxPfWXty47XVBMMA
Date: Wed, 8 Apr 2026 09:56:27 +0000
Message-ID: <bec55a7128dddc2fe8a195d01dcbcbcffde8eb01.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB4868:EE_
x-ms-office365-filtering-correlation-id: d47fcd0f-f04b-4ecb-65ac-08de95551a16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: hoj7lfGERD0ZeWZDcQGzKnrY7f+vFkjgr8F9cVXFsO7ZZPwxemluNAHcNso8QXuQ4jAm0tAW38mggcx/1K8QEfS2tWox5io3nD8LUCVpv3geYNh50BzepzyLF1jdrdhbl43suCq9tOcu/zz4wmGwQ3HKsiMOfDkAdefoWRdNwQM2d0mHrUxw99PBztD+3J1MX4SMVuGNhu3uuYAkFbrdy3LDgle8Uj5CEbCQnzEduE2fM08TibiNTt2ah9LQnmhz9DDJ8n4E+mANhx/jRL27Po+gHPliarVtRQAQwF5u6Q3DqBfeM1CzYdW3+Rxl9vyz9DkgkrQKNCLFXO6+rf3ptsgCODAEF+TeHKhpseAP21hwZAnq05ppq9aFpUNhYydRa7BukChiEcsQxgxb799d1KB+m7NuMUl6TmdquPcV+MXw3DLHvqFPR/U2GeILrB8ZwihlSR1ogbxMTUBwiqNQocvFXxJSVc/P+yEv/HVL+mG6RvmLnfioInre2KA50AgaloF9xdPTMcDBjoMTmpdgVbBpldfHdMeguekRGqJUpz2r4KkFjYpWEIDkQKB4La20VQXZuhIIUh+8XExlZhwClSVI78uTH+gJsp6eK7MYkN9FvshO2MTqatd493Pt2ym21QqnhHMfwuVlqEuOGwxGPtsg9RJbmlWG1tUnpvCderhbCqVcfCzcvujihxuXgOZKTGSaVSN76V/awWsCzF6J2B/YTrdu90bpHgiZH6p5Lf+IE+mrTTiMloHsNNu4wPKOT/aTAOwZM58jPrOgWL/ONEvrIKJsfU0itWDiSr1goOE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTlyNG50T3A2eVJLemtLaDdLaEt6WjdsRUoveFlBZXd0ZFhEOWN4dUw3dXh1?=
 =?utf-8?B?M2NFVjNvcGJOU1F2OGlJVnJ4TmF1cklMaStSNDU5MVl0Zzk2Syt3aE1iWmEz?=
 =?utf-8?B?QXUyTy9VSHNNTDJwYytDandudHlsMzF2YTRtWEhIdndTb0NaTGJKSitOMk1D?=
 =?utf-8?B?WklEZExSanh2UDdGNTNzRGY2elpqUWhxTVNIdEFVMGpxdkxmRHJLTFpPbE11?=
 =?utf-8?B?Y2FpN1hha2I3d3JuamJxemIraFpDWlpxS243VktKTFJhcVJPUlYzeVRPZjFu?=
 =?utf-8?B?M2E3eGt4bHRXUzRuV0pwOHRFT204Z2QyNUxFUmxXWk4rZ0JFcHlpUDRKV1g4?=
 =?utf-8?B?YUlIMFlLb1o5bDh4WDFUOXR5d0g1TDJPb09oTWNFcmpFSlEwcWo3d1g3TWF3?=
 =?utf-8?B?Mit3V2h2MDJIcFB0clpOS1lLc3lENU04YzQ3ZGdTbkhQTlZkaHpmQkJiNEpV?=
 =?utf-8?B?L0RnT0RxL3lHcSt2Nmw3TkhKejFMN00ycTNITExqQ0lFRitPTUg3aGxsQStL?=
 =?utf-8?B?c3Z0R1J2cVFwZy9OTmFEQ3U0ZHJmQ2NCS2NVTXAybjlIdzJBUytlYXRsZ213?=
 =?utf-8?B?KzhMd2M3Z3ZEcE1Rc2xSbjFSQkY4VDc3QVNXSWowT0c3YWI2U0dHYzk4YlBL?=
 =?utf-8?B?WFZiQmIyT2p0OXAzajhlNC81QTRZQ25TcXBueGEyL2ZiTFk2MFJWd3pBVXVu?=
 =?utf-8?B?SDRYOFkrb0VzN2phTWxXVC9qV3JmLzBvVlZEVDE3RFEyT3ZMcTR6bmo1b2dj?=
 =?utf-8?B?NWJtbkJQWVQ2M3h1aGhoNks3QUMwY1dPMUFGL0lnTitSMkl4cy9MWXVITnpv?=
 =?utf-8?B?aEJEcjZsMEdFNUUzVGFPS3BhZytNNWtPdEFTKzNsUDluQi9MR3NaVmdkcDZr?=
 =?utf-8?B?UWxyczA5WEtodTM1b0pzZjY0QUxoTFZhQzlOM0VRcGJxUGlSNzFqRUFPT1du?=
 =?utf-8?B?WGdRUVhvWE43UVBGaHV3ek5wQWJldzV5US9zWVpiSnUzR3NuY1FTdHNIallo?=
 =?utf-8?B?ZlNKbElaTmFEdGMxRmpJM0RBY0xxS2ZLaDhiak0vVXNQK3ZhQXdGa2hCVTdu?=
 =?utf-8?B?L3BWbm8ra3BIUCtKVXQvVGZOK0dPTGlvV2Jlb0dObmZGbld2QkEzQzBpZS96?=
 =?utf-8?B?dnhMTkxxMVdjaUpTcC9hRFBoa0dlQVNscXFWeTlROWU5cUxWb2puYVppejM5?=
 =?utf-8?B?T29YMVFlNjdrTE9wcmt3SUt0TzZaaWR3Um14clpISjFLdytqZ3lBRUJ2bTBn?=
 =?utf-8?B?RlE3RXpTdFpFNjVGa0pwMmtoOGJCRE40Vlg1ZTZ2dTBxMWdIeENUNnZmd2RJ?=
 =?utf-8?B?MUJaSkovMlllejNpdHhxSCtkZGQvOU9qbXFFUkNuOWI3RjJlZGJPTmNUaUti?=
 =?utf-8?B?OC9LbU0vRjdjVTNWUWFPcXlKdTBoVVhRcTJXSGF6UW9xL2ZGUWtYVlZZdE9v?=
 =?utf-8?B?NTd5bWJrcCtlS1Y3b1d0NXNYampZbzFyaXVoQThkMFZKcDNTU3JkbEFjRnhn?=
 =?utf-8?B?ZGc3T2wwa3J0Z1NtNzBZTmZrYTN0a1h4TUNJakJoT0pOQi9saWdlS3RMUzYz?=
 =?utf-8?B?aWtHSFlmQjJvMGxPaVU2Vlg0TXpTNUlKNDdITHF2TW12NkdzbDlhUWpXZDBU?=
 =?utf-8?B?dU94L1o3V3ZZL0UweWMvS2RsV2crdUExSTlIdHI2aU9vSERJb0dsM1VQU1BC?=
 =?utf-8?B?Z05NMFVqZVFmL1JpSXRIWE9rdFRicUJHODgvRmcwakJkQ3hLUGNOSStVZ0lv?=
 =?utf-8?B?V3RabnU0cVhONVA0TkRkMTEwcTVEc0JPaERFQW4xVDNsNUhTeGZENjVzTjg3?=
 =?utf-8?B?VnVLQ3pRRnpFT2pocS9zMWY1ai8wYXpwblRHbHBZeHppcjZiZzluUzV1OEFq?=
 =?utf-8?B?NnNzRllRUGowR3Yvc1U1ZEM1Sm1VSTJMVm5lUXRnaS9vdlc2YnFrUWdneUVZ?=
 =?utf-8?B?ZjBUZnExMng2ZTdHM2phaE5ZRUlrWVFWS20zeVBvajFDR1lSUTZZOTJWNlZw?=
 =?utf-8?B?ajVSaTN4NEc2YTBaaXdiaDBoUUV0TVdIZXp5ZXpic2lFSGlyWDNyVG0zaGhD?=
 =?utf-8?B?WEtEek9wNk9qYkZyMlFGTGF6b2tLaG42bGNUQnZQUzZmckxpNVprWGpBTHpp?=
 =?utf-8?B?ZVpyUzhtckZvQ3Q2ZEh1Nmd1a0Uvbm9ldzA3VGNaZEc0RDRRVklSSFc4YnpO?=
 =?utf-8?B?WlFNZmpPcHg3UHh5VFNCY1l2alVONmJOTHhSZ3pFZlYrSDAxT3lVeXZ2OCtJ?=
 =?utf-8?B?ajZEMElXS1JOSllsOGV2U1Q3TzZGcU4yTXM4dHR2T29HZWFWak5hcWJwc2xU?=
 =?utf-8?B?RmZRQy9VZTV2Q2xoajFBMkVhNHVIUVRwV3hMelZQdlRrS05LZHU3K0Rnd3Fk?=
 =?utf-8?Q?go5EX8UP49BRjt4eixZGHa4rBqi1S37Sk4pq0sPEw2SyQ?=
x-ms-exchange-antispam-messagedata-1: UMrwpb6qVtoBFt+X4gC4YMJMHUTh278XZZds0HEYKx3FuwItwb2lD5mm
Content-Type: text/plain; charset="utf-8"
Content-ID: <9AB6E495E7F1A54D9892198A0231EACC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Up4PD/qZF4vfqf4yG1NSB5UyFdpSuvS6WFkxK/w4QXerO3Rkqc59KW1rSxvQOu9UwyWz9bTK1azs2xeLuRdFry6RgMX8LINqxN7OalacCzxtq8RB8PeB+o5XDGC+K7YA5iPFRFD9Ve9DA5+SyyRTHTDvKVeXbAk/0W3y4d1r1Mbh4z1VmlR+iXFeKu6f1v+fikKkTADZ16vvpUBCPVVgVw9PuVRhynAI/9k54tNpbkwhs6soCmBEH8OKKMIxPzomifeZpkv1NzGQsaUFnhnNGyU3R4/kNSIApcOK10vlZBD1QXWbhTHES+4w9CPxonwBarqVcX3MnryulhakAgh05w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d47fcd0f-f04b-4ecb-65ac-08de95551a16
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 09:56:27.5398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ITKof9x15XLD+8PnxeNqqwm7z6xcYCNwUCb7eiYHobmv/v9ynMqmCVDWHqI6WIoXJN+lxcYvg7Z1Xay0S/pQDRs+fje6z7aQ3iX/ek5XdY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CE4F33BA295
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgaGF2ZSB0aHJlZSB3YXlzIGZvciB0aGUgcGxhdGZvcm0gdG8gaW5kaWNhdGUgdGhh
dA0KPiBTQUdWIGlzIG5vdCBzdXBwb3J0ZWQ6DQo+IC0gcGNvZGUgcmV0dXJucyB6ZXJvIGJsb2Nr
IHRpbWUNCj4gLSBwY29kZSByZXR1cm5zIG9ubHkgYSBzaW5nbGUgUUdWIHBvaW50IChpY2wrKQ0K
PiAtIHBjb2RlIHJlamVjdHMgdGhlIFNBR1YgZW5hYmxlL2Rpc2FibGUgY29tbWFuZCAocHJlLWlj
bCkNCj4gDQo+IFdlIGRvbid0IGN1cnJlbnRseSBjb25zaWRlciBhbGwgdGhvc2UgZmFjdG9ycyB3
aGVuIGNvbXB1dGluZw0KPiBwaXBlX3NhZ3ZfcmVqZWN0LCBtZWFuaW5nIHdlIG1pZ2h0IHN0aWxs
IHRyeSB0byBlbmFibGUNCj4gU0FHViB3aGVuIHdlIHNob3VsZCBub3QuDQo+IA0KPiBJIHRoaW5r
IG9uZSBwbGF1c2libGUgc2NlbmFyaW8gaXMgd2hlbiBwY29kZSByZXR1cm5zIGENCj4gemVybyBi
bG9jayB0aW1lLCBhbmQgYWxsIHRoZSBwaXBlcyBhcmUgZGlzYWJsZWQuIEluDQo+IHRoYXQgY2Fz
ZSBpbnRlbF9jcnRjX2Nhbl9lbmFibGVfc2FndigpIHdpbGwgcmV0dXJuIHRydWUNCj4gZm9yIGFs
bCBwaXBlcywgYW5kIHRodXMgd2UgbWlnaHQgdHJ5IHRvIGVuYWJsZSBTQUdWDQo+IGRlc3BpdGUg
cGNvZGUgaW5kaWNhdGluZyB0aGF0IGl0J3Mgbm90IHN1cHBvcnRlZC4NCj4gDQo+IE1ha2Ugc3Vy
ZSBwaXBlX3NhZ3ZfcmVqZWN0IHdpbGwgY29uc2lzdGVudGx5IHJlamVjdA0KPiBTQUdWIHdoZW4g
b3VyIGNhY2hlZCBibG9jayB0aW1lIGlzIHplcm8uIFRoYXQgd2lsbCBjb3Zlcg0KPiBhbGwgdGhl
IGFmb3JlbWVudGlvbmVkIG1lY2hhbmlzbXMgYnkgd2hpY2ggU0FHViBjYW4gYmUNCj4gZGlzYWJs
ZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF93YXRlcm1hcmsuYyB8IDYgKysrLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRh
cGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRleCBkNDViM2JjYzZl
ZjAuLjA5OTg4ZjQ2ZTA4MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTMwOCw5ICszMDgsNiBAQCBzdGF0aWMgYm9vbCBza2xf
Y3J0Y19jYW5fZW5hYmxlX3NhZ3YoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+IMKgCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQ7DQo+IMKgCWludCBtYXhfbGV2
ZWwgPSBJTlRfTUFYOw0KPiDCoA0KPiAtCWlmICghaW50ZWxfaGFzX3NhZ3YoZGlzcGxheSkpDQo+
IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0KPiDCoAlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSkN
Cj4gwqAJCXJldHVybiB0cnVlOw0KPiDCoA0KPiBAQCAtMzc3LDYgKzM3NCw5IEBAIGJvb2wgaW50
ZWxfY3J0Y19jYW5fZW5hYmxlX3NhZ3YoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
DQo+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+IMKgDQo+ICsJaWYgKCFkaXNwbGF5
LT5zYWd2LmJsb2NrX3RpbWVfdXMpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiDCoAlpZiAo
IWRpc3BsYXktPnBhcmFtcy5lbmFibGVfc2FndikNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqAN
Cg0K
