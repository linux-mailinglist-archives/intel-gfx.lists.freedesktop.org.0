Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9436797ADC9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 11:22:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EC910E445;
	Tue, 17 Sep 2024 09:22:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zk11JOqT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA3E10E445
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 09:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726564942; x=1758100942;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nGEZ9OJ1lt97q0FzyzVFRGdGwP5NRNLJwNMSCNbZdXQ=;
 b=Zk11JOqTuqXVSFMhHG1fsuBl3/msTwUx6r4S8MpGH2SMgflq7XOoQ3VL
 bSWa739UPjYmiLfRMUhPtCDdaFGz8lwnpbIQF+SK7K549GDKiwY/s5s1a
 MbgAAYc1kcsMaEDRVo1yn6oZUjKS5RS8U0hxjnlMcVMBioeTUNjjVR+sq
 RW0eQMsGFY3BQwh/kR8tQHpV4Grr4MVoepne4mUtvgp2tmR+HrDSoyNqo
 4wfqflnjjOPUB7isKq+myD8T8ioVB9kkIUL/2X4C0SIwgWiC8DcF1bLOu
 OREztgFYGFn2D8BmC/pH0UldApsm1EV5wGj0DTdvLfCWAU7JOVXYKQChx A==;
X-CSE-ConnectionGUID: d6smnW/cSzmKCe4yD+P37g==
X-CSE-MsgGUID: /fPltBBATM+Ar+kG0GbSFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25235315"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25235315"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 02:22:22 -0700
X-CSE-ConnectionGUID: xDByAOYBQtKV9RdP+cd8aA==
X-CSE-MsgGUID: MugOAlZKQXCsRZR44lrc3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69112924"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 02:22:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 02:22:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 02:22:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 02:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mrayF73GnTfsiXvVC7XbDft74VmH3GtppwddXLW0fI86TLIc1tfrKwEikGUtzNBeAd5zMYVA8M5dLiFOC8YMX1ngBJ+vNn7WGyCc3Bs5CSjSFsjxXxMpnU7iEXUFuIsHFvbUDGSIqEFPzygDtqCUmYeGlSswOuGtQOsxQEIfeKEkuYUdC1zkt7uvjKsnSt4f81lVRkWyWOVTm8IhH0w26BXpnXR8UPtCtOKMJyyY8cHeViIQBnTiXKg4+lZqi136njuRYCh4iPJBHDnx2h59iMcZGUL5wskdACc23iWXUvNrU+/9+AXPwrgNO2KoCxgtm92upkafvvZOCO1vRLkIpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cAjBUkVrlkTtuEFNtYqT6SiZ8jAp1LaYET4RTpi9Vxs=;
 b=rLf6fPjwFW7j+qEiO44xo52DTsaRdQCrtWTkuHjY8nFlzRgtYaT1ziwuIhChABln2aiXMoXAyRlIjjyV7IXztUAn6pY2xhS1JsORt3Pv8phwC3WJ8GQKx1VdIXL7TC10HxbbuNdiRui6AGMOIZbfPHLq+3DewN2XlXCSuiGeV4lQPR5RaT+EweQGvMVqJNYvoK8JlBYz3x+qUxUnsP/sBNjnt6Zx//pKDff1DRoyjJbmrfFoiHXZ8v+lAXqAtKepfX8EdpDdE1IWTsIV65faoIiYb1I3kabLx9UwyccmvIASCDj/EmRBYGUQhrCwVt68E3/68G2S8Cc+5+qtzlo5JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4655.namprd11.prod.outlook.com (2603:10b6:806:9d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 17 Sep
 2024 09:22:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 09:22:18 +0000
Message-ID: <0f91d82d-91bb-484f-a14c-04b3d29dcc58@intel.com>
Date: Tue, 17 Sep 2024 14:52:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/19] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.saarinen@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
 <ZuIb3D1GrjwFBIuU@intel.com> <fab2d890-e3a3-4157-adda-92b9a195e7be@intel.com>
 <ZuhGlIPAk_Pxk47z@intel.com> <ZuhJkgLlYc7Dj9oB@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuhJkgLlYc7Dj9oB@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0113.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4655:EE_
