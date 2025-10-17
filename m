Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84872BE812B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 12:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7374F10EBA7;
	Fri, 17 Oct 2025 10:30:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NSo1E+Yy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A354C10EBA1;
 Fri, 17 Oct 2025 10:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760697016; x=1792233016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VFC4Hz44ywzVLZknjx1Tu2Fp/XNAEdiChFVuSZPeRNw=;
 b=NSo1E+YybYzWTigJZNqf5f8gkuwh+qlogR84ZagAVYNHjNDoRxiDJIUL
 qV/FcceTvLIf1SxmXdYm2qyJoMUu/bwtcoUioLsIx3MRClFZj415kmOPn
 HNQ4xarSP6jZVvr69C2Ey6LXq5dOYtyu411dlXUftToL2VFfVmZ13hH4o
 18B3U0J7AScgQXBEaGK/9JkbnnJUnXiW6bjg3ImwUdE6cPSBJK8h3hjGE
 e4W+X2ecjMUV2Oecuh4247vgTeoIo25+HFr41H2t6xWfb/yM+RedRPNOi
 TxuhFuacfSRkVdXMYOGjnK3T646o2fc685IEmlY5JMy5hq021ZKyl5jZo A==;
X-CSE-ConnectionGUID: c+9rt4mIRge4MCbwCcCHoQ==
X-CSE-MsgGUID: 5whOKrHaSEOf1nwXbykx/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73576765"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="73576765"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:30:15 -0700
X-CSE-ConnectionGUID: jy46zwyNSW2lZS9mcHHB/Q==
X-CSE-MsgGUID: IBzrT5fETSqFdfKIEikbhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182257907"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:30:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:30:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 03:30:14 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:30:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=do9/pwsGJHKpVpTgY+UsNbsxdTjrDXpyVLwu7cn+2hrNxqAPw8L8q9AAoiK5zOxVwRGx0zb3BKd/JoYEesjQn0xuQlFjFsfuSvqyfKKMAUOysL0phPripZAw/F8swWe6dGpKrJziolDUMHTPLSlxSBIMoGprcMNo+/34mrBCaZbzqWe7CrzTYSRTIH8GuubRey2dfPTIEWpLYgSehqUy4aCER9xdpOkuAsyQCvuTuqMkLQBxbq2b0/JJX8N+xdmVRlaWBZ7WpO2zzmdeH39OtR68qn4Q0vzoCqi5+BiWfzThoF3adkA242kpLVDRj+KLvpeyfalXdPXpcYceLB1/AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VFC4Hz44ywzVLZknjx1Tu2Fp/XNAEdiChFVuSZPeRNw=;
 b=p8xwFhGugortZFAJAPi2+MRwp79quTkcKUE8PmB8bRb6GQNYsznOzF4yfqat+eI16+4TZFf+emAvo/ynZZa4DDgGvB3s8xyThIN+T2oy7hVGqQy+pgUaBgFTeUpDJAyMYmZgZHJOUtWJglmSB0PsyDsVnzH4rw1DlWjTOgntArs4zlRDItRWM8ZFkLAz0yuCahJAH+X19fMcWSsPNVXuoZ6Udw8N1N8tC6z+CdiUSyj2hGw2BiL+04rCxMeG12uRnRD6oQOTAi+/SjnwjB6Y16NasecjnELsbIbOAe5CsXkAQyCk93j9XxUMC2qCnFOsOBtMHU4hc91qMs6rsO4zLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6706.namprd11.prod.outlook.com (2603:10b6:510:1c5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 10:30:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 10:30:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcPyUPz2Y/dnBy/UmpWoP/5QJAR7TGDIuAgAAIa4CAAAXlgIAABOAAgAAEAIA=
Date: Fri, 17 Oct 2025 10:30:10 +0000
Message-ID: <59dd31e69ca695282e0a854793c6844f3d69456b.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
 <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
 <043a61da1973f6bfd5cc9b45c84c1c13e038828e.camel@intel.com>
 <7faa7134eb0ef1a558bc71c5e9f30125132a55a1.camel@intel.com>
In-Reply-To: <7faa7134eb0ef1a558bc71c5e9f30125132a55a1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6706:EE_
x-ms-office365-filtering-correlation-id: 9a67a06e-9db8-49e6-6a46-08de0d682638
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UmhOSVZaR2RkdmtKcjBHMmsyYXVyYXkrNVdXaVBwaWlaQUE4TDdQODdPSCtn?=
 =?utf-8?B?c3FZV0JqaUFYYll2dVFkT0xqR29XVXIxK0FBT2owOHJLUjZ5dUFzN3owU3dH?=
 =?utf-8?B?QjMrTlpMZGtXM0pUa2NpQnBHLzNSbEExVEtuZUlneFA2SGVaVEw3bHRBc2ZO?=
 =?utf-8?B?a2lHelVLSmhFbEJZRjhvZVJxSWRqRUZrRmFaemtoakc4SHVtVUdmM3ZSai9K?=
 =?utf-8?B?TjByMjVkczZPQTJuTTN3bjI3dzgwWDNVWXJ3Y3R6RnFMVStLWVo0QzZIY2tS?=
 =?utf-8?B?d2RTWHZrVkpjUnF3cFdIWENONnl6bDJOZlN2VU1iV0lINnpob3ZiTTNkV29o?=
 =?utf-8?B?UlIvV09UU0s0MU5WM2t6NXp4cWpjRFZOWGptdzJvVXF6ejQ5SkRSa3NLUk1t?=
 =?utf-8?B?RFg2ZWJ4TGdYUWZaNUU5SDFWMHJTejlPWlI0U2R5bXBXOGlCK1lCOVNlWkdH?=
 =?utf-8?B?R0prSWpnTWRMTm1ySVdyUmFPQyttL2kxVHdadGRKVUhNS3Y5VmRSbnRHL3gz?=
 =?utf-8?B?bUdlM1FrUHR3aE9wbHpqZUFTVTU1MXFvQnQ3RmE3bnh1eHRNZGExWGJzV0Jl?=
 =?utf-8?B?NHViQnNTQTNyS2FCQzRybnIzNEd0WXNTeUh0aWRVZmh6cnVjWkpTTnVZMktz?=
 =?utf-8?B?NXJiZEFBZFRXVkZIT1FXU3RZL3FLMnlsT24vSkh1aDV1NzV6b1U3OXpYMWh4?=
 =?utf-8?B?OWxKb1g1MEZKSVRGWXlEQ2QwZUtlanBiYUMxWHZZOXBzbkJSVzAvblFINjZC?=
 =?utf-8?B?VEUreXpXY2d3K0diQ1haYjg5dEZFaFZMNEo4ZVA0R1hhQVRLYmVOL2NFdDdW?=
 =?utf-8?B?ZkpJQ24xYXg3S2JpRFV2WEVjanlGdElwNkJUMjYraEFzV1BoQkpwelRHL3A1?=
 =?utf-8?B?TFhaMFZacm5iM1ZmL3pTeXJJeWpFbzNyRjhTWkl6NllGSDhhSHFtTHY1OEdl?=
 =?utf-8?B?UXRsZ1F6UWlGanhzcFdLci9sWWY4eTlGMUhDUCt0MURJclVUd0RWemVNVGQ4?=
 =?utf-8?B?QUR0Qk9leE5ZbUp5YUFBMkZVTmdUMWJvN3d5MXRxbjkwbGlhOHZrajl6djNo?=
 =?utf-8?B?cmhaRk5mcmxpZGNiQTdaMnJyUGpLdVhRcGV2V3pnUUdXUGhlTFIyUW1hY1Vk?=
 =?utf-8?B?NkxUZ2laTEpXc09iUFhEaUFJNExIYTF1cXFMQWo1eXNIYWlPOVF4U3o2SGVa?=
 =?utf-8?B?cVg1RklXQzFCMmVyVnNqNGtUTHhGa09CTzdsN3hqVUZvcitURi80b2RTczRW?=
 =?utf-8?B?Sy9acE1BTkVmamlTOWZCVGdWaHJScUtNcit5T1FuNDhUN3Q1VWVmaXBBNUhs?=
 =?utf-8?B?WEE3Ly9yWWNSV0tpZ0hDcmZ4a3pBSTVMUnZGbVgxb2hYSGNDSFhDZjFOUVhq?=
 =?utf-8?B?b2xnZjJqajNHVjNJZVhLZ0JsRk8wZUtCSHFTbTJCR204aDlCdkQ5LzVlNHgv?=
 =?utf-8?B?WHZwWHk4bHNNdTI3YVRVdG9HWDVxcGQ2QmJXWG16bXk0RFJ5RVpMR0xYTnVu?=
 =?utf-8?B?WWJMWDRRN3M4T0tzeDFzSVhDQU1hMDYzOHB0Z2xvRklidlVOMnI2K1c3ZmJM?=
 =?utf-8?B?YzdEc2tob2pNS0xxZ1N6bkpaeHkzckFJbUpCeXhIRjE1dlFRakc5TFpqOG0r?=
 =?utf-8?B?RS8xRnpqa0tDcW5IOVhJU3BUaEgvRlZrUTF1aTNDUW8relhOdVVPcm56bFhQ?=
 =?utf-8?B?dGFkUTJPSFFYVjkvamtJSHo5VVFUeTdmcWFtVlhXZ0RvTllhblQrRHYzQXR3?=
 =?utf-8?B?NVlYU2lNRWU2MTBqRDhBd1JodlFJMkZTNDdRM29OVUxQUGpmS3FBVnJ4dVVm?=
 =?utf-8?B?TGdvWlkxVndnRGRKNjhlRGFHeTJIZmRWcndYc2lxVUVROUpxMXN3em9xdHNM?=
 =?utf-8?B?MGMwN2hZeHlTekRPM3gxeEQ4UUpCcmtNY1RyYzNJU3lXNkV1TTl6cEZKU1lI?=
 =?utf-8?B?RmdXWU5Mbkp6b0tESnFBbk1yazdFckI4TUl3dWdSdEJHa0lzTWJURy9XZWdI?=
 =?utf-8?B?bWRESWpYc2JEUmR0TDBkK3czM1hobE5zME84Zk12STl0Rmt0T2lhVzRoV2pt?=
 =?utf-8?Q?r2y65f?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnBLTS9ROHNwYXd4WGU2WmJUdlMxNDA3ZWROU3FWd3EzdTROaXNlOHpJNFBh?=
 =?utf-8?B?TmFabGpaZElzbXY0MXkxWGtRUlgyZ3l2VUpHWG0zQnFFb3NZSDdvenRMMW5M?=
 =?utf-8?B?clNjUDdFeXZ6Tlp2cVNtejJEM3RuaXJZOVAyOU1Td25EVG5FclVxbUY1RXNR?=
 =?utf-8?B?UVhNK2hjREhONEk0RUFBWGxpMW9FTjZlVHpyZjRBVExiNGtqYStYYXBmUGYy?=
 =?utf-8?B?NTFBZnA2QTFMVWRmc3AvK04xblc0TEN6eGtmNGR3TUVIZjFCdDd0VGF1bXJp?=
 =?utf-8?B?MDZqZzVEYXE1Z09LNXBRUlFmWkVibnc1dUFZL3NWS0tEalRKcUZWc0RTREZR?=
 =?utf-8?B?cFdQNjFWR2FMaHc5WkJxdHFHM1h2ZkkzdUE2MzVCUUNxUTFtMGFEQ1NxYnJm?=
 =?utf-8?B?WjFPdnRiWndRUmI2VlZxM0FpZjFKckNLNlZjWTFpdm5RQnZnZ0c2Z1NGdTRu?=
 =?utf-8?B?RTl0bjJqcWZjR0xkSmZ4MFFjWVZvdkRqYnA4RzlYSmRqSVdGYnhhaGNmMmZ1?=
 =?utf-8?B?VW1Ockk5QXB5Z09LajhoMjM2dGMyTStNNzY4ZmlEL1BDMENsTlA1MjRsNnIx?=
 =?utf-8?B?Mm1FOFoxVmxtTU52ZzVNL0d3U2lGT3kvQ09VeTByMUZ3M3BUcFdMWk9SL1pL?=
 =?utf-8?B?Wnl4N1ZhT0djK0tJWU8yVXhBZDhKY3dOT2ZGNVp4cHVqeEJ0U3pObTNocHBD?=
 =?utf-8?B?K3E0WmpzQWl0TVZLOWZmTjBHNGp6TDhsQlppcVhuUjcxak1wSUY1WHFwNnRp?=
 =?utf-8?B?OGsrTzZ3cVc2NExIMTRBbEp2Q2Y3T2Y5OWVGNHNGTHJyWFV2TEVodWxEVU5K?=
 =?utf-8?B?ZUIxUDU1ZDJNdkFnZnp5bTdNQUovc09iRTBhb1EwY0dUSGsvb0pmbExIOTdS?=
 =?utf-8?B?YkVKOUQreHlxc3lvRUdvUVZ0OVEzelo2NnJPNGRNZ21qQjB0T1VFY0RxVzlC?=
 =?utf-8?B?SU82MGcxb0o5cm12bllUN3RQcmM4dWVrWEp2VVhFT2xEZURaYm5jUTNzY3Zj?=
 =?utf-8?B?dG5FdmI1SXRnWkFibWhDRnNESC9ZMUxBNUs5b0xBRHc0K3NkUDluQ21idWlD?=
 =?utf-8?B?QkgxWmxOekFyVSs2dWl1WWFVbDNnR3ZqNzhOeERZNE4rUkJkSVhTUzYxb3Nl?=
 =?utf-8?B?bTZpU2FPZnQ1RU9OcVdjcVRTUk02UVQ2ZVBIQmxYQlVxaEI3Z0hSSzJseHZP?=
 =?utf-8?B?V2d1ZkorMWZuQ2VRRzhRcFBmL256VWxGMFVKRjJzY0lqSWJUK1kzTGpTZUg5?=
 =?utf-8?B?ejJYWmd5WUxSWlJpRGw3cXBkc3RXVTB1eG8zRTJZcXZMSXNQSnJ6VnJmUHhP?=
 =?utf-8?B?Y3lRZFRQNlNVMmVmSUpKVkdFaUNiRDk0VHJQTUdlSk9EQlFHdWhoRGpZWW1i?=
 =?utf-8?B?QVFQN2V1TW5FTTZOVzN5ZlB3VG1vTjdxajFaU25pOGU3blJMbHZsSHk3SUlj?=
 =?utf-8?B?VWU0cUk2M0I0L3FOOWViQ3hyQWcwdXZieVRGd2ZwR3pjNE5DMmtlcE9kdmo3?=
 =?utf-8?B?ekZVdmpJNVQ3ajU4UEpDemsyUzBEcUdyRkxaY0dNVjFSelc0OUJGdmVjQVQ1?=
 =?utf-8?B?akJ0UFMzSk5jNlNxK05obkkwQTlzaEVUUjRVWXRCY2hFU0lEVlhiYm9NTFhq?=
 =?utf-8?B?cnN6OHhrSHNESUtlK3U5R0J4WDR4ZVJUTmtReU43dFM1OWJBdnFXcllqZUhO?=
 =?utf-8?B?RHN3Q01JcmFPQ0tIRm01elJpbWxaTm9RZlRVSzhMYTM3RXJrTjl2eVl3M2Er?=
 =?utf-8?B?a05YR1RTK0xqaDBnYlNadFdPbWRpbVF5aWdQOXgrb0RvbEJhd3kyTFN0SVpE?=
 =?utf-8?B?RzZIajc5S2FhMU4zUnc2ODhBa0ppL3N1bERPUFdUZXVhTDA2WWtvR2NiVTFC?=
 =?utf-8?B?M25CTFVDZTNqT2NLaUZGSzlGZE1QSlh4NDNSZTk4U2M4SXpxYWdIUnpPd1hl?=
 =?utf-8?B?R0ZteFlNTlZGR1pySVZ4UDRkNnlYOGlxOVkrVmtoL1NPZ0JSRTdFb1VxVytw?=
 =?utf-8?B?cnc2aDVIc202SkVrK2RnRzF6Q3c4OXJ4OHNLaitkRmVwQlcyU3duSlhPajhz?=
 =?utf-8?B?enI4Tm96d0xKalByTkdrcTNlN1REcnFscFNXWW1WdW1RbGFZY3hKcXgzQVk1?=
 =?utf-8?B?aEo3ZWpiM1orR1JLbXZOOTBsc1VoYStaeWlEU0E0TGRpRitjUFE5aEJjc1pr?=
 =?utf-8?B?dW8xbW4vY01uZXB0UjlBaUVQUXU3RE5pQURicndQY01oZnBMelNEeXBFcmtH?=
 =?utf-8?B?QjBxWThpU0pvRVFPTCtzc3NRNlJ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F7536FC9E7A40A41A01E7C60EF2CC61C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a67a06e-9db8-49e6-6a46-08de0d682638
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 10:30:10.1914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wp/7Jhs7SU79f/TMpn5yPAL0KdR06/LiU5+25zz9QoOpOm1FnWnmKhU0EFgMBXb3JxvmgJB8+SNE8GP+6GCRKL7SCa8YyGsefcgzhUmZB40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6706
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDEzOjE1ICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNS0xMC0xNyBhdCAxMjo1OCArMDMwMCwgSG9nYW5kZXIsIEpvdW5pIHdy
b3RlOg0KPiA+IE9uIEZyaSwgMjAyNS0xMC0xNyBhdCAxNTowNyArMDUzMCwgTmF1dGl5YWwsIEFu
a2l0IEsgd3JvdGU6DQo+ID4gPiANCj4gPiA+IE9uIDEwLzE3LzIwMjUgMjozNyBQTSwgSG9nYW5k
ZXIsIEpvdW5pIHdyb3RlOg0KPiA+ID4gPiBPbiBGcmksIDIwMjUtMTAtMTcgYXQgMTA6MzEgKzA1
MzAsIEFua2l0IE5hdXRpeWFsIHdyb3RlOg0KPiA+ID4gPiA+IEludHJvZHVjZSBhIGhlbHBlciB0
byBjb21wdXRlIHRoZSBtYXggbGluayB3YWtlIGxhdGVuY3kgd2hlbg0KPiA+ID4gPiA+IHVzaW5n
DQo+ID4gPiA+ID4gQXV4bGVzcy9BdXggd2FrZSBtZWNoYW5pc20gZm9yIFBTUi9QYW5lbCBSZXBs
YXkvTE9CRg0KPiA+ID4gPiA+IGZlYXR1cmVzLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoaXMg
d2lsbCBiZSB1c2VkIHRvIGNvbXB1dGUgdGhlIG1pbmltdW0gZ3VhcmRiYW5kIHNvIHRoYXQNCj4g
PiA+ID4gPiB0aGUNCj4gPiA+ID4gPiBsaW5rDQo+ID4gPiA+ID4gd2FrZQ0KPiA+ID4gPiA+IGxh
dGVuY2llcyBhcmUgYWNjb3VudGVkIGFuZCB0aGVzZSBmZWF0dXJlcyB3b3JrIHNtb290aGx5IGZv
cg0KPiA+ID4gPiA+IGhpZ2hlcg0KPiA+ID4gPiA+IHJlZnJlc2ggcmF0ZSBwYW5lbHMuDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gQnNwZWM6IDcwMTUxLCA3MTQ3Nw0KPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gPiA+
ID4gPiAtLS0NCj4gPiA+ID4gPiDCoMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDEyICsrKysrKysrKysrKw0KPiA+ID4gPiA+IMKgwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHzCoCAxICsNCj4gPiA+ID4gPiDCoMKgMiBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiBpbmRl
eCA3MDNlNWY2YWYwNGMuLmE4MzAzYjY2OTg1MyAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+IEBAIC00NDE2
LDMgKzQ0MTYsMTUgQEAgdm9pZA0KPiA+ID4gPiA+IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19s
YXRlKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+ID4gPiDCoCAN
Cj4gPiA+ID4gPiDCoMKgCWludGVsX3Bzcl9zZXRfbm9uX3Bzcl9waXBlcyhpbnRlbF9kcCwgY3J0
Y19zdGF0ZSk7DQo+ID4gPiA+ID4gwqDCoH0NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gK2ludCBp
bnRlbF9wc3JfbWluX2d1YXJkYmFuZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+
ICpjcnRjX3N0YXRlKQ0KPiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSA9DQo+ID4gPiA+ID4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsN
Cj4gPiA+ID4gPiArCWludCBhdXhsZXNzX3dha2VfbGluZXMgPSBjcnRjX3N0YXRlLQ0KPiA+ID4g
PiA+ID4gYWxwbV9zdGF0ZS5hdXhfbGVzc193YWtlX2xpbmVzOw0KPiA+ID4gPiA+ICsJaW50IHdh
a2VfbGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCj4gPiA+ID4gPiArCQkJIHBz
cjJfYmxvY2tfY291bnRfbGluZXMoY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiA+IGFscG1fc3RhdGUu
aW9fd2FrZV9saW5lcywNCj4gPiA+ID4gPiArCQkJCQkJY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiA+
IGFscG1fc3RhdGUuZmFzdF93YWtlX2xpbmVzKSA6DQo+ID4gPiA+ID4gKwkJCSBjcnRjX3N0YXRl
LQ0KPiA+ID4gPiA+ID5hbHBtX3N0YXRlLmlvX3dha2VfbGluZXM7DQo+ID4gPiA+ID4gKw0KPiA+
ID4gPiA+ICsJcmV0dXJuIG1heChhdXhsZXNzX3dha2VfbGluZXMsIHdha2VfbGluZXMpOw0KPiA+
ID4gPiBobW0sIG5vdyBpZiB5b3UgYWRkOg0KPiA+ID4gPiANCj4gPiA+ID4gaWYgKGNydGNfc3Rh
dGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSkNCj4gPiA+ID4gCQlwc3JfbWluX2d1YXJk
YmFuZCsrOw0KPiA+ID4gDQo+ID4gPiBJIGRpZCBub3QgZ2V0IHRoaXMgcGFydC7CoERvIHdlIG5l
ZWQgdG8gYWNjb3VudCBmb3IgMSBtb3JlDQo+ID4gPiB3YWtlbGluZXMNCj4gPiA+IGlmIA0KPiA+
ID4gdGhpcyBmbGFnIGlzIHNldD8NCj4gPiANCj4gPiBJZiB5b3UgbG9vayBhdCBob3cgdGhhdCBm
bGFnIGFmZmVjdHMgdmJsYW5rIGNoZWNrIGluIA0KPiA+IGludGVsX3Bzcl9jb21wdXRlX2NvbmZp
Z19sYXRlOg0KPiA+IA0KPiA+IC4uLg0KPiA+IHN0YXRpYyBib29sIF93YWtlX2xpbmVzX2ZpdF9p
bnRvX3ZibGFuayhjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNf
c3RhdGUsDQo+ID4gCQkJCQlpbnQgdmJsYW5rLA0KPiA+IAkJCQkJaW50IHdha2VfbGluZXMpDQo+
ID4gew0KPiA+IAlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0K
PiA+IAkJdmJsYW5rIC09IDE7DQo+ID4gLi4uDQo+ID4gDQo+ID4gU28gdG8gdGFrZSB0aGF0IGlu
dG8gYWNjb3VudCB3aGVuIGNhbGN1bGF0aW5nIG1pbmltdW0gZ3VhcmRiYW5kDQo+ID4gbmVlZGVk
DQo+ID4gYnkgUFNSIHlvdSBuZWVkIHRvIGluY3JlYXNlIGJ5IG9uZS4gU2FtZSBnb2VzIHdpdGgg
U0NMOg0KPiA+IA0KPiA+IC4uLg0KPiA+IAlpbnQgc2NsID0gX2ludGVsX3Bzcl9taW5fc2V0X2Nv
bnRleHRfbGF0ZW5jeShjcnRjX3N0YXRlLA0KPiA+IAkJCQkJCcKgwqDCoMKgDQo+ID4gbmVlZHNf
cGFuZWxfcmVwbGF5LA0KPiA+IAkJCQkJCcKgwqDCoMKgDQo+ID4gbmVlZHNfc2VsX3VwZGF0ZSk7
DQo+ID4gCXZibGFuayAtPSBzY2w7DQo+ID4gLi4uDQo+ID4gDQo+ID4gWW91IGFyZSBhbHJlYWR5
IHBhcnRpYWxseSB0YWtpbmcgaW50byBhY2NvdW50IFBTUiBuZWVkcyB3aGVuDQo+ID4gY2FsY3Vs
YXRpbmcgb3B0aW1pemVkIGd1YXJkYmFuZCBleGNlcHQgdGhlc2UgdHdvIGxpbmVzIHdoaWNoIGFy
ZQ0KPiA+IG5lZWRlZA0KPiA+IGNvbmRpdGlvbmFsbHkuDQo+ID4gDQo+ID4gQWxzbyBpbnRlbF9w
c3JfY29tcHV0ZV9jb25maWcgaXMgcnVuIGF0IHRoaXMgcG9pbnQgLT4geW91IGtub3cNCj4gPiB3
aGljaA0KPiA+IG9uZSB0byB1c2U6IGF1eGxlc3Mgd2FrZSB0aW1lIG9yIGF1eCB3YWtlIHRpbWUu
IG5vIG5lZWQgdG8gdXNlDQo+ID4gbWF4KCkNCj4gPiB3aXRoIHRoZW0uIEp1c3QgY2hvb3NlIHRo
ZSBvbmUgd2hpY2ggaXMgcmVsZXZhbnQuDQo+ID4gDQo+ID4gV2l0aCB0aGVzZSBjaGFuZ2VzIHlv
dSBjb3VsZCBkcm9wIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlIGFzDQo+ID4gdmJsYW5r
IHdvdWxkIGJlIGxvbmcgZW5vdWdoIGZvciBQU1IgbW9kZSBjb21wdXRlZCBieQ0KPiA+IGludGVs
X3Bzcl9jb21wdXRlX2NvbmZpZywgbm8/DQo+IA0KPiBPaywgbm90aWNlZCBub3cgdGhpcyBpbiB0
aGUgbGFzdCBwYXRjaDoNCj4gDQo+IC4uLg0KPiBjcnRjX3N0YXRlLT52cnIuZ3VhcmRiYW5kID0g
bWluKGd1YXJkYmFuZCwNCj4gaW50ZWxfdnJyX21heF9ndWFyZGJhbmQoY3J0Y19zdGF0ZSkpOw0K
PiAuLi4NCj4gDQo+IFNvIGlmIHdlIG5lZWQgdG8gZmFsbCBiYWNrIHRvIGludGVsX3Zycl9tYXhf
Z3VhcmRiYW5kIHdlIG5lZWQgdG8gaGF2ZQ0KPiB0aGF0IGludGVsX3Bzcl9jb21wdXRlX2NvbmZp
Z19sYXRlLg0KPiANCj4gQW55d2F5cyBJIHRoaW5rIHlvdSBuZWVkIHRvIHRha2UgaW50byBhY2Nv
dW50IHRoYXQNCj4gcmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lIGFuZCBfaW50ZWxfcHNyX21p
bl9zZXRfY29udGV4dF9sYXRlbmN5IGluDQo+IGludGVsX3Bzcl9taW5fZ3VhcmRiYW5kLg0KDQpB
bHNvIHlvdSBjYW4gdXNlIGF1eGxlc3Mgd2FrZSB0aW1lIGZvciBQYW5lbCBSZXBsYXkgd2l0aCBB
TFBNIGFuZCBhdXgNCndha2UgdGltZSBmb3IgUFNSMiBiZWNhdXNlIG9ubHkgZm9sbG93aW5nIGNo
YW5nZXMgYXJlIHBvc3NpYmxlIGluDQppbnRlbF9wc3JfY29tcHV0ZV9jb25maWdfbGF0ZToNCg0K
UFNSMiAoYXV4IHdha2UgdGltZSkgLT4gUFNSMSAtPiBndWFyZGJhbmQgbGVuZ3RoIGRvZXNuJ3Qg
bWF0dGVyDQpQYW5lbCBSZXBsYXkgKGF1eGxlc3Mgd2FrZSB0aW1lKSAtPiBkaXNhYmxlZCAtPiBn
dWFyZGJhbmQgbGVuZ3RoDQpkb2Vzbid0IG1hdHRlcg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVy
DQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4gQlIsDQo+ID4g
DQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IFdoYXQgd2Ug
d2FudCB0byBkbyBpcyB0byBjaGVjayBmb3IgbWluIGd1YXJkYmFuZCBmb3IgDQo+ID4gPiBwYW5l
bF9yZXBsYXkvc2VsX3VwZGF0ZSBiYXNlZCBvbiB0aGUgcmVxdWlyZWQgd2FrZWxpbmVzLg0KPiA+
ID4gDQo+ID4gPiBXaGV0aGVyIHdlIGNhbiB1c2UgdGhlIGF1eGxlc3Nfd2FrZV9saW5lcyBhbmQg
d2FrZV9saW5lcyBhcw0KPiA+ID4gY29tcHV0ZWQgDQo+ID4gPiBhYm92ZSB0byBlc3RpbWF0ZSB0
aGUgbWF4IHdha2VsaW5lcyBvciBpbnN0ZWFkIHdlIHNob3VsZCB1c2UNCj4gPiA+IGZ1bmN0aW9u
cyANCj4gPiA+IGZyb20gYWxwbS5jIDoNCj4gPiA+IA0KPiA+ID4gaW9fYnVmZmVyX3dha2VfdGlt
ZSgpIGFuZCBfbG5sX2NvbXB1dGVfYXV4X2xlc3Nfd2FrZV90aW1lKCkgdG8NCj4gPiA+IGdldA0K
PiA+ID4gdGhlIA0KPiA+ID4gd29yc3QgY2FzZSB3YWtlbGluZXMuDQo+ID4gPiANCj4gPiA+IA0K
PiA+ID4gPiANCj4gPiA+ID4gV2hhdGV2ZXIgaXMgdGhlIFBTUiBtb2RlIGl0IGNhbiBiZSBlbmFi
bGVkIHdoYXQgY29tZXMgdG8gdmJsYW5rDQo+ID4gPiA+IHJlc3RyaWN0aW9ucyBhbmQgeW91IGNh
biBkcm9wIHBzcl9jb21wdXRlX2NvbmZpZ19sYXRlPw0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IEkg
dGhpbmsgd2UgY2Fubm90IGRyb3AgdGhlIHBzcl9jb21wdXRlX2NvbmZpZ19sYXRlIGFzIGl0IGNo
ZWNrcw0KPiA+ID4gd2hldGhlciANCj4gPiA+IHRoZSBhY3R1YWwgZ3VhcmRiYW5kIGlzIGVub3Vn
aCBmb3IgUFNSIGZlYXR1cmVzLg0KPiA+ID4gDQo+ID4gPiBpbnRlbF9wc3JfbWluX2d1YXJkYmFu
ZCgpIGlzIHVzZWQgYWxvbmcgd2l0aCBvdGhlciBmZWF0dXJlcyB0bw0KPiA+ID4gaGF2ZQ0KPiA+
ID4gYW4gZXN0aW1hdGUgb24gdGhlIGd1YXJkYmFuZCB0aGF0IHdvcmtzIGZvciBhbGwgY2FzZXMs
IHdpdGhvdXQgYQ0KPiA+ID4gbmVlZA0KPiA+ID4gdG8gY2hhbmdlIHRoZSBndWFyZGJhbmQuDQo+
ID4gPiBJdCBpcyBib3VuZGVkIGJ5IHRoZSB2YmxhbmsgbGVuZ3RoIGF2YWlsYWJsZQ0KPiA+ID4g
DQo+ID4gPiBSZWdhcmRzLA0KPiA+ID4gDQo+ID4gPiBBbmtpdA0KPiA+ID4gDQo+ID4gPiA+IA0K
PiA+ID4gPiBCUiwNCj4gPiA+ID4gDQo+ID4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gPiAN
Cj4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+ID4gaW5kZXggYjE3Y2UzMTJkYzM3Li42MjBiMzU5
Mjg4MzIgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuaA0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgNCj4gPiA+ID4gPiBAQCAtODUsNSArODUsNiBAQCBib29sIGludGVsX3Bz
cl9uZWVkc19hbHBtX2F1eF9sZXNzKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2RwDQo+ID4gPiA+
ID4gKmludGVsX2RwLA0KPiA+ID4gPiA+IMKgwqAJCQkJwqDCoCBjb25zdCBzdHJ1Y3QNCj4gPiA+
ID4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ID4gKmNydGNfc3RhdGUpOw0KPiA+ID4gPiA+
IMKgwqB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4gPiDCoMKgCQkJCcKgwqAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUNCj4gPiA+ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ID4gK2ludCBpbnRl
bF9wc3JfbWluX2d1YXJkYmFuZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+ICpj
cnRjX3N0YXRlKTsNCj4gPiA+ID4gPiDCoCANCj4gPiA+ID4gPiDCoMKgI2VuZGlmIC8qIF9fSU5U
RUxfUFNSX0hfXyAqLw0KPiA+IA0KPiANCg0K
