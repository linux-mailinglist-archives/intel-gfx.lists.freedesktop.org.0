Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E58A264E2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 21:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AFD10E076;
	Mon,  3 Feb 2025 20:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gYNyl7cq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23CF810E076
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 20:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738615262; x=1770151262;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=MX0KIjFuhRNza3+cN6zSVjFHc4DSSgfHYNIvEGGpIJs=;
 b=gYNyl7cqw5uT7nB13G8D3r/irHYYLiq+uBIoY1HIM9tFFQ0Q6N120FET
 /A8nQIvOJxO/qHbWmqN03nV9WzrCqA68Fb2Iwrd9sTuF6La1tHcI2GBaB
 68IoIIsKk6ETKntJJNKSzyYB0cQidOY2y98PA9uRfZWsTUvkw3bJ6m73c
 XSJFYpaYbiI1gMysnkv3+IVrhXUsSzRZFYjeB98rIRx1fosHMfRaIy6VG
 fWT4SBpkuTiHojCvQl1ie9BaxJSMOU+lHuaDM8iTMsjCyyNaH4inw6lPH
 wdCiKhMLJcKYXWAdZikpJygb7IykNicQlLaRlbhbN335Uv5xNU8rCD0CK A==;
X-CSE-ConnectionGUID: tSV8O2UiStaQM+tNfOLaVg==
X-CSE-MsgGUID: 1e079rznQpWSZ1NPK5cIvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39155758"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="39155758"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 12:41:02 -0800
X-CSE-ConnectionGUID: BynPkKEATq2mhnk1bZ1EuQ==
X-CSE-MsgGUID: BsbHQl5FS6aWqrmNmAsFGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110218500"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 12:41:02 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 12:41:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 12:41:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 12:40:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBekAjedRd70SUGR75yP936I82zNS1Q9p+62XYM6PX6YJlQwcOL/c5OQW3cKCYlQasa7BNzZr3A3HkyT2fO+I8K8WU+U4E0oObs6F+zzq1zSMfvdoWM8Z1U6+ArpoS4RJtrcsvioxxrPGaDSjVD11xmDJ6XF0PPFeaTk2t7uurhYxqP3Kr7Gc83iZN+vFZc4k5oHD5+4rmkj9V2KWTI2GRxBB3rtIcCwSv6KUBdXWsHtwW71Cm+lNYiyMvmxnicfY82pmKmv5aheUJ+TFQ104YkqMLcEVaP0HGerZkaGEISqD1w8/JPBcbR/U/sC2a7lJ6tVWLpkr5CXKhaK66Kmdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NigN6Fb78+0KF3dLwQDf0zrVhP6xH0aXZp8u73V7LMg=;
 b=a7IWVnZJre3+VEmMuNi6afhpMOiFSGKNsLPltYx5Q0OlveN1OYpEBxoSwKVrcnZEzn8Vq3spCzx72BhR3YSl1HoW/IKmiPjaznFrz2gG8dVx4842FpYYQR43dJD0H+Dkkgpde2rn4qVBfDryKEQdBiPfJlTmDA+cS0gdEoZTxVKoTTFnJXro2tOyAgcshJuCLiE0Hm983HkhNx5m8qAuZnL+hfWdwigr5KQcawMBF+eLDV4DAFO6y4eXh3xgTfSEF7aZMKuQkqLKp56XyJKmaiFm2tWDr1Tm67Wae/mSryHHYkXh+OdoRXRhH40EGYYFJ61VytwUGX0Pm648SBD0eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7124.namprd11.prod.outlook.com (2603:10b6:510:20f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 20:40:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 20:40:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8102bd56478db361607ddd2848fabf3c4768f3c9.camel@intel.com>
References: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com> <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com> <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com> <Z6D5rl5bcI1v675e@intel.com>
 <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
 <173861394843.77773.14213626182925674257@intel.com>
 <8102bd56478db361607ddd2848fabf3c4768f3c9.camel@intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
To: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Date: Mon, 3 Feb 2025 17:40:54 -0300
Message-ID: <173861525455.77773.11090522110857446904@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0101.namprd04.prod.outlook.com
 (2603:10b6:303:83::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7124:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c7bc747-b62c-45ea-b6c8-08dd44930fbe
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WWYybng1VkdaYzNnNG1XYWZpSWpXRy9TZFprVnd2YjB5L05rZHZhcWNrZDVF?=
 =?utf-8?B?ZXNlY3BlZDNWL0xHR3ZDSkQrY1RBVzIrbkpJOXJyVWZhMTh5RjdlK05hSGdm?=
 =?utf-8?B?dzFSMkh3eWNjbzViQmhGN29WOXk5MXRQR2tYdldrT1Y5MXkzQ0lzWEhnVlhI?=
 =?utf-8?B?Vjdmb3NLZVM2czdSZEpWMDgvNFJrNk5ONzFHQncvekYzVk81cjNwaFdzZ1NU?=
 =?utf-8?B?Q0d5MkJyaVovckdFejlnWG53YUp4VXFlY2N4V3FCUFkxV0lidHdWMHV3UzM3?=
 =?utf-8?B?bDFiL0RMZC9uVHFkLzMvNXFkUlJkZEQvYjhaSWd0YjVkeDZ0eE9vVnZVeDZK?=
 =?utf-8?B?UXo4M3ZJSGx1b2E5Rkh6MzcxV3pld29nNlo5aFg0TVczaUZHUjhvM20vZk1Q?=
 =?utf-8?B?dS8wUkpvRkJnM3h2dFNoMGtsZmQ0VzZRWmNoOEtqL3oraitSUTR1bTNBcTFr?=
 =?utf-8?B?UDRwb2FLSmhORzdpMHM0dms4dDZoUWphWVFZQ0w0Z3M3T0FEQ2NzdXZ6NXJm?=
 =?utf-8?B?Myt1THJVZHIyR0ZSV2MxQk10dVlCWFp6aFhqTUhsWGQrSDcrb0NmVi93dGh2?=
 =?utf-8?B?VTZNdGpsN2xjTWtVZVE5SzNwckVkOVR2aVlGK0NXY3RzN29sSVpoWXNobXNN?=
 =?utf-8?B?dXFUVC85WmllRXpmdWdqWVQ2OWE2c0lxdXRkN3NWMUF6WTRBSG5Sa1lnTk9B?=
 =?utf-8?B?Y2gyaCtYN0dGcjUybExnZkJsSjBvb1NFSExOMVFRZlo0Y0JnOWlCbVFIV1Bs?=
 =?utf-8?B?b0lWV2ZqZkNEM1hEQmVieDRxWWlnL0RiMTBxbjdEU1pHellYZkpaWmdFdG5P?=
 =?utf-8?B?VVVCL0M3S1cwcHIxektUcTRMWEVGeGZiNUNHS1duVFBwdmJ2bnc2T1dxQm5x?=
 =?utf-8?B?alpBWjY3blU5Y2xyekFLSUJqbzZWMlhWeVFDNFBycHVvSmRiNlZubTRaN0wy?=
 =?utf-8?B?MWQzK3k4YUxQMmg5S294NWthMDlHYXM5aEE1MlNyREIxSndad21veHdJNzNm?=
 =?utf-8?B?dlMzdnhnYVRRb1lHbzI2VktZY2RaTFpkQmFXSG5QZHFMcG5TUUU4TDRtNjBB?=
 =?utf-8?B?VzBZQmF5QWdUbzVNMVR2QzRyTUtxRWRzalJnY0JtV1RVNXZ4Z0ZuVS96YTN2?=
 =?utf-8?B?aUFnanMvNUFLeUhKTUNsM2lmQUNCOEx2cTVKeXFwMHBpaWNRN3M0dUU2cDE4?=
 =?utf-8?B?dks0bmh4UzN5M29WT1VUU2tvVk0vbFA2cDNNdWNHWGlWa29mRGZrK2c0VU92?=
 =?utf-8?B?aEhFRXlkR0FrS25DdGdWcWNlWXhKd2VuWGkvaUF5bnAwekRJdU9ZckdsdmZh?=
 =?utf-8?B?UU11SG1pak5JM3E2RVNiblN3eFFTRWh0UzdzZDFVZ1NPMG9PSStrM0dwYy9F?=
 =?utf-8?B?MzZveEJFNXBnUEFIMW44dStEaXVQcVMzaVMyMlVaaldFZ01jTzI3N3NCdzRG?=
 =?utf-8?B?NllDN1UvSVNHQjY1U0kzTmF4ZVlQVkg0akNtVzRGY1JVcHBYK3VYcjFwN0ZF?=
 =?utf-8?B?Ui9zeHhudDJ4MU8xazJVbUVxdGI0WnVHYzFaSVpzMm4xaWRoTCtBcHNOckd2?=
 =?utf-8?B?NW9TVTg0OU81Mk9jM1E0VmRHenBkR090ejI4eStOdTFvbUlaVTJDWlJhUmZT?=
 =?utf-8?B?ekpKdDJPOUJUUHdnSmdWZmptd0laMW51Ly9Ka0NhMUZvemg5Yzh3aTJMa256?=
 =?utf-8?B?Z2x6b0VIYU9JdXFJVjJYOVlHd1dWdURHb0RkTVMvN2Y5Uzg0T1VkNUxoc3Bx?=
 =?utf-8?B?dUg5WDhKZWdLUnFWL3E0d21HeDBHUGJ2eDh0UGZOaGFycmRsM0h6d2Y5OGpo?=
 =?utf-8?B?UHhVa1Q1RnFieDQ2NW12YXpydk5LZTN0WnlPQUV1eHFMYjRDS3JLZzRjOCtq?=
 =?utf-8?Q?kne5CmFVvWQbX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjNKSmFqU0JuOXUxdzdFd1NQTjd0ajdaSGpNVUZPWEREcGd6YUhVZzUvWG1B?=
 =?utf-8?B?TTlHZVo1blRESG12cEh1SDFPOGQySXIxK1cwZjdrMjg3VXZxUEVIRnpSVlhZ?=
 =?utf-8?B?eFNqeThlaHU1ZXVBdWovenRVMHMrT3BWNFN3WlNoRmVHZVBwcUQxcjBYS2Y5?=
 =?utf-8?B?eExXY3BPL2lQMFoyeU91aEYyRnljU2Q2VVZILzd6T243RzlwbnhWbU9hWlEx?=
 =?utf-8?B?akNVY0VwbWVLeE54YXhHbmtLcW5KSmc0N0VkQ3p6WEZuWWtDeWE5T05MZUZP?=
 =?utf-8?B?V0dPVWErNUd0ZmpXVlFZOEJvYnVsM1h6UkVqZnhrSDkwdFpoWk9tdVp1VnBx?=
 =?utf-8?B?ekNUSVhMMkZGN1pvWGR2My9uZFJwYlJMODNCSTNEck1VbHlKL1NOSkR6UlRT?=
 =?utf-8?B?clJHK1ViM0NydlVOUysvcncvWGtKczNtaXNsMTlKT0x3Y3NpQVNqN215Y2tK?=
 =?utf-8?B?d21RUUV6U2JhZzRhbU5xMVpDTURFUXhKZXE0WStXWW9NcW5MYjJUa2RTbGQ1?=
 =?utf-8?B?REphUnJyOVZiMTZXUVhXdm5jb0pMeFFieEVTK2x5NHJoSm4xUE9ZSDQ2VXR0?=
 =?utf-8?B?S09mcmFtcEl1QnhLNGxYNHhGNVpIM3ZKdEN6bVJoNDI4c3B5MFQxZGNWbHBp?=
 =?utf-8?B?Nm50V1BGVHhVS1NWeVRUa0V1Rnk0TnpTOXJyRFZvSjRINzVVWDFLSk9vSG9X?=
 =?utf-8?B?NTkzTGlQY3VPYkxwUXZCOEMvNWNIRHI3a3FBNS9lM1JGL3RJU2x1TWhKbXZl?=
 =?utf-8?B?dU43UUZBbnQwNXRTNWhjY3lkbVF5NlVlZndYVlBFaHg0WndZWmlqRU0za21L?=
 =?utf-8?B?ZHFqRWZjSkR3Um5QYVBNaVQ1c0lQSkVwMmJzSWRwallvakVGK01LM3NxTTlt?=
 =?utf-8?B?NG4rb3Zhd09NalErRk9IR3NYMDhGZUg1TVVndyttNlhpcTZtVlFJWm94UjJL?=
 =?utf-8?B?UjB5NUFIU3FQQlNEQ25MdElBZ1NIalVWbGczQmdnWmlwZWV2Mzh5TDEycWFO?=
 =?utf-8?B?K1pMbGQ0NHV4SG5OVllya2dVcis5Vkgybkk3SVdLNU5iWDJhcUF4UjRIZEx3?=
 =?utf-8?B?TnZYb0pVdVJUYi9PNE83OElDUnRoUkFDbW1iK2M1SmFlc2Z4eGtnUmlobHd4?=
 =?utf-8?B?NU15OTVXREpKK1lLZGRJRjFrU0JjUDljZVozVlRzOU9ockxUR3RERmJKa21S?=
 =?utf-8?B?a3l4dTFFeDB5SFhhUEhkSFBTbnU5SkwvOFdYMnZJTWFQUXBzeDdNZ0kwM211?=
 =?utf-8?B?amZPcGpEb2gwS1NOWEsrcUVjSTVWZXoxQ0Q4bXlscXhaUTUraGhuZkt4ZXRH?=
 =?utf-8?B?NG96KzNSSzNPS29tMFlkeE5mOElBdklic0wyb0pFMGlDenZxbDVNU0hrN1lX?=
 =?utf-8?B?bFNRdXRhUWhjamNVYzRpMjBIRm9pUThFMmFnUVpSNkhHUnNPWGxjNDQ3c1JP?=
 =?utf-8?B?SzNQTFFwYmttbEplZG9WdTh6Wmd4bkJmTGdJaklibGV6KzB1SkoxSnozU2h2?=
 =?utf-8?B?dTZxb29tVzd6SlZ3U1VMcUM5OVdzN3BOU2tyaGhFVFQ5VjRMTUFzNXNEWGRN?=
 =?utf-8?B?dllXcldiZ0JrU1MxTW1NUmR3dlpwRkRkQkdwK1pvMmdING8wSHB4VGhoMCs1?=
 =?utf-8?B?cmp2bXpSS2xWZlFNVzRDZXUvZ3lhMjljS25uQk9JYTBuY1lBeERSbDZwdFc3?=
 =?utf-8?B?OVNVaVN6NGRCM0dXcnJ3N2lVQ0I0NE03Nlp0Vms4L3owTUpxRGZCOVkwVDFX?=
 =?utf-8?B?S0NOMVVBZXM1ek1WMUtMZEVDN1pCRnVoQ1pTV3U1MVRuRkdVZkpWWVFURjUr?=
 =?utf-8?B?enNqMzFWZ3pNRnh1YWNLSk82eGExMzlRdE9RSGl5dDc4SWtQTE82S3hEU1po?=
 =?utf-8?B?WjJGWmQ0RDFTTUZXNkFqY1MrWVBGVTg2TjdtLy9NVUtPbTIwSUpBMjBkVUMy?=
 =?utf-8?B?Vk9zUm9RUWl5VU9qN0FxcEFhQ0REbEt0SU9iZ2VyVUczNlBoSjJqNkdYQm04?=
 =?utf-8?B?YWNUSkJUWkNiQ1ZJeW5EcGdyV0VmRWZ3UExrZk5oelpKS21ReWJ2R2JybzZR?=
 =?utf-8?B?YzZHK1ZZcm1YYkZ6WXB5amxYak1lNTBJWUtGRlA3Y2JGL2FKTzg5MU9aZFFR?=
 =?utf-8?B?WHdZYmE1ZXV3ZVRURWVhYVJyWjZSMndoSUtaWUtEV1U1SDlhR0ZPajdDSGpL?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c7bc747-b62c-45ea-b6c8-08dd44930fbe
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 20:40:57.3728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7RjOq1Rw7tdTbeMCigVBctgJv9Zk7dxiYS3YPNGZddLlHp+DjNCBE5bGDwDtPRBXwHI+pB9cYvOEssWFfhNqAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7124
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

Quoting Vivi, Rodrigo (2025-02-03 17:23:53-03:00)
>On Mon, 2025-02-03 at 17:19 -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-02-03 16:22:44-03:00)
>> > On Mon, Feb 03, 2025 at 12:15:26PM -0500, Rodrigo Vivi wrote:
>> > > > > > [...]
>> > > > > >=20
>> > > > > > The driver enabling DC6 is not an enough condition for DC6
>> > > > > > being allowed
>> > > > > > from the display side. Some display clock gating etc.
>> > > > > > configuration by
>> > > > > > the driver could be blocking it. According to the HW team,
>> > > > > > DC5 being
>> > > > > > entered while DC6 is enabled is a guarantee that DC6 is
>> > > > > > allowed from the
>> > > > > > display side - i.e. the driver has configured everything
>> > > > > > correctly for
>> > > > > > that.
>> > > > >=20
>> > > > > Fair enough. So IGT test case would check directly if DC5
>> > > > > counter is
>> > > > > increasing and DC6 is allowed.
>> > > > >=20
>> > > > > Something as simple as this in the kernel code would tell
>> > > > > that
>> > > > > DC6 is enabled:
>> > > > >=20
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > > > @@ -1294,6 +1294,10 @@ static int
>> > > > > intel_dmc_debugfs_status_show(struct seq_file *m, void
>> > > > > *unused)
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 seq_printf(m, "DC5 -> DC6 count: %d\n",
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 intel_de_read(display, dc6_reg));
>> > > > > =C2=A0
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seq_printf(m, "DC6 allowed=
: %s\n",
>> > > > > str_yes_no((intel_de_read(display,
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DC_STATE_EN)
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 & 0x3)
>> > > > > =3D=3D 2));
>> > > > > +
>> > > > >=20
>> > > > > and
>> > > > >=20
>> > > > > $ cat i915_dmc_info
>> > > > > [snip]
>> > > > > DC3 -> DC5 count: 286
>> > > > > DC5 -> DC6 count: 0
>> > > > > DC6 allowed: yes
>> > > > > [snip]
>> > > > >=20
>> > > > > $ cat i915_dmc_info
>> > > > > [snip]
>> > > > > DC3 -> DC5 count: 292
>> > > > > DC5 -> DC6 count: 0
>> > > > > DC6 allowed: yes
>> > > > > [snip]
>> > > > >=20
>> > > > > Thoughts?
>> > > >=20
>> > > > The DC5 increment could've happened while DC6 was disabled by
>> > > > the driver.
>> > >=20
>> > > Yes, it could... in general the dc6 bit would be zero, but right,
>> > > there's
>> > > a possible race.
>> > >=20
>> > > But should we complicate things when we know that on the test
>> > > case itself
>> > > we are in full control of the modeset?! From the test perspective
>> > > I believe
>> > > this would be more than enough without complicating things.
>> >=20
>> > Imo having a counter which works based on the condition that
>> > guarantees the
>> > display to allow DC6, would help later in debugging.
>
>yeap, it makes sense
>
>> >=20
>> > > But well, if you really believe that we need to go further in the
>> > > driver
>> > > to cover that it is fine by me.
>> > >=20
>> > > But just to ensure that we are in the same page, could you please
>> > > open
>> > > up a bit more of your idea on when to increase the dc5 sw
>> > > counters
>> > > in a way that we would ensure that we don't have race and that we
>> > > get the dc6 allowed counter correctly?
>> >=20
>> > Something like the following:
>> >=20
>> > 1. Right after the driver sets DC6_EN, it stores the DC5 HW
>> > counter's
>> > =C2=A0 current value:
>> > =C2=A0 dc5_start =3D dc5_current
>> > 2. Right before the driver clears DC6_EN, it updates the DC6
>> > allowed
>> > =C2=A0 counter:
>> > =C2=A0 dc6_allowed +=3D dc5_current - dc5_start
>> > =C2=A0 dc5_start =3D dc5_current
>> > 3. When userspace reads the counters via debugfs the driver first
>> > =C2=A0 updates dc6_allowed the same way as 2. did if DC6_EN is set.
>>=20
>> This sounds good to me.
>
>I like that as well.
>
>>=20
>> I'd like to add that we should ensure that DC6 is really being
>> allowed,
>> so that might need to be handled inside gen9_set_dc_state(), where
>> allowed_dc_mask is applied.
>
>well, for that we can also have the=20
>
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -1294,6 +1294,10 @@ static int intel_dmc_debugfs_status_show(struct
>seq_file *m, void *unused)
>                seq_printf(m, "DC5 -> DC6 count: %d\n",
>                           intel_de_read(display, dc6_reg));
>
>+       seq_printf(m, "DC6 allowed: %s\n",
>str_yes_no((intel_de_read(display,
>+                                                                 =20
>DC_STATE_EN)
>+                                                     & 0x3) =3D=3D 2));
>
>on top of what Imre suggested right?
>so the dc6 count is updated and also we have the live view of the
>register set

Hm... Not sure if that would be required to validate that the display
engine was ready for DC6. I guess the dc6_allowed counter would be
enough.

>
>no?
>
>not sure why we need to go to the dc9 func...

Hm... dc9? Did you mean gen9_set_dc_state()?

Function sanitizes the target value for DC_STATE_EN so that we do not
use a value that is not allowed (e.g. when the driver was loaded with
enable_dc=3D0).

--
Gustavo Sousa

>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >=20
>> > > Btw, while doing this experiment I noticed that the debugfs and
>> > > test
>> > > also doesn't call that residency anyway and it is just count. So
>> > > perhaps with your idea we don't need to change the debugfs
>> > > interface.
>