X-MS-Office365-Filtering-Correlation-Id: 66cdf116-ed0c-4ff3-c615-08dcd6fa39fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZE8raUdOMHVoY0VqZ2wyNlJGSXZTMnc3b0laazlEMktjaDlJY29jRHNlbWpE?=
 =?utf-8?B?UnN2ME9WSU5zV3p4dVI5MzVGSXU4WXdaQkYzOHhDVzNGK2QzclZNdnFkRnlu?=
 =?utf-8?B?TWw3ZS8zZ1pDeDYxdTBSSTZ1UFhtWHZQMlRhMEV3b3lPWVBDUWF4VEZod1dS?=
 =?utf-8?B?SnJqejczVTNyWWZCUFEvLzFzbWd3aGQ1cndkbGZ2YVJaZ0FMQlg5RGFpUG5O?=
 =?utf-8?B?VTU5Rjk4MkpWOEFBMWcvMDJXOWp0blBMRWlRTWJ2ay8wMkw4cUNibnRlZHFm?=
 =?utf-8?B?YksrbytXNDMycm8wNXI1ZEZRckV3R2t4ZG5WczladmxYdjZuM0Q2Nlg1S2Fa?=
 =?utf-8?B?NTBEc0dlRks5VDBZRnJHLzlzLzFoVmx2Y1Nnb3dZdmkwcmtINnlPcDZiakhh?=
 =?utf-8?B?T1JrNGdzYkhlWnlkK2VpR010QmVTSHJzMjBSS3RUM3F2aVhIL2ZvaG11Qkpt?=
 =?utf-8?B?SW5ZUFBrSUUvQ1kwbDU1WXVpWTZOb3h1YTZMaEZQY1RIYTNnZWpzdmhyU1JQ?=
 =?utf-8?B?UXlzQy9mbU1jekxJajZaU2RWTFNwMVdtT0hTWDBHZGY4RVN3b0o5Ti9DRzRM?=
 =?utf-8?B?eEZwWG8yQ2pnY1lJRCtjb04xeitnVVpTMHpnSE9KUkNOWUt3ODQrNjZybGhX?=
 =?utf-8?B?NVVlNXV5RHlUN0xVM3RodStmZHcyMjNMTWx3R2orQno5SUhoL0lVVnA3Tzdo?=
 =?utf-8?B?b1U4dStSYWFLOTVWa0o4V0cyYzRCdC9jeis0a1VUemZIdFV6bnZYNjlFYWsy?=
 =?utf-8?B?ckdnTTdiTXgyUkRoRDRib3drcW1VT0RaNExFOHZqKzYrbHRXVllJcjYzYnBl?=
 =?utf-8?B?YXNQcjZMcU5LUFY4L3BIUlZLRllocm1TOHBnSFFmVW4zQmFRTnluNnhYcXNR?=
 =?utf-8?B?dDI3azlIWmlPZVBqYXdtN1hDZ0pLUEJ2bUJDbEhzMHZ1ODNxM2hoOXRUelpB?=
 =?utf-8?B?RVI1NW96N2hOMEFjckZYR1JvcTR0SGM2VTdFM3JBQzBaYjYzVHg1MzNkeTQz?=
 =?utf-8?B?Wksvdy9XeS9JNnAxYjlUWEFwRll5MzB2WU1WUjRURlAycFlQZmZsbDFZeWF0?=
 =?utf-8?B?c0gvWXVDRjdQWmZ3UEVYZnRQYkN3YWlNWWZNYnBEM3N5M3dUM3N2ajBkTW1z?=
 =?utf-8?B?dFdYbjFMM1VGaUR6V2w5cVhnTmdFMWpEVTRySjUwWUNlQWUxaE5JZjZxdVVl?=
 =?utf-8?B?ZU1kbDg5Tk45K2U2Ri9ZSmkxZ2dlRkxSSERYWUtWcm5rY3dPN3hBTElxOWRo?=
 =?utf-8?B?S2MxcUg1VDR6SEFDYzZtclZZWW90N0tsNE8rOHIyRlk0MlZJZzZIeTlJNXFl?=
 =?utf-8?B?Nm9yMlNCak5ETGVkVTEvTWRPL21FY091YUhMZjBhTFVmZDhkOWRqdmJtWFVx?=
 =?utf-8?B?aE10Zk9Wb1Bta1lPelZoRjR5WkF4WW5YbGJYWGhDOXZPdGpaZ1JXNTA3YWEy?=
 =?utf-8?B?cUZsUTJabStHUnZZUEZRaTBpSFlpeTdsN0RxWi9Fa1NkOXZPbW1oVkMvMHpR?=
 =?utf-8?B?c1ZuNU5hbzFWQWFhVjlqUDZDVEcreWc0OThwakowM29TTVpLU0ZEOG5YRWNY?=
 =?utf-8?B?RFNxbjZNM2d2SUkva2VNUWFmTGZNL3h6K0UyTG5SekExamFMcktjQkczVE1P?=
 =?utf-8?B?bTBvU3RXYnNmWThucUtRSHhPZXp4NUxtQWJjamRPdjFUWE1aRVRGa1dDNFl3?=
 =?utf-8?B?SWxrZ2VmUWd1NGdvTUdVcUs5OTR5bVVBR01WUEIxVVYxWkUxT1dEMmViOHkz?=
 =?utf-8?B?Smh6d0FqLzdlelZSaVY1SEgra0lYVUZoREFTcytXakRQL1lhN29wd1RMenNI?=
 =?utf-8?B?U1d4Ylo4Z2xHZ0RvS2Jvdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2QxTk4vWGs3VndVMjI3YkdRWUVTbG1nY3pRWWViSmV6VVYvdW04MHNmejA2?=
 =?utf-8?B?bmxoRXNPRGxhNGlNdkd3T1hXSzU5LzZWMVA3NVNTNzlnaC9ZZHhsaFBqRk1I?=
 =?utf-8?B?d3dLdU5iR0tiT2p6UzJXWko0amNIMExpamFUOXpBd2k4c3Q1QWx1RUdBSVlH?=
 =?utf-8?B?RkVnSVhCTDhPNVd5M2NEa0o0dXF3VEp6aXFvNitQVXVhVzdHVUFFVzFmSHUv?=
 =?utf-8?B?QVFOM05hK0YyTk9xdU1xZmE1R1JraTd5M2t0Sm1TMHdWc2JIL3RXNVhMUmxw?=
 =?utf-8?B?OHVNWk14cW5JUWZqWHNhYWVaQXQ2bTd0ZUdmL2VCUEVwbW5MYld1bitsRzV5?=
 =?utf-8?B?NGY3VFNPd0NJRVRrdlFwQkVJZ09OQUVzaDZVMldSZnFKVVV1KzBQSXV4bzdi?=
 =?utf-8?B?dTMrSWVRMHc3RXprV1hJWVY0dWYwY3hEUnE2bzlPQTNWVTdVT1VoYmJlaDBW?=
 =?utf-8?B?Y0xEWEl4RWdXVHk4M25tUndPTUxpalB2ZGJmbjdSdThCQmpjNndVaXdBYnNC?=
 =?utf-8?B?U2d0SlQ2RmpKQnhJYnRUL0hyUmZaK2ppYVJHSktaTWlQeGlYU0pyMG5LdDVU?=
 =?utf-8?B?aytzMjJBc1ZqOFltT3IvV0VLUHVHTk50ZnhsdytNbC9pcDZ0cU8vL0MyT01D?=
 =?utf-8?B?QnROUlZSUSt4bGFWWHE2YkpKa0hudFE0SGxscHl0QUZhUXA1bGYvSHQzeVZq?=
 =?utf-8?B?YlUwbXBxSmRJSjVjak00d2tMK0ZwM21MVTRLOTdCUElneDNXVklRRHdXZUlS?=
 =?utf-8?B?TzRUMjJvdEpDWE5HV0hja2ZvRHZxb0cweUZ1YllTbEJrdTNidzI1YUVXc2xo?=
 =?utf-8?B?QkhMRUZUbStUUnhlZjhoNzFaMHZEQVVHWnZLQWh1K1YrYlVXeHNQdDgzcmdT?=
 =?utf-8?B?VVBpRVMxQkp2eHBZemhuZDZqL1RlWDl0SHlPTGFvRUY2bk1OS1BKNktML1Q4?=
 =?utf-8?B?dHhEaDAvd3dKWGdBVVJVRjN1L3VLbTlRMk9PajB1TldwNkR6blRKQm1lQm1L?=
 =?utf-8?B?L0FsSGZXbWNFWkx6L0EzTGJmRUNUZ1hjcXVWWU5UWVUvZ1VtL0h6bEZwVFJt?=
 =?utf-8?B?dlMrVjBXUHI3SzFGWGp1ZW1RaW9TQnBTM3hqZjNXemhzN2NrR0xnUUU5dC9y?=
 =?utf-8?B?RFRkemMzVEF1VXZva29NQUFKLzBVMWJaYXZKeHk0SHd2SElkQUNGaUxTUXR1?=
 =?utf-8?B?a1liTWlscFBRbnFqZ01XNkVONkNVRXFtVVBZOXBVdFRoaVdLcFhzNEJlL1Rj?=
 =?utf-8?B?VlRiTEZHWFdvSE03K052MnlRWFdUUnQ4dHIyTVorVUU0WW56YUl6cXcwa3Ri?=
 =?utf-8?B?ak1nSUZadEZEYWFpUGI1TGhFQlZxL2FFTzZ6cGw0ZEI5Wmd0U3c0WUhZSzdN?=
 =?utf-8?B?aGhTNE9qM2Jwb05HRkQxcmlCOXZWRWNtWXRwaWVISGtFMHZVVjhVdkJrWlBI?=
 =?utf-8?B?ZjZFcElNankraXg2d0VWSFZ0M3ZjdTUxQWt2VGtjTGdkN1ZuRzlYL081OHBL?=
 =?utf-8?B?MEp6aEs5VWo3Mm4rZVJMcEhhTGhKQ3NYSEh2OGl6a0xZTWk4d2ZTRERtQnF6?=
 =?utf-8?B?VWRJMVlad1pMK0lTWWhKZjRGS1d0MTFtOGVCTzJOenFKUmhMcURJeGpuQlY3?=
 =?utf-8?B?YU1KeTNiWWJhV0F4dzNxTEgrSE9wcnd0elYyYUxDd1FsLzJTNGRUb21ZVEV1?=
 =?utf-8?B?WElPekw1ZjZ3bCtsWWtGMWJjMHE3Wk10Y2I5RW5aVXlTS1NSTzEvTGlzSzcv?=
 =?utf-8?B?dzJMdzd6RmE1T0xlclNBWXFSNk5yYTF5dWJRS1gyL0sxdUZ0M0c4WWYxdHda?=
 =?utf-8?B?RHRhYXhzZk9lWFNJYktiUGQxRXFZUWJ4dm1Yb05LVndlQzRNdWpxV282MkdD?=
 =?utf-8?B?QlFGL1Z1NWhTRjI0UE0zK05JMDNWN1dNM2xZWEVOaXd2bWZFWHhicXZzbmVO?=
 =?utf-8?B?d1RpbFVtK0Q1WkxTbHJKT2RyRFlIMnFuNGk5VFR3SzZOdVFNejhmUHBCMDNI?=
 =?utf-8?B?ZjlsVHJwcGFobFI0cW1MRjdXN3ZhbVRSNktmWGIwMllnZjYwZ2U5aXFlYXVZ?=
 =?utf-8?B?ZTdRTndudzgxUHg0UFIzNXV1SWtPbllwT000MWx0cjdVaUFBYjVxTko3eEp4?=
 =?utf-8?B?RGM0V1pMNE1CNUU3VjJBUUQrYkpTb3NvZHpQQnN0S1RuOE9xTzg2WU50QjZJ?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66cdf116-ed0c-4ff3-c615-08dcd6fa39fd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2024 09:22:18.4675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4JyEpXgeGj4X9dzsZShbFNTEPwDwsuoxdrd2u4gD+VOqvaIPVanyt0Wye/DLGdOLuL4Aq5qKqwaP01felFcPBrF15zZW/rKG+oe2/VhSue0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4655
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


