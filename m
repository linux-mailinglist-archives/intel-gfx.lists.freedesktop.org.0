Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E7BCB0C65
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 18:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC0C10E54B;
	Tue,  9 Dec 2025 17:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gmya5JRZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC4310E207;
 Tue,  9 Dec 2025 17:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765302633; x=1796838633;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DeagJzoch5TqcimAQUbjVHAVRNEqMoqo5+erptG1euc=;
 b=Gmya5JRZGjUr3Q4WvYtSNoADSYFDxQ4MHM3rMI0eknpsdU8zRwG1931l
 fn6MnMUc4hpZuV1mJCm3sz4pKcwpTSRaE8DxjXf9fbRB0sI3Lsb4EFsjV
 u1pCzBvkXECl1gtBSh3N3drgRGp81K+9Zhe8Omt6SU9mv233fGIGJE+BQ
 xeb5drUkexqjoNeU9v0LOeGLyrCKaHYZ7/u7tTXy0jc2H9SKmPyk3yLTM
 Ma3tnnXnYcdkiTXZ13hOSjq/SWmhXcLzb9+COFSp2jhgFiLhiLXi1N/sQ
 mxCpazhUE4okSb3JMdR777RTx47LGep5v0crfbkL/5H+P93GJXMnywTSK w==;
X-CSE-ConnectionGUID: bzpfZwO+QoiQoq/ySMebow==
X-CSE-MsgGUID: 3tRKnMqNQlGkt9Rb+fhUWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="77586198"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="77586198"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:50:32 -0800
X-CSE-ConnectionGUID: NBUdc/vgShu9eShyHHBrnQ==
X-CSE-MsgGUID: s3qdSX/OTbqrDJe/qoklSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="200464873"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:50:32 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:50:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 09:50:31 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:50:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iC9Bjb8fKPdZ3YPPLxlQO2eUN+nbse3dRlfoGI1UgskkEIxAL6tygcJdVR2jJMNCnRkRdb1vxqqC2BYG9G7BnQSZMyHBq69gvncrYhqCpAnuDWIsXBh1frfXdiL9iEgtW+IbBSdqq2rp5zFTpQtJl3SFxzJjNaMQJRALrR6vWOenShYt0uH/BBNzN81EoQ9RhCdAksZcTesWvAQtTZwKmd24aDK+dhEIg1StvR9i9GdvgaRC4FUvk8hYbEk1sSGisfExwEVr6ORRfo7o2F/jGMYCC86FDYQHiWcod/xEjC5jHblHfgPyH8YdVm7DrfgLi/sm0iJ0OR+uBZ7Y9lkJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DeagJzoch5TqcimAQUbjVHAVRNEqMoqo5+erptG1euc=;
 b=pFyf2yJoZW6ZRrergY4OCRZMiY4V0T8JrvL9TZIGlCQLY09tgARwBBXU6wpN9/7760Ci+5xU+GuOUzrJc9qvam6/V951E9z1aHlkqR104Gx/7MbBTp68FCb822TuUX5gQq90oBrVnj0KcBeVYsT7bejEy0EyzbOMW8GclJG+7D9lcKBn227OuSPwrt4ugresVPCdE5tVNjIpEpKfMEkFKA2fFNsmQcnl6okALdoWkDFjotitu9aC+AqPpdpZRXdZ7O/9MGazP3Q/IVcPi80C6n8VYQNylf+AqJ/EVelAPskGMl/3y4Mx6TCwbA0J5kGSpc9q70y7EMM7ZUFpVI4q2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5286.namprd11.prod.outlook.com (2603:10b6:208:312::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Tue, 9 Dec
 2025 17:50:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 17:50:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 40/50] drm/i915/dp: Track the detailed DSC slice
 configuration
Thread-Topic: [PATCH 40/50] drm/i915/dp: Track the detailed DSC slice
 configuration
Thread-Index: AQHcX8kLGTKsK6MDzk2ADhDmt9uQHLUZapAAgAAGuICAADfAgA==
Date: Tue, 9 Dec 2025 17:50:28 +0000
Message-ID: <3cca48816bdb0b57b256dad53d81f52de9d11c59.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-41-imre.deak@intel.com>
 <63569f2072a37d98818b6dac72b531077ffdea21.camel@intel.com>
 <aTgyn95RXq0vGstW@ideak-desk>
