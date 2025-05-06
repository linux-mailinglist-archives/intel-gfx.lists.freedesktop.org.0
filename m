Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2644DAAD06B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C4810E119;
	Tue,  6 May 2025 21:57:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FxkWxxm3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B61310E119;
 Tue,  6 May 2025 21:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746568646; x=1778104646;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=uohCumPTe/uuU8ed38gvqEqtKkqAEsw+vJ3GFpVQALA=;
 b=FxkWxxm3Fwc0jjqC0wc1N+0aOIRe6H23JqN9bRWq0itXoIC5+y/j8hhx
 TiowmbmV+hJdDvnbMSNRx8Bvqf+M1yvOnf8CEoGcNXwMAO2cpylgUtvWZ
 I3RlRuOb8IOW5LSf+w7D9EhwvYG4AtXR/WWXaG6wjgUiHsm+velnKjtnc
 xK032aRnmteoN2kPelwnotw+DHAUNkN+TLKySAMnTwbB6clfNjlOxkFlk
 pOdcXRRy31Lsta40axWBuD648djml1OTXb2jk8zjYc0jFss3R7ssEM1do
 EQdCtzVsQd7uJn24wSq0oQzrkxaujfzhaNM5TZEhcmsGyJwMjh6ItQO/v g==;
X-CSE-ConnectionGUID: NetIzKLmRdqx3jYBPVzgNg==
X-CSE-MsgGUID: 147c880kROG3E+iQxg0IwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="73659529"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="73659529"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:57:24 -0700
X-CSE-ConnectionGUID: 6WdBaAyVS+yCKiMb0AYAOQ==
X-CSE-MsgGUID: oEGPl/plQey/nq++te8f9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="136701146"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:57:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:57:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:57:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:57:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jXVtoCRp1m2AN6n18gTLNYpVgYWJhYQR3BDSOE8vnzDTUS55DDgoO8InvPZUX/77qnKVC+EQPa2Yu3tTFsnCbNOrLW91Rfgo90bgjbMxha7rJVZXC8AVZWlE2j1NgVs78KHPH4/7LfMXBShKsFaxGZrvThcUlNuJ8+acc2NmQ6gJEieXLIFyb+dRVgrfPtOL9ZS2fCMHD0ytJlOOuaxwVkeWOf27Tm/RVYK+dkOvmlssHHAKmgF03V+FbeGiLbEP6SQFcBtsRquHltQg2k7TdgB5eM/NfNAN9U/7RCM+5ItzIw2InYvpd5aoipicMiqf8Nt2S237RMR/Ed8MiSRtJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qKgyF1IQSoFw9kpeW83Pd5EuwbK2jeNvkp6esz+X43s=;
 b=JBMXzKQWz5OsvwwSPSLahO8qfaTjAZBT5+jYHpRCx3bFT7Z+1h3qfyRHUr2u35ezzJCxlWRkiwl16FZ5qrYU2AG2bdQqz0P9QUjYcCgzx1t3E/QLnRsqzk+G+SLxKm2Iaf9IBU10kxN2Xo58OrFTRQVBf5kWdXaQIIHA4uXAgpLZOgmWfqwbwD7uYyrQHxxEbivbTXoOZsg1ql87dtdwBDs+dta9LWVHSZEzMpj0Jrv4GyMqXCGweU2uUrk7ma4m+QYSxAtxC+QA6W0k4iSY8Hp7y+DqlLXuV0GbSXp+mU3SJidx+O8Me8emZO5JvvH5HUquMwB2jUF0YxNnmv2AnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB6984.namprd11.prod.outlook.com (2603:10b6:303:22e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 21:57:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:57:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cover.1746529001.git.jani.nikula@intel.com>
References: <cover.1746529001.git.jani.nikula@intel.com>
Subject: Re: [PATCH 0/4] drm/i915/display: minor cleanups on drm_i915_private
 use
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:57:03 -0300
Message-ID: <174656862333.1401.304808228591437936@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P222CA0020.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB6984:EE_
X-MS-Office365-Filtering-Correlation-Id: bb6b1fc4-ea97-4255-d8d3-08dd8ce8f1dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVdGR0lMTDZ2Q3RwQmwrV0FRUUhPTzlLWWVPRURwcG55RE9CR1dNdzhuM0FD?=
 =?utf-8?B?eFFnVmlOOWhXL3FvWkJ6cWdyVi9CWXpxZ3FrMkRGRVR5dFllbmkwZURSMjhI?=
 =?utf-8?B?OGdXL2ovQ3FtRnE0ZU5HZEcwVmhIVG90OEhPOXVsZTc1dGxGNitLQ1VlbkZS?=
 =?utf-8?B?SXJPeUpBcTN6aVF2Z0lGU0kyRzEvYVNEWjIyelYrN0w4UXp2VFBlY0h6OWJC?=
 =?utf-8?B?eWw5eTE0bWFUS3U4LytzOGJIQWEzbHVaam56MEUySXJHcVJKZVJxSmF2Uloz?=
 =?utf-8?B?eHA5bEVJQVZvKzRNblUxUzJCNlVqWWpOSGZIaitZYW5RV2IwMU5BWjBReDRO?=
 =?utf-8?B?WTFtRXJ4TmFFRmJYREFZd3RVdEw0Rk9mS1VyKzNIb3NIaFdxTStHUkI0dzNs?=
 =?utf-8?B?WlhLYmJnL0xkNlRZV2J2Z0dBd0FvRDNBdCtSdFhPWVoyRzlLa2JBc2ZWd0Js?=
 =?utf-8?B?bFhFYXNNQXhnUkpWUTZNRnozTjRuamV1YkJYdmNzVjd0UkxocXpUcnlVcDZM?=
 =?utf-8?B?b254TUJXLy8vMGhnbXFwUXB5ZTk3VjYyUWVGRXY2QjdKUmtQcCtsTWgrZUND?=
 =?utf-8?B?Y1hPWUZaSUJEVHpxR1gyZnJLdmVlcFlETlJ0dWsxTGlWTVZUVHNTdzJPa1hk?=
 =?utf-8?B?RDNRcW1IajVPcEZqSHJoWHdzVXJvbDlnSnZJNnZaTnFJSWY0MFcrS2xCNmkz?=
 =?utf-8?B?SXZuQ2kxb3h2R20vRUZPZGJEWG1LbndIWWN0T2Zka05mdGY5K3JTWnBLRzVz?=
 =?utf-8?B?V2hURnpaTzl3ZW8xeThzWlhrNU1JT3pTNFlOYW1mQTdPckdjaGZUMHNuRVZ6?=
 =?utf-8?B?eFBaOTFYRWY0enhYS0luM2pKQng0UzlkSlJjdGI0bU1ORjV2MDJJZFNFZ2Zt?=
 =?utf-8?B?V3BtU0NxTkJQbWFGak9QeFFtVm9mQTlHR05EZzlKdGVxLzJsTnNpTjJ1VFZC?=
 =?utf-8?B?Y080THhnSnRTdk9zU3dIWWRFODdIdWlGd1g4K3U5aWptcHpwbTNBeE1kYlZ4?=
 =?utf-8?B?djVQd3ZBd1BFa21qaFlxeUVhNmNtY1RRUlhaR1dFRzFSaVB6WlM2SVQrRHN2?=
 =?utf-8?B?ZmJ1ZXQ5SGxNWjNpaDFMUFJwMXFyTDFvNUNVdm1USVFBK0YrZU5OV2YzN2Iw?=
 =?utf-8?B?OGdwQzRlc2RsYXNRV2syMW5lY2JYY0NNWUVVNVNMek9taEFjQjQ3TlI2YlJi?=
 =?utf-8?B?YU52VDRNWmIvbjNBZjBRVDdVZVVWc0djeENZbUJZdytVb3NjT0p4SXZtT3Qx?=
 =?utf-8?B?TGxUeml5TXF2UUtjNmxTblJDVE5xczY0bHBPcWhmYlNrSm12VVlDZHRWK0JE?=
 =?utf-8?B?N2RxcWlvL3pOZ3JZSytuVUtkbVZ5eTdmNWxJdmZWUFdiSCtzR1ZtZDk1VzM1?=
 =?utf-8?B?aU9rV000bVlSalNjYUpLT0VMdEM1MExWK2QyU3UrTVdzT1FPY0lIcEtlVXMx?=
 =?utf-8?B?aEpVSE5MKzhRQzJ2YWM3bkFheEdRb2xtVDJmQlRKekJnQWk2R2pTS2w2U0x0?=
 =?utf-8?B?THZvUVZpS1NEUkY5RFNmY3N4M20vU2FuaUZiZVhENTJXTmFvZmhvYmVVS1F5?=
 =?utf-8?B?Rnp3S2tFU2lZVzRTSW1kdHdqRUNjVWtSNlNDY296MHdJTnpJYlRDa0EwOGpG?=
 =?utf-8?B?VmtjaWl6WnNYMFBJZzRucDFzR1loUGJqZnk0T1FGUGN0NEp5Wkx2NENEYkdk?=
 =?utf-8?B?Wm1HV1lLcU1nODZFRzJFRldMdkoxMWxVL3UzZ0NNenRJSG1HUzBxakJoemdj?=
 =?utf-8?B?aDRHUFdobVFUSjM5c1QxV3VaakM5bGp2a0hDb2ViSFloc0pYSGRSREtIZVNU?=
 =?utf-8?B?M1duUlI3TXdZVmwwQ1FTV2o2Yi96KzBrcEljaW44dU9SWjIzaFNFMWlYTUYx?=
 =?utf-8?B?RjBmMHU5ZUxqY29vV243QmxFR2lRZlp3K0NpNUU4QytuN2pCaVo2UmJJWUJV?=
 =?utf-8?Q?J5kAa+QfwiI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3N4S3BNQmdLeDJSVTFtR2tncy9TalJWWWY3N0tOL2NwSjFXZXh3MVk4bjB5?=
 =?utf-8?B?MS9MZ0ZLeFowd2p0NU9EY2JGcEViUnF2LzJIaFpzVlFTeTBjRHY5TzF5VnhO?=
 =?utf-8?B?SWRKajA0dHZMckU2dGlhQTE3QWpyUWlGdWRDbnJtTWJ4Y0dvaVlVTExVayti?=
 =?utf-8?B?Y3M4NTdWRTV4anoxa0xxK3A3VDdURmVKZGVaSzcyVFVzcHFkNlFaQ2h5OG9P?=
 =?utf-8?B?RE9qWFcxRHBUM1lTTXpSWllmQkUzaHJFdklodllxc3VsS2E3Wm52R0didXY3?=
 =?utf-8?B?dGN3THZEL3JiM3J5UlFRcmhEdFo0ZGdoSVZPTGRpUWo5R1JkckIxK3hoZEp2?=
 =?utf-8?B?YndPRUZiV2dpVkZPZWRZVUdIV2xBY0pqVll3VlBRd0Q5c2pkQ2xUUE5Xdk41?=
 =?utf-8?B?a090SUNKWm1LQzBQblozc2lzTHdVbXBEWjFpQzg2VDUwNDE2WENHcnNpT0sy?=
 =?utf-8?B?VlNUMUNUQzJ0SHlJTDhxNWhGS0lDc3VBZXNreUhWWGw4RHBhVDF3ZW9Nbnhz?=
 =?utf-8?B?Szk0Y05tK3U4NUtzb0JuN0VJenRQamVpbzJWVUtsVGZaMkpNd1ZpTzI1TXhV?=
 =?utf-8?B?SVY0QVFFM2dDT1Y1ajJCQ1NEeTJVNytXM1IvaTNVSTlMYkg5dkpzNXMvcmVQ?=
 =?utf-8?B?U2dTM3hkcXpBRTJwUWdlQkdHclRhN0hjM05kMVZzalVSRHBxQVhGaHlGUGgx?=
 =?utf-8?B?STlTbmQ5Y3J2TjVOMSsyd3BxV2x3eVg4YmIxTzk1STlnT0xLRFhXUEpSdE9Y?=
 =?utf-8?B?aFdmN1NvMUFXTTNxc3FualUwMVFlSkF4alk0SkpVdE1NRG0wNWhCRlBwenF5?=
 =?utf-8?B?MitzVmhnem9zTENjM0FCeWpqUC9HYndXZDJnOGp6WmorbUU3NGRLR0JYdVQ5?=
 =?utf-8?B?ZHFRckpkNFIySllSYTVoVHZJS0hQSEYxNlBJRllZMzI4bnpBazhab0lNcUUx?=
 =?utf-8?B?R0FlalhtL0ZpazAvZlFKWnMxN0F1SWVQL2ZaSHRXd0NIUjFyMFNnZis5b1Ni?=
 =?utf-8?B?S1J6WUdwR2dLcll3WG9rMFhQeFdYMi9tL3hmSFpmMm1BaTRRVXYzOFBQR1BJ?=
 =?utf-8?B?dExmblV0TUpvQ0xoR25DeHFJWStVMHJHbk42SE9jUFpKV1FWc1NhTWpmRmsv?=
 =?utf-8?B?ME1NbGlvUlA0bHQ4TUlWejd6OUtucHdIUFJvYzJ3TTZqVE5WNVhNRjIxK0k5?=
 =?utf-8?B?N0ZLNlN5WEg4dE1DSlJka3ZoaWlSVVV2K1dBK0ZRd3ZzQll3VnZDNXZRajdz?=
 =?utf-8?B?T1VlWXlnNm0vbVBQM0F5KzNkL2hyYTMvSTZ0YVpSVkRDZGx1YXQxU0RjNnkv?=
 =?utf-8?B?Tk9oa0dkcUZIRGZ6clprY05aNnN4WXpxOGk2c3lEZFdqdnFLdFZiQjlOOXo0?=
 =?utf-8?B?bHZZVHZWdUtnKy9ZYjZxdzYxVWdGNExGTk44NkYyYjVmczNIY1FzcGoreUQ1?=
 =?utf-8?B?WXcrOG5Eb3lqZDRPZ0dlTE0wb2tIc1huNStOVGhQajl1K3oybk54ejdVS3Zu?=
 =?utf-8?B?VG5Vckh1ZDlTSHE2OUtGeHVjczlKRHhFREFNdG10MThtcGgrOEUxbGhTcDZ0?=
 =?utf-8?B?Z0h4MFRXTUE3NHNPNS9mYzkvRlZhTXRwRUlEL1FnSlpuKzNDUFprc3YrTitL?=
 =?utf-8?B?dnVEQ2FLa2dSV3NNZ0RoZFh1RVFTMCsrQS92eHJnaUttYXdvbG9ZcGdCQTN2?=
 =?utf-8?B?V29EZWRPUW1kdk9ucGpaYkdNUkVYZUQ3OE1CL29ZRTRLanlzeFNCaVpTVVpR?=
 =?utf-8?B?aHpYNVN6ZkRidWh2ZlVONzV2MHU5Uk93aVV6WmVTTFRwbTBIVVhMS2RJaG1C?=
 =?utf-8?B?SWRCazI0WTdnR2oyVko5WWNnZlN6VHppeFVvR3h3T0s2NTVxK3ZvN0thOTNi?=
 =?utf-8?B?dGlCekhjelJFeFBXZGF2RzErWGJSSEN5U0Rkei9JbmNpYjZCQ1E2ZUMvamxO?=
 =?utf-8?B?K1ZkK2RIY2J1M1BQK3VSNHB6TkRuck5KY3ZNNUNsQ25VRWRwMlpaZ3dhMDVo?=
 =?utf-8?B?bUxYODQwamxEMmtjWFVtUWRpS3FkQk1QTXBYRlQ2Mm9Sb3BtTEVTYXZkdzBY?=
 =?utf-8?B?ZGxGakNPYll1QlFTTG9Sb0c4NDNwczhKKzNpS25TT1RNcjdEQ1R5eWJ1c0dB?=
 =?utf-8?B?akpVSE1UM1VEWUs0TElNUElmM1hmNUxQMkdYeHczU3dwMGo0ZTMxTWV6YUdi?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb6b1fc4-ea97-4255-d8d3-08dd8ce8f1dc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:57:07.5779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MAUnrEBwHLuJtG8EDWnbIaLf+weL7JkY7e6YzcZ93VbFSER7mTluT/PHcAyF5sD2VWcbALc5Xfjh5nN+pt1ihg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6984
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

Quoting Jani Nikula (2025-05-06 07:57:15-03:00)
>
>Jani Nikula (4):
>  drm/i915/dsi: remove dependency on i915_drv.h
>  drm/i915/display: remove struct drm_i915_private forward declaration
>  drm/i915/bios: fix a comment referencing struct drm_i915_private
>  drm/i915/crtc: pass struct intel_display to DISPLAY_VER()

On the series,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
> drivers/gpu/drm/i915/display/intel_bios.h         | 2 +-
> drivers/gpu/drm/i915/display/intel_crtc.c         | 3 +--
> drivers/gpu/drm/i915/display/intel_display_core.h | 4 +---
> drivers/gpu/drm/i915/display/intel_dsi.c          | 7 ++++---
> 4 files changed, 7 insertions(+), 9 deletions(-)
>
>--=20
>2.39.5
>