On 9/16/2024 8:36 PM, Ville Syrjälä wrote:
> On Mon, Sep 16, 2024 at 05:54:12PM +0300, Ville Syrjälä wrote:
>> On Mon, Sep 16, 2024 at 01:09:42PM +0530, Nautiyal, Ankit K wrote:
>>> On 9/12/2024 4:08 AM, Ville Syrjälä wrote:
>>>> On Wed, Sep 11, 2024 at 06:43:46PM +0530, Ankit Nautiyal wrote:
>>>>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>>>>
>>>>> Ultrajoiner case requires special treatment where both reverse and
>>>>> staight order iteration doesn't work(for instance disabling case requires
>>>>> order to be: primary master, slaves, secondary master).
>>>>>
>>>>> Lets unify our approach by using not only pipe masks for iterating required
>>>>> pipes based on joiner type used, but also using different "priority" arrays
>>>>> for each of those.
>>>>>
>>>>> v2: Fix checkpatch warnings. (Ankit)
>>>>>
>>>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
>>>>>    drivers/gpu/drm/i915/display/intel_display.c | 83 ++++++++++++++++----
>>>>>    drivers/gpu/drm/i915/display/intel_display.h |  7 ++
>>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c  | 18 +++--
>>>>>    4 files changed, 96 insertions(+), 31 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>>> index 00fbe9f8c03a..2c064b6c6d01 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>>> @@ -3116,10 +3116,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>>>>    					       const struct drm_connector_state *old_conn_state)
>>>>>    {
>>>>>    	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>>>> -	struct intel_crtc *pipe_crtc;
>>>>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>>>>>    
>>>>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>>>>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>>>>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>>>>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
>>>>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>>>>>    		const struct intel_crtc_state *old_pipe_crtc_state =
>>>>>    			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>>>>    
>>>>> @@ -3130,8 +3131,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>>>>    
>>>>>    	intel_ddi_disable_transcoder_func(old_crtc_state);
>>>>>    
>>>>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>>>>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>>>>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>>>>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
>>>>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>>>>>    		const struct intel_crtc_state *old_pipe_crtc_state =
>>>>>    			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>>>>    
>>>>> @@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>>>>    			     const struct drm_connector_state *conn_state)
>>>>>    {
>>>>>    	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>>>> -	struct intel_crtc *pipe_crtc;
>>>>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>>>>>    
>>>>>    	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>>>>    
>>>>> @@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>>>>    
>>>>>    	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>>>>>    
>>>>> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
>>>>> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
>>>>> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
>>>>> +					     intel_crtc_joined_pipe_mask(crtc_state),
>>>>> +					     intel_get_pipe_order_enable(crtc_state)) {
>>>>>    		const struct intel_crtc_state *pipe_crtc_state =
>>>>>    			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>>>>    
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> index db27850b2c36..27622d51a473 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> @@ -1737,6 +1737,50 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>>>>    	hsw_set_transconf(crtc_state);
>>>>>    }
>>>>>    
>>>>> +static
>>>>> +bool intel_crtc_is_bigjoiner(const struct intel_crtc_state *pipe_config)
>>>>> +{
>>>>> +	return hweight8(pipe_config->joiner_pipes) == 2;
>>>>> +}
>>>>> +
>>>>> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] = {
>>>>> +		PIPE_B, PIPE_D, PIPE_C, PIPE_A
>>>>> +	};
>>>>> +	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] = {
>>>>> +		PIPE_B, PIPE_A, PIPE_D, PIPE_C
>>>>> +	};
>>>>> +	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] = {
>>>>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
>>>>> +	};
>>>>> +
>>>>> +	if (intel_crtc_is_ultrajoiner(crtc_state))
>>>>> +		return ultrajoiner_pipe_order_enable;
>>>>> +	else if (intel_crtc_is_bigjoiner(crtc_state))
>>>>> +		return bigjoiner_pipe_order_enable;
>>>>> +	return nojoiner_pipe_order_enable;
>>>>> +}
>>>>> +
>>>>> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] = {
>>>>> +		PIPE_A, PIPE_B, PIPE_D, PIPE_C
>>>>> +	};
>>>>> +	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] = {
>>>>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
>>>>> +	};
>>>>> +	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] = {
>>>>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
>>>>> +	};
>>>>> +
>>>>> +	if (intel_crtc_is_ultrajoiner(crtc_state))
>>>>> +		return ultrajoiner_pipe_order_disable;
>>>>> +	else if (intel_crtc_is_bigjoiner(crtc_state))
>>>>> +		return bigjoiner_pipe_order_disable;
>>>>> +	return nojoiner_pipe_order_disable;
>>>> I don't think we should need all those diffrent order array. Technically
>>>> one should do. Though having two might make sense.
>>>>
>>>> Another problem is the hardcoded pipes. If we eg. get hardware that
>>>> would support ultrajoiner on pipes B-E in the future this would no
>>>> longer  work.
>>>>
>>>>> +}
>>>> <snip>
>>>>> +#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
>>>>> +	for_each_pipe(__dev_priv, __p) \
>>>>> +		for_each_if((__mask) & BIT(__priolist[__p])) \
>>>>> +			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))
>>>> I think something like:
>>>>
>>>> const u8 intel_pipe_order_enable[4] = {
>>>>           3, 1, 2, 0,
>>>> };
>>>>
>>>> const u8 intel_pipe_order_disable[4] = {
>>>>           0, 2, 1, 3,
>>>> };