In-Reply-To: <aTgyn95RXq0vGstW@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5286:EE_
x-ms-office365-filtering-correlation-id: d10182c0-29f0-4b0d-9c5b-08de374b70cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TUEzY2ZjSEh2VVRVZXlrbVJwSFhsciswb3QvdzRFWjFMOXR3eTk3SGdKay9F?=
 =?utf-8?B?UFNLUmNJWHc2YndPZlFveTVJVjVZeFh3dUx5RzlJV3Y5S0FxYUtjWUdWbndX?=
 =?utf-8?B?dlh3d2NJTEtyWHZlRFR4UGdhSDZhTjVYSCt1dWh4MmdqK2pITENCd2dZanA3?=
 =?utf-8?B?UG02M0wyR0wrbVA2b1FxdHJLOWpxTEMxaHdZcHlSdXhjL0RpNXRzdDM5SW80?=
 =?utf-8?B?cHFKN1ZEUE1DcFBmWFluOXNlRzIrSUVadmg2TzVOMGFOTGk5VXN6Z2RHTlRU?=
 =?utf-8?B?TzhCRUVxUkpobkdxdURqbGJZdEQ3WEYzQ25YSEFTcUFNL2tlVDcrRFZuRWpw?=
 =?utf-8?B?OEVYckdEamlCU2NzNi8wZGhKTDBEbVRlSitJblA3dUNjdkl4UmsrQWltaDly?=
 =?utf-8?B?MEJodFhRK3MwNWZubkZKcXNWdlJ3T2hETDNEenU2L2FpMmptWDdVRzJFY0ZF?=
 =?utf-8?B?SW5HeWR6R2VPcW5sZ01CU2RqTWRqcUw5dGIvbDA4NGh5ZGptZk85ZEVsYTl1?=
 =?utf-8?B?dEZNWTJEWENqM2JnaDNCRmJzZ05oQ2Fpa1lyYnBEc0l2QldPOE1aYitpbjlM?=
 =?utf-8?B?VVR5S2g4NElHaE5wdXNLUnB5Z1RMZzFNZSsweENObGFTOG5hVVRtUU5HRStI?=
 =?utf-8?B?Vm1YdGIydjJXUmhmdXFYVFYwUW14VndFQzlmam5adElNNU9ZOWNDNFZ5emk4?=
 =?utf-8?B?VVI2RDVRSG53aFBtbzZkLzFUZkY2M3Vxd1BGUWp4OUpURXBPN0I5aFNmVEVD?=
 =?utf-8?B?Qm1IK0gzeTl6MmJXRDQxdTh3NG55QXhUcDJWREljRGs1bWhLUHlEckFSYUQ0?=
 =?utf-8?B?QzB3dUd1OVBwZk8ybi85alAwOVdOZ2hZT0FvRWQrdTBYVmMyVW1HYVh2RXdH?=
 =?utf-8?B?eFVnQmZYcUUxREJ3b0F2Tys4eXF4RFlYcUZFRFVvNitwMjVOaEc1QXlOYlMw?=
 =?utf-8?B?b3k5S2cxUks4WXY1QzQ4NVhPNzdXQXVLYlZVOURJUm5QYWU0WEE0b3J5S2ww?=
 =?utf-8?B?MDRpZDJDd1RMUnVGL01YYWUxWG9GNUlSeWJ4TUxHL25DaDZtZkJOTTZJbllB?=
 =?utf-8?B?YUJEQ2lwMGVIL2NuS2ZjOUlUQWhMN3BUZm1SKysyczJvUERocU5LSEk1UXFT?=
 =?utf-8?B?UnRZUDh6RktUdlJVdlQ0N0FWejdHR1o5S1lDbS83eXdxTmwzaDlUM2FoWFNl?=
 =?utf-8?B?ZUt5cERLdGgwRElOU1lmNlVrZnora0tsMjVFamp0WUthRmN6bjRNT3VZaVB1?=
 =?utf-8?B?M1djUjQya2FEbWljaXptamZLamEvZ2E2RjhIOG1wSHY0WWg1bXdWUTMrS3NF?=
 =?utf-8?B?WU5SZTVXZW8wSy9uZzVCNjcvZGZCTnhmYkpaTnljMk9wVjcrMTFwaUxJQll1?=
 =?utf-8?B?Umg1Vk95WEtpaGRvbzhOSEFYbWFQczBHL0w0R2dYL2k1dTY1YmlUcVFSNFB5?=
 =?utf-8?B?Z2pEWVhDeEsxQ3pPL3I5Tjg3K2xwVDg5cUUvWlV6Ym83d2JIci9teGxDSUR5?=
 =?utf-8?B?RVkzeEdMdlNGcXBqK0k1alZpb2hZbk4yOGJ3QkhXRXpqMTFGRk9HeThPbVFU?=
 =?utf-8?B?VHNmZmo2Y1RITGJBZU5vTkJ2RFNPaUdZV1R2SmR0UWxxcHRUWTVCSzc3YTh1?=
 =?utf-8?B?V1F3UDJjSXlnM1lhMDVDUGhEcGxvRGhYUE55cHpicHNpSUdrUTdvQkpxaTR2?=
 =?utf-8?B?OWJLV3dxM0xPSXJBQkJ1dnR2OHB2bVlKa1ZQQW9iMVpWQ2VZQkF4dzNLekJU?=
 =?utf-8?B?MzdFMkRseW9LQ28rS0pjN0tNaVFOU1JrTVUvWXJhcnY1czh1aGl0dHMrd0xh?=
 =?utf-8?B?Z0x5TXZHLzg1Y0JYRytPQXB1WmwyUG05VmNDQVpXTVBGNTZXZnd1alRNcDc1?=
 =?utf-8?B?dGQ3Wit3S01nME5EOHVPQnRoKzFJZi9tVWNsT3A5V043T2ZCSmtsWnhuOER3?=
 =?utf-8?B?M0JTbnFZc2R3VzBRMHl1U1ZSLzFFRkdQOWtsdk8vemVlMkxwdUI0NnhXTFAw?=
 =?utf-8?B?U2ZRSDFRaU8ydnFsS014YjF5YXNRYzNPdGxMUVZXbVZwUyt4QXJ0ZnFzSjMv?=
 =?utf-8?Q?+wmx44?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDAwczR3Rm1KUnc4K2RJby9SczNMc2M4THdZN2ZKeE5GUEI1UVRVaE9kazh4?=
 =?utf-8?B?dmlGK0pmVzlid0RrTThOYVdaaWJXVzJVWmxNNWM0eFZEMVkrR1R5UDJSdm8x?=
 =?utf-8?B?L0lIK1RnNkRpYnl4TkNMV0VUT20wLzR4ekdxV1NjYzdrZzczbVRHUGJiaWRa?=
 =?utf-8?B?Qi92MkthMWwremJVK2R3endleUtKTjJneGdqY3owcEw1bGZBOWFvWFdYQ3BT?=
 =?utf-8?B?alEzaTU3cWZqbDJKWUw2dDNjb3M3S1VBOUlWQ3dvRExxbW15cXoySFR5ZFBT?=
 =?utf-8?B?OFRPK1JnQTRzMTRmUnQrRVFJbEN1Q2ZvNkkwM202OHNvcEY4M1haekJUOStj?=
 =?utf-8?B?VlpPa3NFTTVGSmY1MDEwRWZ5QjNldHorN2FNelVtL082MkJJNjl1UmhFQlVI?=
 =?utf-8?B?NHRlZ0xocXRkTWdUeDljaVp0RS9yV2tiRFBjYk9MY0hOMDF1cXFpZ3RGRkgz?=
 =?utf-8?B?cFA1R1ZpQWlUeUpYY2Qrc05ZTFVYcWVlRmRFRWIzdHpDS1hkZnJXVlpUdHRT?=
 =?utf-8?B?NFIvUTNQRS9HU1NCNnEwZ2ZOUzl2cU5Yd2V2T2ppQnE3anBlQ25acVlLbm45?=
 =?utf-8?B?YkFPejVrb1V5QjRKV0xCNmQ4SStXWWdyRXQxSW1TVmM5VUhLekZ0cDI0dzdq?=
 =?utf-8?B?cDl3UUlLU0pKVDJycGVKUFBrdWJFSkEvV1pOd0lHekxsNUtJVUNvb09nOVFP?=
 =?utf-8?B?Ny90Mm8xNVB3enJxZ0NIVHU1ak9hZ08xMko4UWlGenE1K0FkVWxhOXlnRWNn?=
 =?utf-8?B?ZWZvQm9Rc2kyQlRRZlRGOS9jT2ZDUWhkOThaWGcwMEdhS0ZoclVLMWw5QWty?=
 =?utf-8?B?OWR6N2szNnJqVXBnWUM2V2dJanYzeElNT3Y0Wmg3K1NlazV0Wk5WRlhOeUNl?=
 =?utf-8?B?eGdqYmhOU2Q3YWU4K0NNNzNPSUljZm1ra1dIMUVFQ0YyTjdSR1o4ZFFQcG9k?=
 =?utf-8?B?WWsvNXl4U0VMWHlGaWJHdUhreTFiNDY3S3FCSlQ1VFpGeXVGVXdNQ2Fsdjc5?=
 =?utf-8?B?NkorV3dwL0xxQTNqSjFMNmhpRFJ4R1YrT3huWVZveTZ2TTAxeWpXM0V1SFdI?=
 =?utf-8?B?a0pZRGM3RHJ6aWEvR0UxMU94OWNJZlNUWkNiSHU0TkdnbGtrL3dHaHVmK0Vz?=
 =?utf-8?B?d2krUTVUbGcwZThPcTBrcHBsaXNRSkl4R2hxbGQ5Nk1WdlR1ek5DK0lGM2Fr?=
 =?utf-8?B?VGxzRVVKcUQ5RW1hRUlBdGU5RDNXcUZTZk5Lczhxd284MnVCZmIzVDJRbnk1?=
 =?utf-8?B?ZXR4aWRPc3pBTURENHJtYnBjYzhCUWlvbi9ESjQwNXp0YjMyUmRQYm1aakIw?=
 =?utf-8?B?M0NYYWdpWVVBcVRCM2E2Q2JlQkNUbDdVT3MzemtweFhRb0d6MHgzVEQ5V2Vw?=
 =?utf-8?B?TStpUjVTZDdYWlN5VGRNWUsxby9LNzBvVUJiVWwvVEVrWllJanE5NVViUFFD?=
 =?utf-8?B?RUZNWW5yL0ptZ0IwS3lGOEpaYmNZMnRpSWptOU45SjVieTZUdjZ2Y2lNRi9o?=
 =?utf-8?B?QTJhc0JreFdtZVQwNkVOejg0TDlTRDFZamxZWWQxOGErdWVzajRsaTBzMmNH?=
 =?utf-8?B?U0duNkdkN01obE5hN0ZlZmlvUUtuVG1JSzd2Y2U3aG5FMngzUmdXeXRreXBU?=
 =?utf-8?B?M2ZtR2dnUmRUWGR6MEFWZU94Sk05cURZNm0wNWpiVnFDdlZ2cUJnd1NJRk4y?=
 =?utf-8?B?V0lJS3pROGcxVFZUNHFneUpSS1hMSHJzUzhLekpVQWQxdkxiNzFZVEUwT0V4?=
 =?utf-8?B?RlYrcmhtVWZiU1o2ZmRLVzBBQmhWVkYvVUpUNW1teDFPQ1A1Y21CY3p5ZERl?=
 =?utf-8?B?NldhMm5LSFNkREF0M0o0Ym5BY1ZKeWhHY3JkQlI5SUpXak5hZ2VTSitIaS9Z?=
 =?utf-8?B?ME80THI0MkFtbmVnWUhyVDZLa1I2L0ZnRkpVMUtWZ3NIU0FuQmgxcnJ0c0FM?=
 =?utf-8?B?YVBtRlRHb1VDbmJzMWM0R091a1dGNjk3NjRVWjJ2UnV0V3RJYkFDZlYycy9O?=
 =?utf-8?B?czFLQVJRUzBiWmNNSlRkRDN1dHZzSjhqODZ4Y015VWZtYXRVUzlNSTZodEUv?=
 =?utf-8?B?VWg4ejIxa0Q3K3RsTzBOUnRoODZoUUNxZEIzVTBIV2w1cE91VjJWdEdPYUla?=
 =?utf-8?B?S3NGdVhydjZLa0dyNWZEaGJLWGljUHZZR241dTQ0T2lFL1llTUJZQlFWd1Nn?=
 =?utf-8?B?anZKUGxzWFk4QmJKT29yU05NS1RhK3NZdUpoK3ZHL1IxWFF3YUo3aVkvVy9s?=
 =?utf-8?B?cnhnVHFJWjlWNWl1K2NiUUhtd2d3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E6C95F72F5654645A70DB7BFF167DF0C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d10182c0-29f0-4b0d-9c5b-08de374b70cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 17:50:28.7689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SBiOA1hMZwJ2l9VQqpPjx+Fh50A0f7Ai7SEuULkd6WFQsNl50OsigzcNlPRSrY5pfP1f+VCqF9f9FR78xSwEDwJpLXg6kuQ5E5tFueju2K4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5286
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

T24gVHVlLCAyMDI1LTEyLTA5IGF0IDE2OjMwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgRGVjIDA5LCAyMDI1IGF0IDA0OjA2OjUzUE0gKzAyMDAsIEpvdW5pIEhvZ2FuZGVyIHdy
b3RlOg0KPiA+IE9uIFRodSwgMjAyNS0xMS0yNyBhdCAxOTo1MCArMDIwMCwgSW1yZSBEZWFrIHdy
b3RlOg0KPiANCj4gPiA+IEFkZCB0cmFja2luZyBmb3IgdGhlIERQIERTQyBwaXBlcy1wZXItbGlu
ZSBhbmQgc2xpY2VzLXBlci1zdHJlYW0NCj4gPiA+IHZhbHVlIGluIHRoZSBzbGljZSBjb25maWcg
c3RhdGUgYW5kIGNvbXB1dGUgdGhlIGN1cnJlbnQNCj4gPiA+IHNsaWNlcy1wZXItbGluZSAoc2xp
Y2VfY291bnQpIHZhbHVlIHVzaW5nIHRoaXMgc2xpY2UgY29uZmlnLiBUaGUNCj4gPiA+IHNsaWNl
cy1wZXItbGluZSB2YWx1ZSB1c2VkIGF0bSB3aWxsIGJlIHJlbW92ZWQgYnkgYSBmb2xsb3ctdXAN
Cj4gPiA+IGNoYW5nZQ0KPiA+ID4gYWZ0ZXIgY29udmVydGluZyBhbGwgdGhlIHBsYWNlcyB1c2lu
ZyBpdCB0byB1c2UgdGhlIHNsaWNlIGNvbmZpZw0KPiA+ID4gaW5zdGVhZC4NCj4gPiA+IA0KPiA+
ID4gRm9yIG5vdyB0aGUgc2xpY2VzLXBlci1zdHJlYW0gdmFsdWUgaXMgY2FsY3VsYXRlZCBiYXNl
ZCBvbiB0aGUNCj4gPiA+IHNsaWNlcy1wZXItbGluZSB2YWx1ZSAoc2xpY2VfY291bnQpIGNhbGN1
bGF0ZWQgYnkgdGhlDQo+ID4gPiBkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX2NvdW50KCkgLw0K
PiA+ID4gaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudCgpDQo+ID4gPiBmdW5jdGlvbnMuIElu
IGEgZm9sbG93LXVwIGNoYW5nZSB0aGVzZSBmdW5jdGlvbnMgd2lsbCBiZQ0KPiA+ID4gY29udmVy
dGVkDQo+ID4gPiB0byBjYWxjdWxhdGUgdGhlIHNsaWNlcy1wZXItc3RyZWFtIHZhbHVlIGRpcmVj
dGx5LCBhbG9uZyB3aXRoIHRoZQ0KPiA+ID4gZGV0YWlsZWQgc2xpY2UgY29uZmlndXJhdGlvbi4N
Cj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyB8IDMyICsrKysrKysrKysrKysrKystLS0NCj4gPiA+IC0tLS0NCj4gPiA+IC0tDQo+
ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkN
Cj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gPiA+IGluZGV4IDAzMjY2NTExODQxZTIuLmQxN2FmYzE4ZmNmYTcgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gQEAgLTIz
NTYsNiArMjM1Niw3IEBAIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+
ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiDCoAkJJnBpcGVfY29uZmlnLT5ody5hZGp1
c3RlZF9tb2RlOw0KPiA+ID4gwqAJaW50IG51bV9qb2luZWRfcGlwZXMgPQ0KPiA+ID4gaW50ZWxf
Y3J0Y19udW1fam9pbmVkX3BpcGVzKHBpcGVfY29uZmlnKTsNCj4gPiA+IMKgCWJvb2wgaXNfbXN0
ID0gaW50ZWxfY3J0Y19oYXNfdHlwZShwaXBlX2NvbmZpZywNCj4gPiA+IElOVEVMX09VVFBVVF9E
UF9NU1QpOw0KPiA+ID4gKwlpbnQgc2xpY2VzX3Blcl9saW5lOw0KPiA+IA0KPiA+IFdoeSB5b3Ug
YXJlIG5vdCB1c2luZyBvYnZpb3VzIG5hbWUgZm9yIHRoaXM6IHNsaWNlX2NvdW50ID8NCj4gDQo+
IHNsaWNlX2NvdW50IGlzIG5vdCBvYnZpb3VzIGltby4gSXQgY291bGQgbWVhbiB0aGUgbnVtYmVy
IG9mIHNsaWNlcw0KPiBwZXINCj4gbGluZS9waXBlL3N0cmVhbS4gSXQncyB0aGUgZmlyc3Qgb25l
IHJlcG9ydGVkIGJ5IHRoZSBzaW5rLg0KDQpvaw0KDQo+IA0KPiA+IA0KPiA+ID4gwqAJaW50IHJl
dDsNCj4gPiA+IMKgDQo+ID4gPiDCoAkvKg0KPiA+ID4gQEAgLTIzODMsMzAgKzIzODQsMjYgQEAg
aW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gPiA+IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gPiA+IMKgDQo+ID4gPiDCoAkvKiBDYWxjdWxhdGUgU2xpY2UgY291bnQgKi8N
Cj4gPiA+IMKgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+ID4gPiAtCQlwaXBl
X2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50ID0NCj4gPiA+ICsJCXNsaWNlc19wZXJfbGluZSA9DQo+
ID4gPiDCoAkJCWRybV9kcF9kc2Nfc2lua19tYXhfc2xpY2VfY291bnQoY29ubmVjdG8NCj4gPiA+
IHItPmRwLmRzY19kcGNkLA0KPiA+ID4gwqAJCQkJCQkJdHJ1ZSk7DQo+ID4gPiAtCQlpZiAoIXBp
cGVfY29uZmlnLT5kc2Muc2xpY2VfY291bnQpIHsNCj4gPiA+ICsJCWlmICghc2xpY2VzX3Blcl9s
aW5lKSB7DQo+ID4gPiDCoAkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiA+IMKgCQkJ
CcKgwqDCoCAiVW5zdXBwb3J0ZWQgU2xpY2UgQ291bnQNCj4gPiA+ICVkXG4iLA0KPiA+ID4gLQkJ
CQnCoMKgwqAgcGlwZV9jb25maWctDQo+ID4gPiA+ZHNjLnNsaWNlX2NvdW50KTsNCj4gPiA+ICsJ
CQkJwqDCoMKgIHNsaWNlc19wZXJfbGluZSk7DQo+ID4gPiDCoAkJCXJldHVybiAtRUlOVkFMOw0K
PiA+ID4gwqAJCX0NCj4gPiA+IMKgCX0gZWxzZSB7DQo+ID4gPiAtCQl1OCBkc2NfZHBfc2xpY2Vf
Y291bnQ7DQo+ID4gPiAtDQo+ID4gPiAtCQlkc2NfZHBfc2xpY2VfY291bnQgPQ0KPiA+ID4gKwkJ
c2xpY2VzX3Blcl9saW5lID0NCj4gPiA+IMKgCQkJaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3Vu
dChjb25uZWN0b3IsDQo+ID4gPiDCoAkJCQkJCcKgwqDCoMKgDQo+ID4gPiBhZGp1c3RlZF9tb2Rl
LT5jcnRjX2Nsb2NrLA0KPiA+ID4gwqAJCQkJCQnCoMKgwqDCoA0KPiA+ID4gYWRqdXN0ZWRfbW9k
ZS0+Y3J0Y19oZGlzcGxheSwNCj4gPiA+IAkJCQkJCcKgwqDCoMKgDQo+ID4gPiBudW1fam9pbmVk
X3BpcGVzKTsNCj4gPiA+IC0JCWlmICghZHNjX2RwX3NsaWNlX2NvdW50KSB7DQo+ID4gPiArCQlp
ZiAoIXNsaWNlc19wZXJfbGluZSkgew0KPiA+ID4gwqAJCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sDQo+ID4gPiDCoAkJCQnCoMKgwqAgIkNvbXByZXNzZWQgU2xpY2UgQ291bnQgbm90DQo+ID4g
PiBzdXBwb3J0ZWRcbiIpOw0KPiA+ID4gwqAJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiA+IMKgCQl9
DQo+ID4gDQo+ID4gWW91IGNvdWxkIHNoYXJlIGhhbmRsaW5nIG9mICFzbGljZXNfcGVyX2xpbmUg
Zm9yIERQIGFuZCBlRFAuDQo+IA0KPiBJIGRvIHRoYXQgbGF0ZXIgaW4NCj4gIlVuaWZ5IERQIGFu
ZCBlRFAgc2xpY2UgY291bnQgY29tcHV0YXRpb24iDQo+IA0KPiBsZWF2aW5nIHRoZSBjaGFuZ2Vz
IGluIHRoaXMgcGF0Y2ggc2ltcGxlLg0KDQpPaywgdGhhbmsgeW91IGZvciBwb2ludGluZyBpdCBv
dXQ6DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCg0KPiANCj4gPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXINCg0K