I just realized that as per bspec:54142 sequence for ultrajoiner doesnt 
follow this.

its 1, 3, 2, 0 for enabling and 0, 1, 3, 2 for disabling :(


Regards,

Ankit

>>>>
>>>> #define for_each_intel_crtc_in_pipe_mask_ordered(crtc, pipe_masks, order, i) \
>>>>           for ((i) = 0; \
>>>>                (i) < ARRAY_SIZE(order) && \
>>>>                ((crtc) = intel_crtc_for_pipe(joiner_primary_pipe(pipe_mask) + (order)[(i)]), 1); \
>>>>                (i)++) \
>>>>                   for_each_if((crtc) && (pipe_mask) & BIT((crtc)->pipe))
>>>>
>>>> would let us avoid that hardcoded pipe stuff, and everything is
>>>> just based on the relative order between the pipes. The same orders
>>>> also work for bigjoiner and non-joined cases (it just skips the pipes
>>>> that are't in the mask).
>>>>
>>>>
>>>> The alternative would be to just use the bigjoiner primary+secondary masks
>>>> and come up with a a way to iterate two bitmask in either forward or reverse
>>>> order. Hmm, I suppose one might just combine the bigjoiner primary and
>>>> secondary masks into one, with one of them shifted up to some high bits,
>>>> and then iterate the combined bitmask either forward or backward.
>>>>
>>>> Something like this should work:
>>>> #define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
>>>>           for ((i) = 0, (pipes) = (second_pipes) << 16 | (first_pipes); \
>>>>                (i) < 32 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
>>>>                (i)++) \
>>>>                   for_each_if((crtc) && (pipes) & BIT(i))
>>>>
>>>> #define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes, pipes, i) \
>>>>           for ((i) = 31, (pipes) = (first_pipes) << 16 | (second_pipes); \
>>>>                (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
>>>>                (i)--) \
>>>>                   for_each_if((crtc) && (pipes) & BIT(i))
>>>>
>>>> (could reduce the constants a bit given we don't have 16 pipes).
>>> This looks good to me. changed for 4 pipes, as below:
>>>
>>>
>>> #define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
>>>           for ((i) = 0, (pipes) = (first_pipes) | ((second_pipes) << 4); \
>>>                (i) < 8 && ((crtc) = intel_crtc_for_pipe((i & 3)), 1); \
>> We could probably use a single internal define for the magic
>> number to avoid things going out of sync by accident.
>>
>> Hmm, maybe even define it as something like
>> #define _INTEL_MAX_PIPES_POT roundup_power_of_two(I915_MAX_PIPES)
>> ?
>>
>> O, I suppose we don't really need it to be POT, so we could
>> just replace the '&' with '%', and then we can just use
>> I915_MAX_PIPES directly.
>>
>>>                (i)++) \
>>>                   for_each_if((crtc) && (pipes) & BIT(i))
>>>
>>> #define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes,
>>> pipes, i) \
>>>           for ((i) = 7, (pipes) = (first_pipes) | ((second_pipes) << 4); \
>>>                (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i & 3)), 1); \
>>>                (i)--) \
>>>                   for_each_if((crtc) && (pipes) & BIT(i))
>>>
>>> But, for non joiner case, when the bigjoiner_primary/secondary_pipes are
>>> 0 so pipes will be 0.
>> Hmm. I think we just need to make bigjoiner_primary_pipes()
>> return BIT(crtc->pipe) for the non-joiner cases.
>>
>> Maybe we should rename these to something like
>> _modeset_{primary,secondary}_pipes() so that people
>> don't get tempted to use them for anything else?
>>
>> And then we could hide all this into something like
>> #define for_each_pipe_crtc_modeset_disable(...) \
>> 	for_each_crtc_in_masks(..., _modeset_primary_pipes(), \
>> 			       _modeset_secondary_pipes(), ...)
>> #define for_each_pipe_crtc_modeset_enable(...) \
>> 	for_each_crtc_in_masks_reverse(..., _modeset_secondary_pipes(), \
>> 				      _modeset_primary_pipes(), ...)
> These last two macros you could already implement right
> now using the current code, and then we can replace them
> with the ultrajoiner capable stuff in another patch and
> not touch any of the actual modeset code anymore.
>
